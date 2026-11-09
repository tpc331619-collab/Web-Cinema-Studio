@echo off
chcp 65001 >nul
title FSIPPRO 影片轉檔工具 (WebM 轉 MP4)
echo ========================================================
echo  FSIPPRO 影片格式轉檔工具 (自動轉換為通用 MP4 格式)
echo ========================================================
echo.

set FFMPEG=ffmpeg

if not "%~1"=="" (
    set "SRC=%~1"
    goto CONVERT
)

if exist "%~dp0FSIPPRO_實機操作演練.webm" (
    set "SRC=%~dp0FSIPPRO_實機操作演練.webm"
    goto CONVERT
)

if exist "%~dp0FSIPPRO_產品實機操作演練.webm" (
    set "SRC=%~dp0FSIPPRO_產品實機操作演練.webm"
    goto CONVERT
)

for %%F in ("%~dp0*.webm") do (
    set "SRC=%%F"
    goto CONVERT
)

echo [提示] 請直接將任何 .webm 影片檔案拖曳到此 bat 圖示上，即可秒轉 MP4！
echo.
pause
exit /b

:CONVERT
set "OUT=%~dpn1.mp4"
if "%~1"=="" set "OUT=%SRC:.webm=.mp4%"

echo 正在將影片轉為高相容 MP4 (相容 Windows 媒體播放器、QuickTime、電視與 PPT)...
echo 來源檔案: %SRC%
echo 輸出目標: %OUT%
echo.

%FFMPEG% -y -i "%SRC%" -c:v libx264 -preset fast -crf 20 -c:a aac -b:a 192k "%OUT%"

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================================
    echo  🎉 轉檔成功！通用 MP4 已生成：
    echo  %OUT%
    echo ========================================================
) else (
    echo.
    echo ❌ 轉檔失敗，請確認檔案未被其他播放程式佔用中。
)

echo.
pause

