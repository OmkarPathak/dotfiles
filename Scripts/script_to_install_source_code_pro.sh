version=1.050

echo "\n* Downloading version $version of source code pro font"
rm -f SourceCodePro_FontsOnly-$version.zip
rm -rf SourceCodePro_FontsOnly-$version
font_folder=source-code-pro-2.030R-ro-${version}R-it
zip_file=${version}R-it.zip
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/$zip_file

echo "\n* Unziping package"
unzip $zip_file
mkdir -p ~/.fonts

echo "\n* Copying fonts to ~/fonts"
cp $font_folder/OTF/*.otf ~/.fonts/

echo "\n* Updating font cache"
sudo fc-cache -f -v

echo "\n* Looking for 'Source Code Pro' in installed fonts"
fc-list | grep "Source Code Pro"

echo "\n* Now, you can use the 'Source Code Pro' fonts, ** for sublime text ** just add the lines bellow to 'Preferences > Settings':"
echo '\n  "font_face": "Source Code Pro",'
echo '  "font_size": 10'

echo "\n* Finished :)\n"
