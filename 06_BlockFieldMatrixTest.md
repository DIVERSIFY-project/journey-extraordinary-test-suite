An deterministic test case with hard-coded seed.

```java
org.apache.commons.math3.linear.BlockFieldMatrixTest
@Test
public void testCopyFunctions() {
  Random r = new Random(66636328996002l);
  BlockFieldMatrix<Fraction> m1 = createRandomMatrix(r, 47, 83);
  BlockFieldMatrix<Fraction> m2 = new	BlockFieldMatrix<Fraction>(m1.getData());
  Assert.assertEquals(m1, m2);
  BlockFieldMatrix<Fraction> m3 = new BlockFieldMatrix<Fraction>(testData);
  BlockFieldMatrix<Fraction> m4 = new BlockFieldMatrix<Fraction>(m3.getData());
  Assert.assertEquals(m3, m4);
}
```
