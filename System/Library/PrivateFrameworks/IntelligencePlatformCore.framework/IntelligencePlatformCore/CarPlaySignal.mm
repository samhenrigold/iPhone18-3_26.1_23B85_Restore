@interface CarPlaySignal
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation CarPlaySignal

- (NSSet)featureNames
{

  sub_1C4677F0C();

  v2 = sub_1C4F01AA8();

  return v2;
}

- (id)featureValueForName:(id)name
{
  sub_1C4F01138();

  v3 = sub_1C4678EF4();

  return v3;
}

@end