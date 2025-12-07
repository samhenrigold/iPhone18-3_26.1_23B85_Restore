@interface PGFeatureExtractorTaboo
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorTaboo

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  sceneClassifications = [entity sceneClassifications];
  v6 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorTaboo featureLength](self, "featureLength")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = sceneClassifications;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) extendedSceneIdentifier] - 2147482870;
        if (v12 <= 9 && ((0x2FFu >> v12) & 1) != 0)
        {
          LODWORD(v13) = 1.0;
          [v6 setFloat:qword_22F78C458[v12] atIndex:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)featureNames
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = @"Blood";
  v4[1] = @"Demonstration";
  v4[2] = @"FireDevastation";
  v4[3] = @"FloodDevastation";
  v4[4] = @"Funeral";
  v4[5] = @"Hospital";
  v4[6] = @"ReligiousSetting";
  v4[7] = @"VehicleCrash";
  v4[8] = @"War";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:9];

  return v2;
}

@end