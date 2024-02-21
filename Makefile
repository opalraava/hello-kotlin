.PHONY : all clean build run jar install-archlinux exec


all : app.jar

app.jar :
	make jar

clean :
	rm -f app.jar

jar :
	./gradlew jar
	find . -name '*.jar' | grep -v wrapper
	cp ./app/build/libs/app.jar .


build :
	./gradlew build

run :
	./gradlew run


install-archlinux :
	yay -S gradle kotlin



# this part below depends on the actual
# name found in the `find` command above.
# the `make jar` command must have succeeded.

exec : app.jar
	java -jar app.jar
