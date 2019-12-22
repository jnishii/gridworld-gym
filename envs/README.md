`MDPGridworld-v0`
--------------------
These are the same environments as [IRLL/reinforcement_learning_class](https://github.com/IRLL/reinforcement_learning_class/tree/master/gym/envs), so please check this site about the detail of basic definitions.

* **States** or **Observation**: States are represented with scalar values in the range 0 to 11. 

You can get these infos by standard methods of openAI gym.
```python
import gym
env = gym.make('MDPGridworld-v0')
print(env.observation_space)
# Discrete(12)
print(env.observation_space.n)
# 12
```
In MDPGridworld, you can get more infomations using show_info()
```
env.show_info()
```
```
[Map and Cell IDs]
+---+---+---+---+    +---+---+---+---+
|   |   |   | G |    |  0|  1|  2|  3|
+---+---+---+---+    +---+---+---+---+
|   | # |   | F |    |  4|  5|  6|  7|
+---+---+---+---+    +---+---+---+---+
| S |   |   |   |    |  8|  9| 10| 11|
+---+---+---+---+    +---+---+---+---+
[Rewards]
S: start
G: goal (100 points, terminal state)
F: fire (-100 points, terminal state)
C: cake (5 points, terminal state)
#: wall (0 points, back to the previous cell)
Time cost: -3 points/step


`MDPGridworld-v1`
 --------------------
8x8 version of GridWorld

```
env = gym.make("MDPGridworld-v1")
env.show_info()
```
```
[Map and Cell IDs]
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   |   |   | # |   |   |   | G |    |  0|  1|  2|  3|  4|  5|  6|  7|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | # |   |    |  8|  9| 10| 11| 12| 13| 14| 15|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | # |   |    | 16| 17| 18| 19| 20| 21| 22| 23|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # | # | # | # | # | # |   |    | 24| 25| 26| 27| 28| 29| 30| 31|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | F |   |    | 32| 33| 34| 35| 36| 37| 38| 39|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | F |   |    | 40| 41| 42| 43| 44| 45| 46| 47|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | F |   |    | 48| 49| 50| 51| 52| 53| 54| 55|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
| S |   |   |   |   |   |   |   |    | 56| 57| 58| 59| 60| 61| 62| 63|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
[Rewards]
S: start
G: goal (100 points, terminal state)
F: fire (-100 points, terminal state)
C: cake (5 points, terminal state)
#: wall (0 points, back to the previous cell)
Time cost: -3 points/step
```


`MDPGridworld-v2`
 --------------------
In 'MDPGridworld-v2', a cake `C` is added.
When an agent get the cale, the agent get the 0 reward and the episode ends.

```
env = gym.make("MDPGridworld-v2")
env.show_info()
```
[Map and Cell IDs]
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   |   |   | # |   |   |   | G |    |  0|  1|  2|  3|  4|  5|  6|  7|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | # |   |    |  8|  9| 10| 11| 12| 13| 14| 15|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | # |   |    | 16| 17| 18| 19| 20| 21| 22| 23|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # | # | # | # | # | # |   |    | 24| 25| 26| 27| 28| 29| 30| 31|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # | C |   |   |   | F |   |    | 32| 33| 34| 35| 36| 37| 38| 39|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | F |   |    | 40| 41| 42| 43| 44| 45| 46| 47|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   | # |   |   |   |   | F |   |    | 48| 49| 50| 51| 52| 53| 54| 55|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
| S |   |   |   |   |   |   |   |    | 56| 57| 58| 59| 60| 61| 62| 63|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
[Rewards]
S: start
G: goal (100 points, terminal state)
F: fire (-100 points, terminal state)
C: cake (0 points, terminal state)
#: wall (0 points, back to the previous cell)
Time cost: -3 points/step
```


`MDPGridworld-v3`
 --------------------
The environment of 'MDPGridworld-v3' is the same as 'MDPGridworld-v2' except that the reward by the cake is 5 points.
```
env = gym.make("MDPGridworld-v3")
env.show_info()
```
[Rewards]
S: start
G: goal (100 points, terminal state)
F: fire (-100 points, terminal state)
C: cake (5 points, terminal state)
#: wall (0 points, back to the previous cell)
Time cost: -3 points/step
```   



`MDPGridworld-cliff-v0`
 --------------------
The environment of 'MDPGridworld-cliff-v0' is an environment similar to the cliff demonstrated in the textbook by Sutton and Barto.

```
env = gym.make("MDPGridworld-cliff-v0")
env.show_info()
```
```
[Map and Cell IDs]
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   |   |   |   |   |   |   |   |    |  0|  1|  2|  3|  4|  5|  6|  7|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   |   |   |   |   |   |   |   |    |  8|  9| 10| 11| 12| 13| 14| 15|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
|   |   |   |   |   |   |   |   |    | 16| 17| 18| 19| 20| 21| 22| 23|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
| S | F | F | F | F | F | F | G |    | 24| 25| 26| 27| 28| 29| 30| 31|
+---+---+---+---+---+---+---+---+    +---+---+---+---+---+---+---+---+
[Rewards]
S: start
G: goal (100 points, terminal state)
F: fire (-100 points, terminal state)
C: cake (5 points, terminal state)
#: wall (-3 points, back to the previous cell)
Time cost: -3 points/step
```   

