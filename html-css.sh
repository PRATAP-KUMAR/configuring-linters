# THIS FILE IS NOT YET READY - PLEASE DONT USE THIS FILE

# check if user has by any chance having 'react-redux' directory? then exit with out executing anything.
if [ -d ./html-css ]
then echo "
------------------------------------------
html-css directory exists, cant proceed
No changes are done
exiting ...
------------------------------------------
"
exit
fi

# get the source directory from github
wget -qO - https://github.com/microverseinc/linters-config/archive/master.tar.gz | tar zx --strip-components=1 linters-config-master/html-css/

echo "Required files downloaded..., Configuring Webhint..."

# move the .github directory from the source directory html-css
mv ./html-css/.github .

# install things as provided by school
npm install --save-dev hint@7.x

# move the required files to the root directory of the project
mv ./html-css/.hintrc .

# install things as provided by school
npm install --save-dev stylelint@13.x stylelint-scss@3.x stylelint-config-standard@21.x stylelint-csstree-validator@1.x

# move the file to the root directory of the project
mv ./html-css/.stylelintrc.json .

# a genunine note to remember the commands for linter checkings
echo '
------------
Commands to Remember
npx hint .
npx stylelint "**/*.{css,scss}"
------------
'

# finally remove the downloaded directory which is not needed anymore
rm -r ./html-css
