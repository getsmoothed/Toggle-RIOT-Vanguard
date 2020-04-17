# Toggle-RIOT-Vanguard
It just toggle's RIOT's Vanguard AntiCheat

You can find further information at: https://www.reddit.com/r/VALORANT/comments/g34j4j/script_to_toggle_the_riot_vanguard_anticheat/

This post isn't about the security and / or trust issue that some people might have concerns about. It is simply about a small script to toggle Vanguard on and off.

I don't know if this has been done before, but if you're not happy with the fact that Vanguard is running all the time this might help you.


Some important notes:

In order for this to work you'll need to start this as an administrator.

You have to restart your computer every time in order to apply the change (Sorry, can't get around that), but this should happen automatically.

If vanguard isn't installed in "C:\Program Files\Riot Vanguard" for some reason, you have to change it in the code or it won't work.

In that case, change this line:

cd /d "C:\Program Files\Riot Vanguard"
To:

cd /d "<desired path>"
How it works:

The script uses the administrator rights to rename the vgk.sys file to keep it from launching when your computer starts (and vise versa).



Sidenotes:

If you don't want the script to auto-restart your computer you have to change the variable FORCE_RESTART to 0 in the code.

Auto-Restart:

set /A FORCE_RESTART = 1
Auto-Restart off:

set /A FORCE_RESTART = 0
To make your life easier you can make a shortcut to the script, then right-click it --> click on properties --> advanced --> and check the box to run it as an administrator. So whenever you open the shortcut it will automatically start it as an administrator.

If you have an
