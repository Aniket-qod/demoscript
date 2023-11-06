
SYSTEM commands

cointop -- for crypto
bpytop  -- for system info
htop    -- for system info

----------------------------------------------------------------------------------------------------------------------------------------------------------------


sl   -- For running train
cmatrix
asciiquarium
oneko

----------------------------------------------------------------------------------------------------------------------------------------------------------------

Terminal Theme Changer

        nano ~/.zshrc
         ls /home/admin1/.oh-my-zsh/themes



neofetch terminal image change

        ~/.config/neofetch/config.conf
    
	       image_backend="chafa"
            or
	       image_source="/home/(user)/zedlogo.jpg"
	

Ubuntu upgrade through terminal file change

        sudo nano /etc/update-manager/release-upgrades


Gnome Animation extension

Burn my windows
Coverflow Alt + Tab
Compize windows effect
Compiz alike magic lamp effect



----------------------------------------------------------------------------------------------------------------------------------------------------------------

GAMES

1.ninvaders
2.pacman4console
3.nsnake
4.supertuxkart


----------------------------------------------------------------------------------------------------------------------------------------------------------------



Nodejs project creation command

    express --view=pug nodejs-parse-xml
    
    https://jasonwatmore.com/post/2021/11/22/nodejs-mysql-crud-api-example-and-tutorial         ==> clean code writing
    
    
Animation css

    http://download.tizen.org/misc/examples/w3c_html5/dom_forms_and_styles/css_animations_module_level_3/animation_practical.html    


Ubuntu Desktop animation

	https://github.com/Schneegans/Burn-My-Windows


Reset Gnone Desktop setting 
	dconf reset -f /org/gnome/
		
		
----------------------------------------------------------------------------------------------------------------------------------------------------------------		



PROJECTS

1. Prakritik lifestyle
2. Aspaass
3. Dsfr
4. Warranty
5. Pepsi_ai_analytics
6. Haat

1. Shiffer 
2. SportDoller
3. EFF
4. Georgie & Toms
5. Celigo & oracle


----------------------------------------------------------------------------------------------------------------------------------------------------------------


Animation Bash script 

          curl -s http://artscene.textfiles.com/vt100/castle.vt | pv -q -L 9600

Line animation 

          https://github.com/stark/Color-Scripts.git

----------------------------------------------------------------------------------------------------------------------------------------------------------------

LOCAL m/c to AWS server file transfer command

Syntax =>  scp -i <.pem file>  <File Name>  <AWS instance dir>
 
Example =>
           scp -i ~/Desktop/amazon.pem ~/Desktop/MS115.fa  ubuntu@ec2-54-166-128-20.compute-1.amazonaws.com:~/data/

----------------------------------------------------------------------------------------------------------------------------------------------------------------

WIFI Commands

Wifi password show and file 

sudo cat /etc/NetworkManager/system-connections/<WiFi_Network_Name>.nmconnection

nmcli device wifi show-password


----------------------------------------------------------------------------------------------------------------------------------------------------------------

BLUETOOTH command 

hcitool dev                        -- Checking for devices
hcitool -i <name of device> scan   -- To scan the device

bluetoothctl

connect mac_address                -- For connecting the device

----------------------------------------------------------------------------------------------------------------------------------------------------------------

AWS setup packeages installation


git        -->  sudo apt-get install git -y
curl       -->  sudo apt-get install curl -y
mysql      -->  sudo apt-get install mysql -y
nginx      -->  sudo apt-get install nginx -y
nodejs     -->  sudo apt-get install nodejs -y
apache2    -->  sudo apt-get install apache2 -y

NVM installation

      curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 

      export NVM_DIR="$HOME/.nvm"

      [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

      source ~/.bashrc

      nvm ls 

      nvm install v14.21.3

      nvm use v14.21.3

GIT setup 

    git config --global user.name ""

    git config --global user.email ""

    git clone <clone_url>
----------------------------------------------------------------------------------------------------------------------------------------------------------------
