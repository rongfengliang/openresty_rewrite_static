# openresty + nginx rewrite static page learning

## how to running

* start service

```code
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

