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

COPY FiapCloudGames.API/ ./FiapCloudGames.API/
COPY FiapCloudGames.Application/ ./FiapCloudGames.Application/
COPY FiapCloudGames.Domain/ ./FiapCloudGames.Domain/
COPY FiapCloudGames.Infrastructure/ ./FiapCloudGames.Infrastructure/
COPY FiapCloudGames.Test/ ./FiapCloudGames.Test/

RUN dotnet publish FiapCloudGames.API/FiapCloudGames.API.csproj -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

WORKDIR /app

ENV ASPNETCORE_ENVIRONMENT=Development

COPY --from=build /app/publish .

EXPOSE 8080

ENTRYPOINT ["dotnet", "FiapCloudGames.API.dll"]
