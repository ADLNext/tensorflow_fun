# Fun with TensorFlow

A repo to host cool experiments with TensorFlow.

Please contribute with your experiments!!
Just make sure that the code is well commented and add a little description in the README so that others know what you've been up to.

## QA attention network

`QA_attention.py` contains a TF implementation of a sporadic memory network for context modelling and question answering. The script will download the dataset if not already in the current directory (might take a few mins); it took me ~10 hours to get good results, training on a GTX1060. The code contains comments with links to papers/resources.

## Deep QA

A TF implementation of the model proposed by Google in [this paper](http://arxiv.org/abs/1506.05869); this is the same architecture that lies behind the Google Assistant, except Google is using custom word embeddings and some other subtle tricks (that they are not sharing for obvious reasons).

Most of this is not my work, here are a few acknowledgements:

- The loading corpus part of the program is inspired by the Torch [neuralconvo](https://github.com/macournoyer/neuralconvo) from [macournoyer](https://github.com/macournoyer).

- The pre-trained word emebeddings are from [Eschnou](https://github.com/eschnou).

- The whole parameter handling/daemon configuration is from [Conchylicultor](https://github.com/Conchylicultor).

### Datasets

A dialog corpus is a collection of conversations (sentence - reply); the folder `data` contains some corpus ready to use; the default one is the famous [Cornell Movie Dialogs](http://www.cs.cornell.edu/~cristian/Cornell_Movie-Dialogs_Corpus.html).

Each folder also contains a README with further instructions (work from [julien-c](https://github.com/julien-c), [Eschnou](https://github.com/eschnou) and [Conchylicultor](https://github.com/Conchylicultor)).

To train with a custom dataset refer to `data/lightweight`.

### Dependencies

Dependencies:
* python 3.5
* tensorflow (>= 1.0)
* numpy
* CUDA (for using GPU)
* nltk (natural language toolkit for tokenized the sentences)
* tqdm

If it's the first time that you use `nltk`, also run (using python 3)
```
python -m nltk.downloader punkt
```

### Running

To train, simply run
```
python main.py --verbose
```

You can use `python main.py -h` to see all possible flags.

You can interrupt training at any given time with Ctrl+c, the script will save the model so that it can be used for testing.

To test you can either run `main.py --test`, that will generate results in `save/model/samples_predictions.txt` or `main.py --test interactive` to actually talk to the chatbot.

You can also use [TensorBoard](https://www.tensorflow.org/how_tos/summaries_and_tensorboard/) to visualize the computation graph running `tensorboard --logdir save/` (tensorboard scripts are from [dandelionmane](https://github.com/dandelionmane)).

Training takes quite a lot of time, I wouldn't even try without GPU; if yo udon't have a GPU available on your machine it's probably better to just run on a GPU compute instance on AWS.
