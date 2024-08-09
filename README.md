# How to run BeamMP with LuaSQL (MySQL Extension!)

This step-by-step guide show you how to install/run LuaSQL on a BeamMP server so that connecting to a database becomes a breeze!

**This guide is meant for servers hosted on a Pterodactyl panel!** 
You can find out more about pterodactyl and how to install it on [their website](https://pterodactyl.io/). I recommend you to rent a VPS or dedicated server to run the panel on. You **cannot** run the panel on windows! For this guide, I assume you've already installed pterodactyl. If you don't have admin access to the pterodactyl panel, refer your server provider to this guide and ask them to install it.

## Step 1 - importing the BeamMP egg
In order to run BeamMP on pterodactyl, you need the [BeamMP Server egg](https://github.com/pelican-eggs/games-standalone/tree/main/beamng/beammp). You can install the eggs by clicking the green `Import Egg` button in the Nests section of the admin panel. 

## Step 2 - Configuring the egg
The egg doesn't come with LuaSQL preinstalled, so you need to add another Docker image that has LuaSQL installed on it. Luckily for you, I've already made a custom docker image that you can use for this purpose! The only thing you need to do is add `Debian with LuaSQL|ghcr.io/dieeneman16/pterodactyl-debian:luasql` to the Docker Images setting in the egg configuration. It should look like the image under this message. Don't forget to save the egg! 

## Step 3 - Configuring your server
Now that you have added a docker image with LuaSQL installed, you will finally make sure your server actually uses it. You can do this by going to your server in the admin panel and changing the Docker Image Configuration under Startup to the `Debian with LuaSQL` image you just installed. Don't forget to save!

## That's it!
LuaSQL should now be available on your server, check out their documentation [here](https://lunarmodules.github.io/luasql/manual.html), happy scripting! For any questions DM or @ me on discord. :slight_smile:
