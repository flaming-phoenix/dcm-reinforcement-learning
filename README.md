# DCM Reinforcement Learning

The aim of this competition is to develop a Reinforcement Learning (RL) agent that can drive a car around a racetrack.

You will train an RL model using the Stable Baselines3 library and submit the trained model for evaluation.

## Environment

The simulation environment used for this challenge is:

**Gymnasium – CarRacing (Box2D)**  
https://gymnasium.farama.org/environments/box2d/car_racing/

## Requirements

All models must be trained using **Stable Baselines3**:  
https://stable-baselines3.readthedocs.io/en/master/

---

## Available Algorithms in Stable Baselines 3

One of the powerful features of Stable Baselines 3 is that you can often use RL algorithms as a **"black box"** — you don't need to understand all the math behind them to get results. Just pick an algorithm, tune a few hyperparameters, and let it learn.

### Supported Algorithms

| Algorithm | Action Space | Best For | Documentation |
|-----------|-------------|----------|---------------|
| **DQN** | Discrete only | Simple discrete control tasks | [DQN Docs](https://stable-baselines3.readthedocs.io/en/master/modules/dqn.html) |
| **PPO** | Both | General-purpose, very stable | [PPO Docs](https://stable-baselines3.readthedocs.io/en/master/modules/ppo.html) |
| **A2C** | Both | Fast training, simpler than PPO | [A2C Docs](https://stable-baselines3.readthedocs.io/en/master/modules/a2c.html) |
| **SAC** | Continuous only | Sample-efficient continuous control | [SAC Docs](https://stable-baselines3.readthedocs.io/en/master/modules/sac.html) |
| **TD3** | Continuous only | Continuous control, addresses overestimation | [TD3 Docs](https://stable-baselines3.readthedocs.io/en/master/modules/td3.html) |
| **DDPG** | Continuous only | Continuous control (predecessor to TD3) | [DDPG Docs](https://stable-baselines3.readthedocs.io/en/master/modules/ddpg.html) |

**Full Algorithm List**: https://stable-baselines3.readthedocs.io/en/master/guide/algos.html

### Using Algorithms as a "Black Box"

The beauty of Stable Baselines 3 is that you **don't need to understand the internal workings** of these algorithms to use them effectively.

Just:
1. Pick an algorithm that matches your action space (discrete vs continuous)
2. Set a few hyperparameters (learning rate, gamma, etc.)
3. Train and see the results!

---

## Configuration Options

The notebook includes a **CONFIGURATION SECTION** at the top where you can easily customize your training

## 🚀 Getting Started

We have provided you with a starter notebook, which shows the racetrack environment, introduces the Stable Baselines3 library, and demonstrates how to adjust hyperparameters to improve model performance.

### Local Setup

If you prefer to train locally:

1. Clone this repository
2. Install dependencies:
   ```bash
   pip install swig>=4.3.1.post0
   pip install 'gymnasium[box2d]==1.2.0'
   pip install 'stable-baselines3[extra]==2.7.0'
   ```
3. Open `notebooks/AI_Car_Racer.ipynb` in Jupyter

### Google Colab

1. Go to https://colab.research.google.com/
2. Upload `notebooks/AI_Car_Racer.ipynb`
3. Select GPU runtime: `Runtime → Change runtime type → GPU`
4. Run the cells!

### Kaggle

https://www.kaggle.com/code?import=true

Drag and drop file to upload > `notebooks/AI_Car_Racer.ipynb`

---

## Submission Format

Your submission must be a ZIP file generated using:

```python
model.save("your_model_name")
```

Additionally, please provide:
- Whether your model used `continuous = True` or `continuous = False`
- Which Stable Baselines3 algorithm you used (e.g., `PPO`, `DQN`)

The resulting `.zip` file is what you submit for the competition.

A Google Drive folder will be provided during the competition to submit your model.

---

## Additional Resources

- **Stable Baselines 3 Documentation**: https://stable-baselines3.readthedocs.io/en/master/
- **Gymnasium Documentation**: https://gymnasium.farama.org/
- **CarRacing Environment**: https://gymnasium.farama.org/environments/box2d/car_racing/
- **RL Algorithm Comparison**: https://stable-baselines3.readthedocs.io/en/master/guide/algos.html

---

## Competition Tips

1. **Start Small**: Use `TOTAL_TIMESTEPS = 50000` for quick experiments
2. **Use Checkpoints**: Save frequently so you can resume if interrupted
3. **Try Different Algorithms**: DQN and PPO have different strengths
4. **Watch the Metrics**: `ep_rew_mean` increasing = your car is improving!
5. **Iterate Fast**: Many short runs beat one long run for finding good hyperparameters

Good luck!
