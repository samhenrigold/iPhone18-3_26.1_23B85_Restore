@interface PGFeatureExtractorPhotoLibrarySize
+ (BOOL)preCalculatePhotoLibrarySizeWithPhotoLibrary:(id)library;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorPhotoLibrarySize

+ (BOOL)preCalculatePhotoLibrarySizeWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  [self resetPreCalculatedPhotoLibrarySize];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  [librarySpecificFetchOptions setIsExclusivePredicate:1];
  v6 = [self _allAssetsOfType:1 withOptions:librarySpecificFetchOptions];
  v7 = [self _allAssetsOfType:2 withOptions:librarySpecificFetchOptions];
  [self setPreCalculatedPhotoLibrarySize:{objc_msgSend(v7, "count") + objc_msgSend(v6, "count")}];

  return 1;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  preCalculatedPhotoLibrarySize = [objc_opt_class() preCalculatedPhotoLibrarySize];
  if (preCalculatedPhotoLibrarySize)
  {
    goto LABEL_4;
  }

  if ([objc_opt_class() preCalculatePhotoLibrarySizeWithPhotoLibrary:entityCopy])
  {
    preCalculatedPhotoLibrarySize = [objc_opt_class() preCalculatedPhotoLibrarySize];
LABEL_4:
    v6 = objc_alloc(MEMORY[0x277D22C40]);
    *&v7 = preCalculatedPhotoLibrarySize;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v10 = [v6 initWithArray:v9];

    goto LABEL_5;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"PhotoLibrarySize";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end