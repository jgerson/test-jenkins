# Jenkins - Terraform Content
- backend.tf should be updated to reflect your TFE instance
- stub.terraformrc should be copied to the home directory of the Jenkins user/service account and renamed to .terraformrc
	- this file will contain info on TGE instance and a user/team TFE token with workspace priviledges
- Jenkins File located in https://github.com/raygj/tfe-jenkins
