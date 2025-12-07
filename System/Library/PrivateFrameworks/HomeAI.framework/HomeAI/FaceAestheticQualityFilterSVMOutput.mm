@interface FaceAestheticQualityFilterSVMOutput
- (FaceAestheticQualityFilterSVMOutput)initWithClassLabel:(int64_t)label classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation FaceAestheticQualityFilterSVMOutput

- (FaceAestheticQualityFilterSVMOutput)initWithClassLabel:(int64_t)label classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = FaceAestheticQualityFilterSVMOutput;
  v8 = [(FaceAestheticQualityFilterSVMOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_classLabel = label;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:?])
  {
    v5 = MEMORY[0x277CBFEF8];
    [(FaceAestheticQualityFilterSVMOutput *)self classLabel];
    v6 = [v5 featureValueWithInt64:?];
  }

  else if ([nameCopy isEqualToString:?])
  {
    v7 = MEMORY[0x277CBFEF8];
    classProbability = [(FaceAestheticQualityFilterSVMOutput *)self classProbability];
    v6 = [v7 featureValueWithDictionary:? error:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end