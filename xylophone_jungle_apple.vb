Public Class FreshAir
 
Dim AirQuality As String
Dim Temperature As Single
Dim WindSpeed As Single

Public Sub New(ByVal quality As String, ByVal temp As Single, ByVal speed As Single)
    AirQuality = quality
    Temperature = temp
    WindSpeed = speed
End Sub
 
Public Sub ChangeAirQuality(ByVal quality As String)
    AirQuality = quality
End Sub
 
Public Sub ChangeTemperature(ByVal temp As Single)
    Temperature = temp
End Sub
 
Public Sub ChangeWindSpeed(ByVal speed As Single)
    WindSpeed = speed
End Sub
 
Public Function GetAirQuality() As String
    Return AirQuality
End Function
 
Public Function GetTemperature() As Single
    Return Temperature
End Function
 
Public Function GetWindSpeed() As Single
    Return WindSpeed
End Function
 
Public Sub CreateFreshAir()
    Dim airQuality As String = GetAirQuality()
    Dim temp As Single = GetTemperature()
    Dim windSpeed As Single = GetWindSpeed()
 
    If airQuality = "clean" And temp > 65 And windSpeed > 10 Then
        Console.WriteLine("A breath of fresh air!")
    Else
        Console.WriteLine("Not enough fresh air!")
    End If
 
End Sub
 
End Class