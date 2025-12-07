@interface VirtualInteractionsSignal
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation VirtualInteractionsSignal

- (NSSet)featureNames
{

  sub_1C4D31B68();

  v2 = sub_1C4F01AA8();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_1C4F01138();

  v4 = sub_1C4D32BF4(v3);

  return v4;
}

@end