## Як це працює
З допомогою [Terraform](https://www.terraform.io/) на AWS розгортяються інстанси з потрібним AMI та починають працювати.

## Інсталяція Terraform
Детальну інструкцію можна знайти тут: [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

### Для користувачів OSX
Інсталяціє йде за допомогою [Homebrew](https://brew.sh)

```shell
$ brew tap hashicorp/tap
$ brew install hashicorp/tap/terraform
```

### Для користувачів Ubuntu/Debian

```shell
$ sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
$ sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
$ sudo apt-get update && sudo apt-get install terraform
```

### Для користувачів СentOS/RHEL

```shell
$ sudo yum install -y yum-utils
$ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
$ sudo yum -y install terraform
```


Для перевірки можна зробити:

```shell
$ terraform -help
Usage: terraform [-version] [-help] <command> [args]
...
```

## Використання Terraform

Налаштування

```shell
$ make setup
```

Запуск контейнерів
```shell
$ make deploy
```

Ця команда запустить по 3 інстанса в кожному доступному регіоні.
Є можливість вказати конкретний регіон:
```shell
$ make deploy target=sa-east-1
```

Список доступних регіонів:

* ap-south-1
* eu-west-3
* eu-west-2
* eu-west-1
* sa-east-1
* ca-central-1
* ap-southeast-1
* ap-southeast-2
* eu-central-1
* us-west-1

