@interface NUDeviceTrait
- (BOOL)isLandscape;
- (NUDeviceTrait)initWithDeviceTraitSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NUDeviceTrait

- (NUDeviceTrait)initWithDeviceTraitSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = NUDeviceTrait;
  result = [(NUDeviceTrait *)&v5 init];
  if (result)
  {
    result->_deviceTraitSize = size;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NUDeviceTrait alloc];
  deviceTraitSize = [(NUDeviceTrait *)self deviceTraitSize];

  return [(NUDeviceTrait *)v4 initWithDeviceTraitSize:deviceTraitSize];
}

- (BOOL)isLandscape
{
  v17 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = windows;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      if ([v8 isKeyWindow])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (v9)
    {
      windowScene = [v9 windowScene];
      LOBYTE(v5) = ([windowScene interfaceOrientation] - 3) < 2;

      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
  }

  else
  {
LABEL_9:
    v9 = v4;
LABEL_12:
  }

  return v5;
}

@end