build:
	docker build --force-rm -t mlavrik/mtasa:latest .

run:
	docker run --rm -d --name mtasa mlavrik/mtasa

stop:
	docker container kill mtasa

shell:
	docker exec -it mtasa bash

tail:
	docker exec -it mtasa /bin/sh -c "tail -f mods/deathmatch/logs/server.log"
