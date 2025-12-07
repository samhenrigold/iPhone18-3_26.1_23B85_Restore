@interface PGFeatureTransformerToUnitNorm
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message;
- (id)applyTransformationToFloatVector:(id)vector error:(id *)error;
@end

@implementation PGFeatureTransformerToUnitNorm

- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = @"message";
  v12[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerToUnitNorm" code:code userInfo:v8];

  return v9;
}

- (id)applyTransformationToFloatVector:(id)vector error:(id *)error
{
  vectorCopy = vector;
  LODWORD(v7) = 2.0;
  v8 = [vectorCopy vectorByElementwiseRaisingToExponent:v7];
  [v8 sum];
  if (sqrtf(v9) == 0.0)
  {
    if (error)
    {
      [(PGFeatureTransformerToUnitNorm *)self _generateErrorWithErrorCode:0 andMessage:@"Divide by 0 is not valid operation."];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [vectorCopy vectorByDividingByScalar:?];
  }

  return v10;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  if ([parametersCopy count])
  {
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v7 = [PGFeatureTransformerHelper validParameters:parametersCopy ofTypes:v6];

    if (v7)
    {
      v8 = [parametersCopy objectAtIndexedSubscript:0];
      v9 = [parametersCopy objectAtIndexedSubscript:1];
      error = -[PGFeatureSliceTransformer initFromIndex:toIndex:]([PGFeatureTransformerToUnitNorm alloc], "initFromIndex:toIndex:", [v8 integerValue], objc_msgSend(v9, "integerValue"));
    }

    else if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14 = @"Failed to instantiate PGFeatureTransformerToUnitNorm: incorrect parameters.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = [v10 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerToUnitNorm" code:1 userInfo:v11];

      error = 0;
    }
  }

  else
  {
    error = objc_alloc_init(PGFeatureTransformerToUnitNorm);
  }

  return error;
}

@end