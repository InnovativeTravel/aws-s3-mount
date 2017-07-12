## Mount aws s3 folder to a container and export as a volume

### Usage

#### Run container to mount s3 folder

    docker run -d --name aws-s3-mount-some-bucket-folder -e AWS_ACCESS_KEY_ID=key -e AWS_SECRET_ACCESS_KEY=secret -e S3_PATH=some-bucket/folder innovativetravel/aws-s3-mount

Environment variables to configure

* AWS_ACCESS_KEY_ID

* AWS_SECRET_ACCESS_KEY

* S3_PATH

Volumes exported

* /mnt


##License

This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

© 2016 Innovative Travel Ltd
