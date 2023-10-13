package io.github.cakelier;

import cartago.Artifact;
import cartago.GUARD;
import cartago.OPERATION;

public class LockSolution extends Artifact {
    boolean conditionVariable;

    private void init() {
        this.conditionVariable = true;
    }

    @OPERATION
    public void acquire() {
        await("awaitConditionVariable");
        this.conditionVariable = false;
    }

    @GUARD
    private boolean awaitConditionVariable() {
        return this.conditionVariable;
    }

    @OPERATION
    public void release() {
        this.conditionVariable = true;
    }
}
