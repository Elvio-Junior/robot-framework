clear:
	@printf "Limpando arquivos temporários... "
	@rm -f dist/*.gz
	@find . -type f -name '*.pyc' -delete
	@find . -type f -name '*.log' -delete
	@echo "OK"

install-packages:
	@printf "Instalando bibliotecas... "
	@pip install -q --no-cache-dir -r requirements/development.txt
	@echo "OK"

env-create: clear env-destroy
	@printf "Criando ambiente virtual... "
	@python3 -m venv robot-venv
	@echo "OK"

env-destroy:
	@printf "Destruindo ambiente virtual... "
	@rm -Rf robot-venv
	@echo "OK"

robot-basic:
	@robot --outputdir ./reports tests/basic/basic.robot

robot-sauce-demo:
	@robot --outputdir ./reports tests/sauce_demo/login.robot

robot-sauce-demo-headless:
	@robot --outputdir ./reports --variable BROWSER:headlesschrome tests/sauce_demo/login.robot

robot-mobile:
	@robot --outputdir ./reports tests/mobile/mobile.robot

robot-backend:
	@robot --outputdir ./reports tests/backend/backend.robot