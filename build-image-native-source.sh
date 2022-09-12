pack build aot-image-native-source \
  --path . \
  --builder=paketobuildpacks/builder:tiny \
  --pull-policy=if-not-present \
  --env BP_JVM_VERSION=17 \
  --env BP_GRADLE_BUILT_ARTIFACT=build/libs/aot-build-image-0.0.1-SNAPSHOT.jar \
  --env BP_NATIVE_IMAGE=true \
  --env BP_NATIVE_IMAGE_BUILD_ARGUMENTS=--enable-http

