# Extraordinary tests

This repository is a florilege of extraordinary test cases, curated by [Benoit Baudry](https://softwarediversity.eu/) and [Martin Monperrus](https://www.monperrus.net/martin/). External contributions are welcome.

* [test2DDistribution](https://github.com/KTH/extraordinary-tests/blob/master/01_test2DDistribution.md) contains generates 1 million data points and asserts the behavior on all of them
* [checkVertices](https://github.com/KTH/extraordinary-tests/blob/master/02_checkVertices.md) checks that a number well converges from `Double.POSITIVE_INFINITY` to `0 ± 10-6`.
* [LOG_GAMMA_REF](https://github.com/KTH/extraordinary-tests/blob/master/03_LOG_GAMMA_REF.md) generates the test data from a Maxima program.
* [ByteBufferTest](https://github.com/KTH/extraordinary-tests/blob/master/04_ByteBufferTest.md) is a parametrized test with a random test input.
* [typical](https://github.com/KTH/extraordinary-tests/blob/master/05_typical.md) shows the risk of putting an assertion in a callback function.
* [random in test](https://github.com/KTH/extraordinary-tests/blob/master/06_BlockFieldMatrixTest.md) a deterministic test case with hard-coded seeded random number generator.
* [test exception](https://github.com/KTH/extraordinary-tests/blob/master/07_testexception.md) an example of test of exception.
* [relatively equal](https://github.com/KTH/extraordinary-tests/blob/master/08_assertRelativelyEquals.md) an example of test assertion with epsilon precision.
* [flaky](https://github.com/KTH/extraordinary-tests/blob/master/09_testThreadSafe.md) a flaky test because of undeterministic behavior of thread allocation.
