#!/bin/bash


# the following function runs on script exit adn makes the cursor visible
function cleanup() {
    tput cnorm
}
trap cleanup EXIT


# hide cursor during the program
tput civis

# clear screen in preperation for the timer
clear

# Set variables to your desired time
sec=0
hour=00
min=00

       # begin hour while loop - while hour
       #variable is greater than or equal to 0 do minute loop
       while [ $hour -le 59 ]; do
                # begin minute loop - while min variable
                #is greater than or equal to 0 do second loop
                while [ $min -le 59 ]; do
                        # begin second loop - while sec variable is greater
                        # than or equal to 0 print time left
                        while [ $sec -le 59 ]; do
                                # echo time on same line so it overwrites last
                                # # line, makes it look like countdown
                                if [ $hour -gt 0 ]; then
                                        clear && echo -ne "$hour : $min : $sec" | figlet -f slant
                                elif [ $min -gt 0 ]; then
                                        clear && echo -ne "$min : $sec" | figlet -f slant
                                else
                                        clear && echo -ne "$sec" | figlet -f slant
                                fi
                                # Decrease the sec variable by 1
                                #each iteration of loop to countdown
                                let "sec=sec+1"
                                # wait a second before removing a second
                                # from the countdown clock
                                sleep 1
                        # End second loop
                        done
                        # Set second timer back to 59 to start new minute
                        sec=00
                        # Decrease min variable by 1 to remove a
                        # minute off the countdown
                        let "min=min+1"
                # end minute loop
                done
                # Set minute timer back to 59 to start new hour
                min=00
                # decrease the hour by 1 to remove hour off the countdown
                let "hour=hour+1"
        # end hour loop
        done 

clear && figlet -f slant Finished! | lolcat -a
# make cursor visable again
tput cnorm
