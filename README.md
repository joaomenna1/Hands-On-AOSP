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
- **Desenvolvedor 1**
  - Pesquisa do código responsável pela tela de desbloqueio
  - Desenvolvimento das alterações em Java
  - Documentação da atividade

- **Desenvolvedor 2**
  - Pesquisa do código responsável pela tela de desbloqueio
  - Desenvolvimento das alterações em Java
  - Documentação da atividade

- **Desenvolvedor 3**
  - Desenvolvimento das alterações em Java
  - Aplicação de patches e testes

- **Desenvolvedor 4**
  - Desenvolvimento das alterações em Java
  - Aplicação de patches e testes

- **Desenvolvedor 5 (João Roberto Nogueira Menna Barreto)**
  - Pesquisa e análise detalhada do código da classe `ChooseLockGeneric.java`
  - Identificação dos métodos responsáveis pela seleção e inicialização das Activities de configuração de bloqueio
  - Elaboração de relatório técnico sobre a lógica de funcionamento do pattern lockscreen no AOSP
 
## Relatório – Análise da Classe `ChooseLockGeneric`

### 1. Processo de descoberta dos métodos
A análise iniciou-se a partir do código-fonte da classe `ChooseLockGeneric.java`, localizada no pacote `com.android.settings.password`, disponível no repositório **AOSP (Android Open Source Project)**.  
Após examinar a estrutura da classe, observou-se que ela contém diversos métodos voltados ao gerenciamento dos tipos de bloqueio de tela, como *Pattern*, *PIN* e *Password*.

A busca pelos métodos relevantes foi feita com base em dois critérios:
1. **Método que define qual Activity será chamada** – procurou-se por trechos que retornassem um `Intent` vinculado ao tipo de bloqueio selecionado.
2. **Método que efetivamente inicia a próxima Activity** – buscou-se instruções contendo `startActivity()` ou `startActivityForResult()`.

Com isso, foram identificados os seguintes métodos:
- `getIntentForUnlockMethod(int quality)`: responsável por escolher qual Activity será aberta conforme o tipo de bloqueio.
- `updateUnlockMethodAndFinish(int quality, boolean disabled, boolean chooseLockSkipped)`: responsável por iniciar a Activity correspondente.

---

### 2. Função que faz a troca de Activities
A troca de Activities ocorre dentro do método:

```java
void updateUnlockMethodAndFinish(int quality, boolean disabled, boolean chooseLockSkipped)
```

Esse método é executado quando o usuário seleciona um método de bloqueio (por exemplo, Pattern).
Ele chama internamente o método getIntentForUnlockMethod(quality) para determinar qual Activity deverá ser aberta e, em seguida, realiza a troca de tela por meio de:

```java
startActivityForResult(intent, requestCode);
```

Dessa forma, o Android inicia a Activity responsável pela configuração do método de desbloqueio escolhido.

### 3. Classe que controla a tela de configurações do método de desbloqueio padrão

A tela exibida quando o usuário escolhe o desbloqueio por **padrão (Pattern)** é controlada pela classe:

```java
com.android.settings.password.ChooseLockPattern
```
```java
protected Intent getLockPatternIntent()
```

O método constrói e retorna um Intent que aponta para ChooseLockPattern, que é a Activity encarregada de exibir a interface onde o usuário desenha o padrão e confirma o bloqueio.

```java
protected Intent getLockPatternIntent() {
    ChooseLockPattern.IntentBuilder builder =
        new ChooseLockPattern.IntentBuilder(getContext())
            .setForFingerprint(mForFingerprint)
            .setUserId(mUserId);
    return builder.build();
}
```
### 4. Conclusão

A investigação da classe `ChooseLockGeneric` permitiu compreender a lógica de seleção e inicialização das *Activities* de configuração de bloqueio de tela no Android.  
O método `getIntentForUnlockMethod()` é responsável por definir **qual Activity será aberta** conforme o tipo de bloqueio escolhido pelo usuário, enquanto `updateUnlockMethodAndFinish()` é responsável por **iniciar efetivamente essa Activity**.  
Por fim, a classe `ChooseLockPattern` foi identificada como a **controladora da interface de configuração do padrão de desbloqueio**, exibindo a tela onde o usuário desenha e confirma o padrão.



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
- Email: [seu-email@example.com](mailto:joaomenna1@gmail.com)
- GitHub: [joaomenna1](https://github.com/joaomenna1)

Sinta-se à vontade para abrir issues ou enviar pull requests para contribuir com este projeto.
