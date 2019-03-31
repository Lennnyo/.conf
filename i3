
#set $background #d0d5db
#set $foreground #947356
#set $gray       #a54242
#set $primary    #73645c
#set $secondary  #0B58A0
#set $tertiary   #E0957D
#set $warning    #0E64A0

#Font
font pango:monospace 12

# use these keys for focus, movement, and resize directions when reaching for
# the arrows is not convenient
set $up k
set $down j
set $left h
set $right l

# use Mouse+Mod1 to drag floating windows to their wanted position
floating_modifier Mod1

# start a terminal
bindsym Mod1+Return exec termite

# kill focused window
bindsym Mod1+Shift+q kill

# start dmenu (a program launcher)
# bindsym Mod1+d exec albert
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym Mod1+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym Mod1+$left focus left
bindsym Mod1+$down focus down
bindsym Mod1+$up focus up
bindsym Mod1+$right focus right

# alternatively, you can use the cursor keys:
bindsym Mod1+Left focus left
bindsym Mod1+Down focus down
bindsym Mod1+Up focus up
bindsym Mod1+Right focus right

# move focused window
bindsym Mod1+Shift+$left move left
bindsym Mod1+Shift+$down move down
bindsym Mod1+Shift+$up move up
bindsym Mod1+Shift+$right move right

# split in horizontal orientation
bindsym Mod1+Shift+v split h

# split in vertical orientation
bindsym Mod1+v split v

# enter fullscreen mode for the focused container
bindsym Mod1+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym Mod1+s layout stacking
bindsym Mod1+w layout tabbed
bindsym Mod1+e layout toggle split

# toggle tiling / floating
bindsym Mod1+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym Mod1+space focus mode_toggle

# focus the parent container
bindsym Mod1+a focus parent

# focus the child container
bindsym Mod1+d exec rofi -show run

#set $background #d0d5db
#set $foreground #947356
#set $gray       #a54242
#set $primary    #73645c
#set $secondary  #0B58A0
#set $tertiary   #E0957D
#set $warning    #0E64A0

#farben Variablen. Siehe .cache/wal/colors.sh
set_from_resource $fg i3wm.color7 
set_from_resource $bg i3wm.color2 
set_from_resource $hg i3wm.color0 
set_from_resource $bar i3wm.color9

# class 		boarder		bg		text	indicator	child_border
client.focused		$bg		$bg		$fg	$bg		$bg
client.focused_inactive $bg		$bg		$fg	$bg		$bg
client.unfocused	$fg		$bg		$fg	$bg		$hg
client.urgent		$bg		$bg		$fg	$bg		$bg
client.placeholder	$bg		$bg		$fg	$bg		$bg

client.background	$bg
# use these keys for focus, movement, and resize directions when reaching for
# the arrows is not convenient
set $up k
set $down j
set $left h
set $right l

# move the currently focused window to the scratchpad
bindsym Mod1+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
bindsym Mod1+minus scratchpad show

# switch to workspace
bindsym Mod1+1 workspace $workspace1
bindsym Mod1+2 workspace $workspace2
bindsym Mod1+3 workspace $workspace3
bindsym Mod1+4 workspace $workspace4
bindsym Mod1+5 workspace $workspace5
bindsym Mod1+6 workspace 6
bindsym Mod1+7 workspace 7
bindsym Mod1+8 workspace 8
bindsym Mod1+9 workspace 9
bindsym Mod1+0 workspace $workspace10

# rename Workspace
set $workspace2 "2: "
set $workspace1 "1: "
set $workspace3 "3: "
set $workspace4 "4: "
set $workspace5 "5: "
set $workspace10 "10: "

# move focused container to workspace
bindsym Mod1+Shift+1 move container to workspace $workspace1
bindsym Mod1+Shift+2 move container to workspace $workspace2
bindsym Mod1+Shift+3 move container to workspace $workspace3
bindsym Mod1+Shift+4 move container to workspace $workspace4
bindsym Mod1+Shift+5 move container to workspace $workspace5
bindsym Mod1+Shift+6 move container to workspace 6
bindsym Mod1+Shift+7 move container to workspace 7
bindsym Mod1+Shift+8 move container to workspace 8
bindsym Mod1+Shift+9 move container to workspace 9
bindsym Mod1+Shift+0 move container to workspace $workspace10

#Secondary Screen Workspaces 
workspace 10 output HDMI-1-2


assign [class="Firefox"] $workspace1
assign [class="Spotify"] $workspace5
#assign [class="kate"] $workspace3
assign [class="Wicd-client.py"] $workspace10 
assign [class="VirtualBox Machine"] $workspace4 

# reload the configuration file
bindsym Mod1+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym Mod1+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym Mod1+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym $left       resize shrink width 10 px or 10 ppt
        bindsym $down       resize grow height 10 px or 10 ppt
        bindsym $up         resize shrink height 10 px or 10 ppt
        bindsym $right      resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left        resize shrink width 10 px or 10 ppt
        bindsym Down        resize grow height 10 px or 10 ppt
        bindsym Up          resize shrink height 10 px or 10 ppt
        bindsym Right       resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym Mod1+r mode "resize"

#######################################################################
# automatically start i3-config-wizard to offer the user to create a
# keysym-based config which used their favorite modifier (alt or windows)
#
# i3-config-wizard will not launch if there already is a config file
# in ~/.i3/config.
#
# Please remove the following exec line:
#######################################################################

#Custom Keybindings
bindsym Mod1+Shift+x exec i3lock-fancy
bindsym Mod1+i exec chromium
bindsym Mod1+u exec qutebrowser
bindsym Mod1+o exec ~/.bin/scripts/dolphin.sh
for_window [class="dolphin" instance ="dolphin"] move scratchpad
bindsym Mod1+n exec netbeans
bindsym Mod1+g exec deepin-screenshot

#i3-Gaps
gaps inner 10 
gaps outer 1 
smart_gaps on

#windowstyle
#default_border pixel 3
default_border none

#background and startup-programms
#exec_always feh --bg-scale /home/lennard/Bilder/Wallpaper/fox.jpg
#exec --no-startup-id wicd-client
exec --no-startup-id xrandr --dpi 85 && i3 restart 
exec --no-startup-id wal -R
exec --no-startup-id ~/.bin/scripts/keyboardlayout.sh
exec --no-startup-id ~/.bin/scripts/mouse.sh 
exec --no-startup-id compton -c

#Pulse Audio controls
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5%
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5%
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle
bindsym XF86MonBrightnessUp exec light -A 5
bindsym XF86MonBrightnessDown exec light -U 5
binddym XF86-video-intel exec light -U 10


# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar{
    mode hide
    modifier Mod1
    status_command    i3status
    position          bottom 
    separator_symbol "" 
    colors {
	background $fg
        statusline $bg
        
#	Colors	<border>	<background>	<text> 		<indicator>
	focused_workspace	 $bar 		$bar 		$fg
	active_workspace	 $bg 		$bg 		$fg
	inactive_workspace	 $bg 		$bg 		$fg
#	urgent_workspace $foreground $warning
    }
}
