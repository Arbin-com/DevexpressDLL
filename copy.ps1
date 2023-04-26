param(
  [string]$path
)

if(!(Test-Path $path)){
   new-item "$path" -ItemType Directory -Force
}

Copy-Item -Path "$PSScriptRoot/*.dll" -Destination "$path" -Recurse
