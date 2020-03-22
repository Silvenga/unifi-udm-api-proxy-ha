#!/bin/bash

CONFIG_PATH=/data/options.json

cp /data/options.json /app/appsettings.HASSIO.json

dotnet UdmApi.Proxy.dll
