@interface ISFileProtectionClassMigrator
+ (BOOL)migrate;
+ (void)setMigrationNeededIfNotSet:(BOOL)set;
@end

@implementation ISFileProtectionClassMigrator

+ (void)setMigrationNeededIfNotSet:(BOOL)set
{
  setCopy = set;
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"NeedsFileProtectionClassMigration", @"com.apple.itunesstored", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    CFPreferencesSetAppValue(@"NeedsFileProtectionClassMigration", [MEMORY[0x277CCABB0] numberWithBool:setCopy], @"com.apple.itunesstored");
  }
}

+ (BOOL)migrate
{
  v103 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
  v68 = CPSharedResourcesDirectory();
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 1;
  if (!v68)
  {
    mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v52 = mEMORY[0x277D69B38]2;
    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [v52 shouldLogToDisk];
    oSLogObject = [v52 OSLogObject];
    v56 = oSLogObject;
    if (shouldLogToDisk)
    {
      v57 = shouldLog | 2;
    }

    else
    {
      v57 = shouldLog;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v58 = v57;
    }

    else
    {
      v58 = v57 & 2;
    }

    if (v58)
    {
      LOWORD(v100) = 0;
      v59 = _os_log_send_and_compose_impl(v58, 0, 0, 0, &dword_275BC3000, v56, 17, "Unable to obtain home directory for com.apple.itunesstored", &v100, 2);

      if (!v59)
      {
LABEL_86:

        v50 = 0;
        *(v93 + 24) = 0;
        goto LABEL_88;
      }

      v56 = [MEMORY[0x277CCACA8] stringWithCString:v59 encoding:4];
      free(v59);
      SSFileLog();
    }

    goto LABEL_86;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v2 = [&unk_2884CA938 countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = *v89;
  do
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v89 != v3)
      {
        objc_enumerationMutation(&unk_2884CA938);
      }

      v5 = [v68 stringByAppendingPathComponent:{*(*(&v88 + 1) + 8 * i), v61}];
      v6 = v5;
      if ((_set_path_class([v5 fileSystemRepresentation], 0) & 0xFFFFFFFD) != 0)
      {
        mEMORY[0x277D69B38]3 = mEMORY[0x277D69B38];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v8 = mEMORY[0x277D69B38]3;
        shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
        shouldLogToDisk2 = [v8 shouldLogToDisk];
        oSLogObject2 = [v8 OSLogObject];
        v12 = oSLogObject2;
        if (shouldLogToDisk2)
        {
          v13 = shouldLog2 | 2;
        }

        else
        {
          v13 = shouldLog2;
        }

        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 2;
        }

        if (v14)
        {
          v100 = 138543362;
          v101 = v5;
          LODWORD(v63) = 12;
          v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_275BC3000, v12, 17, "Unable to remove protection class from directory %{public}@", &v100, v63);

          if (v15)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
            free(v15);
            v61 = v12;
            SSFileLog();
            goto LABEL_19;
          }
        }

        else
        {
LABEL_19:
        }

        *(v93 + 24) = 0;
      }
    }

    v2 = [&unk_2884CA938 countByEnumeratingWithState:&v88 objects:v102 count:16];
  }

  while (v2);
LABEL_23:
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v16 = [&unk_2884CA950 countByEnumeratingWithState:&v84 objects:v99 count:{16, v61}];
  if (!v16)
  {
    goto LABEL_65;
  }

  v64 = *v85;
  v17 = *MEMORY[0x277CBE868];
  while (2)
  {
    v18 = 0;
    v66 = v16;
    while (2)
    {
      if (*v85 != v64)
      {
        objc_enumerationMutation(&unk_2884CA950);
      }

      v19 = [v68 stringByAppendingPathComponent:{*(*(&v84 + 1) + 8 * v18), v62}];
      v83 = 0;
      v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19 isDirectory:1];
      v98 = v17;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __40__ISFileProtectionClassMigrator_migrate__block_invoke;
      v80[3] = &unk_27A670968;
      v22 = mEMORY[0x277D69B38];
      v81 = v22;
      v82 = &v92;
      v23 = [defaultManager enumeratorAtURL:v20 includingPropertiesForKeys:v21 options:0 errorHandler:v80];
      v69 = v19;
      v67 = v18;

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v76 objects:v97 count:16];
      if (v25)
      {
        v26 = *v77;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v77 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v76 + 1) + 8 * j);
            v75 = 0;
            if (![v28 getResourceValue:&v75 forKey:v17 error:{&v83, v62}])
            {
              mEMORY[0x277D69B38]4 = v22;
              if (!mEMORY[0x277D69B38])
              {
                mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
              }

              v31 = mEMORY[0x277D69B38]4;
              shouldLog3 = [mEMORY[0x277D69B38]4 shouldLog];
              shouldLogToDisk3 = [v31 shouldLogToDisk];
              oSLogObject3 = [v31 OSLogObject];
              v42 = oSLogObject3;
              if (shouldLogToDisk3)
              {
                shouldLog3 |= 2u;
              }

              if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_FAULT))
              {
                v43 = shouldLog3;
              }

              else
              {
                v43 = shouldLog3 & 2;
              }

              if (v43)
              {
                v100 = 138543362;
                v101 = v83;
                v62 = &v100;
                v44 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_275BC3000, v42, 17, "Error determining if path is directory: %{public}@");

                if (v44)
                {
                  v42 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:4];
                  free(v44);
                  v62 = v42;
                  SSFileLog();
                  goto LABEL_58;
                }
              }

              else
              {
LABEL_58:
              }

LABEL_59:

              *(v93 + 24) = 0;
              continue;
            }

            if ([v75 BOOLValue])
            {
              v29 = v28;
              if ((_set_path_class([v28 fileSystemRepresentation], 0) & 0xFFFFFFFD) == 0)
              {
                continue;
              }

              mEMORY[0x277D69B38]5 = v22;
              if (!mEMORY[0x277D69B38])
              {
                mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
              }

              v31 = mEMORY[0x277D69B38]5;
              shouldLog4 = [mEMORY[0x277D69B38]5 shouldLog];
              shouldLogToDisk4 = [v31 shouldLogToDisk];
              oSLogObject4 = [v31 OSLogObject];
              v35 = oSLogObject4;
              if (shouldLogToDisk4)
              {
                shouldLog4 |= 2u;
              }

              if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
              {
                v36 = shouldLog4;
              }

              else
              {
                v36 = shouldLog4 & 2;
              }

              if (v36)
              {
                v100 = 138543362;
                v101 = v69;
                v62 = &v100;
                v37 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_275BC3000, v35, 17, "Unable to remove protection class from directory %{public}@");

                if (!v37)
                {
                  goto LABEL_59;
                }

                v35 = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:4];
                free(v37);
                v62 = v35;
                SSFileLog();
              }

              goto LABEL_59;
            }

            path = [v28 path];
            setFileClassC(path, v22, v93 + 24);
          }

          v25 = [v24 countByEnumeratingWithState:&v76 objects:v97 count:16];
        }

        while (v25);
      }

      v18 = v67 + 1;
      if (v67 + 1 != v66)
      {
        continue;
      }

      break;
    }

    v16 = [&unk_2884CA950 countByEnumeratingWithState:&v84 objects:v99 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_65:
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v46 = [&unk_2884CA968 countByEnumeratingWithState:&v71 objects:v96 count:{16, v62}];
  if (v46)
  {
    v47 = *v72;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v72 != v47)
        {
          objc_enumerationMutation(&unk_2884CA968);
        }

        v49 = [v68 stringByAppendingPathComponent:*(*(&v71 + 1) + 8 * k)];
        setFileClassC(v49, mEMORY[0x277D69B38], v93 + 24);
      }

      v46 = [&unk_2884CA968 countByEnumeratingWithState:&v71 objects:v96 count:16];
    }

    while (v46);
  }

  if (v93[3])
  {
    CFPreferencesSetAppValue(@"NeedsFileProtectionClassMigration", *MEMORY[0x277CBED28], @"com.apple.itunesstored");
    v50 = *(v93 + 24);
  }

  else
  {
    v50 = 0;
  }

LABEL_88:
  _Block_object_dispose(&v92, 8);

  return v50 & 1;
}

uint64_t __40__ISFileProtectionClassMigrator_migrate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v7)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v16 = 138543362;
  v17 = v6;
  v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, v10, 16, "Error enumerating directory: %{public}@", &v16, 12);

  if (v12)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_12:
  }

  if ([v6 code] != 260 || (objc_msgSend(v6, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277CCA050]), v13, (v14 & 1) == 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return 1;
}

@end