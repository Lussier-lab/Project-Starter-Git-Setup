## SET UP GIT FOR FIRST TIME

## go to Anaconda and specific environment and hit "Git" to install Then back to prompt to continiue these below steps

apt update # Linux
apt install ncat # linux
echo Host github.com >> ~/.ssh/config
echo '        Hostname ssh.github.com' >> ~/.ssh/config
echo '        Port 443' >> ~/.ssh/config
echo '        ProxyCommand ncat --proxy-type http --proxy bmiproxyp.chmcres.cchmc.org:80 %h %p' >> ~/.ssh/config 
gitemail="shabanian.m@gmail.com"
gituser="shabanian2018" 
echo $gitemail
git config --global user.name $gituser
git config --global user.email $gitemail
ssh-keygen '-t' ed25519 '-C' $gitemail # HIT enter + y + enter + enter to generate the key
cat ~/.ssh/id_ed25519.pub  # copy the whole key with email address and add to SSH key on github
chown root ~/.ssh/config # skip for local github
chmod 600 ~/.ssh/config #skip for local github
##echo "Copy the above key to GITHUB and try ssh -T git@github.com"

ssh -T git@github.com # in local this is last step to get confirmation in local after adding key "cat ~/.ssh/id_ed25519.pub"

## Result "Hi [YourGitHubUsername]! You've successfully authenticated, but GitHub does not provide shell access"
YOU ARE DONE!


# Alternative way for config file change the port number
#Edit and save Config file:
Also, for editing the config file you can open it through the terminal using

vim ~/.ssh/config 
Next, press i to enter insert mode and add the below text.

Host github.com
        Hostname ssh.github.com
        Port 443
        ProxyCommand ncat --proxy-type http --proxy bmiproxyp.chmcres.cchmc.org:80 %h %p

#Vim Save and Quit Command

#To save a file and exit Vim, do the following:

1. Switch to command mode by pressing the Esc key.

2. Press : (colon) to open the prompt bar in the bottom left corner of the window.

3. Type x after the colon and hit Enter. This will save the changes and exit.



#*********************
Bad owner or permissions on /root/.ssh/config
fatal: Could not read from remote repository.

 

Please make sure you have the correct access rights
and the repository exists.
 
Fix--
	
Run: apt update
	
Run: apt install ncat
	
chmod 600 ~/.ssh/config