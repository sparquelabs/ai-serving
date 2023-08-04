build:
	cog build -t textgen-gpt2

runkontain:
	docker run --rm --runtime=krun -p 5000:5000 textgen-gpt2

rundocker:
	docker run --rm -p 5000:5000 textgen-gpt2

downloadweights:
	cog run script/download_weights

runonce:
	cog predict -i prompt="The sailor sailed into the"

predict:
	# image url is a cup
	curl -s -X POST -H 'Content-Type: application/json' http://localhost:5000/predictions   -d '{"input": {"prompt":"The sailor sailed into the "}}' | jq '.output'

	# if knative-example below:
	# curl -s -X POST -H 'Content-Type: application/json'  http://textgen-gpt2-ksvc.default.172.31.14.35.sslip.io/predictions -d '{"input": {"prompt":"The sailor sailed into the "}}'

importImage:
# you can also run docker save -o filename localhost/your-local-image to save the image as a file, move it around and import it then via k3s ctr images import filename
#
# how to use it in a kubernetes yaml file:
#
# containers:
# - image: localhost/shaarli:latest
#   imagePullPolicy: Never or IfNotPresent

# defaults to image name: docker.io/library/textgen-gpt2
	docker save dev.local/textgen-gpt2 | sudo k3s ctr images import -

deleteImage:
	sudo k3s crictl rmi textgen-gpt2

listImages:
	sudo k3s crictl images list

pruneImages:
	sudo k3s crictl rmi --prune

pushImage:
	docker tag textgen-gpt2 ec2-18-211-111-20.compute-1.amazonaws.com:5000/textgen-gpt2
	docker push ec2-18-211-111-20.compute-1.amazonaws.com:5000/textgen-gpt2
