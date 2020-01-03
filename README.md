This is a kubernetes kustomize configuration for my home lab. The repository is laid out so the configuration is public without exposing sensitive details like dns names, ports, and passwords.

# Testing with output

```
kubectl apply -k . --dry-run -o yaml
```

# Deploy

```
kubectl apply -k .
```

# Requirements

You need to create .env files for various secrets in the format `KEY=value`. As of this writing the format for the .env files are

## .env-mysql

```
MYSQL_DATABASE=
MYSQL_USER=
MYSQL_PASSWORD=
MYSQL_ROOT_PASSWORD=
```

## .env-nfs

```
NFS_SERVER=
NFS_PATH=
```

## .env-secret

```
ISCSI_SQL_IQN=
ISCSI_PSQL_IQN=
ISCSI_HOST=
NFS_SERVER=
NFS_PATH=
```

## .env-sites

```
DOMAIN_LOCAL=
DOMAIN_1_JOHN=
DOMAIN_2=
DOMAIN_2_WWW=
```
