*****************************************************                            
  _____ _                    _____ _             _    
 / ____| |                  / ____| |           | |   
| |    | | ___  __ _ _ __  | (___ | |_ __ _  ___| | __
| |    | |/ _ \/ _` | '__|  \___ \| __/ _` |/ __| |/ /
| |____| |  __/ (_| | |     ____) | || (_| | (__|   < 
 \_____|_|\___|\__,_|_|    |_____/ \__\__,_|\___|_|\_\
 *****************************************************
 
 A combination of a faceless applescript application
 that hides itself after it does it's dirty work, and 
 a devilish folder action that reveals it again at just 
 the right time...
 
 Installation
 1. Copy the Clear Stack app to the directory on our 
 dock that has a stack that you often want to clear up
 (I'm looking at your Downloads directory here).
 
 2. Copy the Reveal Hidden App.scpt to 
 /Library/Scripts/Folder Action Scripts
 
3. If you haven't used folder actions yet...
		In the finder, right click on the directory in 
		question and choose 
		'More -> Enable Folder Actions'
		
4. Right click again, and then go with 
'More -> Attach a Folder Action' and choose the 
"Reveal Clear Stack" script

5. If you have files that you don't want trashed when the 
script runs (a custom drawer-like icon perhaps*), right click 
on the Clear Stack app, choose 'Show Package Contents', and 
then in the 'Contents' directory open up the info.plist and 
add whatever files you want to protect to the 'AllowedFiles' 
key, using the pipe | symbol as the separator. By default it 
protects .DS_Store and " download " -- the latter being the 
name for the download drawer icon in a popular icon set*.

At this point you should be all set. to get the ball rolling, 
open up the stack, click on the 'Clear Stack" icon, and it 
should disappear along with anything else in there. When a file 
is added into the directory, it will reappear.

Also, it makes the assumption that your downloads folder is
sorted by modification date.  If it isn't, it'll still work,
but you may need to rename the Clear Stack application to
get it to sort properly.

If you have any questions, contact e at bigethan . com
 
 *http://t.ecksdee.org/post/19001860
 