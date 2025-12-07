@interface LSDeviceIdentifierCache
@end

@implementation LSDeviceIdentifierCache

void __94___LSDeviceIdentifierCache_getIdentifierOfType_vendorName_bundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v29[2] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) || !*(a1 + 40))
  {
    v9 = 0;
    goto LABEL_41;
  }

  v2 = (a1 + 64);
  v3 = [*(a1 + 48) identifiersOfTypeNotDispatched:*(a1 + 64)];
  v4 = *v2;
  if (*v2 != 1)
  {
    goto LABEL_7;
  }

  v5 = +[LSApplicationRestrictionsManager sharedInstance];
  if (([(LSApplicationRestrictionsManager *)v5 isAdTrackingEnabled]& 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = [*(a1 + 48) deviceUnlockedSinceBoot];

  if ((v6 & 1) == 0)
  {
LABEL_13:
    v10 = [MEMORY[0x1E696AFB0] _LS_nullUUID];
    goto LABEL_16;
  }

  v4 = *(a1 + 64);
LABEL_7:
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v7 = *(*(a1 + 48) + 16);
      if (v7)
      {
LABEL_38:
        v9 = [*(a1 + 48) applyPerUserEntropyNotDispatched:v7 type:*(a1 + 64)];

        goto LABEL_40;
      }

      v8 = [MEMORY[0x1E696AFB0] UUID];
      objc_storeStrong((*(a1 + 48) + 16), v8);
      [*(a1 + 48) save];
      goto LABEL_37;
    }

    if (!v3)
    {
      goto LABEL_39;
    }

    if (+[LSHRNSupport deviceConfiguredForHRN])
    {
      v29[0] = 0;
      v29[1] = 0;
      v11 = [*(a1 + 48) deviceIdentifierVendorSeed];
      [v11 getUUIDBytes:v29];

      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v29 length:16];
      v9 = [LSHRNSupport vendorIDFromVendorName:v12 seedData:v13 error:0];

      goto LABEL_40;
    }

    v14 = [v3 objectForKeyedSubscript:*(a1 + 32)];
    v15 = [v14 objectForKeyedSubscript:@"LSVendorIdentifier"];

    if (v15)
    {
      v16 = [v3 objectForKeyedSubscript:*(a1 + 32)];
      v17 = [v16 objectForKeyedSubscript:@"LSApplications"];

      if (v17 && [v17 containsObject:*(a1 + 40)])
      {
        v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];

        if (v8)
        {
LABEL_36:

LABEL_37:
          v7 = v8;
          if (v8)
          {
            goto LABEL_38;
          }

LABEL_39:
          v9 = 0;
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    v18 = [v3 objectForKeyedSubscript:*(a1 + 32)];

    if (!v18)
    {
      v19 = [MEMORY[0x1E695DF90] dictionary];
      [v3 setObject:v19 forKeyedSubscript:*(a1 + 32)];
    }

    v20 = [v3 objectForKeyedSubscript:*(a1 + 32)];
    v21 = [v20 objectForKeyedSubscript:@"LSVendorIdentifier"];

    if (v21)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];
    }

    else
    {
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v22 = [v8 UUIDString];
      v23 = [v3 objectForKeyedSubscript:*(a1 + 32)];
      [v23 setObject:v22 forKeyedSubscript:@"LSVendorIdentifier"];
    }

    v24 = [v3 objectForKeyedSubscript:*(a1 + 32)];
    v25 = [v24 objectForKeyedSubscript:@"LSApplications"];

    if (!v25)
    {
      v26 = [MEMORY[0x1E695DF70] array];
      v27 = [v3 objectForKeyedSubscript:*(a1 + 32)];
      [v27 setObject:v26 forKeyedSubscript:@"LSApplications"];

      v25 = v26;
    }

    if (([v25 containsObject:*(a1 + 40)] & 1) == 0)
    {
      [v25 addObject:*(a1 + 40)];
    }

    [*(a1 + 48) save];

    goto LABEL_36;
  }

  if (!+[LSHRNSupport deviceConfiguredForHRN])
  {
    goto LABEL_39;
  }

  v10 = [*(a1 + 48) deviceIdentifierVendorSeed];
LABEL_16:
  v9 = v10;
LABEL_40:

LABEL_41:
  v28 = *(a1 + 56);
  if (v28)
  {
    (*(v28 + 16))(v28, v9);
  }
}

void __93___LSDeviceIdentifierCache_clearIdentifiersForUninstallationWithVendorName_bundleIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    for (i = 0; i != 3; ++i)
    {
      v3 = [*(a1 + 48) identifiersOfTypeNotDispatched:_LSAllDeviceIdentifierTypes[i]];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 objectForKeyedSubscript:*(a1 + 32)];
        v6 = v5;
        if (v5)
        {
          v7 = [v5 objectForKeyedSubscript:@"LSApplications"];
          [v7 removeObject:*(a1 + 40)];
          if (![v7 count])
          {
            [v4 removeObjectForKey:*(a1 + 32)];
          }

          [*(a1 + 48) save];
        }
      }
    }
  }
}

void __54___LSDeviceIdentifierCache_clearAllIdentifiersOfType___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([__LSDefaultsGetSharedInstance(a1 a2)])
  {
    v14 = [*(*(a1 + 32) + 48) mutableCopy];
    if (v14)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
      v4 = [v14 objectForKeyedSubscript:v3];

      if (v4)
      {
        v5 = [*(a1 + 32) generateSomePerUserEntropyNotDispatched];
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
        [v14 setObject:v5 forKeyedSubscript:v6];

        v7 = [v14 copy];
        v8 = *(a1 + 32);
        v9 = *(v8 + 48);
        *(v8 + 48) = v7;

        [*(a1 + 32) save];
      }
    }

LABEL_15:

    return;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v11 == 2)
  {
    v12 = v10[3];
    v10[3] = 0;
  }

  else
  {
    if (v11 != 1)
    {
      v14 = [v10 identifiersOfTypeNotDispatched:?];
      if (v14 && [v14 count])
      {
        [v14 removeAllObjects];
        [*(a1 + 32) save];
      }

      goto LABEL_15;
    }

    v12 = v10[2];
    v10[2] = 0;
  }

  v13 = *(a1 + 32);

  [v13 save];
}

void __32___LSDeviceIdentifierCache_save__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allIdentifiersNotDispatched];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 56);
    v4 = v3;
    if (!v3)
    {
      v7 = _LSDefaultLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get identifiers file URL.", buf, 2u);
      }

      goto LABEL_22;
    }

    v5 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 path];
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "Writing identifiers file to %@", buf, 0xCu);
    }

    v7 = [v2 mutableCopy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = [v9 UUIDString];
      [v7 setObject:v10 forKeyedSubscript:@"LSAdvertiserIdentifier"];

      v8 = *(a1 + 32);
    }

    v11 = *(v8 + 24);
    if (v11)
    {
      v12 = [v11 UUIDString];
      [v7 setObject:v12 forKeyedSubscript:@"LSVendorSeed"];
    }

    v27 = 0;
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v27];
    v14 = v27;
    v15 = v14;
    if (v13)
    {
      v26 = v14;
      v16 = [v13 writeToURL:v4 options:1073741825 error:&v26];
      v17 = v26;

      if (v16)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v19 = _LSDefaultLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v17;
        _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "Failed to write plist data for identifiers: %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = _LSDefaultLog(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v15;
        _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "Failed to create plist data for identifiers: %@", buf, 0xCu);
      }

      v17 = v15;
    }

    goto LABEL_21;
  }

  v4 = _LSDefaultLog(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get identifiers.", buf, 2u);
  }

LABEL_23:

  if (*(*(a1 + 32) + 48))
  {
    v22 = [__LSDefaultsGetSharedInstance(v20 v21)];
    if (v22)
    {
      v24 = _LSPerUserEntropyURL(v22, v23);
      if (v24)
      {
        v25 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(*(a1 + 32) + 48)];
        [v25 writeToURL:v24 options:1073741825 error:0];
      }
    }
  }
}

@end