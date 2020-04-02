# Whatsapp Docker

A simple (WBOT)[https://github.com/vasani-arpit/WBOT] container that allows you to run multiple whatsapp bots at same time independently. The service will work in headless mode.

## Running Container

To run your container with WBOT, open your terminal and run:

```sh
docker build -t my-wbot-image .
docker run -it my-wbot-image
```

Feel free to update `wbot-linux` and `bot.json` files with your personal purposes and the latest version of WBOT file.
