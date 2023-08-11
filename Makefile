clonewithsubmodules:
	git clone --recurse-submodules https://github.com/sparquelabs/ai-serving.git

getsubmodules:
	# ref: https://git-scm.com/book/en/v2/Git-Tools-Submodules
	git submodule update --init --recursive

updatesubmodule:
	cd llms/lit-gpt && git fetch
	# or git submodule update --remote
