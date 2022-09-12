pack build aot-image-jvm-source \
  --path . \
  --builder=paketobuildpacks/builder:base \
  --pull-policy=if-not-present \
  --env BP_JVM_VERSION=17 \
  --env BP_GRADLE_BUILT_ARTIFACT=build/libs/aot-build-image-0.0.1-SNAPSHOT.jar

