## Relatório 3 – 
## 3- Múltiplas telas de configuração:
Ao analisar o código-fonte encontrado na atividade 2 (ChooseLockGeneric.java), que controla a configuração do bloqueio de tela por padrão, encontramos a classe ChooseLockGenericFragment. Nessa classe, há uma referência ao ScreenLockType, que é responsável por definir o tipo de bloqueio de tela.
Pesquisando por ScreenLockType, podemos encontrar o enum que define cada variação de bloqueio de tela.

<img width="654" height="394" alt="image" src="https://github.com/user-attachments/assets/c911769b-3be9-4038-8ba9-ef9e5f059b7f" />




Como o ScreenLockType é utilizado na ChooseLockGeneric
Dentro da classe ChooseLockGenericFragment, a variável ScreenLockType é usada para determinar qual tipo de bloqueio será configurado. O ScreenLockType define os diferentes métodos de bloqueio, como padrões, senhas, PINs.

<img width="717" height="143" alt="image" src="https://github.com/user-attachments/assets/04f24453-d880-499c-a12e-8433e78c63d2" />





funcao que faz a troca de cada variacao: 
A função setUnlockMethod é a principal responsável por iniciar a troca do método de desbloqueio de tela. Ela é chamada quando o usuário seleciona uma das opções de bloqueio na lista de preferências, como Nenhum, PIN ou Senha.
<img width="679" height="389" alt="image" src="https://github.com/user-attachments/assets/6556a700-7b6d-45ca-8ccf-bd9eb7389487" />




A função updateUnlockMethodAndFinish contém a lógica principal que inicia a configuração do bloqueio de tela. Primeiro, ela verifica se a senha do usuário foi confirmada. Em seguida, determina a qualidade do bloqueio de tela, levando em consideração possíveis requisitos de complexidade definidos pelos administradores de dispositivo. O método chama getIntentForUnlockMethod(quality) para obter o Intent apropriado para iniciar a atividade de configuração do tipo de bloqueio selecionado, seja para senha, padrão ou PIN. A atividade é iniciada com o startActivityForResult(), passando o Intent gerado. Se o tipo de bloqueio selecionado for "Nenhum" ou "Deslizar" (qualidade PASSWORD_QUALITY_UNSPECIFIED), o sistema remove as credenciais de bloqueio de tela existentes e desabilita o bloqueio.

<img width="796" height="700" alt="image" src="https://github.com/user-attachments/assets/70e0d12b-e801-47c3-8b75-5dd440930aee" />


Com a maquina de estado sendo: 
<img width="1475" height="453" alt="image" src="https://github.com/user-attachments/assets/7757a929-6cf4-46a9-b681-ac6ec2ebc263" />



