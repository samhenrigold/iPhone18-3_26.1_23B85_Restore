@interface HMDMetricsUtilities
+ (BOOL)shouldRedactBundleID:(id)d;
+ (BOOL)shouldRedactBundleID:(id)d isInternalBuild:(BOOL)build;
+ (id)primaryServiceTypeForHAPAccessory:(id)accessory;
+ (id)redactedThirdPartyBundleID:(id)d;
+ (id)redactedThirdPartyBundleID:(id)d isInternalBuild:(BOOL)build;
@end

@implementation HMDMetricsUtilities

+ (BOOL)shouldRedactBundleID:(id)d isInternalBuild:(BOOL)build
{
  result = 0;
  if (d)
  {
    if (!build)
    {
      return HMDIsFirstPartyClientIdentifier(d) ^ 1;
    }
  }

  return result;
}

+ (BOOL)shouldRedactBundleID:(id)d
{
  dCopy = d;
  LOBYTE(self) = [self shouldRedactBundleID:dCopy isInternalBuild:isInternalBuild()];

  return self;
}

+ (id)redactedThirdPartyBundleID:(id)d isInternalBuild:(BOOL)build
{
  buildCopy = build;
  dCopy = d;
  if (dCopy)
  {
    if ([self shouldRedactBundleID:dCopy isInternalBuild:buildCopy])
    {
      v7 = @"External";
    }

    else
    {
      v7 = objc_msgSend_copy(dCopy);
    }
  }

  else
  {
    v7 = @"Unknown";
  }

  return v7;
}

+ (id)redactedThirdPartyBundleID:(id)d
{
  dCopy = d;
  v5 = [self redactedThirdPartyBundleID:dCopy isInternalBuild:isInternalBuild()];

  return v5;
}

+ (id)primaryServiceTypeForHAPAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  primaryService = [accessoryCopy primaryService];

  if (primaryService)
  {
    primaryService2 = [accessoryCopy primaryService];
    services = primaryService2;
LABEL_15:
    type = [primaryService2 type];
  }

  else
  {
    bridge = [accessoryCopy bridge];
    if (bridge)
    {
    }

    else
    {
      identifiersForBridgedAccessories = [accessoryCopy identifiersForBridgedAccessories];
      v16 = [identifiersForBridgedAccessories count];

      if (v16)
      {
        type = @"Bridge";
        goto LABEL_16;
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    services = [accessoryCopy services];
    v8 = [services countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(services);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([v12 isPrimary])
          {
            primaryService2 = v12;
            goto LABEL_15;
          }
        }

        v9 = [services countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    type = 0;
  }

LABEL_16:

  return type;
}

@end