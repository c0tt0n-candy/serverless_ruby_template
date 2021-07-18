# Serverless Ruby Template

serverless template with ruby 2.7 for AWS Lambda.

- Ruby 2.7
- serverless 2.52.0

## Setup

```shell
$ docker-compose build
```

## Deployment

### Preparation

- prepare S3 bucket `serverless-deployment` to store deployment package.
- prepare SSM parameter store to set Environment Variables if need.

### Deploy

```shell
$ docker-compose run --rm serverless bash -c 'yarn && bundle install --without development --path vendor/bundle && yarn sls deploy -v'
```
