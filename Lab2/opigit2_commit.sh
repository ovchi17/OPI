#!/bin/sh
mkdir opi2lab
cd opi2lab 
git init
unzip -o /Users/ovchi/commits/commit0.zip -d /Users/ovchi/opi2lab/

git config --local user.name "red"
git config --local user.email "hogdaw1@gmail.com"
git checkout -b red
git add .
git commit -m "r0"

unzip -o /Users/ovchi/commits/commit1.zip -d /Users/ovchi/opi2lab/                        
git add .              
git commit -m "r1"     

unzip -o /Users/ovchi/commits/commit2.zip -d /Users/ovchi/opi2lab/
git add .              
git commit -m "r2"     

git config --local user.name "blue"
git config --local user.email "hogdaw2@gmail.com"
git checkout -b blue
unzip -o /Users/ovchi/commits/commit3.zip -d /Users/ovchi/opi2lab/                         
git add .                                        
git commit -m "r3"  

git config --local user.name "red"
git config --local user.email "hogdaw1@gmail.com"
git checkout red
unzip -o /Users/ovchi/commits/commit4.zip -d /Users/ovchi/opi2lab/                   
git add .                                        
git commit -m "r4"  

unzip -o /Users/ovchi/commits/commit5.zip -d /Users/ovchi/opi2lab/                         
git add .                                        
git commit -m "r5" 

git config --local user.name "blue"
git config --local user.email "hogdaw2@gmail.com"
git checkout -b blueSecond
unzip -o /Users/ovchi/commits/commit6.zip -d /Users/ovchi/opi2lab/                        
git add .                                        
git commit -m "r6" 

git config --local user.name "red"
git config --local user.email "hogdaw1@gmail.com"
git checkout red
unzip -o /Users/ovchi/commits/commit7.zip -d /Users/ovchi/opi2lab/                         
git add .                                        
git commit -m "r7" 

unzip -o /Users/ovchi/commits/commit8.zip -d /Users/ovchi/opi2lab/                         
git add .                                        
git commit -m "r8" 

git config --local user.name "blue"
git config --local user.email "hogdaw2@gmail.com"
git checkout  blueSecond
unzip -o /Users/ovchi/commits/commit9.zip -d /Users/ovchi/opi2lab/                       
git add .                                        
git commit -m "r9" 

git checkout blue
git merge blueSecond
#CONFLICT
git add .
git commit -m "solved conflict during merge blueSecond into blue" 
unzip -o /Users/ovchi/commits/commit10.zip -d /Users/ovchi/opi2lab/                       
git add .                                        
git commit -m "r10" 

git config --local user.name "red"
git config --local user.email "hogdaw1@gmail.com"
git checkout red
git merge blue
#CONFLICT
git add .
git commit -m "solved conflict during merge blueSecond into blue" 
unzip -o /Users/ovchi/commits/commit11.zip -d /Users/ovchi/opi2lab/                          
git add .                                        
git commit -m "r11" 

unzip -o /Users/ovchi/commits/commit12.zip -d /Users/ovchi/opi2lab/                         
git add .                                        
git commit -m "r12" 

unzip -o /Users/ovchi/commits/commit13.zip -d /Users/ovchi/opi2lab/                        
git add .                                        
git commit -m "r13" 

unzip -o /Users/ovchi/commits/commit14.zip -d /Users/ovchi/opi2lab/                         
git add .                                        
git commit -m "r14"

git log --graph --decorate --all --oneline