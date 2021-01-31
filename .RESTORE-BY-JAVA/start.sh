cd javarestore
javac *.java
cd ..
java javarestore.Main
cd javarestore
rm $(ls | grep class)
cd ..
