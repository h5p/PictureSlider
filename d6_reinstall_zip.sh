echo "##################"
echo "# Delete old H5P #"
echo "##################"
rm picture_slider.h5p
zip -r picture_slider.h5p *
echo "################################"
echo "# New Picture Slider is ready! #"
echo "################################"
echo "################################"
echo ""
echo "################################"
echo "# Delete temp files from H5P   #"
echo "################################"
cd /var/www/drupal6/
sudo drush cc all
echo "################################"
echo "# Delete symlinks from H5P lib #"
echo "################################"
sudo rm -rf sites/default/files/h5p/
sudo drush -y pm-disable h5peditor
sudo drush -y pm-uninstall h5peditor
sudo drush -y pm-disable h5p
sudo drush -y pm-uninstall h5p
sudo drush -y pm-enable h5p
sudo drush -y pm-enable h5peditor
cd ~/dev/picture_slider/ 
