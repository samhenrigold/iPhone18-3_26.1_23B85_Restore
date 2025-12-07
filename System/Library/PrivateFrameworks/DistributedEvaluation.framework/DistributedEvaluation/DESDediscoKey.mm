@interface DESDediscoKey
- (DESDediscoKey)initWithPrivacyID:(id)d environment:(id)environment recipeID:(id)iD;
- (id)metadataEncodedMetricsKeyString;
- (id)metadataKeyString;
- (id)metricsKeyString;
- (id)resultsKeyString;
- (id)resultsKeyStringForChunk:(id)chunk;
@end

@implementation DESDediscoKey

- (DESDediscoKey)initWithPrivacyID:(id)d environment:(id)environment recipeID:(id)iD
{
  dCopy = d;
  environmentCopy = environment;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = DESDediscoKey;
  v12 = [(DESDediscoKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_privacyID, d);
    objc_storeStrong(&v13->_environment, environment);
    objc_storeStrong(&v13->_recipeID, iD);
  }

  return v13;
}

- (id)resultsKeyString
{
  v9[5] = *MEMORY[0x277D85DE8];
  privacyID = [(DESDediscoKey *)self privacyID];
  v9[1] = privacyID;
  v9[2] = @"results";
  environment = [(DESDediscoKey *)self environment];
  v9[3] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v9[4] = recipeID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  return v7;
}

- (id)resultsKeyStringForChunk:(id)chunk
{
  v11[6] = *MEMORY[0x277D85DE8];
  v11[0] = @"pfl";
  chunkCopy = chunk;
  privacyID = [(DESDediscoKey *)self privacyID];
  v11[1] = privacyID;
  v11[2] = @"results";
  v11[3] = chunkCopy;
  environment = [(DESDediscoKey *)self environment];
  v11[4] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v11[5] = recipeID;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];

  v9 = [v8 componentsJoinedByString:@":"];

  return v9;
}

- (id)metricsKeyString
{
  v9[5] = *MEMORY[0x277D85DE8];
  privacyID = [(DESDediscoKey *)self privacyID];
  v9[1] = privacyID;
  v9[2] = @"metrics";
  environment = [(DESDediscoKey *)self environment];
  v9[3] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v9[4] = recipeID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  return v7;
}

- (id)metadataKeyString
{
  v9[5] = *MEMORY[0x277D85DE8];
  privacyID = [(DESDediscoKey *)self privacyID];
  v9[1] = privacyID;
  v9[2] = @"metadata";
  environment = [(DESDediscoKey *)self environment];
  v9[3] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v9[4] = recipeID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  return v7;
}

- (id)metadataEncodedMetricsKeyString
{
  v9[5] = *MEMORY[0x277D85DE8];
  privacyID = [(DESDediscoKey *)self privacyID];
  v9[1] = privacyID;
  v9[2] = @"encoded-metrics";
  environment = [(DESDediscoKey *)self environment];
  v9[3] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v9[4] = recipeID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  return v7;
}

@end