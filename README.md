# CONFIGURING LINTERS
configure linters with a one line command

Further Details: https://medium.com/p/76d2a3862d41/

## Example for configuring react&redux linters with a one line command.

First Download the react-redux.sh file with the below command
````
wget -qO - https://github.com/PRATAP-KUMAR/configuring-linters/archive/main.tar.gz | tar zx --strip-components=1 configuring-linters-main/react-redux.sh
````

then run the script
````
sh react-redux.sh
````

### Depending on your internet speed, this process may take upto 120seconds.
Watch 80 sec gif for the real experience.
![example_react redux sh](https://user-images.githubusercontent.com/40719899/193249973-fc4db858-b47d-4a44-bede-685d042c193b.gif)

## Important note.  
Once, linters are configured, delete the downloaded file `react-redux.sh` otherwise it will also go to github commits which is unnecessary.
````
rm react-redux.sh
````

