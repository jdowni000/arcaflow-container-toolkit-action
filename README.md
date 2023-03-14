# arcaflow-image-builder-action
Github action to use the [arcaflow-image-builder](https://github.com/arcalot/arcaflow-plugin-image-builder)

##Configuration
Configuring arcaflow-iamge-builder can be done utilzing inputs.

###Configurable Inputs
####Required:
IMAGE_NAME Name of the image that carpenter will build - string
IMAGE_TAG Tag of the image that carpenter will build - string

####Optional:
GITHUB_USERNAME Github Username to be used for credentials - Default: ""
GITHUB_PASSWORD Github Password to be used for credentials - Default: ""
GITHUB_NAMESPACE Github Namespace to push image - Default: ""
QUAY_USERNAME Quay Username to be used for credentials - Default: ""
QUAY_PASSWORD Quay Password to be used for credentials - Default: ""
QUAY_NAMESPACE Quay Namespace to push image - Default: ""
QUAY_CUSTOM_NAMESPACE Quay Namespace to push image that is not QUAY_NAMESPACE - Default: ""
QUAY_IMG_EXP Image label to automatically expire in Quay - Default: "never"
BUILD_TIMEOUT Length of time before a build will fail in seconds - Default: 600

##Additional Information
QUAY_IMG_EXP more documentation and time formats can be found [here](https://docs.projectquay.io/use_quay.html#:~:text=Setting%20tag%20expiration%20from%20a%20Dockerfile)
QUAY_CUSTOM_NAMESPACE if set, will use in place of QUAY_NAMESPACE. Override hepfult when QUAY_NAMESPACE is a secret.
