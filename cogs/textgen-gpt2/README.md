## Containerize using cog
This shows how to containerize an AI model using cog.  We use [gpt2](https://huggingface.co/gpt2) as the AI model that we use for inference.  In this case, we will showcase how to use its text-generation capabilities as part of an API.

## download cog binary
Download cog from https://github.com/replicate/cog

```bash
wget https://github.com/replicate/cog/releases/download/v0.8.5/cog_linux_x86_64
sudo mv cog_linux_x86_64 /usr/local/bin/cog
sudo chmod +x /usr/local/bin/cog
```

## using cog to provision a Container for our AI model
Create a cog yaml file for textgen-gpt2.  This file contains everything needed to provision a Container for our AI model.

Please note the python_packages section.  Here we can specify the python package dependencies that are needed to run the specific AI model.


We also need to specify the Predictor function and the file in which the Predictor function resides.

This allows us to both test and serve the AI model using the cog.


```yaml
build:
  gpu: false
  python_version: "3.10"
  python_packages:
    - "torch==1.12.1"
    - "transformers==4.26.1"
    - "sentencepiece==0.1.97"
    - "accelerate==0.16.0"

predict: "predict.py:Predictor"
```

## download the weights of the model
Download the weights of the model using the scripts/download_weights python script.

```bash
cog run script/download_weights
```

## testing the AI model once using the cog
To test the AI model once using the cog, we can do the following:

```bash
cog predict -i prompt="The sailor sailed into the"
```

You can see that we pass in the parameter for the Predictor function as part of the cog CLI test.

## Build the cog model as a Docker container image
Now, we can build the cog AI model as a Docker container image.

```bash
cog build
```

## Run the AI model in Docker container
Now, we run the AI model as a Docker container

```bash
# run
docker run --rm -p -d 5000:5000 textgen-gpt2

# check
docker ps
```

It runs on port 5000 as a REST API service that can be invoked with an HTTP client.

# invoke the AI model to make an inference
We can now use curl to invoke the AI model and get an inference.

```bash
curl -s -X POST -H 'Content-Type: application/json' http://localhost:5000/predictions   -d '{"input": {"prompt":"The sailor sailed into the "}}' | jq '.output'
```
