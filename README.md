# Processamento de Imagens

## Objetivos Gerais

Entender e aplicar o conceito de detecção de bordas através da implementação do algoritmo Laplaciano no MATLAB. Explicar como cada algoritmo funciona, bem como a sua implementação no software MATLAB.
  
## Detecção de bordas
  
   É uma técnica de processamento de imagem e visão computacional para determinar pontos de uma imagem digital em que a intensidade luminosa muda repentinamente. Mudanças repentinas em imagens geralmente refletem eventos importantes no cenário, como a descontinuação da profundidade (transição entre o objeto e o fundo), descontinuação da orientação da superfície, mudança das propriedades do material ou variações na iluminação da cena.
   
   A detecção de bordas é muito importante para a extração de características da imagem. Sua utilização reduz significativamente a quantidade de dados a serem processados, e descarta informação que é considerada menos relevante, ainda que preservando importantes propriedades estruturais de uma imagem.

## Laplaciano

   O Laplaciano usando pico negativo no centro da matriz é o tipo mais comum; no entanto é igualmente válido usar o oposto em termos de sinais, ou seja, o centro da matriz positivo e as bordas negativas.  Usando um desses kernels, o Laplaciano é calculado usando um método de convolução. A aplicação do operador Laplaciano pode ser usada também como um detector de passagem pelo zero (“zero crossing detector”), ou seja, pontos na imagem aonde o Laplaciano muda de sinal, sendo a ocorrência desses pontos justamente nas “bordas” da imagem (pontos onde a intensidade da imagem muda rapidamente), embora isso possa ocorrer também em pontos que não são considerados “bordas”. Por isso o detector de passagem pelo zero (usando o operador Laplaciano) é um tipo de detector de borda, embora não seja específico para esse fim.O modelo básico de implementação do Laplaciano envolve a multiplicação dos valores dos pixels em uma janela ou matriz dada. A matriz deve ser quadrada e seu tamanho precisa ser ímpar (3x3, 9x9 etc).
   
   Geralmente, se o número de pixels na matriz é k, então o peso do pixel central  é dado por -(k²  - 1) enquanto todos os outros pixels possuem pesos de 1, sendo a soma total de todos os pixels iguais a 0.  O filtro assim definido, passa-alta, permite passar uma ampla série de faixas de freqüências conforme a matriz do filtro definida - maior tamanho, maior a banda passante. Embora precauções devem ser tomadas pelo uso de matrizes muito largas, pois podem causar problemas nas bordas da imagem resulta.

## Conjunto de Imagens do Algoritmo de Laplaciano 

   A seguir são apresentadas algumas imagens antes e depois de aplicar o filtro Laplaciano para diferentes tamanhos de kernels ( 3x3, 5x5, 7x7). Observe que quanto maior o tamanho do kernel mais a borda fica maior.  

## Imagem original
![alt text](https://github.com/Wms5/DevTests/blob/master/Imagens/h1.png?raw=true "Imagem Original")
## Imagem após o filtro Laplaciano 3x3
![alt text](https://github.com/Wms5/DevTests/blob/master/Imagens/h1laplaciano3x3.jpg?raw=true "Laplacinano 3x3")
## Imagem após o filtro Laplaciano 5x5
![alt text](https://github.com/Wms5/DevTests/blob/master/Imagens/h1laplaciano5x5.jpg?raw=true "Laplacinano 5x5")
## Imagem após o filtro Laplaciano 7x7
![alt text](https://github.com/Wms5/DevTests/blob/master/Imagens/h1laplaciano7x7.jpg?raw=true "Laplacinano 7x7")


