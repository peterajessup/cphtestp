set +e

oc project mq

oc delete BuildConfig perftest

oc create -f yaml/build.yaml

oc start-build perftest --wait
