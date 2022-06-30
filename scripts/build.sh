set +e

oc project mq

oc delete BuildConfig perftest

oc create -f build.yaml

oc start-build perftest --wait
