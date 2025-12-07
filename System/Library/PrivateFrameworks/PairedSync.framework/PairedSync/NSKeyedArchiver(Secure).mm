@interface NSKeyedArchiver(Secure)
+ (id)secureArchivedDataWithRootObject:()Secure;
+ (uint64_t)secureArchiveRootObject:()Secure toFile:withOptions:;
@end

@implementation NSKeyedArchiver(Secure)

+ (id)secureArchivedDataWithRootObject:()Secure
{
  v3 = a3;
  if (v3)
  {
    v7 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v5 = v7;
    if (v5)
    {
      objc_exception_throw(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (uint64_t)secureArchiveRootObject:()Secure toFile:withOptions:
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [self secureArchivedDataWithRootObject:v8];
  if (v10)
  {
    stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v41 = 0;
      [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v41];
      v14 = v41;

      if (v14)
      {
        v26 = psd_log(v25);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

        if (v27)
        {
          v29 = psd_log(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            psy_safeDescription = [v14 psy_safeDescription];
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            *buf = 138543874;
            v43 = psy_safeDescription;
            v44 = 2114;
            v45 = stringByDeletingLastPathComponent;
            v46 = 2112;
            v47 = v38;
            _os_log_error_impl(&dword_25DF25000, v29, OS_LOG_TYPE_ERROR, "Error (%{public}@) creating directory (%{public}@) for (%@)", buf, 0x20u);
          }
        }
      }
    }

    v40 = 0;
    v19 = [v10 writeToFile:v9 options:a5 error:&v40];
    v30 = v40;
    v23 = v30;
    if (v30)
    {
      v31 = psd_log(v30);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (v32)
      {
        v34 = psd_log(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [NSKeyedArchiver(Secure) secureArchiveRootObject:v23 toFile:v8 withOptions:?];
        }
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [defaultManager3 fileExistsAtPath:v9];

  if (!v16)
  {
    v19 = 1;
    goto LABEL_22;
  }

  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = 0;
  [defaultManager4 removeItemAtPath:v9 error:&v39];
  stringByDeletingLastPathComponent = v39;

  v19 = stringByDeletingLastPathComponent == 0;
  if (stringByDeletingLastPathComponent)
  {
    v20 = psd_log(v18);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (!v21)
    {
      v19 = 0;
      goto LABEL_21;
    }

    v23 = psd_log(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [NSKeyedArchiver(Secure) secureArchiveRootObject:stringByDeletingLastPathComponent toFile:v9 withOptions:?];
    }

    v19 = 0;
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  return v19;
}

+ (void)secureArchiveRootObject:()Secure toFile:withOptions:.cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 psy_safeDescription];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  *v11 = 138543618;
  *&v11[4] = v2;
  *&v11[12] = 2112;
  *&v11[14] = v4;
  OUTLINED_FUNCTION_0(&dword_25DF25000, v5, v6, "Error (%{public}@) writing encoded data for (%@)", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
}

+ (void)secureArchiveRootObject:()Secure toFile:withOptions:.cold.2(void *a1, uint64_t a2)
{
  v3 = [a1 psy_safeDescription];
  *v10 = 138543618;
  *&v10[4] = v3;
  *&v10[12] = 2114;
  *&v10[14] = a2;
  OUTLINED_FUNCTION_0(&dword_25DF25000, v4, v5, "Error (%{public}@) deleting file (%{public}@)", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end