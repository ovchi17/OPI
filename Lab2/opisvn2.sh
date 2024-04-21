#!/bin/sh

mkdir opi2lab
cd opi2lab

svnadmin create svnrepo
svn mkdir -m "Create trunk directory" file:///Users/ovchi/opi2lab/svnrepo/trunk
svn mkdir -m "Create branches directory" file:///Users/ovchi/opi2lab/svnrepo/branches
svn mkdir -m "Create tags directory" file:///Users/ovchi/opi2lab/svnrepo/tags

svn checkout file:///Users/ovchi/opi2lab/svnrepo/trunk master
cd master
touch opi2.txt
svn add opi2.txt
svn commit -m "init"

svn copy file:///Users/ovchi/opi2lab/svnrepo/trunk \
         file:///Users/ovchi/opi2lab/svnrepo/branches/red \
         -m "init copy"
svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/red
echo "r0" >> opi2.txt
svn commit -m "r0" --username "red"

echo "r1" >> opi2.txt
svn commit -m "r1" --username "red"

echo "r2" >> opi2.txt
svn commit -m "r2" --username "red"

svn copy file:///Users/ovchi/opi2lab/svnrepo/branches/red \
         file:///Users/ovchi/opi2lab/svnrepo/branches/blue \
         -m "r2-r3" --username "blue"
svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/blue
echo "r3" >> opi2.txt
svn commit -m "r3" --username "blue"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/red
echo "r4" >> opi2.txt
svn commit -m "r4" --username "red"

echo "r5" >> opi2.txt
svn commit -m "r5" --username "red"

svn copy file:///Users/ovchi/opi2lab/svnrepo/branches/red \
         file:///Users/ovchi/opi2lab/svnrepo/branches/blueSecond \
         -m "r5-r6" --username "blue"
svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/blueSecond
echo "r6" >> opi2.txt
svn commit -m "r6" --username "blue"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/red
echo "r7" >> opi2.txt
svn commit -m "r7" --username "red"

echo "r8" >> opi2.txt
svn commit -m "r8" --username "red"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/blueSecond
echo "r9" >> opi2.txt
svn commit -m "r9" --username "blue"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/blue
svn merge file:///Users/ovchi/opi2lab/svnrepo/branches/blueSecond file:///Users/ovchi/opi2lab/svnrepo/branches/blue --username "blue"
svn commit -m "merge blueSecond into blue" --username "blue"
echo "r10" >> opi2.txt
svn commit -m "r10" --username "blue"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/red
svn merge file:///Users/ovchi/opi2lab/svnrepo/branches/blue file:///Users/ovchi/opi2lab/svnrepo/branches/red --username "red"
svn commit -m "merge blue into red" --username "red"
echo "r11" >> opi2.txt
svn commit -m "r11" --username "red"

echo "r12" >> opi2.txt
svn commit -m "r12" --username "red"

echo "r13" >> opi2.txt
svn commit -m "r13" --username "red"

echo "r14" >> opi2.txt
svn commit -m "r14" --username "red"