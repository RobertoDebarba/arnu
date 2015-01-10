#!/bin/sh

#Verifica primeiro parametro
if [ ! -z "$3" ]; then
	if [ $3 = "-D" ]; then
		target="-D"
	elif [ $3 = "-R" ]; then
		target="-R"
	else
		echo "Erro: Parametro $3 invalido"
		exit 1
	fi
fi
#Verifica segundo parametro
if [ ! -z "$4" ]; then
	if [ $4 = "-D" ] && [ $3 != $4 ]; then
		target=$target" -D"
	elif [ $4 = "-R" ] && [ $3 != $4 ]; then
		target=$target" -R"
	else
		echo "Erro: Parametro $4 invalido"
		exit 1
	fi
fi
#Verifica parametros de versao e release
if [ -z "$1" ] && [ -z "$2" ]; then
	echo "Erro: Parametro versao e/ou release nao encontrado!"
exit 1
fi
#Verifica parametros de tipo de pacote
if [ -z "$target" ]; then
	echo "Erro: Nenhum parametro de tipo de pacote valido encontrado"
	exit 1
fi

#Executa operacao principal
echo "Criando documentacao..."
mkdir doc-pak
cp AUTHORS copyright VERSION doc-pak

echo "Compilando aplicativo..."
make
checkinstall $target --install=no -y --pkgname=arnu --pkgversion=$1 --pkgrelease=$2 --pkglicense=GPL-3 --maintainer='Roberto Luiz Debarba \<roberto.debarba@gmail.com\>' --deldoc=yes

echo "Limpando arquivos de compilacao..."
make uninstall
make clean
rm -r doc-pak

echo "Operacao completa!"
