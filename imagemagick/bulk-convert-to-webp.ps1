# POWERSHELL SCRIPT
# Using ImageMagic.org, convert all png/jpg/gif recursively from current directory to webp
# Create this scrip, move to folder to convert, right-click > "Run With PowerShell"
Get-ChildItem .\* -R -include *.png, *.jpg, *.jpeg, *.gif |
Foreach-Object {
  magick convert -strip $_.FullName -quality 60 "$($_.FullName.split('.')[0].ToLower()).webp"
  echo "Converting $_"
}
