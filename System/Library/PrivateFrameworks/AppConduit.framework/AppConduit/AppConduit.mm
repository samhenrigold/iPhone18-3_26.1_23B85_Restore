uint64_t ACXBooleanValue(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

id _CreateAndLogError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateAndLogErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  if (v18)
  {
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v18 arguments:a8];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x277CCA450]];
    if (v16)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_13;
      }

      v27 = v21;
      v28 = v16;
      v26 = a2;
    }

    else
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_13;
      }

      v26 = a2;
      v27 = v21;
    }

    MOLogWrite();
LABEL_13:
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{a1, v26, v27, v28}];
  [v20 setObject:v22 forKeyedSubscript:@"FunctionName"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v20 setObject:v23 forKeyedSubscript:@"SourceFileLine"];

  v24 = [MEMORY[0x277CCA9B8] errorWithDomain:v15 code:a4 userInfo:v20];

  return v24;
}

id _ACXValidateObject(void *a1, uint64_t a2)
{
  v2 = a1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _ValidateSupportedArchitecturesListForPlaceholder(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    goto LABEL_23;
  }

  v5 = objc_opt_class();
  if ((ACXArrayContainsOnlyClass(v3, v5) & 1) == 0)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v24 = [v4 path];
      MOLogWrite();
    }

LABEL_23:
    v6 = 0;
LABEL_33:
    v22 = 0;
    goto LABEL_34;
  }

  v27 = v4;
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v29 = *MEMORY[0x277D1C1F8];
    v10 = *MEMORY[0x277D1C1F0];
    v26 = v3;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        if ((ACXDictionaryContainsOnlyClasses(v12, v13, v14) & 1) == 0)
        {
          v3 = v26;
          v4 = v27;
          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v17 = [v27 path];
            MOLogWrite();
            goto LABEL_31;
          }

LABEL_32:

          goto LABEL_33;
        }

        v15 = [v12 objectForKeyedSubscript:v29];
        objc_opt_class();
        v16 = v15;
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = [v12 objectForKeyedSubscript:v10];
        objc_opt_class();
        v19 = v18;
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (!v17 || !v20)
        {
          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v25 = [v27 path];
            MOLogWrite();
          }

          v3 = v26;
          v4 = v27;
LABEL_31:

          goto LABEL_32;
        }

        v34[0] = v17;
        v34[1] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
        [v6 addObject:v21];
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      v3 = v26;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v22 = [v6 copy];
  v4 = v27;
LABEL_34:

  return v22;
}

void _FetchLocalizedKeys(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v24 = v5;
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v9 = Unique;
    FilteredInfoPlist = _CFBundleCreateFilteredInfoPlist();
    if (FilteredInfoPlist)
    {
      v11 = FilteredInfoPlist;
      v12 = _RemoveUnfilteredKeys(FilteredInfoPlist, v7);

      _MergeLocalizedKeysForLocale(v6, v12, &stru_2851ED680);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = CFBundleCopyBundleLocalizations(v9);
      v14 = [(__CFArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();
            if (FilteredLocalizedInfoPlist)
            {
              v20 = FilteredLocalizedInfoPlist;

              v12 = _RemoveUnfilteredKeys(v20, v7);

              _MergeLocalizedKeysForLocale(v6, v12, v18);
            }

            else if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v21 = [v24 path];
              MOLogWrite();
            }
          }

          v15 = [(__CFArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v15);
      }
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v23 = [v24 path];
        MOLogWrite();
      }

      v12 = 0;
    }

    CFRelease(v9);
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v22 = [v5 path];
    MOLogWrite();
  }
}

id _RemoveUnfilteredKeys(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:{v11, v15}];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

void _MergeLocalizedKeysForLocale(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___MergeLocalizedKeysForLocale_block_invoke;
  v9[3] = &unk_278C8D148;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [a2 enumerateKeysAndObjectsUsingBlock:v9];
}

void ACXShowUserNoticeWithTapToRadarButton(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __ACXShowUserNoticeWithTapToRadarButton_block_invoke;
  v15[3] = &unk_278C8D198;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  ACXAsyncTransaction(MEMORY[0x277D85CD0], v15);
}

void ACXAsyncTransaction(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = os_transaction_create();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __ACXAsyncTransaction_block_invoke;
  v8[3] = &unk_278C8D1E8;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  v7 = v3;
  dispatch_async(v4, v8);
}

void __ACXShowUserNoticeWithTapToRadarButton_block_invoke(uint64_t a1)
{
  v20 = 0;
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, *(a1 + 32), *(a1 + 40), @"File A Bug", @"No Thanks", 0, &v20);
  if (!v20)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v5 setScheme:@"tap-to-radar"];
    [v5 setHost:@"new"];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentName" value:@"AppConduit"];
    [v6 addObject:v7];

    v8 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentVersion" value:@"all"];
    [v6 addObject:v8];

    v9 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentID" value:@"660691"];
    [v6 addObject:v9];

    v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Classification" value:@"Serious Bug"];
    [v6 addObject:v10];

    v11 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Reproducibility" value:@"I Didn't Try"];
    [v6 addObject:v11];

    v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"AutoDiagnostics" value:{@"phone, watch"}];
    [v6 addObject:v12];

    if (v3 && [v3 length])
    {
      v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Title" value:v3];
      [v6 addObject:v13];
    }

    if (v4)
    {
      if ([v4 length])
      {
        v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Description" value:v4];
        [v6 addObject:v14];
      }
    }

    [v5 setQueryItems:v6];
    v15 = [v5 URL];

    v16 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __ACXShowUserNoticeWithTapToRadarButton_block_invoke_2;
    v18[3] = &unk_278C8D170;
    v19 = v15;
    v17 = v15;
    [v16 openURL:v17 configuration:0 completionHandler:v18];
  }
}

void __ACXShowUserNoticeWithTapToRadarButton_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (v4 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }
}

id ACXStringifyObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v1];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ACXArrayContainsOnlyClass(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = a1;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

id ACXArrayifyThing(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (ACXArrayContainsOnlyClass(v3, a2))
      {
        v4 = v3;
LABEL_7:
        v5 = v4;
        goto LABEL_12;
      }
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = [MEMORY[0x277CBEA60] arrayWithObject:v3];
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v3 allObjects];
        if (ACXArrayContainsOnlyClass(v6, a2))
        {
          v5 = v6;
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v5 = 0;
LABEL_12:

  return v5;
}

uint64_t ACXDictionaryContainsOnlyClasses(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __ACXDictionaryContainsOnlyClasses_block_invoke;
    v9[3] = &unk_278C8D1C0;
    v9[4] = &v10;
    v9[5] = a2;
    v9[6] = a3;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_23FF240F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ACXDictionaryContainsOnlyClasses_block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (a1[5] && (objc_opt_isKindOfClass() & 1) == 0 || a1[6] && (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

id ACXGetPOSIXError(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CCA5B8];
  v3 = *MEMORY[0x277CCA7E8];
  v4 = v1;
  do
  {
    if (!v4)
    {
      break;
    }

    v5 = [v4 domain];
    v6 = [v5 isEqualToString:v2];

    if (v6)
    {
      break;
    }

    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:v3];

    v4 = v8;
  }

  while (v8);

  return v4;
}

id _CreateError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = MEMORY[0x277CCACA8];
  v15 = a3;
  if (v13)
  {
    v16 = [[v14 alloc] initWithFormat:v13 arguments:&a9];
  }

  else
  {
    v16 = [(objc_class *)v14 stringWithUTF8String:strerror(a4)];
  }

  v17 = v16;
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{a1, &a9}];
  v23[0] = *MEMORY[0x277CCA450];
  v23[1] = @"FunctionName";
  v24[0] = v17;
  v24[1] = v18;
  v23[2] = @"SourceFileLine";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v24[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:a3 code:a4 userInfo:v20];

  return v21;
}

id ACXCopyStagingDirectory(void *a1)
{
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/tmp/com.apple.AppConduit.staging" isDirectory:1];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v8 = [v2 path];
      MOLogWrite();
    }

    if (a1)
    {
      v6 = v5;
      v2 = 0;
      *a1 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id ACXCopyLogDirectory()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:1];

  v2 = [v1 objectAtIndexedSubscript:0];
  v3 = [v2 URLByAppendingPathComponent:@"Logs/AppConduit" isDirectory:1];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

  return v3;
}

void ACXInitializeDiskLogging()
{
  v1 = ACXCopyLogDirectory();
  v0 = [v1 URLByAppendingPathComponent:@"AppConduit.log" isDirectory:0];
  gLogHandle = MOLogOpen();
  if (!gLogHandle)
  {
    syslog(3, "Failed to set up rotating logs at path %s", [v0 fileSystemRepresentation]);
  }

  if (ACXIsInternalBuild_onceToken != -1)
  {
    ACXInitializeDiskLogging_cold_1();
  }

  [v0 fileSystemRepresentation];
  MOLogEnableDiskLogging();
}

uint64_t ACXIsInternalBuild(uint64_t a1, uint64_t a2)
{
  if (ACXIsInternalBuild_onceToken != -1)
  {
    ACXInitializeDiskLogging_cold_1();
  }

  return ACXIsInternalBuild_result;
}

id ACXCopyDataDirectory()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:1];

  v2 = [v1 objectAtIndexedSubscript:0];
  v3 = [v2 URLByAppendingPathComponent:@"AppConduit" isDirectory:1];

  return v3;
}

id ACXCopyPairingStoreSubdirectoryInBase(void *a1)
{
  if (!a1)
  {
    v1 = 0;
    goto LABEL_12;
  }

  v1 = [a1 URLByAppendingPathComponent:@"AppConduit" isDirectory:1];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v3 = [v2 createDirectoryAtURL:v1 withIntermediateDirectories:0 attributes:0 error:&v9];
  v4 = v9;

  if ((v3 & 1) == 0)
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v6 = [v4 code];

      if (v6 == 516)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v8 = [v1 path];
      MOLogWrite();
    }
  }

LABEL_11:

LABEL_12:

  return v1;
}

id ACXRandomDirWithTemplateURL(void *a1, void *a2)
{
  v3 = strdup([a1 fileSystemRepresentation]);
  if (mkdtemp(v3))
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v3 isDirectory:1 relativeToURL:0];
    v5 = 0;
  }

  else
  {
    v6 = __error();
    v10 = *v6;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      strerror(*v6);
      MOLogWrite();
    }

    v11 = _CreateError("ACXRandomDirWithTemplateURL", 374, *MEMORY[0x277CCA5B8], v10, @"mkdtemp failed for %s", v7, v8, v9, v3);
    v5 = v11;
    if (a2)
    {
      v12 = v11;
      v4 = 0;
      *a2 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  free(v3);

  return v4;
}

id ACXLoadInfoPlist(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  pthread_mutex_lock(&ACXLoadInfoPlist_cfBundleIsNotThreadSafe);
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v6 = Unique;
    if (v4)
    {
      FilteredInfoPlist = _CFBundleCreateFilteredInfoPlist();
      if (FilteredInfoPlist)
      {
        v8 = FilteredInfoPlist;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v8))
        {
          v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
          CFRelease(v8);
          v11 = [MEMORY[0x277CBEAF8] currentLocale];
          [v11 localeIdentifier];
          FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();

          if (FilteredLocalizedInfoPlist)
          {
            v13 = CFDictionaryGetTypeID();
            if (v13 == CFGetTypeID(FilteredLocalizedInfoPlist))
            {
              [v10 addEntriesFromDictionary:FilteredLocalizedInfoPlist];
            }

            else
            {
              v19 = CFGetTypeID(FilteredLocalizedInfoPlist);
              v20 = CFCopyTypeIDDescription(v19);
              if (!gLogHandle || *(gLogHandle + 44) >= 3)
              {
                MOLogWrite();
              }

              if (v20)
              {
                CFRelease(v20);
              }
            }

            CFRelease(FilteredLocalizedInfoPlist);
          }

          else if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            MOLogWrite();
          }

          goto LABEL_28;
        }

        v16 = CFGetTypeID(v8);
        v17 = CFCopyTypeIDDescription(v16);
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          MOLogWrite();
        }

        if (v17)
        {
          CFRelease(v17);
        }

        CFRelease(v8);
LABEL_27:
        v10 = 0;
LABEL_28:
        CFRelease(v6);
        goto LABEL_29;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      InfoDictionary = CFBundleGetInfoDictionary(Unique);
      if (InfoDictionary)
      {
        v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:InfoDictionary];
        v10 = v15;
        if (v15)
        {
          [v15 removeObjectForKey:@"CFBundleInfoPlistURL"];
        }

        goto LABEL_28;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_27;
      }
    }

    MOLogWrite();
    goto LABEL_27;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v10 = 0;
LABEL_29:
  pthread_mutex_unlock(&ACXLoadInfoPlist_cfBundleIsNotThreadSafe);

  return v10;
}

uint64_t ACXYOrN(int a1)
{
  if (a1)
  {
    return 89;
  }

  else
  {
    return 78;
  }
}

void __ACXAsyncTransaction_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void ACXUntrustedAppTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorUntrustedAppTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorUntrustedAppMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@" error:&v14, v5, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

id _LocalizedStringForSystemLanguage(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/AppConduit.framework"];
  v18 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v3 = [v18 firstObject];
  v4 = v1;
  v5 = v2;
  v6 = v3;
  if (![v4 length] || !objc_msgSend(@"Localizable", "length") || !objc_msgSend(v6, "length"))
  {
    v12 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
LABEL_9:
    v11 = 0;
LABEL_10:
    v13 = [v5 localizedStringForKey:v4 value:&stru_2851ED680 table:@"Localizable"];
    goto LABEL_11;
  }

  v7 = [v5 localizations];
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
  v9 = CFBundleCopyLocalizationsForPreferences(v7, v8);
  if (![(__CFArray *)v9 count])
  {
    v12 = 0;
    v10 = 0;
    goto LABEL_9;
  }

  v10 = [(__CFArray *)v9 objectAtIndex:0];
  v11 = [v5 pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:v10];
  if (!v11)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v11];
  v13 = [v12 objectForKey:v4];
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_11:

  v14 = v13;
  if (!v13)
  {
    if (!gLogHandle || (v14 = v4, *(gLogHandle + 44) >= 3))
    {
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      [v15 fileExistsAtPath:@"/System/Library/PrivateFrameworks/AppConduit.framework"];
      MOLogWrite();

      v14 = v4;
    }
  }

  v16 = v14;

  return v16;
}

void ACXLowDiskSpaceTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorCannotDownloadTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorCannotDownloadMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

void *ACXInstallationUnavailableTitleAndMessage(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = _LocalizedStringForSystemLanguage(@"ACXErrorInstallationUnavailableTitle");
    *v3 = result;
  }

  if (a2)
  {
    result = _LocalizedStringForSystemLanguage(@"ACXErrorInstallationUnavailableMessage");
    *a2 = result;
  }

  return result;
}

void ACXCapabilitiesMismatchTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorApplicationNotCompatibleTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorApplicationNotCompatibleMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

void ACXAppNotAllowedTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorApplicationNotAllowedTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorApplicationNotAllowedMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

void ACXRuntimeNotSupportedTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorApplicationRuntimeNotSupportedTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorApplicationRuntimeNotSupportedMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

void ACXArchitectureNotSupportedTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorArchitectureNotSupportedTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorArchitectureNotSupportedMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

void ACXDeviceNotReachableDuringInstallTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    goto LABEL_4;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXCannotInstallGenericTitle");
  v10 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v10, v5];
  v8 = v10;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;

LABEL_4:
    _ACXDeviceNotReachableMessage(a3);
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

LABEL_8:
}

void _ACXDeviceNotReachableMessage(void *a1)
{
  if (a1)
  {
    v2 = MGGetBoolAnswer();
    v3 = @"WIFI";
    if (v2)
    {
      v3 = @"WLAN";
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ACXDeviceNotReachableMessage", v3];
    v6 = _LocalizedStringForSystemLanguage(v4);

    v5 = v6;
    *a1 = v6;
  }
}

void ACXDeviceNotReachableDuringUninstallTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    goto LABEL_4;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXCannotUninstallGenericTitle");
  v10 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v10, v5];
  v8 = v10;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;

LABEL_4:
    _ACXDeviceNotReachableMessage(a3);
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

LABEL_8:
}

void ACXDeviceNotReachableGenericTitleAndMessage(void *a1, void *a2)
{
  if (a1)
  {
    *a1 = _LocalizedStringForSystemLanguage(@"ACXDeviceNotReachableMessageGenericTitle");
  }

  _ACXDeviceNotReachableMessage(a2);
}

void ACXInstallRestrictedTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorInstallRestrictedTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorInstallRestrictedMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

void ACXRemovalRestrictedTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorRemovalRestrictedTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorRemovalRestrictedMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

void ACXNotEligibleForWatchAppInstallTitleAndMessage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = _LocalizedStringForSystemLanguage(@"ACXErrorNotEligibleForWatchAppInstallTitle");
  v15 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ACXUntrustedAppTitleAndMessage_cold_1();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = _LocalizedStringForSystemLanguage(@"ACXErrorNotEligibleForWatchAppInstallMessage");
    v14 = 0;
    v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ACXUntrustedAppTitleAndMessage_cold_1();
    }
  }

LABEL_15:
}

uint64_t __ACXIsInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  ACXIsInternalBuild_result = result;
  return result;
}

id ACXWatchKitAppExecutableHash(void *a1)
{
  v1 = a1;
  v2 = MobileInstallationCopyAppMetadata();
  v3 = 0;
  if (v2)
  {
    v4 = [v2 watchKitAppExecutableHash];
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v4 = 0;
  }

  return v4;
}

BOOL ACXObjectsAreTheSameOrSameNullness(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = !(v3 | v4) || v3 && v4 && ([v3 isEqual:v4] & 1) != 0;

  return v6;
}

BOOL ACXObjectsAreDifferentOrDifferentNullness(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 == 0) == (v4 != 0) || v3 && v4 && ![v3 isEqual:v4];

  return v6;
}

id ACXCopySentinelFileURLForTestingMode()
{
  v0 = ACXCopyDataDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"TestingModeEnabled" isDirectory:0];

  return v1;
}

id ApplicationRecordFromApplicationProxy(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 bundleIdentifier];
  v5 = [v3 correspondingApplicationRecord];

  v11 = 0;
  v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:objc_msgSend(v5 error:{"isPlaceholder"), &v11}];
  v7 = v11;
  v8 = v7;
  if (a2 && !v6)
  {
    v9 = v7;
    *a2 = v8;
  }

  return v6;
}

id ACXCopyDuplicatedClassInfo(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = a1;
  outCount = 0;
  v2 = objc_copyClassList(&outCount);
  v3 = outCount;
  v4 = v1;
  v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:770];
  v6 = objc_opt_new();
  if (v3)
  {
    v7 = v2;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      if (!*v7)
      {
        break;
      }

      ClassName = object_getClassName(*v7);
      v10 = _StringFromClassName(ClassName);
      if (([v4 containsObject:v10] & 1) == 0)
      {
        if (NSHashGet(v5, ClassName))
        {
          [v6 addObject:v10];
        }

        else
        {
          NSHashInsertKnownAbsent(v5, ClassName);
        }
      }

      objc_autoreleasePoolPop(v8);
      ++v7;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v8);
  }

LABEL_11:
  v11 = [v6 copy];

  if ([v11 count])
  {
    v12 = objc_opt_new();
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v14 = v2[i];
        if (!v14)
        {
          break;
        }

        v15 = object_getClassName(v2[i]);
        v16 = _StringFromClassName(v15);
        if ([v11 containsObject:v16])
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p: %s", v14, class_getImageName(v14)];
          v18 = [v12 objectForKeyedSubscript:v16];
          if (v18)
          {
            v19 = v18;
            [v18 addObject:v17];
          }

          else
          {
            v19 = objc_opt_new();
            [v19 addObject:v17];
            [v12 setObject:v19 forKeyedSubscript:v16];
          }
        }
      }
    }

    v30 = v2;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [v12 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v31 + 1) + 8 * j);
          v26 = [v12 objectForKeyedSubscript:v25];
          v27 = [v26 copy];
          [v12 setObject:v27 forKeyedSubscript:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v22);
    }

    v28 = [v12 copy];
    v2 = v30;
  }

  else
  {
    v28 = MEMORY[0x277CBEC10];
  }

  free(v2);

  return v28;
}

id _StringFromClassName(const char *a1)
{
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:a1 length:strlen(a1) encoding:4 freeWhenDone:0];

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_23FF2A288(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_23FF2A538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23FF2AAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23FF2AD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23FF2D66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF2DA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF2E1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF2E9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23FF2F014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23FF2F59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF2FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23FF30378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23FF308CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF30D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF31274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF31764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23FF31B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23FF31EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23FF3236C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23FF32928(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_23FF33420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v20 + 40));
  _Unwind_Resume(a1);
}

void sub_23FF33E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23FF34528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23FF34B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23FF34FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23FF356CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF35B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF36028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_23FF363F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_23FF3674C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23FF36D10(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_23FF377F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23FF37D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23FF38060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23FF38294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23FF38540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23FF38918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_23FF38C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t parse_macho_iterate_slices(const char *a1, uint64_t a2)
{
  v4 = open(a1, 256);
  if (v4 < 0)
  {
    v8 = __error();
    v9 = strerror(*v8);
    syslog(3, "Failed to open macho file at %s for reading: %s", a1, v9);
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = parse_macho_iterate_slices_fd(v4, a1, a2);
    close(v5);
    return v6;
  }
}

uint64_t parse_macho_iterate_slices_fd(int a1, uint64_t a2, uint64_t a3)
{
  __buf[0] = 0;
  memset(&v24, 0, sizeof(v24));
  if (fstat(a1, &v24))
  {
    v5 = __error();
    strerror(*v5);
    syslog(3, "Failed to stat %s : %s");
    return 0;
  }

  if (v24.st_size <= 8)
  {
    syslog(3, "File at %s is not a valid mach-o (too small to contain a valid header)");
    return 0;
  }

  *__error() = 0;
  if (pread(a1, __buf, 4uLL, 0) != 4)
  {
    v7 = __error();
    strerror(*v7);
    syslog(3, "Failed to read magic from %s : %s");
    return 0;
  }

  if (__buf[0] <= -805638659)
  {
    if (__buf[0] != -1095041334 && __buf[0] != -889275714)
    {
      v6 = -822415874;
      goto LABEL_15;
    }

    fat_header = 0;
    *__error() = 0;
    if (pread(a1, &fat_header, 8uLL, 0) == 8)
    {
      magic = fat_header.magic;
      if (fat_header.magic == -1095041334)
      {
        swap_fat_header(&fat_header, NX_LittleEndian);
        magic = fat_header.magic;
      }

      syslog(7, "Got fat header with magic 0x%08x and %u archs", magic, fat_header.nfat_arch);
      if (fat_header.nfat_arch < 0x401)
      {
        v15 = 20 * fat_header.nfat_arch;
        if (v24.st_size > (v15 + 8))
        {
          v14 = malloc_type_malloc(20 * fat_header.nfat_arch, 0xE03DB683uLL);
          if (pread(a1, v14, v15, 8) == v15)
          {
            swap_fat_arch(v14, fat_header.nfat_arch, NX_LittleEndian);
            if (!fat_header.nfat_arch)
            {
LABEL_37:
              v8 = 1;
              if (!v14)
              {
                return v8;
              }

              goto LABEL_28;
            }

            v16 = 0;
            v17 = v14;
            while (1)
            {
              syslog(7, "Evaluating fat slice with cputype %d; subtype %d; offset %u; size %u; align %u", v17->cputype, v17->cpusubtype, v17->offset, v17->size, v17->align);
              offset = v17->offset;
              if (v24.st_size <= offset)
              {
                syslog(3, "Fat arch %u in %s specifies offset which is beyond the end of the file");
                goto LABEL_27;
              }

              macho_header_and_load_commands = _read_macho_header_and_load_commands(a1, offset, v24.st_size);
              if (!macho_header_and_load_commands)
              {
                break;
              }

              v20 = macho_header_and_load_commands;
              v21 = (*(a3 + 16))(a3, v17, macho_header_and_load_commands);
              free(v20);
              if (++v16 < fat_header.nfat_arch)
              {
                ++v17;
                if (v21)
                {
                  continue;
                }
              }

              goto LABEL_37;
            }

            syslog(3, "Failed to read macho header and load commands in %s at %u");
          }

          else
          {
            v22 = __error();
            strerror(*v22);
            syslog(3, "Failed to read fat archs from %s : %s");
          }

LABEL_27:
          v8 = 0;
          if (!v14)
          {
            return v8;
          }

LABEL_28:
          free(v14);
          return v8;
        }

        syslog(3, "File is not large enough to contain %u fat arch headers and their referenced slices.");
      }

      else
      {
        syslog(3, "Number of fat archs %u exceeds the maximum %u");
      }
    }

    else
    {
      v13 = __error();
      strerror(*v13);
      syslog(3, "Failed to read fat header of %s : %s");
    }

    v14 = 0;
    goto LABEL_27;
  }

  if ((__buf[0] + 17958194) >= 2)
  {
    v6 = -805638658;
LABEL_15:
    if (__buf[0] != v6)
    {
      syslog(3, "Unknown binary with magic 0x%08x at %s");
      return 0;
    }
  }

  v10 = _read_macho_header_and_load_commands(a1, 0, v24.st_size);
  if (v10)
  {
    v11 = v10;
    (*(a3 + 16))(a3, 0, v10);
    free(v11);
    return 1;
  }

  syslog(3, "Failed to read macho header and load commands in %s at %u");
  return 0;
}

char *_read_macho_header_and_load_commands(int a1, off_t a2, uint64_t a3)
{
  __buf = 0u;
  v18 = 0u;
  v6 = pread(a1, &__buf, 0x20uLL, a2);
  if (v6 < 0)
  {
    v8 = __error();
    strerror(*v8);
    syslog(3, "Failed to read mach header at offset %lld : %s");
    goto LABEL_26;
  }

  if (v6 != 28 && v6 != 32)
  {
    syslog(3, "Expected to read at least sizeof(struct mach_header) but only got %zd bytes");
    goto LABEL_26;
  }

  v7 = v18;
  if (__buf > -17958195)
  {
    if (__buf != -17958194)
    {
      if (__buf == -17958193)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (__buf != -822415874)
    {
      if (__buf == -805638658)
      {
        v7 = vrev32_s8(*&v18);
LABEL_11:
        if (v6 == 32)
        {
          v9 = 32;
          goto LABEL_18;
        }

        syslog(3, "Got 64-bit magic but didn't read size of 64-bit mach header");
LABEL_26:
        v12 = 0;
        goto LABEL_27;
      }

LABEL_14:
      syslog(3, "Unknown magic in macho header at offset %llu: 0x%08x");
      goto LABEL_26;
    }

    v7 = vrev32_s8(*&v18);
  }

  v9 = 28;
LABEL_18:
  v10 = v7.u32[1];
  if (8 * v7.u32[0] > v7.u32[1])
  {
    syslog(3, "Space required for total size of load commands (%llu) is greater than indicated size of commands (%u).");
    goto LABEL_26;
  }

  if ((v9 + v7.u32[1] + a2) >= a3)
  {
    syslog(3, "File is not large enough to contain commands with length %u");
    goto LABEL_26;
  }

  v11 = malloc_type_malloc(v9 + v7.u32[1], 0xE91A1002uLL);
  v12 = v11;
  if (!v11)
  {
    v15 = __error();
    strerror(*v15);
    syslog(3, "Failed to allocate %llu bytes: %s");
    goto LABEL_27;
  }

  memcpy(v11, &__buf, v9);
  v13 = pread(a1, &v12[v9], v10, v9 + a2);
  if (v13 < 0)
  {
    v16 = __error();
    strerror(*v16);
    syslog(3, "Failed to read %u bytes at offset %lld : %s");
    goto LABEL_27;
  }

  if (v13 != v10)
  {
    syslog(3, "Expected to read %u bytes of commands but only got %zd bytes");
LABEL_27:
    free(v12);
    return 0;
  }

  return v12;
}

uint64_t get_highest_sdk_version_for_any_slice(const char *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __get_highest_sdk_version_for_any_slice_block_invoke;
  v4[3] = &unk_278C8D820;
  v4[4] = &v5;
  v4[5] = a1;
  if (parse_macho_iterate_slices(a1, v4))
  {
    v2 = *(v6 + 6);
  }

  else
  {
    syslog(3, "Failed to iterate macho file at %s", a1);
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __get_highest_sdk_version_for_any_slice_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  dyld_get_image_versions();
  v4 = *(v9 + 6);
  if (!v4)
  {
    syslog(3, "Failed to get SDK version from slice in %s", *(a1 + 40));
    v4 = *(v9 + 6);
  }

  syslog(7, "Slice had version 0x%08x", v4);
  v5 = *(v9 + 6);
  v6 = *(*(a1 + 32) + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }

  _Block_object_dispose(&v8, 8);
  return 1;
}

BOOL parse_macho_is_cpu_type_runnable_for_apps(int a1, int a2, char *a3, int *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    syslog(3, "Error: Argument pointer must not be null");
    v12 = 13;
    syslog(3, "Unable to determine CPU type is runnable with error: %d", 13);
    v9 = 0;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_12;
  }

  v17[0] = a1;
  v17[1] = a2;
  v16 = 0;
  v15 = 4;
  v8 = sysctlbyname("kern.grade_cputype", &v16, &v15, v17, 8uLL);
  v9 = v8 == 0;
  if (v8)
  {
    v10 = __error();
    v11 = strerror(*v10);
    syslog(3, "Error calling kern.grade_cputype for CPU type 0x%x and subtype 0x%x: %s", a1, a2, v11);
    v12 = 12;
    syslog(3, "Unable to determine CPU type is runnable with error: %d", 12);
    v13 = 0;
  }

  else if (v16 >= 1 && a1 == 16777228 && (a2 & 0xFFFFFFu) <= 2)
  {
    syslog(7, "CPU type 0x%x and subtype 0x%x are runnable", 16777228, a2);
    v12 = 0;
    v13 = 1;
  }

  else
  {
    syslog(7, "CPU type 0x%x and subtype 0x%x are not runnable", a1, a2);
    v12 = 0;
    v13 = 0;
  }

  *a3 = v13;
  if (a4)
  {
LABEL_12:
    *a4 = v12;
  }

  return v9;
}

BOOL parse_macho_is_file_runnable_for_apps(const char *a1, _BYTE *a2, _DWORD *a3)
{
  v34 = 0;
  v33 = 0;
  memset(&v32, 0, sizeof(v32));
  v31 = 0;
  if (!a1)
  {
    v34 = 1;
    syslog(3, "Input path is NULL");
    goto LABEL_58;
  }

  if (!a2)
  {
    v34 = 13;
    syslog(3, "Error: Argument pointer must not be null");
    goto LABEL_60;
  }

  v6 = open(a1, 256);
  if (v6 != -1)
  {
    v7 = v6;
    if (fstat(v6, &v32) == -1)
    {
      v12 = *__error();
      v34 = 3;
      cputype = a1;
      cpusubtype = strerror(v12);
      v9 = "Can't stat input file %s: %s";
      goto LABEL_54;
    }

    st_size = v32.st_size;
    if (read(v7, &v31, 4uLL) != 4)
    {
      v13 = *__error();
      v34 = 5;
      cputype = a1;
      cpusubtype = strerror(v13);
      v9 = "Failed to read header for file %s: %s";
      goto LABEL_54;
    }

    if (lseek(v7, 0, 0) == -1)
    {
      v14 = *__error();
      v34 = 4;
      cputype = a1;
      cpusubtype = strerror(v14);
      v9 = "Can't seek input file %s: %s";
      goto LABEL_54;
    }

    if (st_size >= 8 && v31 == -1095041334)
    {
      *&fat_header.magic = 0;
      if (read(v7, &fat_header, 8uLL) != 8)
      {
        v16 = *__error();
        v34 = 5;
        cputype = a1;
        cpusubtype = strerror(v16);
        v9 = "Failed to read fat header from input file %s: %s";
        goto LABEL_54;
      }

      swap_fat_header(&fat_header, NX_LittleEndian);
      if (fat_header.cputype >= 0x401u)
      {
        v34 = 7;
        cputype = fat_header.cputype;
        cpusubtype = 1024;
        v9 = "Number of fat archs %u exceeds the maximum %u";
LABEL_54:
        v15 = 3;
        goto LABEL_55;
      }

      v17 = 20 * fat_header.cputype;
      if (v17 + 8 > st_size)
      {
        v34 = 8;
        cputype = a1;
        v9 = "Malformed fat file: %s";
        goto LABEL_54;
      }

      v19 = malloc_type_malloc(v17, 0x4A4E4860uLL);
      if (v19)
      {
        if (read(v7, v19, v17) == v17)
        {
          swap_fat_arch(v19, fat_header.cputype, NX_LittleEndian);
          if (fat_header.cputype)
          {
            v20 = 0;
            p_cpusubtype = &v19->cpusubtype;
            do
            {
              v22 = v20;
              if (!parse_macho_is_cpu_type_runnable_for_apps(*(p_cpusubtype - 1), *p_cpusubtype, &v33, &v34))
              {
                v24 = "Failed to check if cpu type is runnable";
                goto LABEL_68;
              }

              if (v33 == 1)
              {
                break;
              }

              p_cpusubtype += 5;
              v20 = v22 + 1;
            }

            while (v22 + 1 < fat_header.cputype);
            if (v33)
            {
              goto LABEL_65;
            }
          }

          else if (v33)
          {
LABEL_65:
            syslog(7, "FAT matching_arch cpu_type: 0x%x cpu_subtype: 0x%x");
            goto LABEL_56;
          }

          cputype = a1;
          v24 = "Failed to find matching arch for FAT input file %s";
        }

        else
        {
          v27 = *__error();
          v34 = 6;
          cputype = a1;
          cpusubtype = strerror(v27);
          v24 = "Failed to read fat arch(s) from input file %s: %s";
        }
      }

      else
      {
        v23 = *__error();
        v34 = 9;
        cputype = strerror(v23);
        v24 = "Failed to allocate memory for fat arch(s): %s";
      }

LABEL_68:
      syslog(3, v24, cputype, cpusubtype);
LABEL_56:
      free(v19);
      if ((v7 & 0x80000000) == 0)
      {
        close(v7);
      }

LABEL_58:
      if (!a2)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    if (st_size >= 0x1C)
    {
      if (v31 == -17958194 || v31 == -822415874)
      {
        memset(&fat_header, 0, 28);
        if (read(v7, &fat_header, 0x1CuLL) == 28)
        {
          if (v31 == -822415874)
          {
            swap_mach_header(&fat_header, NX_LittleEndian);
          }

          if (parse_macho_is_cpu_type_runnable_for_apps(fat_header.cputype, fat_header.cpusubtype, &v33, &v34))
          {
            if (v33 != 1)
            {
              cputype = a1;
              v9 = "Failed to find matching arch for 32-bit Mach-O input file %s";
              goto LABEL_54;
            }

            cputype = fat_header.cputype;
            cpusubtype = fat_header.cpusubtype;
            v9 = "32-bit thin matching_arch cpu_type: 0x%x cpu_subtype: 0x%x";
LABEL_27:
            v15 = 7;
LABEL_55:
            syslog(v15, v9, cputype, cpusubtype);
            v19 = 0;
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        goto LABEL_41;
      }

      if (st_size >= 0x20 && (v31 == -17958193 || v31 == -805638658))
      {
        memset(&fat_header, 0, sizeof(fat_header));
        if (read(v7, &fat_header, 0x20uLL) == 32)
        {
          if (v31 == -805638658)
          {
            swap_mach_header_64(&fat_header, NX_LittleEndian);
          }

          if (parse_macho_is_cpu_type_runnable_for_apps(fat_header.cputype, fat_header.cpusubtype, &v33, &v34))
          {
            if (v33 != 1)
            {
              cputype = a1;
              v9 = "Failed to find matching arch for 64-bit Mach-O input file %s";
              goto LABEL_54;
            }

            cputype = fat_header.cputype;
            cpusubtype = fat_header.cpusubtype;
            v9 = "64-bit thin matching_arch cpu_type: 0x%x cpu_subtype: 0x%x";
            goto LABEL_27;
          }

LABEL_51:
          v9 = "Failed to check if cpu type is runnable";
          goto LABEL_54;
        }

LABEL_41:
        v18 = *__error();
        v34 = 5;
        cputype = a1;
        cpusubtype = strerror(v18);
        v9 = "Failed to read mach header from input file %s: %s";
        goto LABEL_54;
      }
    }

    v34 = 10;
    cputype = a1;
    v9 = "Unknown binary format for input file %s.";
    goto LABEL_54;
  }

  v10 = *__error();
  v34 = 2;
  v11 = strerror(v10);
  syslog(3, "Can't open input file %s: %s", a1, v11);
LABEL_59:
  *a2 = v33;
LABEL_60:
  v25 = v34;
  if (a3)
  {
    *a3 = v34;
  }

  return v25 == 0;
}