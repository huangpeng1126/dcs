default: compile jar

compile:
	mkdir -p classes
	javac -cp external/fig.jar: -d classes `find src -name "*.java"`
	time scalac -cp external/fig.jar:external/tea.jar:external/berkeleyParser.jar:external/trove-2.1.0.jar -d classes `find src -name "*.java"` `find src -name "*.scala"`

jar:
	jar cf dcs.jar -C classes .
	jar uf dcs.jar -C src .

clean:
	rm -rf classes dcs.jar
