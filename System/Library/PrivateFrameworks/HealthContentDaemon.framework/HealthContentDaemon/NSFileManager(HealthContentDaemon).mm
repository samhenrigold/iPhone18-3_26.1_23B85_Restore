@interface NSFileManager(HealthContentDaemon)
- (uint64_t)hk_enumerateDirectoryAtURL:()HealthContentDaemon includingPropertiesForKeys:options:error:handler:;
@end

@implementation NSFileManager(HealthContentDaemon)

- (uint64_t)hk_enumerateDirectoryAtURL:()HealthContentDaemon includingPropertiesForKeys:options:error:handler:
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v27 = a7;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__10;
  v42 = __Block_byref_object_dispose__10;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __114__NSFileManager_HealthContentDaemon__hk_enumerateDirectoryAtURL_includingPropertiesForKeys_options_error_handler___block_invoke;
  v37[3] = &unk_2796BA1B8;
  v37[4] = &v38;
  [self enumeratorAtURL:v12 includingPropertiesForKeys:v13 options:a5 errorHandler:v37];
  v25 = v12;
  v26 = v13;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v32 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v44 count:16];
  if (v15)
  {
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v28 = v27;
        HKWithAutoreleasePool();
        v18 = v34[3];

        if (!v18)
        {
          v21 = v14;
          goto LABEL_16;
        }

        if (v18 == 2)
        {
          goto LABEL_10;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v29 objects:v44 count:{16, v25, v26}];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_10:

  v19 = v39[5];
  if (v19)
  {
    v20 = v19;
    v21 = v20;
    if (a6)
    {
      v22 = v20;
      *a6 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_16:

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v38, 8);
  return v23;
}

@end