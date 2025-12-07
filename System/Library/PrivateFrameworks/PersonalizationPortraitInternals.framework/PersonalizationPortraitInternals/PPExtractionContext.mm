@interface PPExtractionContext
- (PPExtractionContext)initWithProbabilities:(id)probabilities;
- (double)probabilityForDomain:(unsigned int)domain;
@end

@implementation PPExtractionContext

- (double)probabilityForDomain:(unsigned int)domain
{
  v3 = *&domain;
  probabilities = self->_probabilities;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  objc_autoreleasePoolPop(v5);
  v7 = [(NSDictionary *)probabilities objectForKeyedSubscript:v6];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (PPExtractionContext)initWithProbabilities:(id)probabilities
{
  probabilitiesCopy = probabilities;
  v9.receiver = self;
  v9.super_class = PPExtractionContext;
  v6 = [(PPExtractionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_probabilities, probabilities);
  }

  return v7;
}

@end