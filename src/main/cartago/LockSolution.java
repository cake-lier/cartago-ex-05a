import cartago.Artifact;
import cartago.OPERATION;

public class LockSolution extends Artifact {

    void init() {
        /* Initialize here your guard condition, you'll need to declare also some field. */
    }

    @OPERATION
    void acquire() {
        /* Add your code here for waiting until the guard condition is met and then setting it. */
    }

    @OPERATION
    void release() {
        /* Add your code here for resetting the guard condition. */
    }
}
