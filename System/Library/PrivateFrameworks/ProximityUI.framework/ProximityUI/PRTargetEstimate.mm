@interface PRTargetEstimate
+ (PRTargetEstimate)targetEstimateWithTime:(double)time vector:(float)vector uncertainty:(float)uncertainty weight:(BOOL)weight isResolved:(unint64_t)resolved verticalState:;
- (PRTargetEstimate)initWithTime:(double)time vector:(float)vector uncertainty:(float)uncertainty weight:(BOOL)weight isResolved:(unint64_t)resolved verticalState:;
@end

@implementation PRTargetEstimate

+ (PRTargetEstimate)targetEstimateWithTime:(double)time vector:(float)vector uncertainty:(float)uncertainty weight:(BOOL)weight isResolved:(unint64_t)resolved verticalState:
{
  weightCopy = weight;
  v10 = v7;
  v18 = *&vector;
  v13 = [PRTargetEstimate alloc];
  *&v14 = uncertainty;
  LODWORD(v15) = v10;
  v16 = [(PRTargetEstimate *)v13 initWithTime:weightCopy vector:resolved uncertainty:time weight:v18 isResolved:v14 verticalState:v15];

  return v16;
}

- (PRTargetEstimate)initWithTime:(double)time vector:(float)vector uncertainty:(float)uncertainty weight:(BOOL)weight isResolved:(unint64_t)resolved verticalState:
{
  v10 = v7;
  v14 = *&vector;
  v15.receiver = self;
  v15.super_class = PRTargetEstimate;
  result = [(PRTargetEstimate *)&v15 init];
  if (result)
  {
    result->_timestamp = time;
    *result->_vector = v14;
    result->_uncertainty = uncertainty;
    result->_weight = v10;
    result->_isVerticalResolved = weight;
    result->_verticalState = resolved;
  }

  return result;
}

@end