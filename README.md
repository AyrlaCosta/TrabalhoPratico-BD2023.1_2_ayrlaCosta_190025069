1 - Instale o Python (de preferência, a versão mais recente)
2 - No prompt de comando, instale o flask com os comandos
	pip install flask
	pip install flask-login
	pip install flask-sqlalchemy 
3 - Instale o XAMPP, para o banco de dados. Ative o Apache e o MySQL.
4 - Vá até localhost/phpmyadmin, crie um novo banco e importe o arquivo "feedback.sql" e nas tabelas "departamentos", "disciplinas" e "turmas",
    importe os arquivos disponíveis na pasta "Ofertas".
5 - Execute o arquivo main.py e no terminal haverá uma mensagem como esta:
		* Serving Flask app 'website'
 		* Debug mode: on
		WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 		* Running on http://127.0.0.1:5000
		Press CTRL+C to quit
 		* Restarting with stat
 		* Debugger is active!
 		* Debugger PIN: 229-075-966
6 - Vá até http://127.0.0.1:5000 (no terminal, clique em http://127.0.0.1:5000 pressionando a tecla CTRL)
 

OBS.: Caso ocorra algum erro com o banco, apague o arquivo "database.db" da pasta "instance" e tente novamente.
OBS. 2: O vídeo mostrando o site funcionando está em: https://www.youtube.com/watch?v=kB5z4A1_fug