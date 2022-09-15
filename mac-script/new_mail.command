#!/usr/bin/osascript

tell application "Mail"
	set newMessage to make new outgoing message with properties {subject:"", content:"" & return & return}
	tell newMessage
		set visible to true
	end tell
	activate
end tell
