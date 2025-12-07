@interface PGFeatureExtractorCLIPprint
- (id)_floatArrayFromSceneprint:(id)sceneprint;
- (id)featureNames;
- (id)featureValuesForAssets:(id)assets error:(id *)error;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorCLIPprint

- (id)featureValuesForAssets:(id)assets error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__52691;
  v37 = __Block_byref_object_dispose__52692;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__52691;
  v31 = __Block_byref_object_dispose__52692;
  v32 = 0;
  v7 = dispatch_group_create();
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __60__PGFeatureExtractorCLIPprint_featureValuesForAssets_error___block_invoke;
  v21 = &unk_278886098;
  v25 = &v27;
  v26 = &v33;
  v8 = assetsCopy;
  v22 = v8;
  selfCopy = self;
  v9 = v7;
  v24 = v9;
  v10 = _Block_copy(&v18);
  analysisService = [MEMORY[0x277D267E8] analysisService];
  dispatch_group_enter(v9);
  v39 = *MEMORY[0x277D26830];
  v40[0] = &unk_284484278;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v13 = [analysisService requestSceneprintProcessingForAssets:v8 withOptions:v12 progressHandler:0 andCompletionHandler:v10];

  v14 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v9, v14);
  if (!v34[5])
  {
    [analysisService cancelRequest:v13];
  }

  if (error)
  {
    v15 = v28[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v34[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v16;
}

void __60__PGFeatureExtractorCLIPprint_featureValuesForAssets_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      obj = v7;
      v14 = *v31;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v16 localIdentifier];
          v18 = [v5 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v22 = *(*(a1 + 64) + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = 0;

            v7 = obj;
            if (!obj)
            {
              v24 = MEMORY[0x277CCA9B8];
              v34 = *MEMORY[0x277CCA450];
              v35 = @"Media Analysis returned nil for asset sceneprint with no error.";
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
              v7 = [v24 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorCLIPprint" code:3 userInfo:v25];
            }

            objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
            goto LABEL_17;
          }

          v19 = [*(a1 + 40) _floatArrayFromSceneprint:v18];
          v20 = *(*(*(a1 + 64) + 8) + 40);
          v21 = [v16 localIdentifier];
          [v20 setObject:v19 forKeyedSubscript:v21];
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v7 = obj;
    }
  }

  else
  {
    if (!v6)
    {
      v26 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38[0] = @"Media Analysis returned nil result with no error.";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v7 = [v26 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorCLIPprint" code:2 userInfo:v27];
    }

    v28 = *(*(a1 + 56) + 8);
    v7 = v7;
    v11 = *(v28 + 40);
    *(v28 + 40) = v7;
  }

LABEL_17:

  dispatch_group_leave(*(a1 + 48));
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v7 = entityCopy;
  if (entityCopy)
  {
    v13[0] = entityCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [(PGFeatureExtractorCLIPprint *)self featureValuesForAssets:v8 error:error];
    if (v9)
    {
      localIdentifier = [v7 localIdentifier];
      v11 = [v9 objectForKeyedSubscript:localIdentifier];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_floatArrayFromSceneprint:(id)sceneprint
{
  sceneprintCopy = sceneprint;
  elementType = [sceneprintCopy elementType];
  if (elementType == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277D22C68]);
    descriptorData = [sceneprintCopy descriptorData];
    bytes = [descriptorData bytes];

    [v7 appendDoubles:bytes count:{objc_msgSend(sceneprintCopy, "elementCount")}];
  }

  else if (elementType == 1)
  {
    v5 = objc_alloc(MEMORY[0x277D22C40]);
    descriptorData2 = [sceneprintCopy descriptorData];
    v7 = [v5 initWithData:descriptorData2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)featureNames
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[PGFeatureExtractorCLIPprint featureLength](self, "featureLength")}];
  if ([(PGFeatureExtractorCLIPprint *)self featureLength]>= 1)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%u", @"CLIP", v5 - 1];
      [v3 setObject:v6 atIndexedSubscript:v4];

      v4 = v5;
    }

    while ([(PGFeatureExtractorCLIPprint *)self featureLength]> v5++);
  }

  return v3;
}

@end