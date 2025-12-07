@interface PGFeatureExtractorFaceCountScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorFaceCountScore

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  mediaAnalysisProperties = [entity mediaAnalysisProperties];
  faceCount = [mediaAnalysisProperties faceCount];
  v7 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorFaceCountScore *)self featureLength];
  *&v9 = faceCount;
  v10 = [v7 vectorRepeatingFloat:featureLength count:v9];

  return v10;
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"FaceCountScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end