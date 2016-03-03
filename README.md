# Ambiente de desenvolvimento JS e Node no Windows 10

Há pouco tempo eu peguei um novo computador com Windows 10, sem substituir
o meu MacBook. Eu preciso executar algumas rotinas de testes diariamente
no meu trabalho e queria os resultados desses testes quando executados via
Chakra, a mais recente runtime de JavaScript da Microsoft.

Um dos meus maiores receios era o fato que eu iria precisar de uma boa
interface de linha de comando (CLI), inclusive algo que não fosse
radicalmente diferente do que já estou acostumado. Achei que não iria
conseguir algo razoável, porém tive uma ótima surpresa e gostei do
resultado que pretendo relatar aqui para compartilhar e documentar caso eu
precise repetir os mesmos passos no futuro.

Eu fiz uma instalação do 0 do Windows 10, nada de softwares extra. Acho
que isso serviu no mínimo para me livrar de várias dores de cabeça. Se
você estiver diante de um Windows 7 ou 8, faça o upgrade de graça pelo
site da Microsoft.

Instalado o Windows 10, eu instalei o [Visual Studio Community Edition]
[VisualStudio]. Ele vai ser eventualmente útil, mesmo que você não
pretenda utilizar ele diretamente. Por ser community edition ele é de
graça. Acredito que a sua restrição é para uso em projetos open source.

Instale o [Git]. A documentação está nesse mesmo site. O instalador do git
inclui uma ferramenta chamada `git-bash`. É dela que vamos precisar.

As configurações padrões da instalação podem ser seguidas normalmente. Uma
delas é importante manter, que seria a _Use Git from the Windows Command
Prompt_. Se você continua trabalhando com outros sistemas operacionais,
vai fundo e deixa selecionada a opção _Checkout as-is, commit Unix-style
line endings_ na página seguinte.

Instale o [cmder], ele foi a melhor opção que encontrei para representar
o equivalente ao iTerm 2 no Mac. Você pode fazer o download da versão
completa. Por mais que pareça redundante (pois a completa vem com o
_git-for-windows_ - ela também já adiciona todos os comandos Unix no seu
`PATH`. Isso é uma ajuda significativa.

Após instalar o _cmder_, abra-o e entre direto para as suas configurações.
Você pode tanto clicar no ícone no canto superior à esquerda da janela ou
ir pelos atalhos `Win+Alt+P`.

Logo na primeira tela, em __Main__, selecione uma fonte bacana (como a __Lucida
Console__ ou outra que você encontre via internet) e marque a opção __Clear
Type__ na caixa de __Anti-aliasing__. Seus olhos agradecem.

Ainda nas configurações do _cmder_ vá na tela de __Startup/Tasks__ e clique em
__Add default tasks__, caso você ainda não encontre `{Bash: Git bash}` na lista.

Você não vai usar o git que instalou anteriormente, aquele será utilizado mais
adiante. Selecione essa opção como a principal em _Default task for new console_.

Por enquanto pode salvar as configurações ou até configurar outras coisas, assim
como escolher o esquema de cores em __Features/Colors__. Eu estou usando o
`Solarized (John Doe)`.

Agora é preciso instalar o [Chocolatey]. Você pode usar o _cmder_ para abrir uma
janela do __Powershell__ (foi a única vez que precisei abrir aquilo) e executar
o seguinte comando: `iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))`.
O chocolatey quem provavelmente vai utilizaraquele git que foi instalado
inicialmente.

Pode sair do Powershell, vamos voltar às __configurações__ do _cmder_. Volte para
a tela de __Startup/Environment__ e na caixa branca grande você pode extender o
__PATH__ para encontrar o Chocolatey e todos os seus pacotes instalados com a
seguinte linha: `set PATH=C:\ProgramData\chocolatey\bin\;%PATH%`.

Abra uma __nova janela__ do cmder já com a task padrão (__bash__). O chocolatey
deve estar funcionando. Teste com o comando `choco`.

Instale o __NodeJS__. Você pode fazer isso pelo proprio site ou também pode
instalar via chocolatey com o comando `choco install nodejs`. Recomendo a versão
__LTS__ encontrada no site.

O Node já vai se encaixar no PATH do sistema, assim como o __npm__.

Com o bash funcionando, voce pode incluir os arquivos `.bashrc`, `.vimrc` e
`.gitconfig` na sua pasta inicial. Normalmente em `/c/Users/seu_nome`.

Para editar esses arquivos você pode utilizar o Vim que já está instalado em
seu bash, ou instalar um editor de textos. O [Visual Studio Code] é gratuito,
open source e interessante para o desenvolvimento em JS. Estou usando a versão
normal sem nenhuma configuração extra. Uma alternativa para editor de textos é
o [Sublime Text], no meu caso eu estou ok com o Code. 

Editor em mãos, ajuste os seus próprios `.bashrc`, `.vimrc` e `.gitconfig`.
Caso utilize o conteúdo desse repositório, lembre-se se não apenas ajustar as
configurações convenientes mas também as críticas como utilizar o seu próprio
nome e email em seu `.gitconfig`.

Note que esses arquivos extra estão sem o `.` inicial em seus nomes, mova-os
ajustando esse detalhe.

Para se manter na mesma tela do bash e recarrecar o `.bashrc`, utilize o
commando `source .bashrc`.

---

## Itens para download:

- [Visual Studio Community Edition][VisualStudio]
- [Visual Studio Code] 
- [Git]
- [cmder]
- [Chocolatey]
- [NodeJS]
- [Sublime Text] (opcional)

[Visual Studio Code]: https://code.visualstudio.com/
[VisualStudio]: https://www.visualstudio.com/en-us/products/visual-studio-community-vs.aspx
[Git]: http://www.git-scm.com/download/win
[cmder]: http://cmder.net/
[Chocolatey]: https://chocolatey.org/
[NodeJS]: https://nodejs.org/en/
[Sublime Text]: http://www.sublimetext.com/