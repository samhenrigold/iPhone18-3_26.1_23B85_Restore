@interface MCUISettingsWatchManager
+ (BOOL)_isWatchYorktownEnrolled:(id)enrolled;
+ (BOOL)hasAnyYorktownEnrolledWatches;
@end

@implementation MCUISettingsWatchManager

+ (BOOL)hasAnyYorktownEnrolledWatches
{
  v18 = *MEMORY[0x277D85DE8];
  if (!MCUIIsiPhone())
  {
    return 0;
  }

  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  setupCompletedDevicesSelectorBlock = [MEMORY[0x277D2BCF8] setupCompletedDevicesSelectorBlock];
  v5 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedDevicesMatching:setupCompletedDevicesSelectorBlock];

  if ([v5 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([self _isWatchYorktownEnrolled:{*(*(&v13 + 1) + 8 * i), v13}])
          {
            v11 = 1;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_14:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_isWatchYorktownEnrolled:(id)enrolled
{
  v3 = [enrolled valueForProperty:*MEMORY[0x277D2BB78]];
  v4 = v3;
  if (v3)
  {
    v5 = (~[v3 unsignedIntegerValue] & 3) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end