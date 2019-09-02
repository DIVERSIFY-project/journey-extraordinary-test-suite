The 2 assertions in the ```for``` loop are executed 1 million times. [source](https://svn.apache.org/viewvc/commons/proper/math/trunk/src/test/java/org/apache/commons/math3/random/UnitSphereRandomVectorGeneratorTest.java?view=markup&pathrev=1440734) 

```java
  @Test
    public void test2DDistribution() {
      
        RandomGenerator rg = new JDKRandomGenerator();
        rg.setSeed(17399225432l);
        UnitSphereRandomVectorGenerator generator = new UnitSphereRandomVectorGenerator(2, rg);

        // In 2D, angles with a given vector should be uniformly distributed
        int[] angleBuckets = new int[100];
        int steps = 1000000;
        for (int i = 0; i < steps; ++i) {
            final double[] v = generator.nextVector();
            Assert.assertEquals(2, v.length);
            Assert.assertEquals(1, length(v), 1e-10);
            // Compute angle formed with vector (1,0)
            // Cosine of angle is their dot product, because both are unit length
            // Dot product here is just the first element of the vector by construction
            final double angle = FastMath.acos(v[0]);
            final int bucket = (int) (angleBuckets.length * (angle / FastMath.PI));
            ++angleBuckets[bucket];
        }
        // Simplistic test for roughly even distribution
        final int expectedBucketSize = steps / angleBuckets.length;
        for (int bucket : angleBuckets) {
            Assert.assertTrue("Bucket count " + bucket + " vs expected " + expectedBucketSize,
                              FastMath.abs(expectedBucketSize - bucket) < 350);
        }
    }
```
