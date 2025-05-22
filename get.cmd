@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
curl -k https://raw.githubusercontent.com/mishakorzik/Free-Proxy/main/proxy.txt -o 1.txt
curl -k https://raw.githubusercontent.com/roosterkid/openproxylist/main/SOCKS5_RAW.txt -o 2.txt
curl -k https://raw.githubusercontent.com/roosterkid/openproxylist/main/SOCKS4_RAW.txt -o 3.txt
curl -k https://raw.githubusercontent.com/roosterkid/openproxylist/main/HTTPS_RAW.txt -o 4.txt
curl -k https://raw.githubusercontent.com/saschazesiger/Free-Proxies/master/proxies/all.txt -o 5.txt
curl -k https://raw.githubusercontent.com/jetkai/proxy-list/main/online-proxies/txt/proxies.txt -o 6.txt
curl -k https://raw.githubusercontent.com/hookzof/socks5_list/master/proxy.txt -o 7.txt
curl -k https://raw.githubusercontent.com/clarketm/proxy-list/master/proxy-list-raw.txt -o 8.txt
curl -k https://raw.githubusercontent.com/TheSpeedX/PROXY-List/master/http.txt -o 9.txt
curl -k https://raw.githubusercontent.com/TheSpeedX/PROXY-List/master/socks4.txt -o 10.txt
curl -k https://raw.githubusercontent.com/TheSpeedX/PROXY-List/master/socks5.txt -o 11.txt
curl -k https://raw.githubusercontent.com/rdavydov/proxy-list/main/proxies/http.txt -o 12.txt
curl -k https://raw.githubusercontent.com/rdavydov/proxy-list/main/proxies/socks4.txt -o 13.txt
curl -k https://raw.githubusercontent.com/rdavydov/proxy-list/main/proxies/socks5.txt -o 14.txt
curl -k https://raw.githubusercontent.com/BlackSnowDot/proxylist-update-every-minute/main/proxy.txt -o 15.txt
curl -k https://raw.githubusercontent.com/rx443/proxy-list/main/online/all.txt -o 16.txt
curl -k https://raw.githubusercontent.com/MuRongPIG/Proxy-Master/main/http.txt -o 17.txt
curl -k https://raw.githubusercontent.com/MuRongPIG/Proxy-Master/main/socks4.txt -o 18.txt
curl -k https://raw.githubusercontent.com/MuRongPIG/Proxy-Master/main/socks5.txt -o 19.txt
curl -k https://raw.githubusercontent.com/proxylist-to/proxy-list/main/http.txt -o 20.txt
curl -k https://raw.githubusercontent.com/proxylist-to/proxy-list/main/socks4.txt -o 21.txt
curl -k https://raw.githubusercontent.com/proxylist-to/proxy-list/main/socks5.txt -o 22.txt
curl -k https://raw.githubusercontent.com/officialputuid/KangProxy/KangProxy/http/http.txt -o 23.txt
curl -k https://raw.githubusercontent.com/officialputuid/KangProxy/KangProxy/https/https.txt -o 24.txt
curl -k https://raw.githubusercontent.com/officialputuid/KangProxy/KangProxy/socks4/socks4.txt -o 25.txt
curl -k https://raw.githubusercontent.com/officialputuid/KangProxy/KangProxy/socks5/socks5.txt -o 26.txt
curl -k https://raw.githubusercontent.com/HyperBeats/proxy-list/main/http.txt -o 27.txt
curl -k https://raw.githubusercontent.com/HyperBeats/proxy-list/main/socks4.txt -o 28.txt
curl -k https://raw.githubusercontent.com/HyperBeats/proxy-list/main/socks5.txt -o 29.txt
curl -k https://raw.githubusercontent.com/HyperBeats/proxy-list/main/https.txt -o 30.txt
curl -k https://raw.githubusercontent.com/almroot/proxylist/master/list.txt -o 31.txt
curl -k https://raw.githubusercontent.com/ErcinDedeoglu/proxies/main/proxies/http.txt -o 32.txt
curl -k https://raw.githubusercontent.com/ErcinDedeoglu/proxies/main/proxies/socks5.txt -o 33.txt
curl -k https://raw.githubusercontent.com/ErcinDedeoglu/proxies/main/proxies/socks4.txt -o 34.txt
curl -k https://raw.githubusercontent.com/ErcinDedeoglu/proxies/main/proxies/https.txt -o 35.txt
curl -k https://raw.githubusercontent.com/enseitankado/proxine/main/proxy/http.txt -o 36.txt
curl -k https://raw.githubusercontent.com/enseitankado/proxine/main/proxy/https.txt -o 37.txt
curl -k https://raw.githubusercontent.com/enseitankado/proxine/main/proxy/socks4.txt -o 38.txt
curl -k https://raw.githubusercontent.com/enseitankado/proxine/main/proxy/socks5.txt -o 39.txt
curl -k https://raw.githubusercontent.com/tahaluindo/Free-Proxies/main/proxies/all.txt -o 40.txt

:: Create or clear the temporary file
echo. > temp.txt

:: Loop through files from 1.txt to 40.txt
for /l %%i in (1,1,40) do (
    if exist %%i.txt (
        type %%i.txt >> temp.txt
        echo. >> temp.txt
    )
)

:: Remove duplicate lines and create the final merged file
sort temp.txt /unique > merged.txt

:: Cleanup: Delete original files
for /l %%i in (1,1,40) do (
    if exist %%i.txt del %%i.txt
)

:: Cleanup temp file
del temp.txt

echo Merge complete! Duplicates removed, and original files deleted.
