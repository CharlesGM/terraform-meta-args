## A. Still working on this:

#### 1. terraform count argument (test example)
#### 2. terraform for_each argument (test example)
#### 3. s3 backend

With regards to s3, the first time you run it (first time running terraform init, plan and apply), comment out the backend config in providers.tf to first deploy the bucket and dynamodB.
After deploying resources, uncomment the providers section, and re-initialize to update the remote-backend.

        # backend "s3" {
        #   bucket         = "terraform.tfstate-254"
        #   key            = "terraform.tfstate"
        #   region         = "us-east-1"
        #   dynamodb_table = "dynamodb"  
        #   encrypt        = true
        # }

