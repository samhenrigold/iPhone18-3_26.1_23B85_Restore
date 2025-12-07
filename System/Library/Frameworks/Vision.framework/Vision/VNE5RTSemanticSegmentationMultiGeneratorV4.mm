@interface VNE5RTSemanticSegmentationMultiGeneratorV4
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error;
+ (id)outputMaskBlobNameToFeatureName;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
@end

@implementation VNE5RTSemanticSegmentationMultiGeneratorV4

+ (id)outputMaskBlobNames
{
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::onceToken, &__block_literal_global_34_22444);
  }

  v3 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::outputNames;

  return v3;
}

void __65__VNE5RTSemanticSegmentationMultiGeneratorV4_outputMaskBlobNames__block_invoke(uint64_t a1, uint64_t a2)
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = [v2 objectClassOutputNameForObjectClassID:1 modelVersion:1 error:0];
  v4 = [v2 objectClassOutputNameForObjectClassID:8 modelVersion:1 error:{0, v3}];
  v12[1] = v4;
  v5 = [v2 objectClassOutputNameForObjectClassID:16 modelVersion:1 error:0];
  v12[2] = v5;
  v6 = [v2 objectClassOutputNameForObjectClassID:4 modelVersion:1 error:0];
  v12[3] = v6;
  v7 = [v2 objectClassOutputNameForObjectClassID:32 modelVersion:1 error:0];
  v12[4] = v7;
  v8 = [v2 objectClassOutputNameForObjectClassID:64 modelVersion:1 error:0];
  v12[5] = v8;
  v9 = [v2 objectClassOutputNameForObjectClassID:2 modelVersion:1 error:0];
  v12[6] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];
  v11 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::outputNames;
  +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::outputNames = v10;
}

+ (id)outputMaskBlobNameToRequestKey
{
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::onceToken, &__block_literal_global_28);
  }

  v3 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;

  return v3;
}

void __76__VNE5RTSemanticSegmentationMultiGeneratorV4_outputMaskBlobNameToRequestKey__block_invoke(uint64_t a1, uint64_t a2)
{
  v27[7] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v25 = [v2 objectClassOutputNameForObjectClassID:1 modelVersion:1 error:0];
  v26[0] = v25;
  v3 = objc_opt_class();
  v23 = NSStringFromClass(v3);
  v27[0] = v23;
  v24 = [v2 objectClassOutputNameForObjectClassID:2 modelVersion:1 error:0];
  v26[1] = v24;
  v4 = objc_opt_class();
  v22 = NSStringFromClass(v4);
  v27[1] = v22;
  v5 = [v2 objectClassOutputNameForObjectClassID:4 modelVersion:1 error:0];
  v26[2] = v5;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v27[2] = v7;
  v8 = [v2 objectClassOutputNameForObjectClassID:8 modelVersion:1 error:0];
  v26[3] = v8;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v27[3] = v10;
  v11 = [v2 objectClassOutputNameForObjectClassID:16 modelVersion:1 error:0];
  v26[4] = v11;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v27[4] = v13;
  v14 = [v2 objectClassOutputNameForObjectClassID:32 modelVersion:1 error:0];
  v26[5] = v14;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v27[5] = v16;
  v17 = [v2 objectClassOutputNameForObjectClassID:64 modelVersion:1 error:0];
  v26[6] = v17;
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v27[6] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  v21 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;
  +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey = v20;
}

+ (id)outputMaskBlobNameToFeatureName
{
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::onceToken, &__block_literal_global_22453);
  }

  v3 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;

  return v3;
}

void __77__VNE5RTSemanticSegmentationMultiGeneratorV4_outputMaskBlobNameToFeatureName__block_invoke(uint64_t a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = [v2 objectClassOutputNameForObjectClassID:4 modelVersion:1 error:0];
  v9[0] = v3;
  v10[0] = @"human_attribute_skin";
  v4 = [v2 objectClassOutputNameForObjectClassID:8 modelVersion:1 error:0];
  v9[1] = v4;
  v10[1] = @"human_attribute_hair";
  v5 = [v2 objectClassOutputNameForObjectClassID:16 modelVersion:1 error:0];
  v9[2] = v5;
  v10[2] = @"human_attribute_facial_hair";
  v6 = [v2 objectClassOutputNameForObjectClassID:32 modelVersion:1 error:0];
  v9[3] = v6;
  v10[3] = @"human_attribute_teeth";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v8 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;
  +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName = v7;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [self E5RTVisionCoreComputeDeviceForConfigurationOptions:optionsCopy error:error];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22455;
  v16 = __Block_byref_object_dispose__22456;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__VNE5RTSemanticSegmentationMultiGeneratorV4_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  v11[3] = &unk_1E77B4698;
  v11[4] = &v12;
  v11[5] = v7;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken, v11);
  }

  v8 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor)
  {
    v9 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  }

  else if (error)
  {
    *error = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __104__VNE5RTSemanticSegmentationMultiGeneratorV4_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [MEMORY[0x1E69DF988] semanticSegmentationForModelVersion:1 computeDeviceType:v1 error:&obj];
  objc_storeStrong((v2 + 40), obj);
  v4 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  +[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor = v3;
}

@end