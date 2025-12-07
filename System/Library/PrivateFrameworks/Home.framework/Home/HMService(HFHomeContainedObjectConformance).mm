@interface HMService(HFHomeContainedObjectConformance)
- (BOOL)hf_isValidObject;
- (id)hf_parentRoom;
- (id)home;
@end

@implementation HMService(HFHomeContainedObjectConformance)

- (id)hf_parentRoom
{
  accessory = [self accessory];
  room = [accessory room];

  return room;
}

- (BOOL)hf_isValidObject
{
  accessory = [self accessory];
  v3 = objc_msgSend_home(accessory);

  if (!v3)
  {
    return 0;
  }

  uniqueIdentifier = [self uniqueIdentifier];
  accessory2 = [self accessory];
  v6 = objc_msgSend_home(accessory2);
  v7 = [v6 hf_serviceWithIdentifier:uniqueIdentifier];
  v8 = v7 != 0;

  return v8;
}

- (id)home
{
  accessory = [self accessory];
  v2 = objc_msgSend_home(accessory);

  return v2;
}

@end