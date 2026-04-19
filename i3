# set mod key and terminal 
set $mod Mod4
set $terminal alacritty


# inner and outer borders
gaps inner 2
gaps outer 2

# window border settings
default_border pixel 1
#default_floating_border pixel 1

# defin names for workspace
set $ws1	"1"
set $ws2	"2"
set $ws3	"3"
set $ws4	"4"
set $ws5	"5"
set $ws6	"6"

# switch to workspace 
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6

# move focused container to workspace 
bindsym $mod+Shift+1 move container to  workspace $ws1
bindsym $mod+Shift+2 move container to  workspace $ws2
bindsym $mod+Shift+3 move container to  workspace $ws3
bindsym $mod+Shift+4 move container to  workspace $ws4
bindsym $mod+Shift+5 move container to  workspace $ws5
bindsym $mod+Shift+6 move container to  workspace $ws6

## move focused container to workspace 
#bindsym $mod+Alt+1 move container to  workspace $ws1 ; workspace $ws1
#bindsym $mod+Alt+2 move container to  workspace $ws2 ; workspace $ws2
#bindsym $mod+Alt+3 move container to  workspace $ws3 ; workspace $ws3
#bindsym $mod+Alt+4 move container to  workspace $ws4 ; workspace $ws4
#bindsym $mod+Alt+5 move container to  workspace $ws5 ; workspace $ws5
#bindsym $mod+Alt+6 move container to  workspace $ws6 ; workspace $ws6

# open terminal and rofi 
bindsym $mod+Return exec $terminal
bindsym $mod+d exec rofi -show drun 

# kill focused window
bindsym $mod+q kill

# windows  screen lock
#bindsym $mod+l exec --no-startup-id "~/.config/i3/lock.sh"

# logout i3
bindsym $mod+Shift+e exec "i3-msg exit"

# reload the i3 configuration file 
# Quick is that the configuration file takes effect 
bindsym $mod+Control+c exec "i3-msg reload"
bindsym $mod+Control+r exec "i3-msg restart"


# window operation

# alternatively,you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Right focus right
bindsym $mod+Up focus up
bindsym $mod+Down focus down

# alternatively,you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Right move right
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Down move down

# enter /fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

##
# toggle tiling/floating
bindsym $mod+Shift+space   floating toggle 

# change focus betwen tiling / floating windows
bindsym $mod++space  focus mode_toggle

# use $mod+Mouse to drag floating windows to their wanted position
floating_modifier $mod

## set specific windows to floating mode
#for_window [window_role="app"]				floating enable


##

# split in horizontal orientation
bindsym $mod+h split h
 
# split in vertical orientation
bindsym $mod+v split v


# startup applications 
exec_always  --no-startup-id picom --config ~/.config/picom/picom.conf
#exec_always  --no-startup-id dunst 
exec_always  --no-startup-id fcitx5 
exec_always  --no-startup-id copyq 
exec_always  --no-startup-id feh --bg-fill ~/.wallpaper.jpg
exec_always  --no-startup-id ~/.config/polybar/launch.sh
exec_always  --no-startup-id vmware-user 

