# DCM Reinforcement Learning

The aim of this competition is to develop a Reinforcement Learning (RL) agent that can drive a car around a racetrack.

You will train an RL model using the Stable Baselines3 library and submit the trained model for evaluation.

### Environment

The simulation environment used for this challenge is:

Gymnasium – CarRacing (Box2D)
https://gymnasium.farama.org/environments/box2d/car_racing/

### Requirements

All models must be trained using Stable Baselines3
https://stable-baselines3.readthedocs.io/en/master/

- You can use any algorithm available in Stable Baselines3

You can train locally if you are comfortable setting up a Python environment or using Kaggle notebooks.

#### Kaggle 

https://www.kaggle.com/code?import=true

Drag and drop file to upload > `notebooks/AI_Car_racer.ipynb`

### Getting Started

We have provided you with a starter notebook, which shows the racetrack environment, introduces Stable Baselines3 library,
and how to change adjust hyperparamters to improve model performance.

### Submission Format

Your submission must be a ZIP file generated using:

```model.save("your_model_name")```

Additionally, we need to know if your model used `continuous = False` or `continuous = False` and which Stable Baselines3 algorithm you used eg `PPO` / `DQN` etc. 

The resulting .zip file is what you submit for the competition.

A Google Drive folder will be provided during the competition to submit your model.
