#!/bin/bash

clear && echo "                                                                                        
                                                                                        
                                                                                        
                                ██████████████████████████                              
                                ████                  ████                              
                                ██████████████████████████                              
                                  ██                  ██                                
                                  ██                  ██                                
                                  ██    ██  ██  ██    ██                                
                                  ██      ██  ██      ██                                
                                  ████      ██      ████                                
                                    ████          ████                                  
                                      ████  ██  ████                                    
                                        ████  ████                                      
                                        ████  ████                                      
                                      ████      ████                                    
                                    ████    ██    ████                                  
                                  ██      ██  ██      ██                                
                                  ██    ██  ██  ██    ██                                
                                  ██  ██  ██  ██  ██  ██                                
                                ██████████████████████████                              
                                ████                  ████                              
                                ██████████████████████████                              
                                                                                        
                                                                                        
                                                                                        
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

"
echo 'Time Manager' | figlet | lolcat
echo ' '
echo ' '

echo 'Pick a time management tool...'

echo ' '
echo ' '

tool=("Countdown Timer" "Stopwatch" "Quit")

select fav in "${tool[@]}"; do
    case $fav in
        "Countdown Timer")
            . ./countdown.sh
            ;;
        "Stopwatch")
            . ./stopwatch.sh
            ;;
	"Quit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
