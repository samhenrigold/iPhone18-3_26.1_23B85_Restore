@interface InferredModeSignal
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation InferredModeSignal

- (NSSet)featureNames
{

  sub_1C493B714();

  v2 = sub_1C4F01AA8();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_1C4F01138();

  v4 = sub_1C493C394(v3);

  return v4;
}

@end