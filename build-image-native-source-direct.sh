pack build aot-image-native-source \
  --path . \
  --builder=paketobuildpacks/builder:tiny \
  --pull-policy=if-not-present \
  --env BP_JVM_VERSION=17 \
  --env BP_NATIVE_IMAGE=true \
  --env BP_GRADLE_BUILD_ARGUMENTS="--no-daemon nativeCompile" \
  --env BP_GRADLE_BUILT_ARTIFACT=build/native/nativeCompile/aot-build-image

