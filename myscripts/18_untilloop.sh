
#!/usr/bin/bash

# Until loop is just opposite than while loop

a=10


#until [[ $a -eq 1 ]]
until [[ $a == 1 ]]                # This will not print 1
do
   echo "Value of a is $a"
   let a--
done

b=10
#<< comment
until [[ $b -eq 5 ]]
do
  echo "Num is $b"
  let b--
done

#comment
