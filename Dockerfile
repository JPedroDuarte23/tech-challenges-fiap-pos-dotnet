FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /app

ENV ASPNETCORE_ENVIRONMENT=Development

COPY FiapCloudGames.sln .
COPY FiapCloudGames.API/*.csproj ./FiapCloudGames.API/
COPY FiapCloudGames.Application/*.csproj ./FiapCloudGames.Application/
COPY FiapCloudGames.Domain/*.csproj ./FiapCloudGames.Domain/
COPY FiapCloudGames.Infrastructure/*.csproj ./FiapCloudGames.Infrastructure/
COPY FiapCloudGames.Test/*.csproj ./FiapCloudGames.Test/

RUN dotnet restore

COPY . .

RUN dotnet publish FiapCloudGames.API/FiapCloudGames.API.csproj -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

ENV ASPNETCORE_ENVIRONMENT=Development

WORKDIR /app

COPY --from=build /app/publish .

EXPOSE 8080

ENTRYPOINT ["dotnet", "FiapCloudGames.API.dll"]