# openresty + supervisord+ gor+ minio demo

## how to running

* start service

```code

mkdir -p logs
touch logs/access-test.log
touch logs/error-test
docker-compose up -d
```

* config mc client

```code
mc config host add saas http://127.0.0.1:9000 minio minio123 S3v4
```

* create s3 bucket

```code
mc  mb  saas/demo1
mc  mb  saas/demo2
mc  mb  saas/demo222
mc  mb  saas/logs
```

* copy website to minio s3 

```code
cd demoapps

mc cp --recursive  demo1/** saas/demo1
mc cp --recursive  demo2/** saas/demo2
mc cp --recursive  demo222/** saas/demo222

```

* set bucket policy

```code
mc policy set download saas/demo1
mc policy set download saas/demo2
mc policy set download saas/demo222
```

* view result

http://localhost/index/1

* view gor capture content

http://localhost:9000

* replay http request

> i use mac gor tools with local 


s3 config


```code
export AWS_ACCESS_KEY_ID=minio
export AWS_REGION=demo
export AWS_SECRET_ACCESS_KEY=minio123
export AWS_ENDPOINT_URL=http://127.0.0.1:9000
export AWS_DEBUG=true
```


reeplay command

```code
./gor-mac --input-file s3://logs/2020-07-20-09-46_13.gz   --output-http "http://localhost"
```