package io.github.cakelier;

import cartago.Artifact;
import cartago.OPERATION;

public class Lock extends Artifact {

    private void init() {
        /* Initialize here your guard condition, you'll need to declare also some field. */
    }

    @OPERATION
    public void acquire() {
        /* Add your code here for waiting until the guard condition is met and then setting it. */
    }

    @OPERATION
    public void release() {
        /* Add your code here for resetting the guard condition. */
    }
}
