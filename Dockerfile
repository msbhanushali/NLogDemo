FROM microsoft/dotnet
MAINTAINER Shabbir Akolawala <sakolawala@webuy.com>
WORKDIR /app
COPY . .
EXPOSE 32700
RUN dotnet build -c Debug
RUN dotnet publish -c Debug -o publish
ENTRYPOINT [ "dotnet","publish/Nlogdemo.dll" ]
