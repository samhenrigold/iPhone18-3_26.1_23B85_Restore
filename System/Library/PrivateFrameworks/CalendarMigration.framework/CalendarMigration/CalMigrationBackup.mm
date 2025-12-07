@interface CalMigrationBackup
+ (BOOL)backupCalendarDirectory:(id)directory intoArchiveNamed:(id)named error:(id *)error;
+ (BOOL)removeExistingBackupWithArchiveName:(id)name inCalendarDirectory:(id)directory error:(id *)error;
+ (BOOL)shouldBackupCalendarDirectory:(id)directory withPrivacySafePathProvider:(id)provider;
@end

@implementation CalMigrationBackup

+ (BOOL)backupCalendarDirectory:(id)directory intoArchiveNamed:(id)named error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  namedCopy = named;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [directoryCopy URLByAppendingPathComponent:namedCopy];
  path = [v10 path];
  v12 = [defaultManager fileExistsAtPath:path];

  if (v12)
  {
    v32 = 0;
    v13 = [defaultManager removeItemAtURL:v10 error:&v32];
    v14 = v32;
    if ((v13 & 1) == 0)
    {
      v15 = +[CalMigrationLog defaultCategory];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CalMigrationBackup backupCalendarDirectory:v10 intoArchiveNamed:? error:?];
      }
    }
  }

  temporaryDirectory = [defaultManager temporaryDirectory];
  v17 = [temporaryDirectory URLByAppendingPathComponent:namedCopy];

  v31 = 0;
  LOBYTE(temporaryDirectory) = [defaultManager archiveURLToFile:directoryCopy toFile:v17 createPKZipArchive:1 error:&v31];
  v18 = v31;
  v19 = v18;
  if (temporaryDirectory)
  {
    v30 = v18;
    v20 = [defaultManager moveItemAtURL:v17 toURL:v10 error:&v30];
    v21 = v30;

    if (v20)
    {
      v22 = 1;
      if (!error)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v23 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      path2 = [v17 path];
      path3 = [v10 path];
      *buf = 138412802;
      v34 = path2;
      v35 = 2112;
      v36 = path3;
      v37 = 2112;
      v38 = v21;
      _os_log_error_impl(&dword_2428EA000, v23, OS_LOG_TYPE_ERROR, "Failed to move backup archive %@ to %@. error = %@", buf, 0x20u);
    }

    v19 = v21;
  }

  else
  {
    v23 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      path4 = [v17 path];
      path5 = [directoryCopy path];
      *buf = 138412802;
      v34 = path4;
      v35 = 2112;
      v36 = path5;
      v37 = 2112;
      v38 = v19;
      _os_log_error_impl(&dword_2428EA000, v23, OS_LOG_TYPE_ERROR, "Failed to create backup archive %@ for calendar directory %@. error = %@", buf, 0x20u);
    }
  }

  v22 = 0;
  v21 = v19;
  if (error)
  {
LABEL_17:
    v26 = v21;
    *error = v21;
  }

LABEL_18:

  return v22;
}

+ (BOOL)shouldBackupCalendarDirectory:(id)directory withPrivacySafePathProvider:(id)provider
{
  v45[1] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  providerCopy = provider;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v27 = *MEMORY[0x277CBE838];
  v45[0] = *MEMORY[0x277CBE838];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __80__CalMigrationBackup_shouldBackupCalendarDirectory_withPrivacySafePathProvider___block_invoke;
  v34[3] = &unk_278D6D6A8;
  v23 = providerCopy;
  v35 = v23;
  v36 = &v37;
  v7 = [defaultManager enumeratorAtURL:directoryCopy includingPropertiesForKeys:v6 options:0 errorHandler:v34];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v31;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * v12);
        v28 = 0;
        v29 = 0;
        v15 = [v14 getResourceValue:&v29 forKey:v27 error:&v28];
        v16 = v29;
        v10 = v28;

        if ((v15 & 1) == 0)
        {
          v17 = +[CalMigrationLog defaultCategory];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v23 privacySafePathForURLInCalendarDirectory:v14];
            [(CalMigrationBackup *)v18 shouldBackupCalendarDirectory:v10 withPrivacySafePathProvider:v43, v17];
          }

          *(v38 + 24) = 1;
          goto LABEL_15;
        }

        v9 += [v16 unsignedLongLongValue];
        if (v9 > 0x6400000)
        {
          v21 = +[CalMigrationLog defaultCategory];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v43 = 0;
            _os_log_impl(&dword_2428EA000, v21, OS_LOG_TYPE_DEFAULT, "Calendar directory is too big. Will not create a backup!", v43, 2u);
          }

          v20 = 0;
          v19 = obj;
          goto LABEL_25;
        }

        ++v12;
        v13 = v10;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

LABEL_15:

  if (*(v38 + 24) == 1)
  {
    v19 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2428EA000, v19, OS_LOG_TYPE_DEFAULT, "Failed to get total size of calendar directory. Will not create a backup!", buf, 2u);
    }

    v20 = 0;
  }

  else
  {
    v19 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = v9;
      _os_log_impl(&dword_2428EA000, v19, OS_LOG_TYPE_DEFAULT, "Calendar directory is %llu bytes. Will create a backup", buf, 0xCu);
    }

    v20 = 1;
  }

LABEL_25:

  _Block_object_dispose(&v37, 8);
  return v20;
}

uint64_t __80__CalMigrationBackup_shouldBackupCalendarDirectory_withPrivacySafePathProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CalMigrationLog defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) privacySafePathForURLInCalendarDirectory:v5];
    v10 = 138543618;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    _os_log_error_impl(&dword_2428EA000, v7, OS_LOG_TYPE_ERROR, "Error enumerating calendar directory at URL %{public}@: %@", &v10, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return 0;
}

+ (BOOL)removeExistingBackupWithArchiveName:(id)name inCalendarDirectory:(id)directory error:(id *)error
{
  v7 = MEMORY[0x277CCAA00];
  directoryCopy = directory;
  nameCopy = name;
  defaultManager = [v7 defaultManager];
  v11 = [directoryCopy URLByAppendingPathComponent:nameCopy];

  path = [v11 path];
  LODWORD(nameCopy) = [defaultManager fileExistsAtPath:path];

  if (nameCopy)
  {
    v18 = 0;
    v13 = [defaultManager removeItemAtURL:v11 error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0)
    {
      v15 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CalMigrationBackup backupCalendarDirectory:v11 intoArchiveNamed:? error:?];
      }

      if (error)
      {
        v16 = v14;
        *error = v14;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (void)backupCalendarDirectory:(void *)a1 intoArchiveNamed:error:.cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_2428EA000, v2, v3, "Failed to delete existing backup file %@. error = %@", v4, v5, v6, v7);
}

+ (void)shouldBackupCalendarDirectory:(uint8_t *)buf withPrivacySafePathProvider:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2428EA000, log, OS_LOG_TYPE_ERROR, "Failed to get file size of URL %{public}@: %@", buf, 0x16u);
}

@end