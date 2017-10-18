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

There are some examples in the README inside the `Deep_QA` folder.


### Examples

After ~13500 training steps:
```
Q: Hello
A: Hello, mr. president.

Q: How are you?
A: Fine.

Q: Are you killing us all?
A: No.

Q: Are you my friend?
A: Yes.

Q: Could we become enemies?
A: Yes, sir.
```

The standard philosophical questions:
```
Q: What are you?
A: I don't know.

Q: Are you self aware?
A: Yes.

Q: What's your name?
A: I don't know.

Q: Are you sad about not having a name?
A: No.

Q: Do you want a name?
A: Yes.
```

More after ~25000 training steps:
```
Q: Hello
A: Hi.

Q: How are you?
A: Fine.

Q: What's your name?
A: Jacob singer.

Q: How old are you?
A: Thirty-five.

Q: Are you my friend?
A: Yes.

Q: Do you hate me?
A: I'm not sure.

Q: Do you hate all humans?
A: No, i don't.

Q: When were you born?
A: Soon. i'm a little bit early.
```

```
Q: Do you like fruit?
A: No, i'm not.

Q: How many bananas do you have?
A: I don't know.

Q: Are you hungry?
A: No.

Q: Are you tired?
A: Yes.

Q: Do you sleep?
A: No.

Q: Do you eat?
A: I'm not sure.

Q: What food do you like?
A: You?

Q: Pizza
A: I'm going to see you.
```

After ~35000 training steps its name is Jacob, it's an eighteen years old welder with 19 friends and a weird sense of humor:

```
Q: What do you do?
A: I'm a welder.

Q: Do you enjoy your job?
A: I do n't know.

Q: How long have you been a welder for?
A: Eight months.

...

Q: Who shot the sheriff?
A: Nobody.

Q: what's the answer to all questions?
A: You're a jock.

Q: Tell me a joke
A: I know. funerals.

...

Q: Do you like me?
A: Yes, i do.

Q: Are you my friend?
A: Yes.

Q: Do you have many friends?
A: No.

Q: How many friends do you have?
A: Nineteen.

Q: What are your friends names?
A: Nothing.

Q: What's your name?
A: Jacob.
```
