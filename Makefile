commit ?= default

push:
	@git add .
	@git commit -m "$(commit)"
	@git push
	@sync

