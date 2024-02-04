#!/bin/bash

# Epoch date oluşturan fonksiyon
generateEpochDate() {
  date +%s
}

# Epoch date oluştur
epochDate=$(generateEpochDate)

# Klasör adını belirle (en dış path için)
outerFolderName="$epochDate"

# Klasör adını belirle (belirtilen path için)
innerFolderName="allure-reports/$epochDate"



# Klasörleri oluştur
mkdir "$outerFolderName"
mkdir -p "$innerFolderName"

# Allure raporunu generate et ve oluşturulan klasöre kaydet
allure generate -o "$innerFolderName"

# Eğer varsa innerFolderName klasörünü sil
if [ -d "$outerFolderName" ]; then
  rm -rf "$outerFolderName"
fi