#!/bin/bash

rm -rf model_store
mkdir -p model_store

torch-model-archiver \
--model-name BERTweetSentimentAnalysis \
--version 1.0 \
--model-file my_model/model.safetensors \
--handler handler.py \
--extra-files "my_model/config.json,my_tokenizer/added_tokens.json,my_tokenizer/bpe.codes,my_tokenizer/special_tokens_map.json,my_tokenizer/tokenizer_config.json,my_tokenizer/vocab.txt,index_to_name.json" \
--export-path model_store

echo "Archive created!"