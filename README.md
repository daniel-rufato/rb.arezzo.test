CMDER
1. Baixar a versão mais recente do CMDER:  
https://cmder.net/  
Ruby 1. Baixar o instalador rubyinstaller-devkit-2.5.3-1-x64.exe  
http://rubyinstaller.org/downloads/  

2. Executar o instalador:  
a. Instalar no diretório "C:/Ruby25x64"  
b. Marcar a opção "Add Ruby executables to your Path"  
c. Marcar a opção "Associate .rb and .rbw files with this Ruby installantion".  

Instalação das Gem's  
1. Executar os seguintes comandos no Cmder:  
gem install win32console  
gem install bundler  
gem install ruby-debug-ide  

3. Confira se todas as gem's foram instaladas com sucesso utilizando o comando:  
a. gem list bundler ruby-debug-ide  
  
NodeJS  
1. Baixar a versão mais recente estável (Recomended for Most Users);  
https://nodejs.org/en/   
2. Executar o instalador; 
 
Chromedriver  
1. Executar os seguintes comandos no Cmder:  
npm config set strict-ssl false  
npm install -g chromedriver  
2. Baixar a versão do chromedriver correspondente a versão do Chrome instalada na sua máquina.  
http://chromedriver.chromium.org/downloads  
3. Extrair o zip e adicionar o arquivo .exe no diretório “C:\Ruby25-x64\bin” 
 
Execução 
No Cmder Exercutar os seguintes comandos 

Rodar todos os cenários
Cucumber 

Funcionalidade: Acessar vitrine específica 
Cucumber –t @access_showcase 

Funcionalidade: Adicionar calçado 
Cucumber –t @add_shoe 

Funcionalidade:  Adicionar 2 calçados ao carrinho 
Cucumber –t @add_cart_flow 
