all: build

build:
	jekyll build

serve:
	jekyll serve -w --force_polling
