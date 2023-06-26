# this program reads in lines from user input and creates a story based on those lines 

lines = []

# loop that asks user for lines of input
for i in range(2000):
    user_input = input("Please enter a line for the story (or 'q' to quit): ")
    if user_input == 'q':
        break
    else:
        lines.append(user_input)

# create story from user input lines
story = "A Breath of Fresh Air \n \n"

for i in range(len(lines)):
    story += lines[i] + " "

story += "\n \nThe end."

print(story)