cd ~/
mkdir a
cd a
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
yes | repo init -u https://github.com/Xcelerator1/patchrom -b marshmallow
repo sync -c
source build/envsetup.sh
cd v3750
make fullota
sudo apt install wput
export DATEA=$(date +"%d%m%y")
wput out/f*.zip ftp://Xcelerator:2SUKY5hT0vMq@uploads.androidfilehost.com:21/Miui8-v3750-$DATEA.zip
