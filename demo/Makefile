all: .image .http.image
	oc project s3
	oc replace -f demo.yml || oc create -f demo.yml

.image: ../Dockerfile ../root/usr/bin/s3-sync.sh
	podman build -t atgreen/s3-sync-sidecar ..
	podman push atgreen/s3-sync-sidecar
	touch .image

.http.image: Dockerfile
	podman build -t atgreen/s3-sync-httpd .
	podman push atgreen/s3-sync-httpd
	touch .http.image



