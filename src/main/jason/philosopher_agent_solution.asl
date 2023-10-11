!philosopher.

+!philosopher : true <-
    !setup;
    !loop.

+!setup : index(N) & total(T) <-
    // Forks are circularly ordered on the table
    N1 = (N + 1) mod T;
    /* Remember! All philosophers need to take their fork following the same total ordering criterion.
     * The ".concat" operation is used for performing string concatenation. */
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
    acquire [artifact_name(FirstForkName), wsp("w0")];
    println("The philosopher ", N, " took ", FirstForkName);
    acquire [artifact_name(SecondForkName), wsp("w0")];
    println("The philosopher ", N, " took ", SecondForkName).

+!leave_forks : index(N) & first_fork(FirstForkName) & second_fork(SecondForkName) <-
    release [artifact_name(SecondForkName), wsp("w0")];
    println("The philosopher ", N, " left ", SecondForkName);
    release [artifact_name(FirstForkName), wsp("w0")];
    println("The philosopher ", N, " left ", FirstForkName).

+!think : index(N) <-
    println("The philosopher ", N, " is thinking");
    .wait(1000).

+!eat : index(N) <-
    println("The philosopher ", N, " is eating");
    .wait(1000).

{ include("$jacamoJar/templates/common-cartago.asl") }
