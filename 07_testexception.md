An example of test of exception

```java
org.apache.commons.math3.filter.KalmanFilterTest
@Test(expected=MatrixDimensionMismatchException.class)
public void testTransitionMeasurementMatrixMismatch() {
  // A and H matrix do not match in dimensions
  // A = [ 1 ]
  RealMatrix A = new Array2DRowRealMatrix(new double[] { 1d });
  // no control input
  RealMatrix B = null;
  // H = [ 1 1 ]
  RealMatrix H = new Array2DRowRealMatrix(new double[] { 1d, 1d });
  // Q = [ 0 ]
  RealMatrix Q = new Array2DRowRealMatrix(new double[] { 0 });
  // R = [ 0 ]
  RealMatrix R = new Array2DRowRealMatrix(new double[] { 0 });
  ProcessModel pm = new DefaultProcessModel(A, B, Q,
                      new ArrayRealVector(new double[] { 0 }), null);
  MeasurementModel mm = new DefaultMeasurementModel(H, R);
  new KalmanFilter(pm, mm);
  Assert.fail("transition and measurement matrix should not be compatible");
}```
