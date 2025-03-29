#!/usr/bin/env ruby
wallpaper_dir = "/home/tuncay/Resimler/Wallpapers"
Dir.chdir(wallpaper_dir)
arr = Dir.glob("*")
photo = arr[rand(0..arr.size-1)]
system "swaybg -o \\\* -i #{wallpaper_dir}/#{photo} -m fill"
