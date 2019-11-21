#!/bin/bash
# dead1 AutoWifi v2.0
# Author: dead1
# Version: 2.0
RET=$PWD
echo "**************** -=[   Installing AutoWifi...    ]=- ****************"
echo "**************** -=[ Configurting Directories... ]=- ****************"
sleep 2s
sudo mv autowifi/ /opt/
sudo mv hcxdumptool/ /opt/
sudo mv hcxtools/ /opt/
sudo chmod 755 -R /opt/autowifi/
sudo chmod 755 -R /opt/hcxtools/
sudo chmod 755 -R /opt/autowifi/
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Creating AutoWifi Shortcut... ]=- ****************"
sleep 2s
echo "[ *** DONE **** ]"
echo ""
sudo cp deadfi /bin/autowifi
sudo chmod 755 /bin/autowifi
echo "**************** -=[ Installing Dependencies... ]=- ****************"
sleep 2s
sudo apt install -y hashcat mdk3 aircrack-ng libcurl4-openssl-dev libssl-dev zlib1g-dev
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Installing HCXDump Tools... ]=- ****************"
sleep 2s
cd /opt/hcxdumptool/
sudo make
sudo make install
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Installing HCX Tools... ]=- ****************"
sleep 2s
cd /opt/hcxtools/
sudo make
sudo make install
echo "[ *** DONE **** ]"
echo ""
echo "**************** -=[ Cleaning Up Installation Files... ]=- ****************"
sleep 2s
sudo rm -rf $RET
cd $HOME
echo "[ *** DONE **** ]"
echo ""
echo "*******************************************************************"
echo "|                       dead1's AutoWifi                          |"
echo "|                 -= Enjoy. Use Responsibly =-                    |"
echo "|      I am not responsible for anything you do with this,        |"
echo "| I am not responsible for anything that happens from using this. |"
echo "|               ****** USE AT YOUR OWN RISK ******                |"
echo "|                       Use:    autowifi                          |"
echo "|                                            ... dead1.           |"
echo "*******************************************************************"
echo ""

