# Gridworld class of openAI gym

- This class is an enhanced version of [CptS 580 Reinforcement Learning
](https://github.com/IRLL/reinforcement_learning_class)
- You can make your customized map in this gridworld class.

OpenAI Gym Resources
----------
* [Documentation](https://gym.openai.com/docs)
* [Source code](https://github.com/openai/gym)
* [Wiki](https://github.com/openai/gym/wiki)

How to install `MDPGridworld` gym environment?
-------------------------
**IMPORTANT:** This class requires the OpenAI `gym` installed. It specifically requires the `Toy Text` environment collection installed which should be included even with the minimal gym installation.

Basic steps to add a new environment into OpenAI Gym are instructed in 
[instructions](https://github.com/openai/gym/wiki/Environments).

1. Execute the following commands to find the location of `gym` in your system:

    ```python
    $ python check_gympath.py 
    /usr/local/anaconda3/lib/python3.6/site-packages/gym/
    ```

2. After exiting python's interpreter, add the contents of `env_register.txt` into `/usr/local/anaconda3/lib/python3.6/site-packages/gym/envs/__init__.py`


    ```
    $ cat env_register.txt >> /usr/local/anaconda3/lib/python3.6/site-packages/gym/envs/__init__.py
    ```

3. Copy the `mdp_gridworld.py` file under the diretory `toy_text`.

    ```
    $ cp envs/mdp_gridworld.py /usr/local/anaconda3/lib/python3.6/site-packages/gym/envs/toy_text
    ```

4. Open the `/usr/local/anaconda3/lib/python3.6/site-packages/gym/envs/toy_text/__init__.py` file and add the code below. Save and close after. 

    ```
    $ atom /usr/local/anaconda3/lib/python3.6/site-packages/gym/envs/toy_text/__init__.py
    ```
    ```python
    # Add this code in toy_text/__init__.py
    from gym.envs.toy_text.mdp_gridworld import MDPGridworldEnv
    ```

5. `MDPGridworld-v0` gym environment is now ready to used. 

    ```python
    import gym
    env = gym.make('MDPGridworld-v0')
    env.show_info() # you can get infos about the env.
    ```

# Environments

You can find predefined envs in `env_register.txt`.

- MDPGridworld-v0: 3x4 map (Original)
- MDPGridworld-v1: 8x8 map
- MDPGridworld-v2: 8x8 map (v1 plus a cake (0 point and terminal))
- MDPGridworld-v3: 8x8 map (v1 plus a cake (5 point and terminal))
- MDPGridworld-cliff-v0: 4x8 map

See [the documents under envs](envs/README.md) in more detail.

# How to define environment in Python codes

```
from gym.envs.registration import register
for env in gym.envs.registry.env_specs:
     if 'MDPGridworld-v5' in env:
          print("Remove {} from registry".format(env))
          del gym.envs.registry.env_specs[env]

register(
    id='MDPGridworld-v5',
    entry_point='gym.envs.toy_text:MDPGridworldEnv',
    max_episode_steps=200,
    kwargs={'r_wall': -3, 'r_fire': -100, 'r_step': -3, 'start': (7,0), 
    'map': [
    "+--------+",
    "|   |   G|",
    "| |   | F|",
    "| |   | F|",
    "| |   | F|",
    "| |   | F|",
    "| |FFFF F|",
    "| |     F|",
    "|S      F|",    
    "+--------+"],
           }
)
```
