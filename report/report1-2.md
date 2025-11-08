## Relatório 1.2 – 

Atividade 1.2

A) Descreva como vocês encontraram o arquivo que guarda a string "Choose a new screen lock"

a.1 - O método que utilizamos e no qual encontramos o arquivo que guarda a string "Choose a new screen lock". Para localizar o arquivo onde a string estava definida, utilizamos o Android Code Search (https://cs.android.com). No campo de busca, foi feita a pesquisa como exemplificado na descrição da atividade:

"Choose a new screen lock"

a.2 - No qual o mecanismo de busca retornou o arquivo:

packages/apps/Settings/res/values-en-rGB/strings.xml

a.3 Dentro desse arquivo, foi encontrada a linha:

Choose a new screen lock

Portanto, a string que armazena o texto “Choose a new screen lock” possui o atributo name:

lock_settings_picker_update_lock_title

Esse é o identificador usado pelo código Java do Android para referenciar essa string no aplicativo Settings que usamos.

B) Explique como usou a tag name dessa string para encontrar o código fonte que define a tela de configurações de desbloqueio.

Como usamos a tag name para encontrar o código-fonte da tela de configurações de desbloqueio. Após identificar o nome da string (lock_settings_picker_update_lock_title), o próximo passo foi procurar onde ela é utilizada no código-fonte Java do app Settings.

b.1 - Foi feita uma busca no diretório de código-fonte do Settings (no AOSP):

grep -R "R.string.lock_settings_picker_update_lock_title" packages/apps/Settings/src/

b.2 - A busca revelou que a string é usada no arquivo:

packages/apps/Settings/src/com/android/settings/password/ChooseLockGeneric.java

b.3 - Dentro desse arquivo, no método updateActivityTitle(), encontramos:

if (updateExistingLock) { getActivity().setTitle(R.string.lock_settings_picker_update_lock_title); } else { getActivity().setTitle(R.string.lock_settings_picker_new_lock_title); }

Esse trecho define o título da tela de seleção de bloqueio de tela (“Choose a new screen lock” ou “Choose screen lock”) dependendo do contexto — se o usuário está criando um novo bloqueio ou atualizando um existente. Logo, o código que usa essa string pertence à classe ChooseLockGeneric.ChooseLockGenericFragment, responsável pela tela principal de configuração de bloqueio do dispositivo Android.

C)Enumere os alunos responsáveis por essa task e as principais contribuições de cada um (contribuição pode ser codigo escrito, ideias, sugestões ou qualquer coisa que contribuiu para a realização da task)

C.1 Alunos responsáveis pela task e principais contribuições

Aluno Contribuição principal

Aluno 1 – Poliana Tomé - Realizou a busca no Android Code Search e identificou o arquivo strings.xml com a definição da string “Choose a new screen lock”. Aluno 2 – João Menna - Orientou onde encontrar análise do código Java, utilizando o identificador lock_settings_picker_update_lock_title para localizar onde ele era usado no código-fonte (ChooseLockGeneric.java). Aluno 3 – Poliana Tomé e Matheus Arce - Documentou o processo e descreveu a relação entre o recurso de string XML e o título exibido na tela de configurações de desbloqueio. Também revisou a explicação final.
