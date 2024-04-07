#include <iostream>
#include <cstdlib>
#include <fstream>

class ServerControlShell {
public:
    ServerControlShell() {
	std::cout << "\033[1m(C) Escola de Referência Maciel Pinheiro 2024\n";
    std::cout << "Sistema de Gerenciamento versão 3.7.0.1 por Gabriel Moura.\n";
    std::cout << "Distribuído sobre liceça MP/GM versão 1, digite 'license' para ver a licença.\n\n";
        std::cout << "Bem-vindo ao shell de controle do servidor.\n\nDigite 'help' ou '?' para listar os comandos.\n\n\033[0m";
        while (true) {
            std::string command;
            std::cout << "Servidor ([CONTROL])> ";
            std::cin >> command;
            if (command == "help" || command == "?") {
                displayHelp();
            } else if (command == "start apache") {
                startApache();
            } else if (command == "stop apache") {
                stopApache();
            } else if (command == "restart apache") {
                restartApache();
            } else if (command == "status apache") {
                statusApache();
            } else if (command == "configure virtual host") {
                configureVirtualHost();
            } else if (command == "start mysql") {
                startMysql();
            } else if (command == "stop mysql") {
                stopMysql();
            } else if (command == "restart mysql") {
                restartMysql();
            } else if (command == "status mysql") {
                statusMysql();
            } else if (command == "create database") {
                createDatabase();
            } else if (command == "create user") {
                createUser();
            } else if (command == "exit") {
		std::cout << "\033[1mBye!\n";
                break;
            } else {
                std::cout << "Comando não reconhecido. Digite 'help' para ver os comandos disponíveis.\n";
            }
        }
    }

private:
    void displayHelp() {
        std::cout << "Comandos disponíveis:\n"
                  << "  start apache         - Iniciar o serviço Apache\n"
                  << "  stop apache          - Parar o serviço Apache\n"
                  << "  restart apache       - Reiniciar o serviço Apache\n"
                  << "  status apache        - Verificar o status do serviço Apache\n"
                  << "  configure virtual host - Configurar um novo virtual host no Apache\n"
                  << "  start mysql          - Iniciar o serviço MySQL\n"
                  << "  stop mysql           - Parar o serviço MySQL\n"
                  << "  restart mysql        - Reiniciar o serviço MySQL\n"
                  << "  status mysql         - Verificar o status do serviço MySQL\n"
                  << "  create database      - Criar um novo banco de dados MySQL\n"
                  << "  create user          - Criar um novo usuário no MySQL\n"
                  << "  exit                 - Sair do shell\n";
    }

    void startApache() {
        system("sudo systemctl start apache2");
    }

    void stopApache() {
        system("sudo systemctl stop apache2");
    }

    void restartApache() {
        system("sudo systemctl restart apache2");
    }

    void statusApache() {
        system("sudo systemctl status apache2");
    }

    void configureVirtualHost() {
        std::string domain, document_root;
        std::cout << "Digite o nome de domínio para o virtual host: ";
        std::cin >> domain;
        std::cout << "Digite o caminho absoluto para o diretório raiz do site: ";
        std::cin >> document_root;
        std::string conf_file = "/etc/apache2/sites-available/" + domain + ".conf";
        std::ofstream ofs(conf_file);
        ofs << "<VirtualHost *:80>\n";
        ofs << "    ServerName " << domain << "\n";
        ofs << "    DocumentRoot " << document_root << "\n";
        ofs << "</VirtualHost>\n";
        ofs.close();
        system(("sudo a2ensite " + domain).c_str());
        system("sudo systemctl reload apache2");
        std::cout << "Virtual host para " << domain << " configurado com sucesso.\n";
    }

    void startMysql() {
        system("sudo systemctl start mysql");
    }

    void stopMysql() {
        system("sudo systemctl stop mysql");
    }

    void restartMysql() {
        system("sudo systemctl restart mysql");
    }

    void statusMysql() {
        system("sudo systemctl status mysql");
    }

    void createDatabase() {
        std::string db_name;
        std::cout << "Digite o nome do banco de dados: ";
        std::cin >> db_name;
        system(("mysql -e 'CREATE DATABASE " + db_name + ";'").c_str());
        std::cout << "Banco de dados " << db_name << " criado com sucesso.\n";
    }

    void createUser() {
        std::string username, password;
        std::cout << "Digite o nome de usuário: ";
        std::cin >> username;
        std::cout << "Digite a senha: ";
        std::cin >> password;
        system(("mysql -e \"CREATE USER '" + username + "'@'localhost' IDENTIFIED BY '" + password + "';\"").c_str());
        std::cout << "Usuário " << username << " criado com sucesso.\n";
    }
};

int main() {
    ServerControlShell serverControlShell;
    return 0;
}
