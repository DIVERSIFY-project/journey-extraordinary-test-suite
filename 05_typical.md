An assertion defined inside the define of an anonymous class inside a method call in a test case. ([source](https://github.com/aws/aws-sdk-java/blob/856d27b5d4f374fbb6299a3504f109ef23c1ea3a/aws-java-sdk-core/src/test/java/com/amazonaws/http/conn/ssl/SdkTLSSocketFactoryTest.java#L54))

```java
@Test
void typical() throws NoSuchAlgorithmException {
  SdkTLSSocketFactory f = new SdkTLSSocketF(SSLContext.getDefault(),null);
  f.prepareSocket(new TestSSLSocket() {
    @Override
    public void setEnabledProtocols(String[] protocols) {
assertTrue(Arrays.equals(protocols, new String[] {"TLSv1.2", "TLSv1.1", "TLSv1", "SSLv3" }));
    }
  });
}
```
