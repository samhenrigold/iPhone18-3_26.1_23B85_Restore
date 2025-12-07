@interface CALayer(AKCAUtilities)
- (id)_ak_nextAdditiveAnimationKeyWithKeyPath:()AKCAUtilities;
- (id)ak_addAdditiveAnimation:()AKCAUtilities;
- (id)ak_addAdditiveAnimation:()AKCAUtilities withKeyPath:;
- (id)ak_additiveAnimationKeyPrefixForKeyPath:()AKCAUtilities;
@end

@implementation CALayer(AKCAUtilities)

- (id)ak_additiveAnimationKeyPrefixForKeyPath:()AKCAUtilities
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v6 = 0;
  if ([location[0] length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.AuthenticationServices.additive", location[0]];
    v6 = 1;
    v3 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](@"com.apple.AuthenticationServices.additive");
  }

  v9 = v3;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (id)ak_addAdditiveAnimation:()AKCAUtilities
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v4 = [selfCopy ak_addAdditiveAnimation:location[0] withKeyPath:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)ak_addAdditiveAnimation:()AKCAUtilities withKeyPath:
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  if (location[0])
  {
    v4 = [selfCopy _ak_nextAdditiveAnimationKeyWithKeyPath:v11];
    v5 = v10;
    v10 = v4;
    *&v6 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    [selfCopy addAnimation:location[0] forKey:{v10, v6}];
  }

  v8 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_ak_nextAdditiveAnimationKeyWithKeyPath:()AKCAUtilities
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v15 = objc_getAssociatedObject(selfCopy, AdditiveAnimationKeyPrefix);
  unsignedIntegerValue = [v15 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v15);
  v24 = unsignedIntegerValue;
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  obja = [selfCopy animationKeys];
  v18 = [obja countByEnumeratingWithState:__b objects:v27 count:16];
  if (v18)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v18;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obja);
      }

      v22 = *(__b[1] + 8 * v13);
      if ([v22 hasPrefix:@"com.apple.AuthenticationServices.additive"])
      {
        break;
      }

      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obja countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v14)
        {
          goto LABEL_9;
        }
      }
    }

    v23 = 1;
    v20 = 2;
  }

  else
  {
LABEL_9:
    v20 = 0;
  }

  *&v3 = MEMORY[0x277D82BD8](obja).n128_u64[0];
  if ((v23 & 1) == 0)
  {
    v24 = 0;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [selfCopy ak_additiveAnimationKeyPrefixForKeyPath:{location[0], v3}];
  v19 = [v6 stringWithFormat:@"%@.%lu", v7, v24];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  ++v24;
  object = selfCopy;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v24, v4}];
  objc_setAssociatedObject(object, AdditiveAnimationKeyPrefix, v9, 0x303);
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v19);
  v20 = 1;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v10;
}

@end