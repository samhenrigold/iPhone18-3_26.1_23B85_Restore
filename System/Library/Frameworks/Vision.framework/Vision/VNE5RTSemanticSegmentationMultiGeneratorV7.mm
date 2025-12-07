@interface VNE5RTSemanticSegmentationMultiGeneratorV7
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error;
+ (id)outputMaskBlobNameToFeatureName;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
@end

@implementation VNE5RTSemanticSegmentationMultiGeneratorV7

+ (id)outputMaskBlobNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::onceToken, block);
  }

  v2 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::outputNames;

  return v2;
}

void __65__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNames__block_invoke(uint64_t a1, uint64_t a2)
{
  v19[12] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) modelVersion];
  v18 = [v3 objectClassOutputNameForObjectClassID:128 modelVersion:v4 error:0];
  v19[0] = v18;
  v17 = [v3 objectClassOutputNameForObjectClassID:256 modelVersion:v4 error:0];
  v19[1] = v17;
  v16 = [v3 objectClassOutputNameForObjectClassID:512 modelVersion:v4 error:0];
  v19[2] = v16;
  v5 = [v3 objectClassOutputNameForObjectClassID:1024 modelVersion:v4 error:0];
  v19[3] = v5;
  v6 = [v3 objectClassOutputNameForObjectClassID:2048 modelVersion:v4 error:0];
  v19[4] = v6;
  v7 = [v3 objectClassOutputNameForObjectClassID:1 modelVersion:v4 error:0];
  v19[5] = v7;
  v8 = [v3 objectClassOutputNameForObjectClassID:8 modelVersion:v4 error:0];
  v19[6] = v8;
  v9 = [v3 objectClassOutputNameForObjectClassID:16 modelVersion:v4 error:0];
  v19[7] = v9;
  v10 = [v3 objectClassOutputNameForObjectClassID:4 modelVersion:v4 error:0];
  v19[8] = v10;
  v11 = [v3 objectClassOutputNameForObjectClassID:32 modelVersion:v4 error:0];
  v19[9] = v11;
  v12 = [v3 objectClassOutputNameForObjectClassID:64 modelVersion:v4 error:0];
  v19[10] = v12;
  v13 = [v3 objectClassOutputNameForObjectClassID:2 modelVersion:v4 error:0];
  v19[11] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:12];
  v15 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::outputNames;
  +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::outputNames = v14;
}

+ (id)outputMaskBlobNameToRequestKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNameToRequestKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::onceToken, block);
  }

  v2 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;

  return v2;
}

void __76__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNameToRequestKey__block_invoke(uint64_t a1, uint64_t a2)
{
  v49[11] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) modelVersion];
  v38 = [v3 objectClassOutputNameForObjectClassID:1 modelVersion:v4 error:0];
  v5 = objc_opt_class();
  v49[0] = NSStringFromClass(v5);
  v36 = v49[0];
  v39 = [v3 objectClassOutputNameForObjectClassID:2 modelVersion:v4 error:0];
  v37 = v39;
  v6 = objc_opt_class();
  v34 = NSStringFromClass(v6);
  v49[1] = v34;
  v35 = [v3 objectClassOutputNameForObjectClassID:4 modelVersion:v4 error:0];
  v40 = v35;
  v7 = objc_opt_class();
  v32 = NSStringFromClass(v7);
  v49[2] = v32;
  v33 = [v3 objectClassOutputNameForObjectClassID:8 modelVersion:v4 error:0];
  v41 = v33;
  v8 = objc_opt_class();
  v30 = NSStringFromClass(v8);
  v49[3] = v30;
  v31 = [v3 objectClassOutputNameForObjectClassID:16 modelVersion:v4 error:0];
  v42 = v31;
  v9 = objc_opt_class();
  v28 = NSStringFromClass(v9);
  v49[4] = v28;
  v29 = [v3 objectClassOutputNameForObjectClassID:32 modelVersion:v4 error:0];
  v43 = v29;
  v10 = objc_opt_class();
  v26 = NSStringFromClass(v10);
  v49[5] = v26;
  v27 = [v3 objectClassOutputNameForObjectClassID:64 modelVersion:v4 error:0];
  v44 = v27;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v49[6] = v12;
  v13 = [v3 objectClassOutputNameForObjectClassID:128 modelVersion:v4 error:0];
  v45 = v13;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v49[7] = v15;
  v16 = [v3 objectClassOutputNameForObjectClassID:256 modelVersion:v4 error:0];
  v46 = v16;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v49[8] = v18;
  v19 = [v3 objectClassOutputNameForObjectClassID:512 modelVersion:v4 error:0];
  v47 = v19;
  v20 = [MEMORY[0x1E695DFB0] null];
  v49[9] = v20;
  v21 = [v3 objectClassOutputNameForObjectClassID:1024 modelVersion:v4 error:0];
  v48 = v21;
  v22 = [MEMORY[0x1E695DFB0] null];
  v49[10] = v22;
  v23 = v38;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v38 count:11];
  v25 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;
  +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey = v24;
}

+ (id)outputMaskBlobNameToFeatureName
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNameToFeatureName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::onceToken, block);
  }

  v2 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;

  return v2;
}

void __77__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNameToFeatureName__block_invoke(uint64_t a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) modelVersion];
  v5 = [v3 objectClassOutputNameForObjectClassID:4 modelVersion:v4 error:0];
  v13[0] = v5;
  v14[0] = @"human_attribute_skin";
  v6 = [v3 objectClassOutputNameForObjectClassID:8 modelVersion:v4 error:0];
  v13[1] = v6;
  v14[1] = @"human_attribute_hair";
  v7 = [v3 objectClassOutputNameForObjectClassID:16 modelVersion:v4 error:0];
  v13[2] = v7;
  v14[2] = @"human_attribute_facial_hair";
  v8 = [v3 objectClassOutputNameForObjectClassID:32 modelVersion:v4 error:0];
  v13[3] = v8;
  v14[3] = @"human_attribute_teeth";
  v9 = [v3 objectClassOutputNameForObjectClassID:128 modelVersion:v4 error:0];
  v13[4] = v9;
  v14[4] = @"cat";
  v10 = [v3 objectClassOutputNameForObjectClassID:256 modelVersion:v4 error:0];
  v13[5] = v10;
  v14[5] = @"dog";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v12 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;
  +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName = v11;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [self E5RTVisionCoreComputeDeviceForConfigurationOptions:optionsCopy error:error];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12905;
  v16 = __Block_byref_object_dispose__12906;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__VNE5RTSemanticSegmentationMultiGeneratorV7_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  v11[3] = &unk_1E77B4698;
  v11[4] = &v12;
  v11[5] = v7;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken, v11);
  }

  v8 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor)
  {
    v9 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  }

  else if (error)
  {
    *error = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __104__VNE5RTSemanticSegmentationMultiGeneratorV7_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [MEMORY[0x1E69DF988] semanticSegmentationForModelVersion:2 computeDeviceType:v1 error:&obj];
  objc_storeStrong((v2 + 40), obj);
  v4 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  +[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor = v3;
}

@end