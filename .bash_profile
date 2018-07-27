
#Echo lets user know if using .bashrc or .bash_profile
echo 'FROM BASH_PROFILE'


#Tells terminal to always use .bashrc for bash configs
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi


