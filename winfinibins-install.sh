# winfinibins install script
# kinda crappy, originally made a while ago
# ascii text, which i just added in (along with these comments)
echo "               /$$            /$$$$$$  /$$           /$$ /$$       /$$                    ";
echo "              |__/           /$$__  $$|__/          |__/| $$      |__/                    ";
echo " /$$  /$$  /$$ /$$ /$$$$$$$ | $$  \__/ /$$ /$$$$$$$  /$$| $$$$$$$  /$$ /$$$$$$$   /$$$$$$$";
echo "| $$ | $$ | $$| $$| $$__  $$| $$$$    | $$| $$__  $$| $$| $$__  $$| $$| $$__  $$ /$$_____/";
echo "| $$ | $$ | $$| $$| $$  \ $$| $$_/    | $$| $$  \ $$| $$| $$  \ $$| $$| $$  \ $$|  $$$$$$ ";
echo "| $$ | $$ | $$| $$| $$  | $$| $$      | $$| $$  | $$| $$| $$  | $$| $$| $$  | $$ \____  $$";
echo "|  $$$$$/$$$$/| $$| $$  | $$| $$      | $$| $$  | $$| $$| $$$$$$$/| $$| $$  | $$ /$$$$$$$/";
echo " \_____/\___/ |__/|__/  |__/|__/      |__/|__/  |__/|__/|_______/ |__/|__/  |__/|_______/ ";
echo "                                                                                          ";
echo "                                                                                          ";
echo "Welcome to the Winfinibins Installer"
echo "Making Bin Directory"
# creates the bin directory, where the binaries/commands come from
mkdir ~/winfinibins
echo "Done, located in $HOME/winfinibins"
echo "Adding Lines to .bashrc"
# Adds some .bashrc lines which makes the gears turn
echo "export WINFINIBINS_DIR=\"$HOME/winfinibins\"" | tee -a $HOME/.bashrc
echo "export SNIBINIFNIW_RID=\"$HOME/winfinibins (sorry this isnt reversed, although there is a default reverse bin, you have not yet installed Winfinibins so yeah.)\"" | tee -a $HOME/.bashrc
echo "export PATH=\"$HOME/winfinibins:$PATH\"" | tee -a $HOME/.bashrc
echo "export WINFINIBINS_VERSION=\"1.3.0\"" | tee -a $HOME/.bashrc
echo "...done"
echo "Installing Default Bins"
# installs the default bins
wget -P winfinibins https://raw.githubusercontent.com/WindevStudios/Winfinibins/main/defaultbins/winfinibins-info
wget -P winfinibins https://raw.githubusercontent.com/WindevStudios/Winfinibins/main/defaultbins/revstring
# perms change, because bash
chmod 555 winfinibins/winfinibins-info
chmod 555 winfinibins/revstring
echo "Two default bins installed: info and reverse, by The Winfinibins Authors"
echo "Winfinibins installed!"
# restart terminal prompt and explanation when/why you have to
echo "Please restart your terminal. You will only need to do this once when you finish installing Winfinibins for the .bashrc changes this installer has made to take place."
