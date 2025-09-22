FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /app

RUN apt update && apt install -y git unzip

RUN git clone https://github.com/ORelio/Minecraft-Console-Client.git

WORKDIR /app/Minecraft-Console-Client

RUN dotnet build MinecraftClient.csproj -c Release

COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]
