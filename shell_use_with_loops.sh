#!/usr/bin/env bash

# Nome do Script: script_nome.sh
# Descrição: Verifica se o parametro é maior do que 10, caso seja, dá um retorno no prompt
# Autor: Erick Jhone Rodrigues da Silva
# Data: 02/10/2001
# Versão: 1.0


#EXERCÍCIOS COM VARIÁVEIS

#1 Crie um script que defina uma variável chamada "nome" com o valor do seu nome e a imprima na tela.

nome="Erick"

echo "$nome"
echo -e "\n\n"
#2 Escreva um script que calcule a soma de dois números armazenados em variáveis e exiba o resultado.
echo "-------------------------------------------------------------------------------------------------------------------------------"
numero1=1
numero2=2
soma=$((numero1+numero2))
echo $soma

echo -e "\n\n"

#3 Crie um script que armazene o valor de um diretório em uma variável e, em seguida, liste o conteúdo desse diretório
echo "-------------------------------------------------------------------------------------------------------------------------------"

caminho="/home"
ls $caminho

echo -e "\n\n"

#4 Escreva um script que peça ao usuário para digitar sua idade e armazene-a em uma variável. Em seguida, exiba a idade na tela.

echo -n "Escreva a sua idade: "
read idade

echo "A idade informada foi $idade"
echo -e "\n\n"


#5 Crie um script que utilize a variável de ambiente "USER" para saudar o usuário com "Olá, [nome do usuário]!".
echo "-------------------------------------------------------------------------------------------------------------------------------"

usuario_atual=$USER
echo "Olá, $usuario_atual!"

echo -e "\n\n"





# EXERCICIOS COM IF

#1 Escreva um script que verifique se um número digitado pelo usuário é positivo, negativo ou zero.
echo "-------------------------------------------------------------------------------------------------------------------------------"

echo -n "Digite um numero: "
read numeroDigitado

if [[ numeroDigitado -gt 0 ]]; then
  echo "Numero digitado é positivo!"
elif [[ numeroDigitado -eq 0 ]]; then
  echo "Número é igual a zero"
else
  echo "Número é negativo!"
fi #statements

echo ""
echo ""
echo ""
echo -e "\n\n"

#2 Crie um script que peça ao usuário para digitar sua idade e, com base na idade, exiba se ele é maior ou menor de idade.
echo "-------------------------------------------------------------------------------------------------------------------------------"

echo -n "Informe sua idade para verificar se está na maioridade: "
read idade2

if [[ idade2 -ge 18 ]]; then
  echo "Você é maior de idade!"
else
  echo "Vocẽ é menor de idade!"
fi

echo -e "\n\n"

#3 Escreva um script que verifique se um arquivo existe no diretório atual. Se existir, exiba uma mensagem sobre sua existência.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo -n "Informe o nome de um arquivo para pesquisar nesse diretório: "
read nomeArquivo

if [[ -e $nomeArquivo ]]; then
  echo "Arquivo existe!"
else
  echo "Arquivo não existe!"
fi
echo -e "\n\n"

#4 Crie um script que peça ao usuário para digitar um número e, em seguida, determine se ele é par ou ímpar.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo -n "Escreva um numero para verirficar se é para ou ímpar: "
read numeroParOuImpar


if [[ $(expr $numeroParOuImpar % 2) -eq 0 ]]; then
  echo "Número é par"
else
  echo "Numero é impar"
fi
echo -e "\n\n"

#5 Escreva um script que pergunte ao usuário o dia da semana e exiba se é um dia útil ou um dia de folga.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "Informe um dia da semana (informe usando um número): "
echo ""
echo "1 - Domingo"
echo "2 - Segunda"
echo "3 - Terça"
echo "4 - Quarta"
echo "5 - Quinta"
echo "6 - Sexta"
echo "7 - Sábado"
echo ""
echo -n "Número escolhido: "
read diaSemana

if [ $diaSemana -ge 2 ] || [ $diaSemana -le 6 ]; then
  echo "Dia útil"
else
  echo "Dia de folga"
fi
echo -e "\n\n"


 #EXERCICIOS COM FOR

 #1 - Crie um script que use um loop for para imprimir os números de 1 a 10.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo ""
 for (( i = 0; i < 11; i++ )); do
   echo -n " $i |"
 done
echo -e "\n\n"

#2 Escreva um script que calcule a soma dos números de 1 a 100 usando um loop for.
echo "-------------------------------------------------------------------------------------------------------------------------------"
variavel=0
for (( i = 0; i <= 100; i++ )); do
   variavel=$((variavel + i))
done

echo "Soma de todos os números até 100: $variavel"
echo -e "\n\n"

#3 Crie um script que liste todos os arquivos no diretório atual usando um loop for.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "Lista de arquivos do diretório atual: "
echo ""

for arquivosDiretorioAtual in *; do
  if [[ -f "$arquivosDiretorioAtual" ]]; then
    echo "---------------"
    echo "$arquivosDiretorioAtual"
  fi
done

echo -e "\n\n"

#4 Escreva um script que exiba a tabuada de multiplicação de um número escolhido pelo usuário, de 1 a 10.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo -n "Informe um numero para exibir a tabuada de multiplicacao do mesmo: "
read numeroTabuada
echo ""

for (( i = 1; i <= 10; i++ )); do
  echo "$numeroTabuada x $i = $(($numeroTabuada*i))"
done
echo -e "\n\n"
#5 Crie um script que use um loop for para imprimir uma contagem regressiva de 5 a 0.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "Contagem Regressiva: "
echo ""
for (( i = 5; i >= 0; i-- )); do
  echo "$i ..."
done

echo -e "\n\n"
#EXERCICIOS COM WHILE

#1  Escreva um script que solicite ao usuário para adivinhar um número e continue pedindo até que o número correto seja adivinhado.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "JOGO DE ADVINHAÇÃO - QUAL O NÚMERO MISTERIOSO? "
echo ""
numeroMisterioso=24

while true; do
    echo -n "Informe o numero: "
    read numeroTentativa
    if [[ $numeroTentativa -eq $numeroMisterioso ]]; then
      echo "Parabéns, você acertou o número!"
      break
    else
      echo "Número incorreto, tente novamente!"
      if [[ $numeroTentativa -lt $numeroMisterioso ]]; then
        echo ""
        echo "Dica: Tente um número maior"
        echo ""
      else
        echo ""
        echo "Dica: Tente um número menor"
        echo ""
      fi
    fi
done
echo -e "\n\n"

#2 Crie um script que calcule a média de uma série de números inseridos pelo usuário usando um loop while.
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "INFORME UMA SÉRIE DE NUMEROS PARA CALCULAR A MÉDIA, PARA SAIR ESCREVA 'exit': "

count=0;
numbers=0;


while true; do
  echo "Informe um numero"
  read number
  if [[ $number == "exit" ]]; then
    break;
  fi
  numbers=$(($numbers+$number))
  count=$(($count+1))
done

  media=$(($numbers/$count))
  echo "Média dos numeros informados: $media"
  echo -e "\n\n"

#3 Escreva um script que copie arquivos de um diretório para outro enquanto o usuário desejar continuar.
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo""
  echo "COPIADOR DE ARQUIVOS: "
  echo "Esse software, copiará arquivos enquanto não escrever exit"

  while true; do
    echo "Para sair escreva 'exit'"
    echo ""
    echo -n "Qual o caminho do arquivo copiado? "
    read arquivoCopiado

    if [ "$arquivoCopiado" == "exit" ]; then
      break
    fi


    if [ ! -f "$arquivoCopiado" ]; then
      echo ""
      echo "Arquivo não localizado, uma nova tentativa é indicada, lembre-se que essa aplicação não opera com diretórios"
      echo ""
      continue
    fi

    echo -n "Informe o destino: "
    read diretorioFinal

    if [ ! -d "$diretorioFinal" ]; then
      echo ""
      echo "Não encontramos o diretório de destino informado, tente corrigi-lo."
      echo ""
      continue
    fi
    echo ""
    cp "$arquivoCopiado" "$diretorioFinal"
    echo "Cópia feita!"
    echo ""
  done
  echo -e "\n\n"

#4 Crie um script que conte quantas vezes um determinado caractere aparece em uma string digitada pelo usuário, usando um loop while.
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "VERIFICADOR DE CARACTERE EM UMA PALAVRA"

  echo -n "Digite uma palavra ou frase: "
  read stringRecebida

  echo -n "Qual caractere deseja contar? : "
  read caractereCount

  i=0
  c=0

  while [ $i -lt ${#stringRecebida} ]; do
    if [ "${stringRecebida:$i:1}" == "$caractereCount" ]; then
      c=$((c+1))
    fi
    i=$((i+1))
  done

  echo "O caractere escolhido ('$caractereCount')  foi encontrado em $c posições"
  echo -e "\n\n"

  #5 Escreva um script que simule um jogo de dados, lançando dois dados repetidamente com um loop while até que a soma dos valores seja 7.
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "BEM-VINDO AO JOGO DE DADOS!"
  echo ""
  echo "Para jogar, escreva 'lancar dado', para sair escreva 'sair': "
  echo ""
  while true; do
    read escolha
    if [[ $escolha == "sair" ]]; then
      break
    fi

  dado1=$((1+RANDOM%6))
  dado2=$((1+RANDOM%6))
  somaDados=$(($dado1+$dado2))

  if [[ $somaDados -eq 7 ]]; then
    echo "A soma dos dados foi $somaDados"
    echo "Parabéns você venceu!"
    break
  else
    echo "A soma dos dados foi $somaDados tente novamente!"
  fi
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"
done
