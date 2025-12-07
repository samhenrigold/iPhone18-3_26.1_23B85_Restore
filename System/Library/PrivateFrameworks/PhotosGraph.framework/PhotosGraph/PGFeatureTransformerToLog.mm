@interface PGFeatureTransformerToLog
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
@end

@implementation PGFeatureTransformerToLog

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
      error = -[PGFeatureSliceTransformer initFromIndex:toIndex:]([PGFeatureTransformerToLog alloc], "initFromIndex:toIndex:", [v8 integerValue], objc_msgSend(v9, "integerValue"));
    }

    else if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14 = @"Failed to instantiate PGFeatureTransformerToLog: incorrect parameters.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = [v10 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerToLog" code:0 userInfo:v11];

      error = 0;
    }
  }

  else
  {
    error = objc_alloc_init(PGFeatureTransformerToLog);
  }

  return error;
}

@end