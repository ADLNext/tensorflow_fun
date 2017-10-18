This directory contains a few examples of Reinforcement Learning with tensorflow and the OpenAI gym.

## Car

The environment is composed by a 2D car and a box; the car has 5 sensors to obtain distance information.

Uses a Deep Deterministic Policy Gradient agent.

## Lander

The environment is composed by a lunar lander with 3 engines and the moon surface (irregular and randomly generated).

The folder contains 3 different approaches:

- Asynchronous Advantage Actor Critic (A3C) with continuous action space
- Deep Q Network agent
- A DQN improvement: Prioritized Experience Replay (based on https://arxiv.org/abs/1511.05952)

## Robot Arm

The environment is composed by a robot arm and a blue box that the arm has to reach; approaches:

- Deep Deterministic Policy Gradient
- Asynchronous Advantage Actor Critic (A3C) with continuous action space
- OpenAI's Proximal Policy Optimization (PPO) (from http://adsabs.harvard.edu/abs/2017arXiv170706347S)

The DPPO updating rule is from Google DeepMind (http://adsabs.harvard.edu/abs/2017arXiv170702286H)

## Acknowledgements

Once again, these examples are mostly taken from around the web, I am afraid I have lost track of all the resources I should link to you so here is a messy collection of resources on RL:

- [8-part tutorial on Medium](https://medium.com/emergent-future/simple-reinforcement-learning-with-tensorflow-part-0-q-learning-with-tables-and-neural-networks-d195264329d0)

- [paper implementantions](https://github.com/carpedm20/deep-rl-tensorflow)

- [the OpenAI gym](https://github.com/openai/gym)

- [some brilliant examples](https://github.com/ppwwyyxx/tensorpack/tree/master/examples)
