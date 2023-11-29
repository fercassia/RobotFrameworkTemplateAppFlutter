# Testes automatizados para mobile flutter

Testes automatizados mobile utilizando um framework open source conhecido como RobotFramework com auxilio da biblioteca RobotFramework Appium Library

GitHub do projeto - [clique aqui](https://github.com/fercassia/RobotFrameworkTemplateAppFlutter)

Esses testes que foram criados inicialmente para demonstração de como funciona a ferramenta e como seria os testes automatizados.
____________________________________________
## Tecnologias utilizadas nos testes

- Flutter 3.7.12 - [Flutter versão estável 3.7.12](https://docs.flutter.dev/release/archive)
- Emulador Mobile - [Android Studio](https://acesse.dev/UokJ3)
- Java 11 -  [Java JDK 11](https://www.oracle.com/br/java/technologies/javase/jdk11-archive-downloads.html)
- Python 3.12 - [Python 3.12](https://www.python.org/downloads/)
- IDE de desenvolvimento (Sugestão) - [Visual Studio Code](httpscode.visualstudio.com)
- Framework de testes automatizados para mobile - [RobotFramework](https://robotframework.org/)
- Orquestrador de testes - [Flutter Driver](https://api.flutter.dev/flutter/flutter_driver/flutter_driver-library.html)
- Biblioteca RobotFramework Appium Library - [RobotFrameWork Appium Library](https://docs.robotframework.org/docs/different_libraries/appium)
- Servidor Appium 2 - [Appium 2.1](https://appium.io/docs/en/2.1/)
- Ferramenta de inspesionar Appium Inspector -[Appium Inspector](https://github.com/appium/appium-inspector)
____________________________________________
## Instalação

### Pré requisitos

1. Instale o git

2. Instale o flutter seguindo a documentação
   
   i. Coloque o caminho do flutter na variavel de ambiente do usuário -> ```Path```
   ```bash
   C:\dev\flutter\bin
   ```

3. Instale o Java e coloque-o nas variáveis de ambiente
   
   i. Set JAVA_HOME como variável de ambiente do usuário
   ```bash
   JAVA_HOME=C:\Program Files\Java\{versaoJava}
   ```
   ii. Set o bin do java na variável de ambiente do usuário -> ```Path```
   ```bash
   %JAVA_HOME%\bin
   ```
   
4. Instale o android studio

    i. Configure o android studio, com auxilio da documentação do flutter
   
    ii. Set ANDROID_HOME como variável de ambiente do usuário
    ```bash
    ANDROID_HOME=C:\Users\{userName}\AppData\Local\Android\Sdk
    ```
    iii. Set o platform-tools do android studio na variável de ambiente do usuário -> ```Path```
    ```bash
    %ANDROID_HOME%\platform-tools
    ```

5. Instale o visual studio code

    i. instale a extensão ```Flutter```

6. Instale o python

7. Instale o Robotframework, com auxilio da documentação

8. Instale o Appium

    i. ATENÇÃO: Versão desktop do Appium foi descontinuada, por problemas de segurança. Diante disso é indicado a instalação do appium pelo terminal.
   
    ii. Após instalar o appium, rode-o. Mas Antes set, a permissão para rodar o appium pelo terminal
        ```C:\Users\LINQ> Set-ExecutionPolicy RemoteSigned ```

   [Fonte: "Execução de scripts foi desabilitada neste sistema"?](https://pt.stackoverflow.com/questions/220078/o-que-significa-o-erro-execu%C3%A7%C3%A3o-de-scripts-foi-desabilitada-neste-sistema)

10. Instale o driver do appium, conforme a documentação

11. Instale o appium inspector, conforme a documentação

    __obs:__ O Appium inspector funcionar precisa aprovar o Cors

    i. Após a instalação encontre o arquivo ```settings``` na pasta de instalação do appium inspector 
    ```bash
    C:\Users\{user}\AppData\Roaming\appium-inspector\settings.json
    ```
    ii. No arquivo adicione uma configuração nos objetos ```advanced```
    ```bash
    "advanced":{"allowCors":true,"allowUnauthorized":true}
    ```

11. Instale as extensões ```Python``` e do ```Robot Framework Language``` no visual studio code

__obs:__ Para facilitar a instalação dos passos 2 e 4.i, pode seguir esses vídeos [Como Instalar o Flutter no Windows: tudo o que você precisa saber](https://www.youtube.com/watch?v=dpppZ9ySJSY) e [Como Configurar o Emulador Android para Flutter](https://www.youtube.com/watch?v=gNYNvHUSW1s).

__obs:__ Se houver se erro de compatibilidade for exibido após rodar o comando ```flutter doctor --android-licenses```, seguir a orientação descrita na discussão da issue [flutter doctor --android-licenses not working due to java.lang.UnsupportedClassVersionErro](https://github.com/flutter/flutter/issues/120388)
____________________________________________

### Passos para Instalação e Configuração do Robot+Flutter Driver+Appium

#### Projeto Flutter

1. Clone o projeto flutter

    i. ATENÇÃO: Na hora de clonar o projeto flutter em uma pasta, deve ser em uma pasta cujo o nome não deve possuir espaço ou caracteres especiais, pois atrapalha a comunicação flutter com o emulador mobile
```bash
    git clone https://github.com/[gitUser]/{nomeRepositorio}.git
```
2. Abra o projeto flutter

    i. ATENÇÃO: Quando abrir o projeto flutter, baixe as dependencias do flutter
```bash
    flutter pub get
```
3. Adicione o pacote do flutter driver nas dependencias de desenvolvimento no arquivo ```pubspec.yaml```
```bash
    dev_dependencies:
    flutter_test:
        sdk: flutter
    flutter_driver:
        sdk: flutter
```
4. No arquivo "main.dart" adicionar ```enableFlutterDriverExtension()``` na função main

    i. ATENÇÃO: deve adicionar a função antes da função ```runApp()```

    ```bash
        import 'package:flutter/material.dart';
        import 'package:flutter_driver/driver_extension.dart';

        void main() {
            enableFlutterDriverExtension();
            runApp(const MyApp());
        }
    ```
#### Appium e Robotframework

1. Rode o comando abaixo para instalar biblioteca Robotframework mobile flutter para appium
```bash
    pip install robotframework-appiumlibrary
```
2. Rode o comando abaixo para instalar o appium junto com os drivers de automação

    i. Nessa automação, está sendo usado apenas o driver para automação de android ```UIAutomator2```
```bash
    npm install --location=global appium --drivers=xcuitest,uiautomator2
```

__Obs:__ Para verificar se há algum update rode os comandos abaixo:

   i. Para verificar os drivers
```bash
    appium driver list --updates
```
   ii. Se o update estiver disponivel
```bash
    appium driver update xcuitest
```

3. Comando para rodar o servidor do appium
```bash
appium --base-path=/wd/hub
```
__obs:__ Se houver erro referente ao appium, entre na documentação do appium [Migrating from Appium 1.x to Appium 2.x](https://appium.io/docs/en/2.0/guides/migrating-1-to-2/#image-analysis-features-moved-to-plugin)

4. Configurar o appium inspector com os mesmos dados do arquivo ```enviroments-variables.robot```. Exemplo:

    i. automationName se ```UIAutomator2``` abre o aplicativo no appium inspector, se for ```Flutter``` abre apenas a aplicação no emulador

```bash
{
  "platformName": "Android",
  "appium:automationName": "UIAutomator2",
  "appium:platformVersion": "12",
  "appium:deviceName": "emulator-5554",
  "appium:app": "C:\\Users\\{userName}\\Documents\\RobotFramework\\flutter_application\\build\\app\\outputs\\apk\\debug\\app-debug.apk",
  "appium:appPackage": "com.example.flutter_application",
  "appium:appActivity": "com.example.flutter_application.MainActivity",
  "appium:noReset": true
}
```

   i. Se ainda houver dúvidas, consulte as documentações do appium e appium inspector

   ii. configurado o appium inspector, salve a configuração e se desejar rodar a aplicação com inspector clique no botão ```Start Session```
    
   a. ATENÇÃO!!: Antes de iniciar a sessão, deve iniciar o servidor do appium com o comando abaixo:
   
```bash
appium --base-path=/wd/hub
```

#### Comandos

1. Comando para rodar todos os testes do robot e serem salvos no file logs

    i. O parâmetro -d indica o diretório onde os arquivos de logs e screenshots serão armazenados.
```bash
robot -d logs/ .
```
____________________________________________
