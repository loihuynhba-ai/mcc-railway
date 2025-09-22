#!/bin/bash

cd /app/Minecraft-Console-Client/bin/Release/net6.0

echo "username=$MC_USERNAME" > MinecraftClient.ini
echo "password=$MC_PASSWORD" >> MinecraftClient.ini
echo "server=$MC_SERVER" >> MinecraftClient.ini

echo "[Script]" >> MinecraftClient.ini
echo "enabled=true" >> MinecraftClient.ini
echo "script=login_script.cs" >> MinecraftClient.ini

echo 'ScriptActions.OnJoin += (username, uuid) => {
    Chat.Send("'"$MC_LOGIN_COMMAND"'");
};' > login_script.cs

dotnet MinecraftClient.dll
