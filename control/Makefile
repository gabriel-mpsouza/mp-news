# Variáveis
SUDO = sudo
SYSTEMCTL = systemctl
FIREWALL_CMD = firewall-cmd

# Função para verificar e notificar erros
check_error:
	@if [ $$? -ne 0 ]; then \
		echo "Erro encontrado. Abortando o setup."; \
		exit 1; \
	fi

# Mensagem de introdução
intro_message:
	@echo "Bem-vindo ao script de setup para instalação do jornal do Maciel Pinheiro."

# Target para iniciar o setup
setup: intro_message
	@if [ `id -u` -eq 0 ]; then \
		echo "Iniciando setup..."; \
		\
		# Parando o serviço apache2 \
		echo "Parando o serviço apache2..."; \
		$(SUDO) $(SYSTEMCTL) stop apache2.service; \
		$(MAKE) check_error; \
		\
		# Movendo arquivos existentes para uma pasta de backup \
		echo "Movendo arquivos existentes para uma pasta de backup..."; \
		$(SUDO) mkdir -p /var/www/html/not-in-use/; \
		$(SUDO) mv /var/www/html/* /var/www/html/not-in-use; \
		$(MAKE) check_error; \
		\
		# Instalando Java Runtime Environment (JRE) padrão \
		echo "Instalando Java Runtime Environment (JRE) padrão..."; \
		$(SUDO) apt install default-jre -y; \
		$(MAKE) check_error; \
		\
		# Baixando e instalando ApacheGUI \
		echo "Baixando e instalando ApacheGUI..."; \
		$(SUDO) mkdir -p tmp; \
		cd tmp; \
		wget https://sourceforge.net/projects/apachegui/files/1.12-Linux-Solaris-Mac/ApacheGUI-1.12.0.tar.gz/download -O ApacheGUI-1.12.0.tar.gz; \
		$(MAKE) check_error; \
		\
		$(SUDO) tar xfz ApacheGUI-1.12.0.tar.gz; \
		$(MAKE) check_error; \
		\
		$(SUDO) mv ApacheGUI ..; \
		$(MAKE) check_error; \
		\
		cd ..; \
		$(SUDO) mkdir -p src; \
		$(MAKE) check_error; \
		\
		$(SUDO) mv ApacheGUI src; \
		$(MAKE) check_error; \
		\
		$(SUDO) cp -r src/ApacheGUI /opt/; \
		$(MAKE) check_error; \
		\
		# Executando ApacheGUI \
		echo "Executando ApacheGUI..."; \
		$(SUDO) /opt/ApacheGUI/bin/run.sh; \
		$(MAKE) check_error; \
		\
		# Configurando firewall para porta 9999 \
		echo "Configurando firewall para porta 9999..."; \
		$(FIREWALL_CMD) --add-port=9999/tcp --permanent; \
		$(MAKE) check_error; \
		\
		$(FIREWALL_CMD) --reload; \
		$(MAKE) check_error; \
		\
		# Copiando arquivos para diretório HTML do apache \
		echo "Copiando arquivos para diretório HTML do apache..."; \
		cd ..; \
		$(SUDO) cp -r * /var/www/html/; \
		$(MAKE) check_error; \
		\
		# Iniciando o serviço apache2 \
		echo "Iniciando o serviço apache2..."; \
		$(SUDO) $(SYSTEMCTL) start apache2.service; \
		$(MAKE) check_error; \
		\
		echo "Setup concluído com sucesso."; \
	else \
		echo "Este script precisa ser executado com permissões de root."; \
	fi

.PHONY: setup intro_message check_error
