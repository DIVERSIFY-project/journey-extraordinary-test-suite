This is a checker method that can verify complex propeties about matrices. 
In the bootom part of the checker, one can observe an extraordinary double imbricated ```for``` loop that checks that the ```min``` variable correctly converges from ```Double.POSITIVE_INFINITY``` to ```0```. 

```java
    // org.apache.commons.math3.geometry.euclidean.twod.PolygonsSetTest
    private void checkVertices(Vector2D[][] rebuiltVertices,
                               Vector2D[][] vertices) {
        // each rebuilt vertex should be in a segment joining two original vertices
        for (int i = 0; i < rebuiltVertices.length; ++i) {
            for (int j = 0; j < rebuiltVertices[i].length; ++j) {
                boolean inSegment = false;
                Vector2D p = rebuiltVertices[i][j];
                for (int k = 0; k < vertices.length; ++k) {
                    Vector2D[] loop = vertices[k];
                    int length = loop.length;
                    for (int l = 0; (! inSegment) && (l < length); ++l) {
                        inSegment = checkInSegment(p, loop[l], loop[(l + 1) % length], 1.0e-10);
                    }
                }
                Assert.assertTrue(inSegment);
            }
        }
        // each original vertex should have a corresponding rebuilt vertex
        for (int k = 0; k < vertices.length; ++k) {
            for (int l = 0; l < vertices[k].length; ++l) {
                double min = Double.POSITIVE_INFINITY;
                for (int i = 0; i < rebuiltVertices.length; ++i) {
                    for (int j = 0; j < rebuiltVertices[i].length; ++j) {
                        min = FastMath.min(vertices[k][l].distance(rebuiltVertices[i][j]),
                                       min);
                    }
                }
                Assert.assertEquals(0.0, min, 1.0e-10);
            }}}
```
