@interface _DPPrioPlusPlusMetricsAlgorithm
+ (id)initializeWithSecretSharingSigma:(double)sigma dimensionality:(unint64_t)dimensionality;
- (_DPPrioPlusPlusMetricsAlgorithm)initWithSecretSharingSigma:(double)sigma dimensionality:(unint64_t)dimensionality;
- (id)randomize:(id)randomize;
@end

@implementation _DPPrioPlusPlusMetricsAlgorithm

+ (id)initializeWithSecretSharingSigma:(double)sigma dimensionality:(unint64_t)dimensionality
{
  v4 = [[self alloc] initWithSecretSharingSigma:dimensionality dimensionality:sigma];

  return v4;
}

- (_DPPrioPlusPlusMetricsAlgorithm)initWithSecretSharingSigma:(double)sigma dimensionality:(unint64_t)dimensionality
{
  if ([_DPPrioPlusPlusNoiseGenerator isValidSigma:?]&& [_DPPrioPlusPlusNoiseGenerator isValidDimension:dimensionality])
  {
    v10.receiver = self;
    v10.super_class = _DPPrioPlusPlusMetricsAlgorithm;
    v7 = [(_DPPrioPlusPlusMetricsAlgorithm *)&v10 init];
    if (v7)
    {
      v7->_secretSharingSigma = sigma;
      v7->_dimension = dimensionality;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)randomize:(id)randomize
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB28] dataWithData:randomize];
  dimension = [(_DPPrioPlusPlusMetricsAlgorithm *)self dimension];
  [(_DPPrioPlusPlusMetricsAlgorithm *)self secretSharingSigma];
  v6 = [_DPPrioPlusPlusNoiseGenerator randomize:v4 dimension:dimension stddev:?];
  v10[0] = @"share1";
  v10[1] = @"share2";
  v11[0] = v4;
  v11[1] = v6;
  v10[2] = @"dimensionality";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[_DPPrioPlusPlusMetricsAlgorithm dimension](self, "dimension")}];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

@end