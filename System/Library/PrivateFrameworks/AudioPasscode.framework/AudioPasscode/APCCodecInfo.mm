@interface APCCodecInfo
+ (BOOL)isSupportedCodecCapability:(id)capability;
+ (BOOL)isSupportedCodecConfiguration:(id)configuration;
+ (Class)configurationClassForName:(id)name;
+ (id)supportedConfigurationClasses;
+ (id)supportedDecoders;
+ (id)supportedEncoders;
@end

@implementation APCCodecInfo

+ (id)supportedDecoders
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(EchoCodecCapability);
  v3 = objc_alloc_init(NullCodecCapability);
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)supportedEncoders
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(EchoCodecCapability);
  v3 = objc_alloc_init(NullCodecCapability);
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)supportedConfigurationClasses
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];

  return v2;
}

+ (Class)configurationClassForName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = +[APCCodecInfo supportedConfigurationClasses];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_alloc_init(v8);
        algorithmName = [v9 algorithmName];
        v11 = [algorithmName isEqualToString:nameCopy];

        if (v11)
        {
          v12 = v8;

          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if ([nameCopy isEqualToString:@"default"])
  {
    v12 = objc_opt_class();
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

+ (BOOL)isSupportedCodecCapability:(id)capability
{
  capabilityCopy = capability;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

+ (BOOL)isSupportedCodecConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

@end