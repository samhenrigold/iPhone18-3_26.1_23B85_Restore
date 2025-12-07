@interface MADTextEmbeddingThresholdMD5
+ (float)thresholdBase;
+ (id)modelName;
@end

@implementation MADTextEmbeddingThresholdMD5

+ (id)modelName
{
  if (_os_feature_enabled_impl())
  {
    v2 = @"text_threshold_md5_v3.espresso.net";
  }

  else
  {
    v2 = @"text_threshold_md5_v2.espresso.net";
  }

  return v2;
}

+ (float)thresholdBase
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MADTextEmbeddingThresholdMD5_thresholdBase__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MADTextEmbeddingThresholdMD5 thresholdBase]::once != -1)
  {
    dispatch_once(&+[MADTextEmbeddingThresholdMD5 thresholdBase]::once, block);
  }

  return *&+[MADTextEmbeddingThresholdMD5 thresholdBase]::thresholdBase;
}

void *__45__MADTextEmbeddingThresholdMD5_thresholdBase__block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v1 = 0.42;
  }

  else
  {
    v1 = 0.41;
  }

  v2 = objc_opt_class();
  *&v3 = v1;
  result = [v2 computeThresholdBase:v3];
  +[MADTextEmbeddingThresholdMD5 thresholdBase]::thresholdBase = v5;
  return result;
}

@end