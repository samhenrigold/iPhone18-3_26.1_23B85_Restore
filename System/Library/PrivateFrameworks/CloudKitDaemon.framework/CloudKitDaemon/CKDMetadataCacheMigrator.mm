@interface CKDMetadataCacheMigrator
- (BOOL)migrateDatabase:(id)database fromVersion:(int)version;
@end

@implementation CKDMetadataCacheMigrator

- (BOOL)migrateDatabase:(id)database fromVersion:(int)version
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = 1525120803;
  databaseCopy = database;
  v8 = databaseCopy;
  if (version == -421944720)
  {
    v9 = objc_msgSend_performDatabaseOperation_(databaseCopy, v7, &unk_28385C980);
    v10 = *MEMORY[0x277CBC878];
    if (v9)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v10);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        *buf = 67109378;
        v21 = -421944720;
        v22 = 2112;
        v23 = v9;
        _os_log_fault_impl(&dword_22506F000, v11, OS_LOG_TYPE_FAULT, "Failed to migrate metadata cache from version %d with error: %@", buf, 0x12u);
      }

      version = -421944720;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v10);
      }

      v12 = *MEMORY[0x277CBC830];
      version = 1525120803;
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v21 = -421944720;
        _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEFAULT, "Successfully migrated metadata cache from version %d", buf, 8u);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (version == 1525120803)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2251540B4;
    v18[3] = &unk_2785468F8;
    v19 = v13;
    v15 = objc_msgSend_performDatabaseOperation_(v8, v14, v18);
    if (v15)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v21 = 1525120803;
        v22 = 2112;
        v23 = v15;
        _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Failed to migrate metadata cache from version %d with error: %@", buf, 0x12u);
      }
    }

    else
    {
      v5 = -533383990;
    }

    version = v5;
  }

  return version == -533383990;
}

@end