## Testes automatizados para mobile flutter

Testes automatizados mobile utilizando um framework open source conhecido como RobotFramework com auxilio da biblioteca RobotFramework Flutter App Testing para Appium.

GitHub do projeto - [clique aqui]()

Esses testes que foram criados inicialmente para demonstração de como funciona a ferramenta e como seria os testes automatizados.
____________________________________________
### Tecnologias utilizadas nos testes

- Flutter  - [Flutter versão estável](https://flutter.dev/)
- Android Studio - [Android Studio](https://acesse.dev/UokJ3)
- Java 11 -  [Java JDK 11](https://www.oracle.com/br/java/technologies/javase/jdk11-archive-downloads.html)
- Python 3.12 - [Python 3.12](https://www.python.org/downloads/)
- IDE de desenvolvimento (Sugestão) - [Visual Studio Code](httpscode.visualstudio.com)
- Framework de testes automatizados de Front-End - [RobotFramework](https://robotframework.org/)
- Orquestrador de testes - [Flutter Driver](https://api.flutter.dev/flutter/flutter_driver/flutter_driver-library.html)
- Biblioteca RobotFramework Flutter App Testing para appium - (Biblioteca RobotFramework)[https://pypi.org/project/robotframework-appiumflutterlibrary/]
- Appium - [Appium 2.1 ](https://appium.io/docs/en/2.1/)
____________________________________________
### Instalação

#### Pré condições

1. Instale o git

2. Instale o flutter seguindo a documentação

3. Instale o Java e coloque-o nas variáveis de ambiente

4. Instale o android studio

    i. configure o android studio corretamente
    ii. adicione o android studio nas variáveis de ambiente

5. Instale o visual studio code

    i. instale a extensão do flutter

6. Instale o python

7. Instale o Robotframework de acordo com a documentação

8. Instale o Appium

    i. ATENÇÃO: Versão desktop do Appium foi descontinuada, por problemas de segurança. Diante disso é indicado a instalação do appium pelo terminal.
    ii. Após ionstalar o appium, rodeo. Mas Antes set, a permissão para rodar o appium pelo terminal
        ```bash PS C:\Users\LINQ> Set-ExecutionPolicy RemoteSigned ``` ["Execução de scripts foi desabilitada neste sistema"?](https://pt.stackoverflow.com/questions/220078/o-que-significa-o-erro-execu%C3%A7%C3%A3o-de-scripts-foi-desabilitada-neste-sistema)

9. Instale o driver do appium, conforme a documentação

__obs:__ Para facilitar a isntalação dos passos 1 e 3, pode seguir esses vídeos [Como Instalar o Flutter no Windows: tudo o que você precisa saber](https://www.youtube.com/watch?v=dpppZ9ySJSY) e [Como Configurar o Emulador Android para Flutter](https://www.youtube.com/watch?v=gNYNvHUSW1s)
____________________________________________


#### Passos para Instalação e Configuração do Robot+Flutter Driver+Appium

1. Clone o projeto flutter
```bash
    git clone https://github.com/[gitUser]/{nomeRepositorio}.git
```
2. Rode o comando abaixo para instalar biblioteca Robotframework mobile flutter para appium
```bash
    pip install --upgrade robotframework-appiumflutterlibrary
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
____________________________________________


