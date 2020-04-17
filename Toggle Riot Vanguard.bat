set /A FORCE_RESTART = 1


cd /d "C:\Program Files\Riot Vanguard"
set /A success = 0

if exist vgk.sys (
    rename vgk.sys vgk_off.sys
    set /A success = 1
)else if exist vgk_off.sys (
    rename vgk_off.sys vgk.sys
    set /A success = 1
)

if "%FORCE_RESTART%" == "1" (
    if "%success%" == "1" (
	shutdown -r -t 0
    )
)