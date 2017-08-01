# ARNU - Arredondamento de Números

O aplicativo ARNU tem por objetivo auxiliar na resolução de cálculos de arredondamento matemático, abordados de forma técnica, entregando ao usuário um resultado didático e objetivo, o motivo e as normas utilizadas.

Esse aplicativo faz parte do projeto **Sistema de Apoio Didático Profissional**.
2013 - 2015

![main](https://github.com/RobertoDebarba/arnu/blob/master/screenshot/main.png)

## Autores

* [Rpberto Luiz Debarba](https://github.com/robertodebarba)
* [Jonathan Suptitz](https://github.com/jonnymohamed)

## Agradecimentos

* [CEDUP Timbó](https://www.facebook.com/ceduptimbo), direção e professores
* Douglas Ropelato
* Edésio Marcos Slomp
* Ricardo Heil
* Fábio João Batista Chaves Frena
* Alunos da turma 10 do curso Técnico em Informática com Habilitação em Desenvolvimento de Software - CEDUP Timbó, 2013 - 2014
* A todos de qualquer forma envolvidos no projeto. 


## Como instalar - LINUX

### Dependencias

* lazbuild (# sudo apt-get install -y lazarus)
* desktop-file-utils (# sudo apt-get install -y desktop-file-utils)

### Instruções

Compilar:
 `$ make`

Instalar:
 `$ make install`

Desinstalar:
 `$ make uninstall`

Limpar arquivos de compilação:
 `$ make clean`

## Como instalar - WINDOWS

### Dependencias

* lazbuild (Lazarus)

### Instruções

 `$ lazbuild -B src/Arnu.lpr`

## Empacotamento (LINUX)

### Dependencias

**O app deve estar desinstalado!**

* lazbuild (`$ sudo apt-get install -y lazarus`)
* desktop-file-utils (`$ sudo apt-get install -y desktop-file-utils`)
* checkinstall (`$ sudo apt-get install -y checkinstall`)

### Instruções

 `$ sh do-pack.sh <versao> <release> -<tipo de pacote 1> -<tipo de pacote 2 (opcional)>`

 Tipo de pacote:
   -R .rpm
   -D .deb

 Exemplo:
   `$ sh do-pack.sh 1.3 1 -D`
