resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
  overwrite = true
}

variable "parameters" {
  default = [
   ## { name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString" },
   ## { name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String" },
   ## { name = "prod.expense.frontend.backend_url", value = "http://backend-prod.sddevops18.online/", type = "String" },
   ## { name = "prod.rds.endpoint", value = "prod-mysql.cluster-cbvsbeoyxek4.us-east-1.rds.amazonaws.com", type = "String" },

    ## Dev env
    ## { name = "dev.expense.frontend.backend_url", value = "http://backend-dev.sddevops18.online/", type = "String" },
    ## { name = "dev.frontend.app_version", value = "1.0.1", type = "String" },
    ## { name = "dev.backend.app_version", value = "1.0.0", type = "String" },
    ##{ name = "dev.rds.master_username", value = "mysqlrdsadmin", type = "String" },
    ##{ name = "dev.rds.master_password", value = "expensedev1234", type = "SecureString" },

    ## Common env
    { name = "jenkins_password", value = "admin123", type = "String" },
    { name = "artifactory_username", value = "admin", type = "String" },
    { name = "artifactory_password", value = "Admin123", type = "String" },
    { name = "ssh_username", value = "centos", type = "String" },
    { name = "ssh_password", value = "DevOps321", type = "SecureString" },
    
     ## RoboShop Dev Env Parameters
    { name = "dev.roboshop.frontend.catalogue_url", value = "http://catalogue-dev.sddevops18.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.cart_url", value = "http://cart-dev.sddevops18.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.user_url", value = "http://user-dev.sddevops18.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.shipping_url", value = "http://shipping-dev.sddevops18.online:8080/", type = "String" },
    { name = "dev.roboshop.frontend.payment_url", value = "http://payment-dev.sddevops18.online:8080/", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_URL", value = "mongodb://mongodb-dev.sddevops18.online:27017/catalogue", type = "String" },
    { name = "dev.roboshop.catalogue.MONGO_ENDPOINT", value = "mongodb-dev.sddevops18.online", type = "String" },
    { name = "dev.roboshop.user.MONGO_URL", value = "mongodb://mongodb-dev.sddevops18.online:27017/users", type = "String" },
    { name = "dev.roboshop.user.REDIS_HOST", value = "redis-dev.sddevops18.online", type = "String" },
    { name = "dev.roboshop.user.MONGO_ENDPOINT", value = "mongodb-dev.sddevops18.online", type = "String" },
    { name = "dev.roboshop.cart.REDIS_HOST", value = "redis-dev.sddevops18.online", type = "String" },
    { name = "dev.roboshop.cart.CATALOGUE_HOST", value = "catalogue-dev.sddevops18.online", type = "String" },
    { name = "dev.roboshop.cart.CATALOGUE_PORT", value = "8080", type = "String" },
    { name = "dev.roboshop.cart.MONGO_ENDPOINT", value = "mongodb-dev.sddevops18.online", type = "String" },
  ]
}

## Note: Ideally we dont keep passwords in GIT REPOS, Those will be created manually. Secret management of creating secrets is most of the time is manual