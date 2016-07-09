run:
	@/bin/bash bin/run.sh
setup:
	@/bin/bash bin/setup.sh
stop:
	@/bin/bash docker-compose stop
restart:
	@/bin/bash docker-compose restart
down:
	@/bin/bash docker-compose down
up: 
	@/bin/bash docker-compose up
