@interface PGFeatureExtractorPotentialLandmark
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorPotentialLandmark

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  sceneClassifications = [entity sceneClassifications];
  v6 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorPotentialLandmark featureLength](self, "featureLength")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = sceneClassifications;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v14 + 1) + 8 * i) extendedSceneIdentifier] == 2147483135)
        {
          LODWORD(v12) = 1.0;
          [v6 setFloat:0 atIndex:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"PotentialLandmark";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end