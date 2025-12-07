@interface DeviceWirelessSignal
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation DeviceWirelessSignal

- (NSSet)featureNames
{

  sub_1C46C7924();

  v2 = sub_1C4F01AA8();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_1C4F01138();
  v5 = v4;

  v6 = sub_1C46C915C(v3, v5);

  return v6;
}

@end