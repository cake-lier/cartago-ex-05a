import cartago.Artifact;
import cartago.GUARD;
import cartago.OPERATION;

public class LockSolution extends Artifact {
    boolean conditionVariable;

    void init() {
        this.conditionVariable = true;
    }

    @OPERATION
    void acquire() {
        await("awaitConditionVariable");
        this.conditionVariable = false;
    }

    @GUARD
    boolean awaitConditionVariable() {
        return this.conditionVariable;
    }

    @OPERATION
    void release() {
        this.conditionVariable = true;
    }
}
