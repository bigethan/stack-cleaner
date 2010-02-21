-- Clear Stack.applescript
-- Clear Stack
--  Created by Ethan Schlenker on 11/17/07.
-- visit http://github.com/bigethan for details

on will finish launching
	set allowedFiles to {" download ", ".DS_Store"}
	set myFile to path to me
	set myPosixPath to quoted form of POSIX path of myFile
	set myFileString to myFile as string
	
	--get the path for myFile's container
	--calling "tell application finder" is slow (and pops a finder window),
	--so perhaps this way is faster than using container
	set atd to text item delimiters
	set text item delimiters to ":"
	set itemsInMyString to number of text items in myFileString
	set parentPath to (text items 1 through (itemsInMyString - 2) in myFileString) as string
	set text item delimiters to atd
	set myName to name of (info for myFile)
	
	--grab the allowed files from the info.plist
	set text item delimiters to "|"
	set allowedFilesString to do shell script "defaults read " & myPosixPath & "Contents/Info AllowedFiles"
	set allowedFiles to text items in allowedFilesString
	set text item delimiters to atd
	
	set allowedFiles to allowedFiles & myName
	
	--delete the files
	repeat with fileName in (list folder parentPath)
		if fileName is not in allowedFiles then
			set posixToTrash to quoted form of POSIX path of (parentPath & ":" & fileName)
			do shell script "ditto " & posixToTrash & " ~/.Trash/"
			do shell script "rm -rf " & posixToTrash
		end if
	end repeat
	
	--hide the script file
	if item 1 of myName is not "." then
		set posixToBe to quoted form of POSIX path of (parentPath & ":." & myName)
		do shell script "mv " & myPosixPath & " " & posixToBe
	end if
	
	quit
end will finish launching