all:
	valac main.vala -X -O2 --pkg=posix --pkg=gtk+-3.0 -o suprapatate

install: all
	mkdir -p ~/.local/bin/
	mkdir -p ~/.local/share/

	echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.zshrc	
	cp suprapatate ~/.local/bin/
	cp patate.png ~/.local/share/
	cp ./git ~/.local/bin
	

run: all
	./suprapatate
