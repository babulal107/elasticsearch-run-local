local-setup:
	docker-compose -f build/local/docker-compose.yml up -d
	echo "Make ES cluster green & kibana cluster up after 20 sec"
	sleep 20

local-down:
	docker-compose -f build/local/docker-compose.yml down