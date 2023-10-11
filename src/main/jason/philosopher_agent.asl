!philosopher.

+!philosopher : true <-
    !setup;
    !loop.

+!setup : index(N) & total(T) <-
    // Forks are circularly ordered on the table
    N1 = (N + 1) mod T;
    /* Remember! All philosophers need to take their fork following the same total ordering criterion.
     * The ".concat" Jason operator is used for performing string concatenation and get the artifact name. */
    if (N1 > N) {
        .concat("fork_", N, FirstForkName);
        .concat("fork_", N1, SecondForkName);
        +first_fork(FirstForkName);
        +second_fork(SecondForkName);
    } else {
        .concat("fork_", N1, FirstForkName);
        .concat("fork_", N, SecondForkName);
        +first_fork(FirstForkName);
        +second_fork(SecondForkName);
    }.

+!loop : true <-
    !think;
    !take_forks;
    !eat;
    !leave_forks;
    !loop.

+!take_forks : index(N) & first_fork(FirstForkName) & second_fork(SecondForkName) <-
    // Add your code here for taking the first fork, remember that they are in the "w0" workspace
    println("The philosopher ", N, " took ", FirstForkName);
    // Add your code here for taking the second fork, remember that they are in the "w0" workspace
    println("The philosopher ", N, " took ", SecondForkName).

+!leave_forks : index(N) & first_fork(FirstForkName) & second_fork(SecondForkName) <-
    // Add your code here for leaving the second fork, remember that they are in the "w0" workspace
    println("The philosopher ", N, " left ", SecondForkName);
    // Add your code here for leaving the first fork, remember that they are in the "w0" workspace
    println("The philosopher ", N, " left ", FirstForkName).

+!think : index(N) <-
    println("The philosopher ", N, " is thinking");
    .wait(1000).

+!eat : index(N) <-
    println("The philosopher ", N, " is eating");
    .wait(1000).

{ include("$jacamoJar/templates/common-cartago.asl") }
