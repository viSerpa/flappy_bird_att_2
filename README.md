# Flappy Bird Attempt 2
Flappy Bird Attempt 2 — Another clone of Flappy Bird built using Godot & GDScript.

## Features
- 1 Life
- High Score
- Game over screen

## How to Play
Controls:
- Space to Jump.

Objective: Fly through as many pipes as possible without dying.

## Setup & Installation
Prerequisites: Godot version 4.7 or later.
Clone the repo: https://github.com/viSerpa/flappy_bird_att_2.git
Run the game: Press F5 to play game.

## Tutorial Used
- https://youtu.be/8mQ_kF8v5DA?si=QtkM0BtsMV5ksY4_ 

## What I Learned
- **Value of Failure-First Learning:** Discovered that analyzing a broken system (Attempt 1) before watching a tutorial made the clean architecture, node hierarchy, and smooth execution of Attempt 2 much easier to absorb.
- **Linear Interpolation (`lerp`) for Smooth Visuals:** Learned how to apply `lerp` concepts to manipulate `rotation_degrees`, creating smooth, physics-based contextual rotation as the bird switches from flapping upwards to falling downwards.
- **UI Animation and Modulate Tweens:** Leveraged Godot's powerful `Tween` engine to programmatically animate the `modulate.a` alpha properties, allowing smooth fading transitions for the start screen interface and game over screens.
- **Local Persistent Data Storage:** Exposed to Godot's `FileAccess` class using the `user://` data directory path to securely save variables (`store_var`) and read data (`get_var`) so high scores survive game restarts.
- **Audio Stream Architecture:** Integrated non-spatialized `AudioStreamPlayer` nodes into execution functions (`.play()`) to layer overlapping dynamic sounds for physical actions like flapping, scoring points, and death.

### Story if you care
After my first attempt of creating flappy birds I followed a tutorial to understand where I went wrong. The code that the person was writing was much better and more organized.
Because of my failed attempt I felt that I've learned more, than if I just went straight to a tutorial. This further boosted my motivation to keep improving my skills at game development.
I knew that the basic skills I learned here would be transferable to harder topics like DSA and it would also serve good practice for me to get better at OOP. After following the tutorial 
I started this attempt to put what I learned to use.

From the video I learned what lerp was as it was used to make the bird rotate smoothly when flying up and falling down. I also learned how to use the animation feature to make an animated sprite in Godot and
learned how to add sounds effects to the game to make it feel more alive. The tutorial also went over how to make a high score system, although the idea didn't really stick well with me and I plan on learning 
how to save a game in Godot in the future as it will be an important skill to learn. 
