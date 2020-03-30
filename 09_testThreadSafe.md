An example of flaky test

```java
// In org.easymock.tests2
public class ThreadingTest {

    private static final int THREAD_COUNT = 10;

    @Test
    public void testThreadSafe() throws Throwable {

        final IMethods mock = createMock(IMethods.class);
        expect(mock.oneArg("test")).andReturn("result").times(THREAD_COUNT);

        replay(mock);

        final Callable<String> replay = new Callable<String>() {
            public String call() throws Exception {
                return mock.oneArg("test");
            }
        };
        final ExecutorService service = Executors.newFixedThreadPool(THREAD_COUNT);
        final List<Callable<String>> tasks = Collections.nCopies(THREAD_COUNT, replay);
        final List<Future<String>> results = service.invokeAll(tasks);
        for (final Future<String> future : results) {
            assertEquals("result", future.get());
        }
        verify(mock);
    }
}
```
