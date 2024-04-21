#!/bin/sh

mkdir opi2lab
cd opi2lab

svnadmin create svnrepo
svn mkdir -m "Create trunk directory" file:///Users/ovchi/opi2lab/svnrepo/trunk
svn mkdir -m "Create branches directory" file:///Users/ovchi/opi2lab/svnrepo/branches
svn mkdir -m "Create tags directory" file:///Users/ovchi/opi2lab/svnrepo/tags

svn checkout file:///Users/ovchi/opi2lab/svnrepo/trunk master
cd master
svn commit -m "init"
unzip -o /Users/ovchi/commits/commit0.zip -d /Users/ovchi/opi2lab/master
svn add *
svn commit -m "r0" --username "red"

svn copy file:///Users/ovchi/opi2lab/svnrepo/trunk \
         file:///Users/ovchi/opi2lab/svnrepo/branches/red \
         -m "init copy"
svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/red
unzip -o /Users/ovchi/commits/commit1.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r1" --username "red"

unzip -o /Users/ovchi/commits/commit2.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r2" --username "red"

svn copy file:///Users/ovchi/opi2lab/svnrepo/branches/red \
         file:///Users/ovchi/opi2lab/svnrepo/branches/blue \
         -m "r2-r3" --username "blue"
svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/blue
unzip -o /Users/ovchi/commits/commit3.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r3" --username "blue"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/red
unzip -o /Users/ovchi/commits/commit4.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r4" --username "red"

unzip -o /Users/ovchi/commits/commit5.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r5" --username "red"

svn copy file:///Users/ovchi/opi2lab/svnrepo/branches/red \
         file:///Users/ovchi/opi2lab/svnrepo/branches/blueSecond \
         -m "r5-r6" --username "blue"
svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/blueSecond
unzip -o /Users/ovchi/commits/commit6.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r6" --username "blue"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/red
unzip -o /Users/ovchi/commits/commit7.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r7" --username "red"

unzip -o /Users/ovchi/commits/commit8.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r8" --username "red"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/blueSecond
unzip -o /Users/ovchi/commits/commit9.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r9" --username "blue"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/blue
svn merge file:///Users/ovchi/opi2lab/svnrepo/branches/blueSecond file:///Users/ovchi/opi2lab/svnrepo/branches/blue --username "blue"
svn commit -m "merge blueSecond into blue" --username "blue"
unzip -o /Users/ovchi/commits/commit10.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r10" --username "blue"

svn switch file:///Users/ovchi/opi2lab/svnrepo/branches/red
svn merge file:///Users/ovchi/opi2lab/svnrepo/branches/blue file:///Users/ovchi/opi2lab/svnrepo/branches/red --username "red"
svn commit -m "merge blue into red" --username "red"
unzip -o /Users/ovchi/commits/commit11.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r11" --username "red"

unzip -o /Users/ovchi/commits/commit12.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r12" --username "red"

unzip -o /Users/ovchi/commits/commit13.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r13" --username "red"

unzip -o /Users/ovchi/commits/commit14.zip -d /Users/ovchi/opi2lab/master
svn commit -m "r14" --username "red"