git reset --hard origin/main
git pull

fvm flutter clean
fvm flutter pub get
fvm flutter pub run build_runner build -d
fvm flutter pub run msix:create --store

Write-Output 'Generated Windows msix!'