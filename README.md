Project Overview
BeatSaber Skeleton with Gogo Technique Implementation
In this project, we've created a skeleton version of BeatSaber, incorporating the innovative Gogo technique.

Main Game:
To initiate the game, connect your Quest device, launch Rift, and start the Godot project. Upon entry, the main game menu will appear, allowing players to utilize the right controller. Aim and press the button on the screen to enter the main game. In the main game, players wield two lightsabers, one red and one blue. The objective is to strike blocks that match the color of their lightsabers. After missing 30 blocks, the game will pause, and the player will be teleported back to the main menu to restart the game.

Game Controls:
Aim: Right controller
Action: Press the button on the screen

Cube Spawn
Cube spawning is determined by the position of their parent node and their subsequent movement towards the player's camera position. Two types of cubes, red and blue, are loaded through respective scripts (Cube_Red and Cube_Blue). Users have the flexibility to adjust the spawn rate by modifying the spawn_cd and block positions within each script.

Cube Script Configuration:
Each cube script (Cube_Red and Cube_Blue) provides customization options for users:

Spawn Rate: Adjust the spawn rate using spawn_cd.
Block Position: Modify block positions according to your preference.
Feel free to experiment with these parameters to tailor the gameplay experience to your liking.
