echo "Welcome to the Winfinibins Installer"
echo "Making Bin Directory"
mkdir winfinibins
echo "Done, located in $HOME/winfinibins"
echo "Adding Lines to .bashrc"
echo "export WINFINIBINS_DIR=\"$HOME/winfinibins\"" | tee -a $HOME/.bashrc
echo "export PATH=\"$HOME/winfinibins:$PATH\"" | tee -a $HOME/.bashrc
echo "...done"
echo "Installing Default Bins"
wget -P winfinibins https://raw.githubusercontent.com/WindevStudios/Winfinibins/main/defaultbins/winfinibins-info
chmod 555 winfinibins/winfinibins-info
echo "...done, 1 bin installed"
echo "Winfinibins installed!"
echo "Please restart your terminal."
