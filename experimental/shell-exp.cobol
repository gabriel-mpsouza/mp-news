IDENTIFICATION DIVISION.
PROGRAM-ID. Server-Control-Shell.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 COMMAND PIC X(50).

PROCEDURE DIVISION.
    DISPLAY "(C) Escola de Referencia Maciel Pinheiro 2024".
    DISPLAY "Sistema de Gerenciamento versão 3.7.0.1 por Gabriel Moura.".
    DISPLAY "Distribuído sobre licença MP/GM versão 1, digite 'license' para ver a licença.".
    DISPLAY "Bem-vindo ao shell de controle do servidor.".
    DISPLAY "Digite 'help' ou '?' para listar os comandos.".
    PERFORM UNTIL COMMAND = "exit"
        DISPLAY "Servidor ([CONTROL])> ".
        ACCEPT COMMAND
        EVALUATE TRUE
            WHEN COMMAND = "help" OR COMMAND = "?"
                PERFORM DISPLAY-HELP
            WHEN COMMAND = "start apache"
                PERFORM START-APACHE
            WHEN COMMAND = "stop apache"
                PERFORM STOP-APACHE
            WHEN COMMAND = "restart apache"
                PERFORM RESTART-APACHE
            WHEN COMMAND = "status apache"
                PERFORM STATUS-APACHE
            WHEN COMMAND = "configure virtual host"
                PERFORM CONFIGURE-VIRTUAL-HOST
            WHEN COMMAND = "start mysql"
                PERFORM START-MYSQL
            WHEN COMMAND = "stop mysql"
                PERFORM STOP-MYSQL
            WHEN COMMAND = "restart mysql"
                PERFORM RESTART-MYSQL
            WHEN COMMAND = "status mysql"
                PERFORM STATUS-MYSQL
            WHEN COMMAND = "create database"
                PERFORM CREATE-DATABASE
            WHEN COMMAND = "create user"
                PERFORM CREATE-USER
            WHEN COMMAND = "exit"
                DISPLAY "Bye!"
            WHEN OTHER
                DISPLAY "Comando não reconhecido. Digite 'help' para ver os comandos disponíveis."
        END-EVALUATE
    END-PERFORM.

    STOP RUN.

DISPLAY-HELP.
    DISPLAY "Comandos disponíveis:".
    DISPLAY "  start apache         - Iniciar o serviço Apache".
    DISPLAY "  stop apache          - Parar o serviço Apache".
    DISPLAY "  restart apache       - Reiniciar o serviço Apache".
    DISPLAY "  status apache        - Verificar o status do serviço Apache".
    DISPLAY "  configure virtual host - Configurar um novo virtual host no Apache".
    DISPLAY "  start mysql          - Iniciar o serviço MySQL".
    DISPLAY "  stop mysql           - Parar o serviço MySQL".
    DISPLAY "  restart mysql        - Reiniciar o serviço MySQL".
    DISPLAY "  status mysql         - Verificar o status do serviço MySQL".
    DISPLAY "  create database      - Criar um novo banco de dados MySQL".
    DISPLAY "  create user          - Criar um novo usuário no MySQL".
    DISPLAY "  exit                 - Sair do shell".

START-APACHE.
    CALL "SYSTEM" USING "sudo systemctl start apache2".

STOP-APACHE.
    CALL "SYSTEM" USING "sudo systemctl stop apache2".

RESTART-APACHE.
    CALL "SYSTEM" USING "sudo systemctl restart apache2".

STATUS-APACHE.
    CALL "SYSTEM" USING "sudo systemctl status apache2".

CONFIGURE-VIRTUAL-HOST.
    DISPLAY "Digite o nome de domínio para o virtual host: ".
    ACCEPT COMMAND
    DISPLAY "Digite o caminho absoluto para o diretório raiz do site: ".
    ACCEPT COMMAND
    STRING "/etc/apache2/sites-available/" DELIMITED BY SIZE
           COMMAND DELIMITED BY SPACE
           ".conf" DELIMITED BY SIZE INTO COMMAND
    CALL "SYSTEM" USING "sudo a2ensite" COMMAND
    CALL "SYSTEM" USING "sudo systemctl reload apache2".
    DISPLAY "Virtual host para " COMMAND " configurado com sucesso.".

START-MYSQL.
    CALL "SYSTEM" USING "sudo systemctl start mysql".

STOP-MYSQL.
    CALL "SYSTEM" USING "sudo systemctl stop mysql".

RESTART-MYSQL.
    CALL "SYSTEM" USING "sudo systemctl restart mysql".

STATUS-MYSQL.
    CALL "SYSTEM" USING "sudo systemctl status mysql".

CREATE-DATABASE.
    DISPLAY "Digite o nome do banco de dados: ".
    ACCEPT COMMAND
    STRING "mysql -e 'CREATE DATABASE " DELIMITED BY SIZE
           COMMAND DELIMITED BY SPACE
           ";" DELIMITED BY SIZE INTO COMMAND
    CALL "SYSTEM" USING COMMAND
    DISPLAY "Banco de dados " COMMAND " criado com sucesso.".

CREATE-USER.
    DISPLAY "Digite o nome de usuário: ".
    ACCEPT COMMAND
    DISPLAY "Digite a senha: ".
    ACCEPT COMMAND
    STRING "mysql -e \"CREATE USER '" DELIMITED BY SIZE
           COMMAND DELIMITED BY SPACE
           "'@'localhost' IDENTIFIED BY '" DELIMITED BY SIZE
           COMMAND DELIMITED BY SPACE
           "';\"" DELIMITED BY SIZE INTO COMMAND
    CALL "SYSTEM" USING COMMAND
    DISPLAY "Usuário " COMMAND " criado com sucesso.".
