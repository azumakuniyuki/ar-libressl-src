#  __  __       _         __ _ _      
# |  \/  | __ _| | _____ / _(_) | ___ 
# | |\/| |/ _` | |/ / _ \ |_| | |/ _ \
# | |  | | (_| |   <  __/  _| | |  __/
# |_|  |_|\__,_|_|\_\___|_| |_|_|\___|
# -----------------------------------------------------------------------------
SHELL := /bin/sh
TIME  := $(shell date '+%s')
CHMOD := chmod
CP    := cp
RM    := rm -f

# -----------------------------------------------------------------------------
.PHONY: clean

git-status:
	git status

diff push branch:
	@$(MAKE) git-$@
fix-commit-message: git-commit-amend
cancel-the-latest-commit: git-reset-soft
remove-added-file: git-rm-cached

git-commit-amend:
	git commit --amend

git-current-branch:
	@git branch --contains=HEAD | grep '*' | awk '{ print $$2 }'

git-push:
	@ for v in `git remote show | grep -v origin`; do \
		printf "[%s]\n" $$v; \
		git push --tags $$v `$(MAKE) git-current-branch`; \
	done

clean:

