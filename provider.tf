variable "softlayer_username" {
  description = "Enter the user name to access IBM Cloud classic infrastructure. Go to the [IBM Cloud API keys](https://cloud.ibm.com/iam/apikeys) page, and hover on the row of your API key, and select the **Actions** icon. Then, click **Details** and copy your user name. "
}
variable "softlayer_api_key" {
  description = "Enter the API key to access IBM Cloud classic infrastructure. For more information for how to create an API key and retrieve it, see [Managing classic infrastructure API keys](https://cloud.ibm.com/docs/iam?topic=iam-classic_keys)."
}

provider "ibm" {
  softlayer_username = "${var.softlayer_username}"
  softlayer_api_key = "${var.softlayer_api_key}"
  softlayer_timeout = 300
}


