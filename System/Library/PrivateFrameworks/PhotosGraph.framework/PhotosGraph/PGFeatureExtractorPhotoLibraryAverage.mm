@interface PGFeatureExtractorPhotoLibraryAverage
+ (BOOL)preCalculateFeatureVectorWithPhotoLibrary:(id)library assetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set error:(id *)error;
- (NSArray)featureNames;
- (PGFeatureExtractorPhotoLibraryAverage)initWithAssetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorPhotoLibraryAverage

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  preCalculatedFloatVector = [objc_opt_class() preCalculatedFloatVector];

  if (preCalculatedFloatVector || (v8 = objc_opt_class(), -[PGFeatureExtractorPhotoLibraryAverage assetFeatureExtractor](self, "assetFeatureExtractor"), v9 = objc_claimAutoreleasedReturnValue(), -[PGFeatureExtractorPhotoLibraryAverage assetFetchOptionPropertySet](self, "assetFetchOptionPropertySet"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v8 preCalculateFeatureVectorWithPhotoLibrary:entityCopy assetFeatureExtractor:v9 assetFetchOptionPropertySet:v10 error:error], v10, v9, v11))
  {
    preCalculatedFloatVector2 = [objc_opt_class() preCalculatedFloatVector];
  }

  else
  {
    preCalculatedFloatVector2 = 0;
  }

  return preCalculatedFloatVector2;
}

- (int64_t)featureLength
{
  assetFeatureExtractor = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
  featureNames = [assetFeatureExtractor featureNames];
  v4 = [featureNames count];

  return v4;
}

- (NSArray)featureNames
{
  v22 = *MEMORY[0x277D85DE8];
  featureNames = self->_featureNames;
  if (!featureNames)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    assetFeatureExtractor = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
    featureNames = [assetFeatureExtractor featureNames];
    v7 = [v4 initWithCapacity:{objc_msgSend(featureNames, "count")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    assetFeatureExtractor2 = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
    featureNames2 = [assetFeatureExtractor2 featureNames];

    v10 = [featureNames2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(featureNames2);
          }

          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PhotoLibraryAverage-%@", *(*(&v17 + 1) + 8 * v13)];
          [(NSArray *)v7 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [featureNames2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = self->_featureNames;
    self->_featureNames = v7;

    featureNames = self->_featureNames;
  }

  return featureNames;
}

- (id)name
{
  v2 = MEMORY[0x277CCACA8];
  assetFeatureExtractor = [(PGFeatureExtractorPhotoLibraryAverage *)self assetFeatureExtractor];
  name = [assetFeatureExtractor name];
  v5 = [v2 stringWithFormat:@"PhotoLibraryAverage-%@", name];

  return v5;
}

- (PGFeatureExtractorPhotoLibraryAverage)initWithAssetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set
{
  extractorCopy = extractor;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = PGFeatureExtractorPhotoLibraryAverage;
  v9 = [(PGFeatureExtractorPhotoLibraryAverage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetFeatureExtractor, extractor);
    objc_storeStrong(&v10->_assetFetchOptionPropertySet, set);
  }

  return v10;
}

+ (BOOL)preCalculateFeatureVectorWithPhotoLibrary:(id)library assetFeatureExtractor:(id)extractor assetFetchOptionPropertySet:(id)set error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  extractorCopy = extractor;
  setCopy = set;
  [self resetPreCalculatedFeatureVector];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setChunkSizeForFetch:100];
  [librarySpecificFetchOptions setCacheSizeForFetch:100];
  if (setCopy)
  {
    [librarySpecificFetchOptions setFetchPropertySets:setCopy];
  }

  v42 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v13 = [v42 count];
  if (!error || v13)
  {
    selfCopy = self;
    errorCopy = error;
    v38 = librarySpecificFetchOptions;
    v39 = setCopy;
    v40 = libraryCopy;
    featureNames = [extractorCopy featureNames];
    v18 = [featureNames count];

    v41 = [MEMORY[0x277D22C68] vectorRepeatingFloat:v18 count:0.0];
    v19 = [v42 count];
    if (v19)
    {
      v15 = 0;
      v21 = 0;
      for (i = 0; i != v19; ++i)
      {
        v23 = v15;
        v24 = objc_autoreleasePoolPush();
        v25 = [v42 objectAtIndexedSubscript:i];
        v44 = v15;
        v26 = [extractorCopy floatVectorWithEntity:v25 error:&v44];
        v15 = v44;

        if (v26 && [v26 count] == v18)
        {
          [v41 addVector:v26];
          ++v21;
        }

        else
        {
          v27 = +[PGLogging sharedLogging];
          loggingConnection = [v27 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            localIdentifier = [v25 localIdentifier];
            *buf = 138412546;
            v48 = localIdentifier;
            v49 = 2112;
            v50 = v15;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Failed to calculate feature vector for asset %@: %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    else
    {
      v21 = 0;
      v15 = 0;
    }

    if (errorCopy)
    {
      v30 = v15;
      *errorCopy = v15;
      if (v21 <= v19 >> 1)
      {
        v31 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA7E8];
        v45[0] = *MEMORY[0x277CCA450];
        v45[1] = v32;
        v33 = @"nil";
        if (v15)
        {
          v33 = v15;
        }

        v46[0] = @"Failed to compute mean of asset feature vectors. More than half of the asset feature vector extraction failed. Error: ";
        v46[1] = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
        [v31 errorWithDomain:@"com.apple.PhotoAnalysis.PGFeatureExtractorPhotoLibraryAverageDomain" code:2 userInfo:v34];
        *errorCopy = v16 = 0;
        goto LABEL_24;
      }
    }

    else if (v21 <= v19 >> 1)
    {
      v16 = 0;
      goto LABEL_25;
    }

    *&v20 = v21;
    v34 = [v41 vectorByDividingByScalar:v20];
    [selfCopy setPreCalculatedFloatVector:v34];
    v16 = 1;
LABEL_24:

LABEL_25:
    setCopy = v39;
    libraryCopy = v40;
    librarySpecificFetchOptions = v38;

    goto LABEL_26;
  }

  v14 = MEMORY[0x277CCA9B8];
  v51 = *MEMORY[0x277CCA450];
  v52[0] = @"Library contains no assets.";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  [v14 errorWithDomain:@"com.apple.PhotoAnalysis.PGFeatureExtractorPhotoLibraryAverageDomain" code:1 userInfo:v15];
  *error = v16 = 0;
LABEL_26:

  return v16;
}

@end