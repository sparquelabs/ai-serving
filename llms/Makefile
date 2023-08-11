#-----------
# To set up environment:
# 	mkvirtualenv litgpt
# 	workon litgpt
#
# Note: Lit-GPT currently relies on flash attention from PyTorch nightly. 
#   Until PyTorch 2.1 is released you'll need to install nightly manually. 
#
# On CUDA
# $ pip install --index-url https://download.pytorch.org/whl/nightly/cu118 --pre 'torch>=2.1.0dev'
#
# On CPU (incl Macs)
# pip install --index-url https://download.pytorch.org/whl/nightly/cpu --pre 'torch>=2.1.0dev'
# $ cd lit-gpt && pip install -r requirements.txt
#-----------------

#-----------------
# stablelm llm
#-----------------
download-stablelm-3b:
	cd lit-gpt && python scripts/download.py --repo_id stabilityai/stablelm-base-alpha-3b --token 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

convert-stablelm-3b:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/stabilityai/stablelm-base-alpha-3b

predict-stablelm-3b:
	cd lit-gpt && python generate/base.py --prompt "Hello, my name is Federer and I am a tennis player" --checkpoint_dir checkpoints/stabilityai/stablelm-base-alpha-3b

chat-stablelm-3b:
	cd lit-gpt && python chat/base.py --prompt "Hello, my name is Federer and I am a tennis player" --checkpoint_dir checkpoints/stabilityai/stablelm-base-alpha-3b

download-stablelm-7b:
	cd lit-gpt && python scripts/download.py --repo_id stabilityai/stablelm-base-alpha-7b --token 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

convert-stablelm-7b:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/stabilityai/stablelm-base-alpha-7b

predict-stablelm-7b:
	cd lit-gpt && python generate/base.py --prompt "Hello, my name is Federer and I am a tennis player" --checkpoint_dir checkpoints/stabilityai/stablelm-base-alpha-7b

#---------
# Time to instantiate model: 1.19 seconds.
# Time to load the model weights: 14.48 seconds.
# Global seed set to 1234
# Hello, my name is Federer and I am a tennis player. Other than tennis I am also a pretty new guy at the moment. I have 3 sisters and 4 brothers that live here in Bethesda MD.
# I am 13 years old (I'm call me Tree). I started the rivarly try
# Time for inference 1: 2.53 sec total, 19.73 tokens/sec
# Memory used: 15.79 GB
#---------


#-----------------
# vicuna llm
#-----------------
download-vicuna-7b-v1.3:
	cd lit-gpt && python scripts/download.py --repo_id lmsys/vicuna-7b-v1.3 --token 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

convert-vicuna-7b-v1.3:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/lmsys/vicuna-7b-v1.3

predict-vicuna-7b-v1.3:
	cd lit-gpt && python generate/base.py --prompt "In the morning," --checkpoint_dir checkpoints/lmsys/vicuna-7b-v1.3

#-----------
# Time to instantiate model: 1.23 seconds.
# Time to load the model weights: 72.21 seconds.
# Global seed set to 1234
# Once upon a time, an angel named Lusus arrived in the kingdom of Agarest and fell in love with a human girl. However, due to a threat from the Dark One, Lusus was forced to leave, and their love was doomed from
# Time for inference 1: 5.96 sec total, 8.39 tokens/sec
# Memory used: 13.52 GB
#-----------
# Time to instantiate model: 1.22 seconds.
# Time to load the model weights: 8.11 seconds.
# Global seed set to 1234
# In the morning, they served him with a subpoena to testify before the grand jury.

# Bryson knew he was in big trouble. He had been dealing with the FBI for over a month, but he had never been this close to
# Time for inference 1: 2.75 sec total, 18.17 tokens/sec
# Memory used: 13.52 GB
#-----------
# make predict-vicuna-7b-v1.3
# python generate/base.py --prompt "In the morning," --checkpoint_dir checkpoints/lmsys/vicuna-7b-v1.3
# /home/ubuntu/.virtualenvs/falcon/lib/python3.8/site-packages/pydantic/_migration.py:282: UserWarning: `pydantic.utils:Representation` has been removed. We are importing from `pydantic.v1.utils:Representation` instead.See the migration guide for more details: https://docs.pydantic.dev/latest/migration/
#   warnings.warn(
# Loading model 'checkpoints/lmsys/vicuna-7b-v1.3/lit_model.pth' with {'org': 'lmsys', 'name': 'vicuna-7b-v1.3', 'block_size': 2048, 'vocab_size': 32000, 'padding_multiple': 64, 'padded_vocab_size': 32000, 'n_layer': 32, 'n_head': 32, 'n_embd': 4096, 'rotary_percentage': 1.0, 'parallel_residual': False, 'bias': False, 'n_query_groups': 32, 'shared_attention_norm': False, '_norm_class': 'RMSNorm', 'norm_eps': 1e-06, '_mlp_class': 'LLaMAMLP', 'intermediate_size': 11008, 'condense_ratio': 1}
# Time to instantiate model: 3.74 seconds.
# Time to load the model weights: 101.73 seconds.
# Global seed set to 1234
# In the morning, they served him with a subpoena to testify before the grand jury.

# Bryson knew he was in big trouble. He had been dealing with the FBI for over a month, but he had never been this close to
# Time for inference 1: 4.56 sec total, 10.97 tokens/sec
# Memory used: 13.52 GB

download-vicuna-13b-v1.3:
	cd lit-gpt && python scripts/download.py --repo_id lmsys/vicuna-13b-v1.3 --token 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

convert-vicuna-13b-v1.3:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/lmsys/vicuna-13b-v1.3

predict-vicuna-13b-v1.3:
	cd lit-gpt && python generate/base.py --prompt "Once upon a time," --checkpoint_dir checkpoints/lmsys/vicuna-13b-v1.3

#---------
# torch.cuda.OutOfMemoryError: CUDA out of memory. Tried to allocate 150.00 MiB. GPU 0 has a total capacty of 22.20 GiB of which 6.06 MiB is free. Including non-PyTorch memory, this process has 22.19 GiB memory in use. Of the allocated memory 21.39 GiB is allocated by PyTorch, and 4.31 MiB is reserved by PyTorch but unallocated. If reserved but unallocated memory is large try setting max_split_size_mb to avoid fragmentation.  See documentation for Memory Management and PYTORCH_CUDA_ALLOC_CONF
#---------
#-----------------
# freewilly llm
#-----------------

download-freewilly2:
	cd lit-gpt && python scripts/download.py --repo_id stabilityai/FreeWilly2

convert-freewilly2:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/stabilityai/FreeWilly2

predict-freewilly:
	cd lit-gpt && python generate/base.py --prompt "Hello, my name is Federer and I am a tennis player" --checkpoint_dir checkpoints/stabilityai/FreeWilly2

chat-freewilly:
	cd lit-gpt && python chat/base.py --checkpoint_dir checkpoints/stabilityai/FreeWilly2

#-----------------
# pythia llm
#-----------------

download-pythia-1b:
	cd lit-gpt && python scripts/download.py --repo_id EleutherAI/pythia-1b

convert-pythia-1b:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/EleutherAI/pythia-1b

predict-pythia-1b:
	cd lit-gpt && python generate/base.py --prompt "Hello, my name is" --checkpoint_dir checkpoints/EleutherAI/pythia-1b

download-pythia-6.9b:
	cd lit-gpt && python scripts/download.py --repo_id EleutherAI/pythia-6.9b

convert-pythia-6.9b:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/EleutherAI/pythia-6.9b

predict-pythia-6.9b:
	cd lit-gpt && python generate/base.py --prompt "Hello, my name is" --checkpoint_dir checkpoints/EleutherAI/pythia-6.9b

#----------
# Time to instantiate model: 1.21 seconds.
# Time to load the model weights: 103.51 seconds.
# Global seed set to 1234
# Hello, my name is ____, and I write for ____. </p>
# <p>I’m also part of the new team at ____, and I’m excited to work with you. I’d love to schedule some time to go over what you
# Time for inference 1: 2.62 sec total, 19.11 tokens/sec
# Memory used: 13.76 GB
#----------

download-pythia-12b-deduped:
	cd lit-gpt && python scripts/download.py --repo_id EleutherAI/pythia-12b-deduped

convert-pythia-12b-deduped:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/EleutherAI/pythia-12b-deduped

predict-pythia-12b-deduped:
	cd lit-gpt && python generate/base.py --prompt "Hello, my name is" --checkpoint_dir checkpoints/EleutherAI/pythia-12b-deduped

# ERROR on g5.4xlarge - torch.cuda.OutOfMemoryError: CUDA out of memory. Tried to allocate 200.00 MiB. GPU 0 has a total capacty of 22.20 GiB of which 118.06 MiB is free. Including non-PyTorch memory, this process has 22.08 GiB memory in use. Of the allocated memory 21.29 GiB is allocated by PyTorch, and 1.57 MiB is reserved by PyTorch but unallocated. If reserved but unallocated memory is large try setting max_split_size_mb to avoid fragmentation.  See documentation for Memory Management and PYTORCH_CUDA_ALLOC_CONF

download-pythia-12b:
	cd lit-gpt && python scripts/download.py --repo_id EleutherAI/pythia-12b

convert-pythia-12b:
	cd lit-gpt && python scripts/convert_hf_checkpoint.py --checkpoint_dir checkpoints/EleutherAI/pythia-12b

predict-pythia-12b:
	cd lit-gpt && python generate/base.py --prompt "Hello, my name is" --checkpoint_dir checkpoints/EleutherAI/pythia-12b

# ERROR on g5.4xlarge -  torch.cuda.OutOfMemoryError: CUDA out of memory. Tried to allocate 200.00 MiB. GPU 0 has a total capacty of 22.20 GiB of which 118.06 MiB is free. Including non-PyTorch memory, this process has 22.08 GiB memory in use. Of the allocated memory 21.29 GiB is allocated by PyTorch, and 1.57 MiB is reserved by PyTorch but unallocated. If reserved but unallocated memory is large try setting max_split_size_mb to avoid fragmentation.  See documentation for Memory Management and PYTORCH_CUDA_ALLOC_CONF

