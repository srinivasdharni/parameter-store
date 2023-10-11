	terraform {
	  backend "s3" {
	   	bucket = "terraform-expense"
		key    = "expense-project/dev/terraform.tfstate"
	    region = "us-east-1"
	  }
	}