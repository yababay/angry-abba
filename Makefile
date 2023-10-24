all: add commit push

add:
	git add .

commit:
	echo "Введите описание коммита:"
	git commit -am $(shell echo `head -n1`)

push:
	git push origin articles
