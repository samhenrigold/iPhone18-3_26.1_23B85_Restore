@interface HMAccessorySettings(MediaSetup)
- (id)_getMusicGroup;
- (uint64_t)_settingForKeyPath:()MediaSetup;
@end

@implementation HMAccessorySettings(MediaSetup)

- (uint64_t)_settingForKeyPath:()MediaSetup
{
  v4 = a3;
  _getMusicGroup = [self _getMusicGroup];
  if (_getMusicGroup)
  {
    v6 = findSettingWithKeyPath(v4, _getMusicGroup);
    value = [v6 value];
    bOOLValue = [value BOOLValue];
  }

  else
  {
    v9 = _MSLogingFacility(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HMAccessorySettings(MediaSetup) _settingForKeyPath:v9];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_getMusicGroup
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  rootGroup = [self rootGroup];
  groups = [rootGroup groups];

  v3 = [groups countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(groups);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        keyPath = [v7 keyPath];
        v9 = [keyPath isEqualToString:@"root.music"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [groups countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

@end