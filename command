cointop -- for crypto
bpytop  -- for system info

---------------------------------------------------


sl   -- For running train
cmatrix
asciiquarium
oneko

--------------------------------------------------

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



----------------------------------------------------

GAMES

1.ninvaders
2.pacman4console
3.nsnake
4.supertuxkart


----------------------------------------------------



Nodejs project creation command

    express --view=pug nodejs-parse-xml
    
    https://jasonwatmore.com/post/2021/11/22/nodejs-mysql-crud-api-example-and-tutorial         ==> clean code writing
    
    
Animation css

    http://download.tizen.org/misc/examples/w3c_html5/dom_forms_and_styles/css_animations_module_level_3/animation_practical.html    


Ubuntu Desktop animation

	https://github.com/Schneegans/Burn-My-Windows


Reset Gnone Desktop setting 
	dconf reset -f /org/gnome/
		
		
------------------------------------------------------------------------		



PROJECTS

1. Prakritik lifestyle
2. Aspaas
3. Dsfr
4. Shiffer 
5. SportDoller
6. EFF
7. Georgie & Toms
8. Celigo & oracle


-------------------------------------------------------------------------


Animation Bash script 

          curl -s http://artscene.textfiles.com/vt100/castle.vt | pv -q -L 9600

Line animation 

          https://github.com/stark/Color-Scripts.git

-------------------------------------------------------------------------


Transfering the file from local m/c to aws instance command

Syntax =>  scp -i <.pem file>  <File Name>  <AWS instance dir>
 
Example =>
           scp -i ~/Desktop/amazon.pem ~/Desktop/MS115.fa  ubuntu@ec2-54-166-128-20.compute-1.amazonaws.com:~/data/

-------------------------------------------------------------------------

Wifi password show and file 

sudo cat /etc/NetworkManager/system-connections/<WiFi_Network_Name>.nmconnection

nmcli device wifi show-password


----------------------------------------------------------------------------------------------------------

Bluetooth command 

hcitool dev                        -- Checking for devices
hcitool -i <name of device> scan   -- To scan the device

bluetoothctl

connect mac_address                -- For connecting the device
