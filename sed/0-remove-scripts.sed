#########
# This sed command will remove all <script> tags and their contents from an html file
#########

# delete script tags that start and end on the same line
s/<script.*<\/script>//g

# delete any entire lines that are between the opening and closing script tag
/<script/,/<\/script>/{/<script/!{/<\/script>/!d;};}

# on lines where a script tag opens but doesn't close, delete the opening tag and everything following it
s/<script.*//g

# on lines where a script tag closes but doesn't open, delete the closing tag and everything before it
s/.*<\/script>//g
