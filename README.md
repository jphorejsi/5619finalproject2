Project Title: BeatSaber Skeleton with Gogo Technique Implementation
Made by Jimmy Xiao, Jacob Horejsi

Project Overview
In this project, we've created a skeleton version of BeatSaber, incorporating the innovative Gogo technique.

How to run the game:
To initiate the game, connect your Quest device, launch Rift, and start the Godot project. Upon entry, the main game menu will appear, allowing players to utilize the right controller. Aim and press the button on the screen to enter the main game. In the main game, players wield two lightsabers, one red and one blue. The objective is to strike blocks that match the color of their lightsabers. After missing 30 blocks, the game will pause, and the player will be teleported back to the main menu to restart the game.


GO-GO technique:
lightsaber go-go technique uses XR technology and a non-linear mapping function to dynamically position the lightsaber based on the XR controller's distance from the origin. The user can change the k value the increase the reach distance. Here are more information: https://dl.acm.org/doi/pdf/10.1145/237091.237102#:~:text=The%20Go%2DGo%20technique%20thus,accessing%20and%20manipulating%20remote%20objects.

Game Controls:
Aim: Right controller
Action: Press the index button on the screen
Turn: Adjust the camera position using the thumb joystick.

Cube Spawn:
Cube spawning is determined by the position of their parent node and their subsequent movement towards the player's camera position. Two types of cubes, red and blue, are loaded through respective scripts. Users have the flexibility to adjust the spawn rate by modifying the spawn_cd and block positions within each script.

Cube Script Configuration:
Each cube script provides customization options for users:

Spawn Rate: Adjust the spawn rate using spawn_cd.
Block Position: Modify block positions according to your preference.
Feel free to experiment with these parameters to tailor the gameplay experience to your liking.
