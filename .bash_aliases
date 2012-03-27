#! /bin/sh

## Utils
alias convert-ogv-mpg='mencoder -ovc lavc -oac mp3lame -o a.mpg -idx'

# Convert a string of HEX characters into an ASCII string
alias hex-conv="perl -pe 's/(..)/chr(hex())/ge'"

# Reload bash terminal environment
alias resource="source ~/.bashrc" 			


# see all completable commands on this machine
alias completable="complete -p | sed -e's/.* \([^ ]\+\)/\1/' | sort | less"


#  print line total of all files in folder
# prints out the number of lines which are contained within abd below current folder
# and a total
# find . -name "*" -print0      -- find every file below this point in the directory tree, print its
#                                  full file name to...
# xargs -0 wc -l 		-- 
alias line_total='find . -name "*" -print0 | xargs -0 wc -l'
alias online_hosts="nmap -sP 192.168.1.*"

alias graphics_card="lspci -v | grep VGA"

## Aptitude aliases
alias inst="sudo apt-get install -y"	# install using apt-get
alias rem="sudo apt-get purge"		# remove using apt-get
alias search?="aptitude search"		# search a package aptitude
alias show?="aptitude show"		# show a package from aptitude

# add alert to when a command is completed
alias alert='notify-send -i /usr/share/icons/gnome/32x32/apps/gnome-terminal.png "[$?] $(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/;\s*alert$//'\'')"'

## Search aliases
alias du-common="du * -hsc"		# displays size of files, folders and children from the current folder, no following symbolic links
alias du-symbolic="du * -hsLc"		# does as du-common, but will include files traced under symbolic links
alias find-on-disk="find / | grep ";	alias f-disk="find-on-disk"
alias find-home="find ~ | grep ";	alias f-home="find-home"

## Network aliases

## Open a socks connection at port 1234 to stulogin
# connect via SSH to dcs stulogin server
alias vpn-sheffield='sudo vpnc --local-port 0'	# access sheffield VPN
alias turn-on-doenut='wakeonlan 00:26:18:d3:f4:fd'
alias external-ip='curl ifconfig.me'

## ip_packet forwarding
alias ip-forwarding-on='sudo echo 1 > /proc/sys/net/ipv4/ip_forward'
alias ip-forwarding-off='sudo echo 0 > /proc/sys/net/ipv4/ip_forward'

## Process aliases
alias 'ps?'='ps aux | grep '		# find a running process
alias 'ps!'='ps aux'			# find all running processes

# navigation aliases
alias ..='cd ..'
alias ...='cd .. ; cd ..'
alias mkdir="mkdir -p"		# create any parents along the way if supplying a directory path
alias sl=ls

alias ":q"=exit			# VIM exit command
alias 'open'='xdg-open' 	# MacOSX open command - linux command
alias 'busy'='j=0;while true; do let j=$j+1; for i in $(seq 0 20 100); do echo $i;sleep 1; done | dialog --gauge "Deleting folder $j : `sed $(perl -e "print int rand(99999)")"q;d" /usr/share/dict/words`" 6 40;done'
alias 'busy-1'='for i in {0..60000}; do echo $i; sleep 1; done | dialog --gauge "Install..." 6 40'
alias 'be'='bundle exec'
alias 'remove-all-spaces'="rename -v 's/ /_/g' *"
alias 'find-deleted-file'="grep -a -B 25 -A 100 'some string in the file' /dev/sda1 > results.txt"
alias 'google-safe'='find | egrep "\.(ade|adp|bat|chm|cmd|com|cpl|dll|exe|hta|ins|isp|jse|lib|mde|msc|msp|mst|pif|scr|sct|shb|sys|vb|vbe|vbs|vxd|wsc|wsf|wsh)$"'


# program aliases
alias minecraft="java -Xmx1024M -Xms512M -cp minecraft.jar net.minecraft.LauncherFrame"
alias lua=lua50
alias easyNeuron="java -jar ~/spudbot/lib/easyNeurons-1.6/easyNeurons.jar"
alias tcl="tclsh8.5"	# alias for tcl
alias wish="wish8.5"	# alias for wish
alias zarch='cd ~/applications/zarch-0.92/; sudo ./xzarch; cd -' # 'Lander' game
alias shark-helper='~/development/sharkzapper-Helper/helper.py&'
alias ibmchal='x3270 129.35.161.134:23'
for f in $freqs; do
       	alias_command="alias setcpu-"$f"='for x in {0..7}; do cpufreq-selector -c \$x -f "$f" ; done'"
	eval $alias_command
done 
for g in $govs; do
        alias_command="alias setcpu-"$g"='for x in {0..7}; do cpufreq-selector -c \$x -g "$g" ; done'"
        eval $alias_command
done


# git aliases
alias gs='git st'
alias gd='git df'
alias gdv='git dfv'
alias gc='git ci'
