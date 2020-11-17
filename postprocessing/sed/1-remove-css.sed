# This sed command will remove all lines that match the following:

# <link rel="stylesheet" href="*.css"> 
s/<link rel="stylesheet" href=".*\.css">//g

# <link rel="preload" href="*.css" as="style">
s/<link rel="preload" href=".*\.css" as="style">//g
