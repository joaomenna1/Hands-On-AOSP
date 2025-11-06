# DevTITANS 08 - Hands-On AOSP - Equipe 1

## Introdução
Este repositório contém um trabalho prático sobre a alteração da tela de desbloqueio por padrão (pattern lockscreen) no Android Open Source Project (AOSP). Aqui você encontrará patches necessários para modificar o comportamento padrão da tela de desbloqueio do Android.

## Tabela de Conteúdos
1. [Contribuidores](#contribuidores)
2. [Recursos](#recursos)
3. [Requisitos](#requisitos)
4. [Configuração de Hardware](#configuração-de-hardware)
5. [Aplicando Patches](#aplicando-patches)
6. [Uso](#uso)
7. [Contato](#contato)

## Contribuidores

<div align="center">
  <img src="https://github.com/joaomenna1/Hands-On-AOSP/blob/main/assets/poliana.png" width="180" height="250" />
  <img src="https://github.com/joaomenna1/Hands-On-AOSP/blob/main/assets/elian.png" width="180" height="250" />
  <img src="https://github.com/joaomenna1/Hands-On-AOSP/blob/main/assets/diego.png" width="180" height="250" />
  <img src="https://github.com/joaomenna1/Hands-On-AOSP/blob/main/assets/matheus.png" width="180" height="250"/>
  <img src="https://github.com/joaomenna1/Hands-On-AOSP/blob/main/assets/joao-menna.png" width="180" height="250" />
</div>


### Papéis dos Contribuidores
- **Desenvolvedor 1 (Poliana Cavalcante Tomé)**
  - xxxxxxxxxxxxxxx
  - xxxxxxxxxxxxxxx

- **Desenvolvedor 2 (Elian da Rocha Pinheiro)**
  - xxxxxxxxxxxxxxx
  - xxxxxxxxxxxxxxx
  - 
- **Desenvolvedor 3 (Diego Augusto de Abreu Furtado)**
  - Relatório Atividade 1.1- Encontrar o código fonte da tela de desbloqueio:
        Encontrado o arquivo strings.xml que define a string "Enter your pattern" que está em frameworks/base/packages/SystemUI/res-keyguard/values/strings.xml
       Guardado o nome dessa string (campo name da tag string do arquivo strings.xml): "keyguard_enter_your_pattern"
       O correspondente dessa string em português é "Desenhe o padrão"

       Descreva como vocês encontraram o arquivo que guarda a string "Enter your pattern"
       R: Foi pesquisado "Enter your pattern" no código fonte do aosp

       Explique como usou a tag name dessa string para encontrar a tradução desse texto no strings.xml em português.
       R: Uma vez que foi encontrado o arquivo strings.xml dentro de frameworks/base/packages/SystemUI/res-keyguard/values/, e guardada a string "keyguard_enter_your_pattern", foi procurada a string "keyguard_enter_your_pattern" dentro de frameworks/         base/packages/SystemUI/res-keyguard/values-pt-rBR/ para descobrir o correspondente em pt-BR

       
   xxxxxxxxxxxxxxx

- **Desenvolvedor 4 (Matheus Tenazor Arce)**
  - Encontrar a estrutura que guarda as opções de desbloqueio disponíveis.
    -Print:
    <img width="1131" height="774" alt="print_2_1" src="https://github.com/user-attachments/assets/77d5af1d-1808-4ad8-9367-1a2b1e0e9b85" />

  - Explicar o que representa o atributo quality na estrutura.
    - `lock.defaultQuality`  é um nível de qualidade de seguranca do tipo de bloqueo escolhido.
    - Responsável : Matheus Tenazor

- **Desenvolvedor 5 (João Roberto Nogueira Menna Barreto)**
  - Pesquisa e análise detalhada do código da classe `ChooseLockGeneric.java`
  - Identificação dos métodos responsáveis pela seleção e inicialização das Activities de configuração de bloqueio
  - Elaboração de relatório técnico sobre a lógica de funcionamento do pattern lockscreen no AOSP
  - [Ver relatório completo](./report/report2.md)

## Recursos
Para rodar esta atividade, você precisará de:
- Um computador com os requisitos descritos na seção [Configuração de Hardware](#configuração-de-hardware).
- O AOSP na versão 14.0.0_r27 baixado no seu computador.

## Requisitos
- Sistema operacional: Linux (preferencialmente Ubuntu)
- Repo
- Git
- Ambiente de desenvolvimento configurado para AOSP

## Configuração de Hardware
Para compilar e testar o AOSP, é recomendável ter:
- CPU: 8 núcleos (16 recomendados)
- RAM: 16 GB (32 GB recomendados)
- Espaço em disco: 250 GB (500 GB recomendados)
- Conexão de internet de alta velocidade

## Aplicando Patches
Para aplicar os patches disponíveis neste repositório, siga os passos abaixo:


## Uso
Após aplicar os patches, compile o AOSP normalmente. O processo pode variar dependendo da versão do AOSP e do dispositivo de destino. Em geral, os comandos são:

1. Configure o ambiente de compilação:
   ```bash
   source 
   ```

Após a compilação, instale a imagem resultante no dispositivo de destino e teste as modificações na tela de desbloqueio.

## Contato
Para mais informações ou dúvidas, entre em contato com:
- Email: [joaomenna1@gmail.com](mailto:joaomenna1@gmail.com)
- GitHub: [joaomenna1](https://github.com/joaomenna1)

Sinta-se à vontade para abrir issues ou enviar pull requests para contribuir com este projeto.
