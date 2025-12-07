@interface PGFeatureExtractorMomentNodeSpecialPOI
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorMomentNodeSpecialPOI

- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = entitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:*(*(&v34 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v13 = [v7 count];
  featureNames = [(PGFeatureExtractorMomentNodeSpecialPOI *)self featureNames];
  v15 = [featureNames count];

  v16 = [MEMORY[0x277D22C60] zerosWithRows:v13 columns:v15];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
  v17 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        v23 = [PGSpecialPOIResolver alloc];
        array = [v22 array];
        v25 = [(PGSpecialPOIResolver *)v23 initWithMomentNodes:array];

        if ([(PGSpecialPOIResolver *)v25 momentsContainSpecialPOI:1 withMomentRatio:1.0])
        {
          LODWORD(v26) = 1.0;
          [v16 setFloat:v19 atRow:0 column:v26];
        }

        if ([(PGSpecialPOIResolver *)v25 momentsContainSpecialPOI:2 withMomentRatio:1.0])
        {
          LODWORD(v27) = 1.0;
          [v16 setFloat:v19 atRow:1 column:v27];
        }

        ++v19;
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v18);
  }

  return v16;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v6 = [PGSpecialPOIResolver alloc];
  array = [entityCopy array];

  v8 = [(PGSpecialPOIResolver *)v6 initWithMomentNodes:array];
  v9 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorMomentNodeSpecialPOI featureLength](self, "featureLength")}];
  if ([(PGSpecialPOIResolver *)v8 momentsContainSpecialPOI:1 withMomentRatio:1.0])
  {
    LODWORD(v10) = 1.0;
    [v9 setFloat:0 atIndex:v10];
  }

  if ([(PGSpecialPOIResolver *)v8 momentsContainSpecialPOI:2 withMomentRatio:1.0])
  {
    LODWORD(v11) = 1.0;
    [v9 setFloat:1 atIndex:v11];
  }

  return v9;
}

- (id)featureNames
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"Disney";
  v4[1] = @"Universal";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end