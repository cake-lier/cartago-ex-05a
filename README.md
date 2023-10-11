# JaCaMo by exercises — Exercise 05a — Implementing coordination artifacts

In this exercise, you need to exploit structured operations to implement a coordination artifact,
a semaphore, or a lock following another nomenclature,
and its usage to solve the dining philosophers coordination problem.
In the dining philosophers problem we have five "philosopher"
agents gathered around a round table and, being philosophers, they like to think and to eat.
The question is that to eat they need two forks,
shared respectively with the philosopher to their right and to their left.
The solution is to impose a total ordering on them, on their locks,
and let all philosophers take them in the same order.
Everything about the philosopher's behavior is implemented;
the missing elements are the lock action invocations,
which should be made using the artifact name and knowing that the artifacts are in the "w0" workspace.
The "lock" artifact needs to be implemented from scratch leveraging the mechanism typical of structured operations.

## Solution

All solution files are marked with the "solution" suffix, don't open them before solving the exercise!