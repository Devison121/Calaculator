#! /bin/bash

while true; do
read -p "Enter fist number: " x
read -p "Enter second number: " y
read -p "Enter oparation $(echo -e "\e[1;32m /,+,- and x \e[0m"): " c

if [[ $x =~ ^-?[0-9]*\.?[0-9]+$ && $y =~ ^-?[0-9]*\.?[0-9]+$ ]]; then
        if [[ $c =~ [x/+-] ]]; then
            case "$c" in
                      "/")
                         if [[ $y -eq 0 ]]; then
                             echo -e "\e[1;33m Error,division by zero \e[0m"
                               fi
                            Aswer=$(echo "scale=3; $x / $y" | bc);;
                        "x") Aswer=$(echo "scale=1; $x * $y" | bc);;
                        "-") Aswer=$(echo "scale=1; $x - $y" | bc);;
                        "+") Aswer=$(echo "scale=3; $x + $y" | bc);;

                  esac
            echo "Aswer is: $Aswer"
           else
               echo -e "\e[1;33m Enter specific oparation for simple calculation \e[0m"

            fi
    else
          echo -e "\e[1;33m Enter int/float for simple calculation \e[0m"
fi
read -p "Enter q to quit or c to continue: " p
  if [[ $p = q ]]; then
             exit
       fi
done
