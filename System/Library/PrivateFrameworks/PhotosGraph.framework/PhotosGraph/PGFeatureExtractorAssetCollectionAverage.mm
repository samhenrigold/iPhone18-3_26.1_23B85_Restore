@interface PGFeatureExtractorAssetCollectionAverage
- (PGFeatureExtractorAssetCollectionAverage)initWithAssetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set name:(id)name;
- (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorAssetCollectionAverage

- (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  messageCopy = message;
  v10 = objc_alloc_init(v8);
  [v10 setObject:messageCopy forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorAssetCollectionAverage" code:code userInfo:v10];

  return v11;
}

- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v8 = objc_alloc_init(MEMORY[0x277D22C60]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = entitiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(PGFeatureExtractorAssetCollectionAverage *)self floatVectorWithEntity:*(*(&v18 + 1) + 8 * i) error:error, v18];
        if (!v14)
        {

          v16 = 0;
          goto LABEL_11;
        }

        v15 = v14;
        [v8 appendRow:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = v8;
LABEL_11:

  return v16;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  photoLibrary = [entityCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  assetFetchOptionPropertySet = [(PGFeatureExtractorAssetCollectionAverage *)self assetFetchOptionPropertySet];

  if (assetFetchOptionPropertySet)
  {
    assetFetchOptionPropertySet2 = [(PGFeatureExtractorAssetCollectionAverage *)self assetFetchOptionPropertySet];
    [librarySpecificFetchOptions setFetchPropertySets:assetFetchOptionPropertySet2];
  }

  v12 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:entityCopy options:librarySpecificFetchOptions];
  if ([v12 count])
  {
    errorCopy = error;
    v25 = librarySpecificFetchOptions;
    v26 = entityCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          assetFeatureExtractor = [(PGFeatureExtractorAssetCollectionAverage *)self assetFeatureExtractor];
          v27 = 0;
          v20 = [assetFeatureExtractor floatVectorWithEntity:v18 error:&v27];
          v21 = v27;

          if (!v20)
          {
            if (errorCopy)
            {
              *errorCopy = [(PGFeatureExtractorAssetCollectionAverage *)self _generateErrorWithErrorCode:1 message:@"Unable to extract feature vector for asset. Returning nil for the asset collection print." underlyingError:v21];
            }

            v22 = 0;
            goto LABEL_16;
          }

          [v7 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v22 = [MEMORY[0x277D22C40] meanVectorWithFloatVectors:v7];
LABEL_16:
    librarySpecificFetchOptions = v25;
    entityCopy = v26;
  }

  else if (error)
  {
    [(PGFeatureExtractorAssetCollectionAverage *)self _generateErrorWithErrorCode:0 message:@"No assets could be fetched from the asset collection." underlyingError:0];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (int64_t)featureLength
{
  assetFeatureExtractor = [(PGFeatureExtractorAssetCollectionAverage *)self assetFeatureExtractor];
  featureNames = [assetFeatureExtractor featureNames];
  v4 = [featureNames count];

  return v4;
}

- (id)featureNames
{
  assetFeatureExtractor = [(PGFeatureExtractorAssetCollectionAverage *)self assetFeatureExtractor];
  featureNames = [assetFeatureExtractor featureNames];

  return featureNames;
}

- (PGFeatureExtractorAssetCollectionAverage)initWithAssetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set name:(id)name
{
  extractorCopy = extractor;
  setCopy = set;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PGFeatureExtractorAssetCollectionAverage;
  v12 = [(PGFeatureExtractorAssetCollectionAverage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetFeatureExtractor, extractor);
    objc_storeStrong(&v13->_assetFetchOptionPropertySet, set);
    objc_storeStrong(&v13->_name, name);
  }

  return v13;
}

@end