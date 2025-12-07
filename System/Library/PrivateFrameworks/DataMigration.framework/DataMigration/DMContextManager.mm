@interface DMContextManager
- (id)_entriesHavingBoolValue;
- (id)_entriesHavingStringValue;
- (id)contextFromArguments:(char *)arguments withCount:(int)count;
- (id)contextFromXPCDictionary:(id)dictionary;
- (void)addContext:(id)context toXPCDictionary:(id)dictionary;
@end

@implementation DMContextManager

- (id)_entriesHavingBoolValue
{
  v6[8] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"DidRestoreFromBackup";
  v6[1] = @"DidMigrateBackupFromDifferentDevice";
  v6[2] = @"ShouldPreserveSettingsAfterRestore";
  v6[3] = @"WasPasscodeSetInBackup";
  v6[4] = @"RestoreFromBackupSourceiTunes";
  v6[5] = @"RestoreFromBackupSourceDeviceToDevice";
  v6[6] = @"DidRestoreFromCloudBackup";
  v6[7] = @"RestoredBackupIsMegaBackup";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_entriesHavingStringValue
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"RestoredBackupBuildVersion";
  v6[1] = @"RestoredBackupProductType";
  v6[2] = @"BackupDeviceUUID";
  v6[3] = @"RestoredBackupDeviceName";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)contextFromXPCDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  _entriesHavingBoolValue = [(DMContextManager *)self _entriesHavingBoolValue];
  v7 = [_entriesHavingBoolValue countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(_entriesHavingBoolValue);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithBool:{xpc_dictionary_get_BOOL(dictionaryCopy, objc_msgSend(v11, "UTF8String"))}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [_entriesHavingBoolValue countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  _entriesHavingStringValue = [(DMContextManager *)self _entriesHavingStringValue];
  v14 = [_entriesHavingStringValue countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(_entriesHavingStringValue);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        string = xpc_dictionary_get_string(dictionaryCopy, [v18 UTF8String]);
        if (string)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
          [v5 setObject:v20 forKeyedSubscript:v18];
        }
      }

      v15 = [_entriesHavingStringValue countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  v21 = [v5 copy];

  return v21;
}

- (void)addContext:(id)context toXPCDictionary:(id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dictionaryCopy = dictionary;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  _entriesHavingBoolValue = [(DMContextManager *)self _entriesHavingBoolValue];
  v9 = [_entriesHavingBoolValue countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(_entriesHavingBoolValue);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [contextCopy objectForKeyedSubscript:v13];
        if (v14)
        {
          xpc_dictionary_set_BOOL(dictionaryCopy, [v13 UTF8String], objc_msgSend(v14, "BOOLValue"));
        }
      }

      v10 = [_entriesHavingBoolValue countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  _entriesHavingStringValue = [(DMContextManager *)self _entriesHavingStringValue];
  v16 = [_entriesHavingStringValue countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(_entriesHavingStringValue);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        v21 = [contextCopy objectForKeyedSubscript:v20];
        if (v21)
        {
          xpc_dictionary_set_string(dictionaryCopy, [v20 UTF8String], objc_msgSend(v21, "UTF8String"));
        }
      }

      v17 = [_entriesHavingStringValue countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (id)contextFromArguments:(char *)arguments withCount:(int)count
{
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"DidRestoreFromBackup"];
  _entriesHavingBoolValue = [(DMContextManager *)self _entriesHavingBoolValue];
  _entriesHavingStringValue = [(DMContextManager *)self _entriesHavingStringValue];
  if (count >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277CBEC38];
    do
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:arguments[v9]];
      if ([_entriesHavingBoolValue containsObject:v11])
      {
        [v16 setObject:v10 forKeyedSubscript:v11];
      }

      else
      {
        v12 = v9;
        if ([_entriesHavingStringValue containsObject:v11])
        {
          if (v9 + 1 >= count)
          {
            fprintf(*MEMORY[0x277D85DF8], "Context argument '%s' lacks value\n", arguments[v9]);
          }

          else
          {
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:arguments[v9 + 1]];
            [v16 setObject:v13 forKeyedSubscript:v11];

            v9 = v12 + 1;
          }
        }

        else
        {
          fprintf(*MEMORY[0x277D85DF8], "Context argument '%s' unrecognized\n", arguments[v9]);
        }
      }

      ++v9;
    }

    while (v9 < count);
  }

  v14 = [v16 copy];

  return v14;
}

@end