#!/bin/bash

rm -rf allure-results && mkdir allure-results
# Testleri çalıştır
npx playwright test --reporter=line,allure-playwright

# allure-results klasörünü sil ve tekrar oluştur
