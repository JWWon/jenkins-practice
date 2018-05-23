echo "WORKSPACE: "$1
echo "BUILD_NUMBER: "$2

WORKSPACE=$1
BUILD_NUMBER=$2

docker stop jenkins-practice-2

cd ${WORKSPACE}/jenkins/base

docker build --build-arg CACHE_BUILD=${BUILD_NUMBER} -t jenkins-practice-2 .
docker run -p 80:82 -d jenkins-practice-2