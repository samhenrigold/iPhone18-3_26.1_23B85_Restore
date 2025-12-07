@interface VSNonChannelAppDecider
- (VSNonChannelAppDecider)init;
- (id)decidedNonChannelApps;
@end

@implementation VSNonChannelAppDecider

- (VSNonChannelAppDecider)init
{
  v6.receiver = self;
  v6.super_class = VSNonChannelAppDecider;
  v2 = [(VSNonChannelAppDecider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    appDescriptions = v2->_appDescriptions;
    v2->_appDescriptions = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)decidedNonChannelApps
{
  v45 = *MEMORY[0x277D85DE8];
  appDescriptions = [(VSNonChannelAppDecider *)self appDescriptions];
  preferredAppBundleOrAdamID = [(VSNonChannelAppDecider *)self preferredAppBundleOrAdamID];
  if ([appDescriptions count] <= 1)
  {
    v5 = appDescriptions;
    goto LABEL_31;
  }

  if (!preferredAppBundleOrAdamID)
  {
    preferredDeviceFamily = [(VSNonChannelAppDecider *)self preferredDeviceFamily];
    v29 = preferredDeviceFamily;
    if (preferredDeviceFamily)
    {
      v30 = preferredDeviceFamily;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __47__VSNonChannelAppDecider_decidedNonChannelApps__block_invoke;
      v41[3] = &unk_279E1A608;
      v42 = v30;
      v5 = [appDescriptions sortedArrayUsingComparator:v41];
    }

    else
    {
      v5 = appDescriptions;
    }

    goto LABEL_31;
  }

  firstObject = [appDescriptions firstObject];

  if (!firstObject)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [appDescriptions firstObject] parameter must not be nil."];
  }

  firstObject2 = [appDescriptions firstObject];
  v32 = preferredAppBundleOrAdamID;
  v8 = preferredAppBundleOrAdamID;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v33 = appDescriptions;
  v9 = appDescriptions;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (!v10)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v11 = v10;
  v12 = 0;
  v35 = 0;
  v13 = *v38;
  v34 = *v38;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v37 + 1) + 8 * i);
      if ([v15 isDefaultAppForProvider])
      {
        v16 = v15;

        v35 = 1;
        firstObject2 = v16;
      }

      bundleID = [v15 bundleID];
      if ([bundleID isEqualToString:v8])
      {
      }

      else
      {
        [v15 adamID];
        v36 = v12;
        v18 = v9;
        v20 = v19 = firstObject2;
        [v20 stringValue];
        v22 = v21 = v11;
        v23 = [v22 isEqualToString:v8];

        v11 = v21;
        firstObject2 = v19;
        v9 = v18;
        v12 = v36;
        v13 = v34;

        if (!v23)
        {
          continue;
        }
      }

      v24 = v15;

      v12 = v24;
    }

    v11 = [v9 countByEnumeratingWithState:&v37 objects:v44 count:16];
  }

  while (v11);

  if ((v35 & 1) == 0)
  {
LABEL_27:
    v5 = v9;
    goto LABEL_28;
  }

  if (v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = firstObject2;
  }

  v43 = v25;
  v26 = MEMORY[0x277CBEA60];
  v27 = v25;
  v5 = [v26 arrayWithObjects:&v43 count:1];

LABEL_28:
  preferredAppBundleOrAdamID = v32;
  appDescriptions = v33;
LABEL_31:

  return v5;
}

uint64_t __47__VSNonChannelAppDecider_decidedNonChannelApps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 deviceFamilies];
  v8 = [v7 count];
  v9 = [v6 deviceFamilies];
  if (v8 != [v9 count])
  {
    goto LABEL_6;
  }

  v10 = [v5 deviceFamilies];
  if (([v10 containsObject:*(a1 + 32)] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v11 = [v6 deviceFamilies];
  v12 = [v11 containsObject:*(a1 + 32)];

  if (v12)
  {
    v13 = 0;
    goto LABEL_12;
  }

LABEL_7:
  v14 = [v5 deviceFamilies];
  v15 = [v14 count];
  v16 = [v6 deviceFamilies];
  if (v15 >= [v16 count])
  {

    v13 = 1;
  }

  else
  {
    v17 = [v5 deviceFamilies];
    v18 = [v17 containsObject:*(a1 + 32)];

    if (v18)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

LABEL_12:

  return v13;
}

@end