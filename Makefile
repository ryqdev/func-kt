# ------------------------------------------------
# Makefile that lets you do:
#   make run hello.kt
# and prints only your program’s output.
# ------------------------------------------------

# 1) By default, silence (don't echo) all commands.
.SILENT:

# 2) Capture the .kt filename from MAKECMDGOALS if present.
KOTLIN_FILE := $(filter %.kt,$(MAKECMDGOALS))

# 3) Remove that .kt filename from the final goals so make won't treat it as a target.
MAKECMDGOALS := $(filter-out $(KOTLIN_FILE), $(MAKECMDGOALS))

.PHONY: run build clean

# The 'run' target compiles then runs the jar and cleans up artifacts.
run: build
	java -jar $(KOTLIN_FILE:.kt=.jar)
	$(MAKE) clean

# The 'build' target compiles the captured Kotlin file into a jar.
build:
	kotlinc $(KOTLIN_FILE) -include-runtime -d $(KOTLIN_FILE:.kt=.jar)

# Clean up artifacts.
clean:
	rm -f *.jar
	rm -f *.class
