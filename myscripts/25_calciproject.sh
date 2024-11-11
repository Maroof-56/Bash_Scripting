#!/usr/bin/bash


echo "_______________________________________"
echo "      Welcome To The Maths World       "


read -p "Enter 1st Number: " Num1
read -p "Enter 2nd Number: " Num2

echo 
echo "Enter Choice for Calculation of $Num1 & $Num2"
echo " a- For Addition"
echo " b- For Substraction"
echo " c- For Multiplication"
echo " d- For Division  "


read choice

 function thankyou {
    echo "     "
    echo "Thanks for coming here,come again..."
}

function Addition {

      x=Num1
      y=Num2

  let add=$x+$y
  echo " Addition of $Num1 & $Num2 is  $add "
  thankyou
}

function Substraction {
     x=Num1
     y=Num2

     echo " Subtraction of $Num1 & $Num2 is $(($x-$y ))"
     thankyou
 }

function Multiplication {

       x=Num1
       y=Num2

      echo " Multiplication of $Num1 & $Num2 is $(($x*$y ))"
      thankyou
  }

 Division() {

      x=Num1
      y=Num2
      echo "Division of $Num1 & $Num2 is $(( $x/$y ))"
      thankyou
}


case $choice in
         a)Addition;;
         b)Substraction;;
         c)Multiplication;;
         d)Division;;
         *) echo "Invalid Option"
esac

