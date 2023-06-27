-- This code will create a 3D virtual environment in Lua that simulates the experience of being outdoors. 

-- Create the viewport.
viewport = {
	width = 600, 
	height = 400,
	fov = 90 
}

-- Light settings.
lightPower = 10

-- Create a skybox.
skybox = {
	texture = "skybox_day.png", 
	scale = 20
}

-- Create the terrain.
terrain = {
	scale = 0.2, 
	height = 20
}

-- Atmospheric settings.
atmosphere = {
	wind = 0.4, 
	humidity = 0.5
}

-- Create a grass texture.
grassTexture = love.graphics.newImage("grass.png")

-- Create an array of trees.
trees = {
	{
		x = 0,
		y = 0,
		z = 0,
		scale = 0.3,
		rotation = 0,
		texture = "tree.png"
	},
	{
		x = 10,
		y = 0,
		z = 20,
		scale = 0.4,
		rotation = 20,
		texture = "tree_2.png"
	},
	{
		x = -20,
		y = 0,
		z = -10,
		scale = 0.5,
		rotation = -30,
		texture = "tree_3.png"
	},
}

-- Create an array of birds.
birds = {
	{
		x = 0,
		y = 5,
		z = 0,
		scale = 0.2,
		rotation = 0,
		texture = "bird.png",
		flightSpeed = 4
	},
	{
		x = 10,
		y = 7,
		z = 20,
		scale = 0.3,
		rotation = 10,
		texture = "bird_2.png",
		flightSpeed = 9
	},
	{
		x = -20,
		y = 6,
		z = -10,
		scale = 0.4,
		rotation = -15,
		texture = "bird_3.png",
		flightSpeed = 2
	},
}

-- Create an array of clouds.
clouds = {
	{
		x = 0,
		y = 50,
		z = 0,
		scale = 0.2,
		rotation = 0,
		texture = "cloud.png",
		speed = 4
	},
	{
		x = 10,
		y = 40,
		z = 20,
		scale = 0.5,
		rotation = 10,
		texture = "cloud_2.png",
		speed = 8
	},
	{
		x = -20,
		y = 30,
		z = -10,
		scale = 0.4,
		rotation = -15,
		texture = "cloud_3.png",
		speed = 6
	},
}

-- Create a particle system for Leaf effects.
leafSystem = {
	texture = "leaf.png",
	emissionRate = 100
}

-- Create a particle system for pollen effects.
pollenSystem = {
	texture = "pollen.png",
	emissionRate = 50
}

-- Create a water system.
waterSystem = {
	texture = "water.png",
	scale = 5
}

-- Create a sound system.
soundSystem = {
	sounds = {
		"birds.wav", 
		"wind.wav", 
		"stream.wav"
	}
}

-- Create a function to initialize the environment. 
function initEnvironment()
	
	-- Initialize the viewport.
	love.graphics.setMode(viewport.width, viewport.height, false, false, viewport.fov)

	-- Initialize the skybox.
	skybox.mesh = love.graphics.newMesh({
		{-1.0, -1.0, 0.0, 0.0, 0.0},
		{1.0, -1.0, 0.0, 1.0, 0.0},
		{1.0, 1.0, 0.0, 1.0, 1.0},
		{-1.0, 1.0, 0.0, 0.0, 1.0}
	}, skybox.texture, "fan")
	skybox.mesh:setScale(skybox.scale, skybox.scale, 1)

	-- Initialize the terrain.
	terrain.mesh = love.graphics.newMesh(
		terrain.heights, 
		love.graphics.newShader("terrain.glsl"), 
		"strip", 
		"static"
	)
	terrain.mesh:setScale(terrain.scale, terrain.height, 1)

	-- Initialize the grass texture.
	grass.texture = love.graphics.newImage("grass.png")

	-- Initialize the trees.
	for _,tree in ipairs(trees) do
		tree.mesh = love.graphics.newMesh({
			{-1.0, -1.0, 0.0, 0.0, 0.0},
			{1.0, -1.0, 0.0, 1.0, 0.0},
			{1.0, 1.0, 0.0, 1.0, 1.0},
			{-1.0, 1.0, 0.0, 0.0, 1.0}
		}, tree.texture, "fan")
		tree.mesh:setScale(tree.scale, tree.scale, 1)
		tree.mesh:setRotation(tree.rotation, 0, 1, 0)
		tree.mesh:setPosition(tree.x, tree.y, tree.z)
	end

	-- Initialize the birds.
	for _,bird in ipairs(birds) do
		bird.mesh = love.graphics.newMesh({
			{-1.0, -1.0, 0.0, 0.0, 0.0},
			{1.0, -1.0, 0.0, 1.0, 0.0},
			{1.0, 1.0, 0.0, 1.0, 1.0},
			{-1.0, 1.0, 0.0, 0.0, 1.0}
		}, bird.texture, "fan")
		bird.mesh:setScale(bird.scale, bird.scale, 1)
		bird.mesh:setRotation(bird.rotation, 0, 1, 0)
		bird.mesh:setPosition(bird.x, bird.y, bird.z)
	end

	-- Initialize the clouds.
	for _,cloud in ipairs(clouds) do
		cloud.mesh = love.graphics.newMesh({
			{-1.0, -1.0, 0.0, 0.0, 0.0},
			{1.0, -1.0, 0.0, 1.0, 0.0},
			{1.0, 1.0, 0.0, 1.0, 1.0},
			{-1.0, 1.0, 0.0, 0.0, 1.0}
		}, cloud.texture, "fan")
		cloud.mesh:setScale(cloud.scale, cloud.scale, 1)
		cloud.mesh:setRotation(cloud.rotation, 0, 1, 0)
		cloud.mesh:setPosition(cloud.x, cloud.y, cloud.z)
	end

	-- Initialize the particle system for leaf effects.
	leafSystem.ps = love.graphics.newParticleSystem(leafSystem.texture, leafSystem.emissionRate)
	leafSystem.ps:setEmissionRate(leafSystem.emissionRate)
	leafSystem.ps:setParticleLife(5)
	leafSystem.ps:setLinearAcceleration(0, -10, 0, -10)

	-- Initialize the particle system for pollen effects.
	pollenSystem.ps = love.graphics.newParticleSystem(pollenSystem.texture, pollenSystem.emissionRate)
	pollenSystem.ps:setEmissionRate(pollenSystem.emissionRate)
	pollenSystem.ps:setParticleLife(2)
	pollenSystem.ps:setLinearAcceleration(0, -100, 0, -100)

	-- Initialize the water system.
	waterSystem.mesh = love.graphics.newMesh({
		{-1.0, -1.0, 0.0, 0.0, 0.0},
		{1.0, -1.0, 0.0, 1.0, 0.0},
		{1.0, 1.0, 0.0, 1.0, 1.0},
		{-1.0, 1.0, 0.0, 0.0, 1.0}
	}, waterSystem.texture, "fan")
	waterSystem.mesh:setScale(waterSystem.scale, waterSystem.scale, 1)

	-- Initialize the sound system.
	for i, sound in ipairs(soundSystem.sounds) do
		soundSystem.sounds[i] = love.audio.newSource(sound, "stream")
		soundSystem.sounds[i]:setLooping(true)
		soundSystem.sounds[i]:play()
	end
end

-- Create a function to update the environment.
function updateEnvironment(dt)
	
	-- Update the birds.
	for _,bird in ipairs(birds) do
		local x, y, z = bird.mesh:getPosition()
		bird.mesh:setPosition(x + (atmosphere.wind * bird.flightSpeed * dt), y, z + (atmosphere.wind * bird.flightSpeed * dt))
	end

	-- Update the clouds.
	for _,cloud in ipairs(clouds) do
		local x, y, z = cloud.mesh:getPosition()
		cloud.mesh:setPosition(x + (atmosphere.wind * cloud.speed * dt), y, z + (atmosphere.wind * cloud.speed * dt))
	end

	-- Update the particle systems.
	leafSystem.ps:update(dt)
	pollenSystem.ps:update(dt)
end

-- Create a function to draw the environment.
function drawEnvironment()
	
	-- Draw the skybox.
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(skybox.mesh, 0, 0, 0, 1, 1, 0, 0, lightPower)

	-- Draw the terrain.
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(terrain.mesh)

	-- Draw the grass.
	love.graphics.setColor(0, 0.5, 0.25)
	love.graphics.draw(grassTexture)

	-- Draw the trees.
	for _,tree in ipairs(trees) do
		love.graphics.setColor(1, 1, 1)
		love.graphics.draw(tree.mesh, 0, 0, 0, 1, 1, 0, 0, lightPower)
	end

	-- Draw the birds.
	for _,bird in ipairs(birds) do
		love.graphics.setColor(1, 1, 1)
		love.graphics.draw(bird.mesh, 0, 0, 0, 1, 1, 0, 0, lightPower)
	end

	-- Draw the clouds.
	for _,cloud in ipairs(clouds) do
		love.graphics.setColor(1, 1, 1)
		love.graphics.draw(cloud.mesh, 0, 0, 0, 1, 1, 0, 0, lightPower)
	end

	-- Draw the particle systems.
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(leafSystem.ps)
	love.graphics.draw(pollenSystem.ps)

	-- Draw the water.
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(waterSystem.mesh, 0, 0, 0, 1, 1, 0, 0, lightPower)
end