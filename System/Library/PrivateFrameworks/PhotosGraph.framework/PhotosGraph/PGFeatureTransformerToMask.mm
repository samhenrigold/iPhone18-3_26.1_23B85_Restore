@interface PGFeatureTransformerToMask
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (PGFeatureTransformerToMask)initWithMaskingFloatValue:(float)value fromIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (id)applyTransformationToFloatVector:(id)vector error:(id *)error;
@end

@implementation PGFeatureTransformerToMask

- (id)applyTransformationToFloatVector:(id)vector error:(id *)error
{
  v5 = [vector count];
  v6 = MEMORY[0x277D22C40];
  *&v7 = self->_maskingValue;

  return [v6 vectorRepeatingFloat:v5 count:v7];
}

- (PGFeatureTransformerToMask)initWithMaskingFloatValue:(float)value fromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v7.receiver = self;
  v7.super_class = PGFeatureTransformerToMask;
  result = [(PGFeatureSliceTransformer *)&v7 initFromIndex:index toIndex:toIndex];
  if (result)
  {
    result->_maskingValue = value;
  }

  return result;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v25[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  if ([PGFeatureTransformerHelper validParameters:parametersCopy ofTypes:v6])
  {

    goto LABEL_4;
  }

  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v8 = [PGFeatureTransformerHelper validParameters:parametersCopy ofTypes:v7];

  if (v8)
  {
LABEL_4:
    v9 = [parametersCopy objectAtIndexedSubscript:0];
    if ([parametersCopy count] == 3)
    {
      v10 = [parametersCopy objectAtIndexedSubscript:1];
      v11 = [parametersCopy objectAtIndexedSubscript:2];
      v12 = [PGFeatureTransformerToMask alloc];
      [v9 floatValue];
      v14 = v13;
      integerValue = [v10 integerValue];
      integerValue2 = [v11 integerValue];
      LODWORD(v17) = v14;
      v18 = [(PGFeatureTransformerToMask *)v12 initWithMaskingFloatValue:integerValue fromIndex:integerValue2 toIndex:v17];
    }

    else
    {
      v19 = [PGFeatureTransformerToMask alloc];
      [v9 floatValue];
      v18 = [(PGFeatureTransformerToMask *)v19 initWithMaskingFloatValue:?];
    }

    goto LABEL_9;
  }

  if (error)
  {
    v20 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"Failed to instantiate PGFeatureTransformerToMask: incorrect parameters.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v20 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerToMask" code:0 userInfo:v9];
    *error = v18 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v18 = 0;
LABEL_10:

  return v18;
}

@end