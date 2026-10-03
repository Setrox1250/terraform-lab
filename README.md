# Guía de Ejecución - Laboratorio Terraform

## 1. Descargar el proyecto

```bash
git clone https://github.com/Setrox1250/terraform-lab.git
cd terraform-lab/iac
```

## 2. Inicializar Terraform

```bash
terraform init
```

## 3. Crear los Workspaces

```bash
terraform workspace new dev
terraform workspace new qa
```

## 4. Desplegar ambiente DEV

```bash
terraform workspace select dev
terraform validate
terraform plan
terraform apply
```

## 5. Desplegar ambiente QA

```bash
terraform workspace select qa
terraform validate
terraform plan
terraform apply
```

## 6. Verificar contenedores y pruebas

Verificar los contenedores activos:

```bash
docker ps
```

Probar ambiente DEV:

```bash
curl http://localhost:4001
curl http://localhost:4002
```

Probar ambiente QA:

```bash
curl http://localhost:5001
curl http://localhost:5002
```

## 7. Destruir la infraestructura

Desmantelar ambiente DEV:

```bash
terraform workspace select dev
terraform destroy
```

Desmantelar ambiente QA:

```bash
terraform workspace select qa
terraform destroy
```