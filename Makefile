#Diretorio de instalação
DIRAPP=/opt/arnu
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
	@mkdir $(DIRAPP)
	@echo 'Copiando arquivos binários...'
	@cp src/arnu $(DIRAPP)
	@echo 'Copiando arquivos de instalação...'
	@cp other/icone.jpg $(DIRAPP)
	@cp other/lauchapplication.sh $(DIRAPP)
	@echo 'Criando atalho no lançador...'
	@cp other/ARNU.desktop $(DIRLAN)

.PHONY: uninstall

#Desinstala aplicativo, removendo arquivos das pastas
uninstall:
	@echo 'Removendo arquivos de instalação...'
	@rm -rf $(DIRAPP)
	@echo 'Removendo atalho do lançador...'
	@rm -f $(DIRLAN)'ARNU.desktop'
