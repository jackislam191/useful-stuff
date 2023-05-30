#!/bin/bash

# Ask for the application name
read -p "Enter the name of your application: " appname

# Create the Vite app with React template
npm create vite@latest "$appname" -- --template react

cd "$appname"
# Create the .editorconfig file
cat > .editorconfig << EOF
# https://editorconfig.org
root = true

[*]
charset = utf-8
end_of_line = lf
indent_size = 2
indent_style = space
insert_final_newline = true
max_line_length = 80
trim_trailing_whitespace = true

[*.md]
max_line_length = 0
trim_trailing_whitespace = false

[COMMIT_EDITMSG]
max_line_length = 0
EOF

# Add .editorconfig to .gitignore
echo ".editorconfig" >> .gitignore

# Initialize Git
git init

