A parameterized test case from Apache cloudstack. 
Extraordinary: the test input is randomly generated.
So:
- the parameterized test specifies a general property about the program
- the test class check the property with a different input value at each run

[source](https://github.com/apache/cloudstack/blob/7c6630bca7cb5f2406dcbff313923866cec7bb7e/services/console-proxy/rdpconsole/src/test/java/streamer/ByteBufferTest.java#L49)

```java
@RunWith(value = Parameterized.class)
public class ByteBufferTest {
  @Test
  public void testReadSignedVarIntWhenLenIs5() throws Exception {
    int len = 5;
    ByteBuffer byteBuffer = new ByteBuffer(data);
    long expected = data[0] |       ByteBuffer.calculateUnsignedInt(data[1], data[2], data[3], data[4]);
    long actual = byteBuffer.readSignedVarInt(len);
    assertEquals(expected, actual);
  }

  private static byte[] getRandomByteArray() {
    return new byte[] {(byte)random.nextInt(), (byte)random.nextInt(), (byte)random.nextInt(), (byte)random.nextInt(), (byte)random.nextInt(), (byte)random.nextInt(),
(byte)random.nextInt()};
  }


  public ByteBufferTest(byte[] data) {
    this.data = data;
  }


  @Parameters
  public static Collection<Object[]> data() {
  int parameterCount = 50;
  List<Object[]> parameters = new     ArrayList<Object[]>(parameterCount);
  for (int i = 0; i < parameterCount; i++) {
    parameters.add(new Object[] {getRandomByteArray()});
  }
  return parameters;
}


}
 
```

