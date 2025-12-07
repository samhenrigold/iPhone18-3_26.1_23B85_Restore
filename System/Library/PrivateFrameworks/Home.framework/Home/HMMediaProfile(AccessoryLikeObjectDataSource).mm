@interface HMMediaProfile(AccessoryLikeObjectDataSource)
- (id)hf_rootAccessoryLikeHomeKitObject;
@end

@implementation HMMediaProfile(AccessoryLikeObjectDataSource)

- (id)hf_rootAccessoryLikeHomeKitObject
{
  accessory = [self accessory];
  v3 = objc_msgSend_home(accessory);
  accessory2 = [self accessory];
  v5 = [v3 hf_mediaSystemForAccessory:accessory2];

  if (v5)
  {
    selfCopy = [v5 hf_rootAccessoryLikeHomeKitObject];
  }

  else
  {
    selfCopy = self;
  }

  v7 = selfCopy;

  return v7;
}

@end