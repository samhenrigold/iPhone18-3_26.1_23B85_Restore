@interface PSMigratorUtilities
- (void)_migrateKey:(id)key domain:(id)domain toKey:(id)toKey toDomain:(id)toDomain migrateCloud:(BOOL)cloud;
@end

@implementation PSMigratorUtilities

- (void)_migrateKey:(id)key domain:(id)domain toKey:(id)toKey toDomain:(id)toDomain migrateCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  v34 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  domainCopy = domain;
  toKeyCopy = toKey;
  toDomainCopy = toDomain;
  v15 = CFPreferencesCopyAppValue(keyCopy, domainCopy);
  v16 = CFPreferencesCopyAppValue(toKeyCopy, toDomainCopy);
  v17 = v16;
  if (v15)
  {
    v18 = _PSLoggingFacility(v16);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v26 = 138412546;
        v27 = domainCopy;
        v28 = 2112;
        v29 = keyCopy;
        _os_log_impl(&dword_18B008000, v18, OS_LOG_TYPE_DEFAULT, "Removing defunct pref '%@' '%@'", &v26, 0x16u);
      }
    }

    else
    {
      if (v19)
      {
        v26 = 138413058;
        v27 = domainCopy;
        v28 = 2112;
        v29 = keyCopy;
        v30 = 2112;
        v31 = toDomainCopy;
        v32 = 2112;
        v33 = toKeyCopy;
        _os_log_impl(&dword_18B008000, v18, OS_LOG_TYPE_DEFAULT, "Migrating pref '%@' '%@' => '%@' '%@'", &v26, 0x2Au);
      }

      CFPreferencesSetAppValue(toKeyCopy, v15, toDomainCopy);
    }

    CFPreferencesSetAppValue(keyCopy, 0, domainCopy);
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (cloudCopy)
  {
    v20 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:domainCopy];
    v21 = [v20 objectForKey:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:toDomainCopy];
      v23 = [v22 objectForKey:toKeyCopy];
      v24 = _PSLoggingFacility(v23);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          v26 = 138412546;
          v27 = domainCopy;
          v28 = 2112;
          v29 = keyCopy;
          _os_log_impl(&dword_18B008000, v24, OS_LOG_TYPE_DEFAULT, "Removing defunct cloud pref '%@' '%@'", &v26, 0x16u);
        }
      }

      else
      {
        if (v25)
        {
          v26 = 138413058;
          v27 = domainCopy;
          v28 = 2112;
          v29 = keyCopy;
          v30 = 2112;
          v31 = toDomainCopy;
          v32 = 2112;
          v33 = toKeyCopy;
          _os_log_impl(&dword_18B008000, v24, OS_LOG_TYPE_DEFAULT, "Migrating cloud pref from '%@' '%@' => '%@' %@'", &v26, 0x2Au);
        }

        [v22 setBool:objc_msgSend(v21 forKey:{"BOOLValue"), toKeyCopy}];
      }

      [v20 removeObjectForKey:keyCopy];
    }
  }
}

@end