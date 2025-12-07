@interface MADTextEmbeddingThresholdMD7v2
+ (float)thresholdBase;
@end

@implementation MADTextEmbeddingThresholdMD7v2

+ (float)thresholdBase
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MADTextEmbeddingThresholdMD7v2_thresholdBase__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MADTextEmbeddingThresholdMD7v2 thresholdBase]::once != -1)
  {
    dispatch_once(&+[MADTextEmbeddingThresholdMD7v2 thresholdBase]::once, block);
  }

  return *&+[MADTextEmbeddingThresholdMD7v2 thresholdBase]::thresholdBase;
}

void *__47__MADTextEmbeddingThresholdMD7v2_thresholdBase__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  LODWORD(v3) = 1055286886;
  result = [v2 computeThresholdBase:v3];
  +[MADTextEmbeddingThresholdMD7v2 thresholdBase]::thresholdBase = v5;
  return result;
}

@end