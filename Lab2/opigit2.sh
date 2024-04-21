#!/bin/sh
mkdir opi2lab
cd opi2lab 
git init
touch opi2.txt
echo "r0" >> opi2.txt   

git config --local user.name "red"
git config --local user.email "hogdaw1@gmail.com"
git checkout -b red
git add .
git commit -m "r0"

echo "r1" >> opi2.txt                          
git add .              
git commit -m "r1"     

echo "r2" >> opi2.txt
git add .              
git commit -m "r2"     

git config --local user.name "blue"
git config --local user.email "hogdaw2@gmail.com"
git checkout -b blue
echo "r3" >> opi2.txt                          
git add .                                        
git commit -m "r3"  

git config --local user.name "red"
git config --local user.email "hogdaw1@gmail.com"
git checkout red
echo "r4" >> opi2.txt                          
git add .                                        
git commit -m "r4"  

echo "r5" >> opi2.txt                          
git add .                                        
git commit -m "r5" 

git config --local user.name "blue"
git config --local user.email "hogdaw2@gmail.com"
git checkout -b blueSecond
echo "r6" >> opi2.txt                          
git add .                                        
git commit -m "r6" 

git config --local user.name "red"
git config --local user.email "hogdaw1@gmail.com"
git checkout red
echo "r7" >> opi2.txt                          
git add .                                        
git commit -m "r7" 

echo "r8" >> opi2.txt                          
git add .                                        
git commit -m "r8" 

git config --local user.name "blue"
git config --local user.email "hogdaw2@gmail.com"
git checkout  blueSecond
echo "r9" >> opi2.txt                          
git add .                                        
git commit -m "r9" 

git checkout blue
git merge blueSecond
#CONFLICT
git add .
git commit -m "solved conflict during merge blueSecond into blue" 
echo "r10" >> opi2.txt                          
git add .                                        
git commit -m "r10" 

git config --local user.name "red"
git config --local user.email "hogdaw1@gmail.com"
git checkout red
git merge blue
#CONFLICT
git add .
git commit -m "solved conflict during merge blueSecond into blue" 
echo "r11" >> opi2.txt                          
git add .                                        
git commit -m "r11" 

echo "r12" >> opi2.txt                          
git add .                                        
git commit -m "r12" 

echo "r13" >> opi2.txt                          
git add .                                        
git commit -m "r13" 

echo "r14" >> opi2.txt                          
git add .                                        
git commit -m "r14"

git log --graph --decorate --all --oneline