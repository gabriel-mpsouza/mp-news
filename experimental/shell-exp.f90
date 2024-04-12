PROGRAM ServerControlShell
    IMPLICIT NONE
    CHARACTER(50) :: command

    PRINT "(A)", "(C) Escola de Referencia Maciel Pinheiro 2024"
    PRINT "(A)", "Sistema de Gerenciamento versão 3.7.0.1 por Gabriel Moura."
    PRINT "(A)", "Distribuído sobre licença MP/GM versão 1, digite 'license' para ver a licença."
    PRINT "(A)", "Bem-vindo ao shell de controle do servidor."
    PRINT "(A)", "Digite 'help' ou '?' para listar os comandos."

    DO
        PRINT "(A)", "Servidor ([CONTROL])> ",
        READ(*, '(A)', ADVANCE='NO') command

        IF (command == "help" .OR. command == "?") THEN
            CALL displayHelp()
        ELSE IF (command == "start apache") THEN
            CALL startApache()
        ELSE IF (command == "stop apache") THEN
            CALL stopApache()
        ELSE IF (command == "restart apache") THEN
            CALL restartApache()
        ELSE IF (command == "status apache") THEN
            CALL statusApache()
        ELSE IF (command == "configure virtual host") THEN
            CALL configureVirtualHost()
        ELSE IF (command == "start mysql") THEN
            CALL startMysql()
        ELSE IF (command == "stop mysql") THEN
            CALL stopMysql()
        ELSE IF (command == "restart mysql") THEN
            CALL restartMysql()
        ELSE IF (command == "status mysql") THEN
            CALL statusMysql()
        ELSE IF (command == "create database") THEN
            CALL createDatabase()
        ELSE IF (command == "create user") THEN
            CALL createUser()
        ELSE IF (command == "exit") THEN
            PRINT "(A)", "Bye!"
            EXIT
        ELSE
            PRINT "(A)", "Comando não reconhecido. Digite 'help' para ver os comandos disponíveis."
        END IF
    END DO

CONTAINS

    SUBROUTINE displayHelp()
        PRINT "(A)", "Comandos disponíveis:"
        PRINT "(A)", "  start apache         - Iniciar o serviço Apache"
        PRINT "(A)", "  stop apache          - Parar o serviço Apache"
        PRINT "(A)", "  restart apache       - Reiniciar o serviço Apache"
        PRINT "(A)", "  status apache        - Verificar o status do serviço Apache"
        PRINT "(A)", "  configure virtual host - Configurar um novo virtual host no Apache"
        PRINT "(A)", "  start mysql          - Iniciar o serviço MySQL"
        PRINT "(A)", "  stop mysql           - Parar o serviço MySQL"
        PRINT "(A)", "  restart mysql        - Reiniciar o serviço MySQL"
        PRINT "(A)", "  status mysql         - Verificar o status do serviço MySQL"
        PRINT "(A)", "  create database      - Criar um novo banco de dados MySQL"
        PRINT "(A)", "  create user          - Criar um novo usuário no MySQL"
        PRINT "(A)", "  exit                 - Sair do shell"
    END SUBROUTINE displayHelp

    SUBROUTINE startApache()
        CALL SYSTEM("sudo systemctl start apache2")
    END SUBROUTINE startApache

    SUBROUTINE stopApache()
        CALL SYSTEM("sudo systemctl stop apache2")
    END SUBROUTINE stopApache

    SUBROUTINE restartApache()
        CALL SYSTEM("sudo systemctl restart apache2")
    END SUBROUTINE restartApache

    SUBROUTINE statusApache()
        CALL SYSTEM("sudo systemctl status apache2")
    END SUBROUTINE statusApache

    SUBROUTINE configureVirtualHost()
        CHARACTER(50) :: domain, document_root
        CHARACTER(100) :: conf_file
        PRINT "(A)", "Digite o nome de domínio para o virtual host: ",
        READ(*, '(A)') domain
        PRINT "(A)", "Digite o caminho absoluto para o diretório raiz do site: ",
        READ(*, '(A)') document_root
        conf_file = "/etc/apache2/sites-available/" // TRIM(domain) // ".conf"
        OPEN(UNIT=10, FILE=TRIM(conf_file), STATUS="NEW", ACTION="WRITE")
        WRITE(10, '(A)') "<VirtualHost *:80>"
        WRITE(10, '(A)') "    ServerName " // TRIM(domain)
        WRITE(10, '(A)') "    DocumentRoot " // TRIM(document_root)
        WRITE(10, '(A)') "</VirtualHost>"
        CLOSE(10)
        CALL SYSTEM("sudo a2ensite" // TRIM(domain))
        CALL SYSTEM("sudo systemctl reload apache2")
        PRINT "(A)", "Virtual host para ", TRIM(domain), " configurado com sucesso."
    END SUBROUTINE configureVirtualHost

    SUBROUTINE startMysql()
        CALL SYSTEM("sudo systemctl start mysql")
    END SUBROUTINE startMysql

    SUBROUTINE stopMysql()
        CALL SYSTEM("sudo systemctl stop mysql")
    END SUBROUTINE stopMysql

    SUBROUTINE restartMysql()
        CALL SYSTEM("sudo systemctl restart mysql")
    END SUBROUTINE restartMysql

    SUBROUTINE statusMysql()
        CALL SYSTEM("sudo systemctl status mysql")
    END SUBROUTINE statusMysql

    SUBROUTINE createDatabase()
        CHARACTER(50) :: db_name
        PRINT "(A)", "Digite o nome do banco de dados: ",
        READ(*, '(A)') db_name
        CALL SYSTEM("mysql -e 'CREATE DATABASE " // TRIM(db_name) // ";'")
        PRINT "(A)", "Banco de dados ", TRIM(db_name), " criado com sucesso."
    END SUBROUTINE createDatabase

    SUBROUTINE createUser()
        CHARACTER(50) :: username, password
        PRINT "(A)", "Digite o nome de usuário: ",
        READ(*, '(A)') username
        PRINT "(A)", "Digite a senha: ",
        READ(*, '(A)') password
        CALL SYSTEM("mysql -e \"CREATE USER '" // TRIM(username) // "'@'localhost' IDENTIFIED BY '" // TRIM(password) // "';\"")
        PRINT "(A)", "Usuário ", TRIM(username), " criado com sucesso."
    END SUBROUTINE createUser

END PROGRAM ServerControlShell
