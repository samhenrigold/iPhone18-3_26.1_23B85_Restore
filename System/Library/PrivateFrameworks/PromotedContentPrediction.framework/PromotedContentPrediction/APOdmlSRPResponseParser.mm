@interface APOdmlSRPResponseParser
+ (id)parseResponseForFeatureValues:(id)values;
@end

@implementation APOdmlSRPResponseParser

+ (id)parseResponseForFeatureValues:(id)values
{
  valuesCopy = values;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([valuesCopy featuresCount])
  {
    v5 = 0;
    do
    {
      v6 = [valuesCopy featuresAtIndex:v5];
      v7 = [MEMORY[0x277CBFF48] multiarrayFromFeature:v6];
      v8 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v7];
      name = [v6 name];
      [v4 setValue:v8 forKey:name];

      ++v5;
    }

    while (v5 < [valuesCopy featuresCount]);
  }

  v10 = [v4 copy];

  return v10;
}

@end