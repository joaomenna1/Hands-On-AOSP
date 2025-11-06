## Relatório 2 – Análise da Classe `ChooseLockGeneric`

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
