@interface CAWindowServer(LSS)
- (id)_lss_primaryDisplay;
- (id)lss_extendedDisplays;
- (void)lss_filterDisplays:()LSS into:;
@end

@implementation CAWindowServer(LSS)

- (id)lss_extendedDisplays
{
  v19 = *MEMORY[0x277D85DE8];
  _lss_primaryDisplay = [self _lss_primaryDisplay];
  clones = [_lss_primaryDisplay clones];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  displays = [self displays];
  v6 = [displays countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(displays);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 nativeSize];
        if (v11 != 0.0)
        {
          [v10 nativeSize];
          if (v12 != 0.0 && ([v10 displayType] == 1 || objc_msgSend(v10, "displayType") == 2) && (objc_msgSend(clones, "containsObject:", v10) & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [displays countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_lss_primaryDisplay
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  displays = [self displays];
  v2 = [displays countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(displays);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if (![v5 displayType])
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [displays countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (void)lss_filterDisplays:()LSS into:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  displays = [self displays];
  v9 = [displays countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(displays);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (v6[2](v6, v13) && [v13 enabled])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [displays countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

@end