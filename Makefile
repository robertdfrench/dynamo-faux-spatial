demo: data dynamo_start

data:
	./gen_points.js 100

dynamo_start: vendor/DynamoDBLocal.jar
	java -Djava.library.path=./vendor/DynamoDBLocal_lib -jar ./vendor/DynamoDBLocal.jar -sharedDb

vendor/DynamoDBLocal.jar: vendor/dynamodb_local_latest.tar.gz
	cd vendor && tar xzf dynamodb_local_latest.tar.gz

vendor/dynamodb_local_latest.tar.gz:
	mkdir -p vendor
	curl https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz > $@
