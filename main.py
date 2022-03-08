import robot
import selenium.webdriver.chrome

logFile = open("log.txt", "w")
robot.run("tasks.robot", stdout=logFile)

