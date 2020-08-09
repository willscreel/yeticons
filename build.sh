#!/bin/bash

# set theme name
THEME_NAME="yeticons"

# set colors
FOLDER_BACK_COLOR="4d646f"
FOLDER_FRONT_COLOR="607d8b"
#FOLDER_FRONT_BORDER_OPACITY="0.0"
PAPER_COLOR="9ba8bb"
ICON_COLOR="292d31"

cd papirus-icon-theme

find . -type f -name "*-blue-*.svg" -exec sed -i"" -e "s/4877b1/$FOLDER_BACK_COLOR/g" {} +
find . -type f -name "*-blue-*.svg" -exec sed -i"" -e "s/5294e2/$FOLDER_FRONT_COLOR/g" {} +
#find . -type f -name "*-blue-*.svg" -exec sed -i"" -e "s/opacity:0.2/opacity:$FOLDER_FRONT_BORDER_OPACITY/g" {} +
find . -type f -name "*-blue-*.svg" -exec sed -i"" -e "s/e4e4e4/$PAPER_COLOR/g" {} +
find . -type f -name "*-blue-*.svg" -exec sed -i"" -e "s/1d344f/$ICON_COLOR/g" {} +
find . -type f -name "*-blue.svg" -exec sed -i"" -e "s/4877b1/$FOLDER_BACK_COLOR/g" {} +
find . -type f -name "*-blue.svg" -exec sed -i"" -e "s/5294e2/$FOLDER_FRONT_COLOR/g" {} +
#find . -type f -name "*-blue.svg" -exec sed -i"" -e "s/opacity:0.2/opacity:$FOLDER_FRONT_BORDER_OPACITY/g" {} +
find . -type f -name "*-blue.svg" -exec sed -i"" -e "s/e4e4e4/$PAPER_COLOR/g" {} +
find . -type f -name "*-blue.svg" -exec sed -i"" -e "s/1d344f/$ICON_COLOR/g" {} +
find . -type f -name "go-home.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +
find . -type f -name "user-trash.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +
find . -type f -name "user-trash-full.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +
find . -type f -name "entry-delete.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +
find ./Papirus/16x16/actions -type f -name "*.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +
find ./Papirus/18x18/actions -type f -name "*.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +
find ./Papirus/22x22/actions -type f -name "*.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +
find ./Papirus/24x24/actions -type f -name "*.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +
find ./Papirus/16x16/panel -type f -name "*.svg" -exec sed -i"" -e "s/dfdfdf/$PAPER_COLOR/g" {} +
find ./Papirus/22x22/panel -type f -name "*.svg" -exec sed -i"" -e "s/dfdfdf/$PAPER_COLOR/g" {} +
find ./Papirus/24x24/panel -type f -name "*.svg" -exec sed -i"" -e "s/dfdfdf/$PAPER_COLOR/g" {} +
find ./Papirus/16x16/places -type f -name "*.svg" -exec sed -i"" -e "s/444444/$PAPER_COLOR/g" {} +

rm -rf $HOME/.local/share/icons/$THEME_NAME

sed -i "s/Papirus/$THEME_NAME/g" Papirus/index.theme
cp -r Papirus $HOME/.local/share/icons/$THEME_NAME

git clean -fdx
git reset --hard
cd ../
git clean -fdx
git reset --hard
