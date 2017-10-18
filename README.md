# Fun with TensorFlow

A repo to host cool experiments with TensorFlow.

Please contribute with your experiments!!
Just make sure that the code is well commented and add a little description in the README so that others know what you've been up to.

Each experiment should have its own folder with a README if necessary.

## QA attention network

`QA_attention.py` contains a TF implementation of a sporadic memory network for context modelling and question answering. The script will download the dataset if not already in the current directory (might take a few mins); it took me ~10 hours to get good results, training on a GTX1060. The code contains comments with links to papers/resources.

## Deep QA

A TF implementation of the model proposed by Google in [this paper](http://arxiv.org/abs/1506.05869) for a conversational chatbot; this is the same architecture that lies behind the Google Assistant, except Google is using custom word embeddings and some other subtle tricks (that they are not sharing for obvious reasons).
