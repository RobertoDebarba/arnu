#Diretorio de instalação
DIRBIN=/usr/bin
DIRSHARE=/usr/share/arnu
DIRDOCDEB=/usr/share/doc/arnu
DIRMAN=/usr/share/man/man8
#Diretorio do atalho de lançador
DIRLAN=/usr/share/applications/

#Compila aplicativo
arnu: arnu
	@echo 'Compilando aplicativo...'
	@lazbuild -B src/Arnu.lpr

.PHONY: clean

#Limpa arquivos de compilação
clean:
	@echo 'Limpando arquivos de compilação...'
	@if [ -d src/lib ]:; then rm src/lib -r; fi
	@if [ -f src/arnu ]:; then rm src/arnu; fi

.PHONY: install

#Instala aplicativo, copiando arquivos para pastas
install:
	@mkdir $(DIRDOCDEB)
	@mkdir $(DIRSHARE)
	@echo 'Copiando arquivos binários...'
	@cp src/arnu $(DIRBIN)
	@echo 'Copiando arquivos de instalação...'
	@cp other/icone.jpg $(DIRSHARE)
	@cp other/lauchapplication.sh $(DIRSHARE)
	@echo 'Criando atalho no lançador...'
	@desktop-file-install other/ARNU.desktop
	@echo 'Copiando documentacao...'
	@cp changelog.Debian.gz $(DIRDOCDEB)
	@cp other/arnu.8.gz $(DIRMAN)

.PHONY: uninstall

#Desinstala aplicativo, removendo arquivos das pastas
uninstall:
	@echo 'Removendo arquivos de instalação...'
	@rm -f $(DIRBIN)/arnu
	@echo 'Removendo atalho do lançador...'
	@rm -f $(DIRLAN)'ARNU.desktop'
	@rm -rf $(DIRSHARE)
	@echo 'Removendo documentacao...'
	@rm -rf $(DIRDOCDEB)
	@rm -f $(DIRMAN)/arnu.8.gz

