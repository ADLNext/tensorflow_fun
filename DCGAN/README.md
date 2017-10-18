# DCGAN in Tensorflow

Tensorflow implementation of [Deep Convolutional Generative Adversarial Networks](http://arxiv.org/abs/1511.06434).

Inspired by [this torch implementation](https://github.com/soumith/dcgan.torch).

## Usage

First, download dataset with:
```
    $ python download.py mnist celebA
```
To train a model with downloaded dataset:
```
    $ python main.py --dataset celebA --input_height=108 --train --crop
```
To test with an existing model:
```
    $ python main.py --dataset celebA --input_height=108 --crop
```
