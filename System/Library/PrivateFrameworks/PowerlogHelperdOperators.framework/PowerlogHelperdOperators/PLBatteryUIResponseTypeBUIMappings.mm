@interface PLBatteryUIResponseTypeBUIMappings
- (id)getInstalledPluginMapping;
- (id)result;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeBUIMappings

- (void)run
{
  getInstalledPluginMapping = [(PLBatteryUIResponseTypeBUIMappings *)self getInstalledPluginMapping];
  v3 = +[PLBatteryUIResponseTypeUtilities getBundleIDToReplacementBundleIDMap];
  [getInstalledPluginMapping addEntriesFromDictionary:v3];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:getInstalledPluginMapping];
  [(PLBatteryUIResponseTypeBUIMappings *)self setBatteryUIMappings:v4];
}

- (id)result
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"buiMappings";
  batteryUIMappings = [(PLBatteryUIResponseTypeBUIMappings *)self batteryUIMappings];
  v6[0] = batteryUIMappings;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)getInstalledPluginMapping
{
  v26 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [MEMORY[0x277CC1E50] enumeratorWithOptions:{0, 0}];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        bundleIdentifier = [v8 bundleIdentifier];
        containingBundleRecord = [v8 containingBundleRecord];
        bundleIdentifier2 = [containingBundleRecord bundleIdentifier];

        extensionPointRecord = [v8 extensionPointRecord];
        identifier = [extensionPointRecord identifier];

        if (bundleIdentifier)
        {
          v14 = bundleIdentifier2 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          if ([identifier isEqualToString:@"com.apple.posterkit.provider"])
          {
            v15 = dictionary;
            v16 = @"HLS";
            goto LABEL_18;
          }

          if ([identifier isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
          {
            v15 = dictionary;
            v16 = @"com.apple.mobileslideshow";
            goto LABEL_18;
          }

          if ([identifier isEqualToString:@"com.apple.sidecar.extension.capture"])
          {
            v15 = dictionary;
            v16 = @"ContinuityCamera";
            goto LABEL_18;
          }

          if ([identifier isEqualToString:@"HomeKit"])
          {
            v15 = dictionary;
            v16 = @"com.apple.Home";
LABEL_18:
            [v15 setObject:v16 forKey:bundleIdentifier];
LABEL_19:
            [dictionary setObject:bundleIdentifier2 forKey:bundleIdentifier];
            goto LABEL_20;
          }

          if ([identifier hasSuffix:@"/watch"])
          {
            v17 = [identifier length] - 6;
          }

          else
          {
            if (![identifier hasSuffix:@".watchkitextension"])
            {
              goto LABEL_19;
            }

            v17 = [identifier length] - 18;
          }

          v18 = [identifier substringWithRange:{0, v17}];
          [dictionary setObject:v18 forKey:bundleIdentifier];

          goto LABEL_19;
        }

LABEL_20:

        ++v7;
      }

      while (v5 != v7);
      v19 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v5 = v19;
    }

    while (v19);
  }

  return dictionary;
}

@end