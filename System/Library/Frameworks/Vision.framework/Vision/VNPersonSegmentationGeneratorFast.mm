@interface VNPersonSegmentationGeneratorFast
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
@end

@implementation VNPersonSegmentationGeneratorFast

+ (id)outputMaskBlobNameToRequestKey
{
  if (+[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::onceToken, &__block_literal_global_39_23805);
  }

  v3 = +[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;

  return v3;
}

void __67__VNPersonSegmentationGeneratorFast_outputMaskBlobNameToRequestKey__block_invoke(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = VNPersonSegmentationGeneratorFastOutputBlobNameMask;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = +[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;
  +[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey = v4;
}

+ (id)outputMaskBlobNames
{
  if (+[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::onceToken, &__block_literal_global_23809);
  }

  v3 = +[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::outputMaskBlobNames;

  return v3;
}

void __56__VNPersonSegmentationGeneratorFast_outputMaskBlobNames__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = VNPersonSegmentationGeneratorFastOutputBlobNameMask;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = +[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::outputMaskBlobNames;
  +[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::outputMaskBlobNames = v0;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options
{
  inputImageBlobName = [self inputImageBlobName];

  return inputImageBlobName;
}

@end