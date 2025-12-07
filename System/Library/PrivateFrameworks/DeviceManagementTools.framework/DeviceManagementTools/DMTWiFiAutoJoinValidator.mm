@interface DMTWiFiAutoJoinValidator
- (BOOL)validateProfile:(id)profile error:(id *)error;
@end

@implementation DMTWiFiAutoJoinValidator

- (BOOL)validateProfile:(id)profile error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [profile payloadsOfType:{@"com.apple.wifi.managed", 0}];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        autoJoin = [v10 autoJoin];

        if (autoJoin)
        {

          return 1;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (!error)
  {
    return 0;
  }

  v12 = DMTErrorWithCodeAndUserInfo(72, &unk_285B5BE60);
  v13 = v12;
  result = 0;
  *error = v12;
  return result;
}

@end