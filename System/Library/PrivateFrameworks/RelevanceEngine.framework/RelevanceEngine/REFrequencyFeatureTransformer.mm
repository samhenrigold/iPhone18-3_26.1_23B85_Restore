@interface REFrequencyFeatureTransformer
+ (id)frequencyTransformWithCount:(unint64_t)count minimumValidCount:(int64_t)validCount;
@end

@implementation REFrequencyFeatureTransformer

+ (id)frequencyTransformWithCount:(unint64_t)count minimumValidCount:(int64_t)validCount
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = RECreateIntegerFeatureValueTaggedPointer(count);
  v9 = RECreateIntegerFeatureValueTaggedPointer(validCount);
  v5 = [RETransformerInvocation invocationWithArguments:&v8 count:2];
  REReleaseFeatureValueTaggedPointer(v8);
  REReleaseFeatureValueTaggedPointer(v9);
  v6 = objc_alloc_init(_REFrequencyFeatureTransformer);
  [(_REFrequencyFeatureTransformer *)v6 configureWithInvocation:v5];

  return v6;
}

@end