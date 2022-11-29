
rs1=mongo
rs2=mongo2
rs3=mongo3

port1=27020
port2=27018
port3=27019

mongoClusterName=mongoCluster

replSetName=myReplicaSet

curDir=$(pwd)

volumePath=$curDir/mongo-data
dockerVolumePath=/tmp/mongo-data

mongoPersistPath=$curDir/mongo/data

jsonFile=import.json
backupJsonFile=import-backup.json

dbName=newProject

collection1=Dummy

mongoUri=mongodb://localhost/$dbName?replicaSet=$replSetName


if [[ $1 == "stop" ]]
then
  docker kill $rs1 $rs2 $rs3
  exit 0
fi

docker network create $mongoClusterName

# starting all 3 dockers with replica set
docker run -d --rm -p $port1:27017 --name $rs1 --volume $volumePath:$dockerVolumePath -v $mongoPersistPath:/data/db --network $mongoClusterName mongo mongod --replSet $replSetName --bind_ip localhost,$rs1  
docker run -d --rm -p $port2:27017 --name $rs2 --network $mongoClusterName mongo mongod --replSet $replSetName --bind_ip localhost,$rs2
docker run -d --rm -p $port3:27017 --name $rs3 --network $mongoClusterName mongo mongod --replSet $replSetName --bind_ip localhost,$rs3 

# initiating the servers
docker exec -it $rs1 mongosh --eval "rs.initiate({
 _id: \"$replSetName\",
 members: [
   {_id: 0, host: \"$rs1\"},
   {_id: 1, host: \"$rs2\"},
   {_id: 2, host: \"$rs3\"}
 ]
})"


# health check
docker exec -it $rs1 mongosh --eval "rs.status()"

echo "\nConnecting to Mongo...\n"

# importing starting data
docker exec -it $rs1 sh -c "mongoimport --uri $mongoUri --db $dbName --collection $collection1 --type json --file $dockerVolumePath/$collection1/$jsonFile --jsonArray"