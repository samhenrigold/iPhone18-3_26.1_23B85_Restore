@interface PGFeatureExtractorFaceQuality
- (id)defaultFloatVectorWithError:(id *)error;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGFeatureExtractorFaceQuality

- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v7 = objc_alloc_init(MEMORY[0x277D22C60]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = entitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * i) quality];
        *&v13 = v13;
        v16 = LODWORD(v13);
        v14 = [objc_alloc(MEMORY[0x277D22C40]) initWithFloats:&v16 count:{-[PGFeatureExtractorFaceQuality featureLength](self, "featureLength")}];
        [v7 appendRow:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)defaultFloatVectorWithError:(id *)error
{
  v3 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_284485538];

  return v3;
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"FaceQuality";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end