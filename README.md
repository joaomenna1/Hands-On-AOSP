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
  - Pesquisa e identificação do arquivo `strings.xml` que contém a string `"Choose a new screen lock"`  
  - Localização do atributo `lock_settings_picker_update_lock_title` e mapeamento com o código Java no arquivo `ChooseLockGeneric.java`  
  - Documentação do processo de rastreamento da string até a classe responsável pela tela de configuração de bloqueio  
  - Colaboração com João Menna e Matheus Arce na revisão e explicação do funcionamento do recurso  

---

- **Desenvolvedor 2 (Elian da Rocha Pinheiro)**  
  - Pesquisa sobre as múltiplas telas de configuração de bloqueio no AOSP  
  - Análise da classe `ChooseLockGenericFragment` e da enumeração `ScreenLockType`  
  - Estudo das funções `setUnlockMethod` e `updateUnlockMethodAndFinish`, responsáveis pela troca e validação dos métodos de desbloqueio  
  - Descrição do fluxo lógico e da máquina de estados dos tipos de bloqueio de tela  

---

- **Desenvolvedor 3 (Diego Augusto de Abreu Furtado)**  
  - Localização do arquivo `strings.xml` que contém a string `"Enter your pattern"` em `frameworks/base/packages/SystemUI/res-keyguard/values/`  
  - Identificação do atributo `keyguard_enter_your_pattern` e sua tradução correspondente no arquivo `values-pt-rBR`  
  - Análise do fluxo de exibição da tela de padrão de desbloqueio (pattern lockscreen)  
  - Documentação do processo de rastreamento e correspondência entre strings em inglês e português  

---

- **Desenvolvedor 4 (Matheus Tenazor Arce)**  
  - Investigação da estrutura de código responsável por armazenar as opções de desbloqueio disponíveis  
  - Identificação do atributo `lock.defaultQuality` e explicação de seu papel como nível de segurança do tipo de bloqueio  
  - Colaboração na documentação da correlação entre o nível de qualidade e o método de desbloqueio selecionado  

---

- **Desenvolvedor 5 (João Roberto Nogueira Menna Barreto)**  
  - Pesquisa e análise detalhada do código da classe `ChooseLockGeneric.java`  
  - Identificação dos métodos responsáveis pela seleção e inicialização das Activities de configuração de bloqueio  
  - Elaboração de relatório técnico sobre a lógica de funcionamento do pattern lockscreen no AOSP  

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
