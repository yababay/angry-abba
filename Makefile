all: add commit push

add:
	git add .

commit:
	# COMMIT=$(shell read -p "Введите описание коммита: " COMMIT; echo $$COMMIT)
	git commit -am $(shell echo `head -n1`)

push:
	git push origin articles
