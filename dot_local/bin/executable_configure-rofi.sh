#!/usr/bin/env bash

#theme
sed -i 's/onedark/nord/g' $HOME/.config/rofi/launchers/type-1/shared/colors.rasi
sed -i 's/onedark/nord/g' $HOME/.config/rofi/launchers/type-2/shared/colors.rasi
sed -i 's/onedark/nord/g' $HOME/.config/rofi/launchers/type-3/shared/colors.rasi
sed -i 's/onedark/nord/g' $HOME/.config/rofi/launchers/type-4/shared/colors.rasi
sed -i 's/onedark/nord/g' $HOME/.config/rofi/applets/shared/colors.rasi

#font
sed -i -E 's/font: \"(.+)\"/font: \"JetBrains Mono Nerd Font 18\"/' $HOME/.config/rofi/launchers/type-1/shared/fonts.rasi
sed -i -E 's/font: \"(.+)\"/font: \"JetBrains Mono Nerd Font 18\"/' $HOME/.config/rofi/launchers/type-2/shared/fonts.rasi
sed -i -E 's/font: \"(.+)\"/font: \"JetBrains Mono Nerd Font 18\"/' $HOME/.config/rofi/launchers/type-3/shared/fonts.rasi
sed -i -E 's/font: \"(.+)\"/font: \"JetBrains Mono Nerd Font 18\"/' $HOME/.config/rofi/launchers/type-4/shared/fonts.rasi
sed -i -E 's/font: \"(.+)\"/font: \"JetBrains Mono Nerd Font 18\"/' $HOME/.config/rofi/applets/shared/fonts.rasi

#style
sed -i -E "s/theme='(.+)'/theme='style-7'/" $HOME/.config/rofi/launchers/type-1/launcher.sh
sed -i -E "s/theme='(.+)'/theme='style-3'/" $HOME/.config/rofi/launchers/type-2/launcher.sh
sed -i -E "s/theme='(.+)'/theme='style-3'/" $HOME/.config/rofi/launchers/type-3/launcher.sh
sed -i -E "s/theme='(.+)'/theme='style-9'/" $HOME/.config/rofi/launchers/type-4/launcher.sh