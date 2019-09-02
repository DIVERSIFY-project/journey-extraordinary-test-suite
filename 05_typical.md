An assertion defined inside the define of an anonymous class inside a method call in a test case.

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
