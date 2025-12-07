@interface PGFeatureExtractorFaceEyesState
- (id)_floatVectorForFaceEyesState:(unsigned __int16)state;
- (id)defaultFloatVectorWithError:(id *)error;
- (id)featureNames;
- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGFeatureExtractorFaceEyesState

- (id)_floatVectorForFaceEyesState:(unsigned __int16)state
{
  if (state <= 2u)
  {
    self = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:qword_27887FC58[state]];
  }

  return self;
}

- (id)floatMatrixWithEntities:(id)entities progressReporter:(id)reporter error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v7 = objc_alloc_init(MEMORY[0x277D22C60]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = entitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = -[PGFeatureExtractorFaceEyesState _floatVectorForFaceEyesState:](self, "_floatVectorForFaceEyesState:", [*(*(&v15 + 1) + 8 * i) eyesState]);
        [v7 appendRow:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)defaultFloatVectorWithError:(id *)error
{
  v3 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_2844855B0];

  return v3;
}

- (id)featureNames
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"FaceEyesStateNotSet";
  v4[1] = @"FaceEyesStateClosed";
  v4[2] = @"FaceEyesStateOpen";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

@end