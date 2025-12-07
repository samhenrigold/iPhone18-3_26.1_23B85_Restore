@interface PGFeatureExtractorCartesianLocation
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorCartesianLocation

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v24[3] = *MEMORY[0x277D85DE8];
  location = [entity location];
  v5 = location;
  if (location)
  {
    [location coordinate];
    *&v6 = v6;
    *&v7 = v7;
    [MEMORY[0x277D3ACD0] cartesianCoordinateFromLatitude:v6 longitude:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = objc_alloc(MEMORY[0x277D22C40]);
    LODWORD(v15) = v9;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    LODWORD(v17) = v11;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:{v17, v16}];
    v24[1] = v18;
    LODWORD(v19) = v13;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    v24[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    v22 = [v14 initWithArray:v21];
  }

  else
  {
    v22 = [MEMORY[0x277D22C40] zerosOfCount:3];
  }

  return v22;
}

- (id)featureNames
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"LOCATION_X";
  v4[1] = @"LOCATION_Y";
  v4[2] = @"LOCATION_Z";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

@end