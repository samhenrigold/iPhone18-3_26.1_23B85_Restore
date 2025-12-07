@interface CKDShareIDSQLCache
+ (id)_groupNameForContainer:(id)container;
+ (id)shareIDSQLCacheForContainer:(id)container error:(id *)error;
+ (id)shareIDSQLCacheForContainerID:(id)d dbPath:(id)path registryDatabase:(id)database groupName:(id)name error:(id *)error;
+ (id)shareIDSQLCacheForTestingWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeShareWithShareEntry:(id)entry error:(id *)error;
- (id)shareIDForRecordID:(id)d;
- (id)shareIDsForZoneID:(id)d;
- (id)zoneShareIDForZoneID:(id)d;
- (void)addHierarchicalShareID:(id)d forRootRecordID:(id)iD;
- (void)addOrUpdateRecordID:(id)d withParentID:(id)iD;
- (void)addZoneShareID:(id)d;
- (void)createTables;
- (void)removeRecordID:(id)d;
- (void)removeShareID:(id)d;
- (void)removeZoneShareForZoneID:(id)d;
- (void)removeZoneWithID:(id)d;
@end

@implementation CKDShareIDSQLCache

- (void)createTables
{
  v30.receiver = self;
  v30.super_class = CKDShareIDSQLCache;
  [(CKSQLiteContainerAttributedTableGroup *)&v30 createTables];
  v3 = objc_alloc_init(CKDZoneIDCacheTable);
  zoneIDTable = self->_zoneIDTable;
  self->_zoneIDTable = v3;

  v5 = [CKDShareIDCacheTable alloc];
  v8 = objc_msgSend_zoneIDTable(self, v6, v7);
  v10 = objc_msgSend_initWithZoneIDTable_(v5, v9, v8);
  shareIDTable = self->_shareIDTable;
  self->_shareIDTable = v10;

  v12 = [CKDZoneShareCacheTable alloc];
  v15 = objc_msgSend_shareIDTable(self, v13, v14);
  v17 = objc_msgSend_initWithShareIDTable_(v12, v16, v15);
  zoneShareTable = self->_zoneShareTable;
  self->_zoneShareTable = v17;

  v19 = [CKDShareIDCacheRecordTable alloc];
  v22 = objc_msgSend_shareIDTable(self, v20, v21);
  v24 = objc_msgSend_initWithShareIDTable_(v19, v23, v22);
  recordTable = self->_recordTable;
  self->_recordTable = v24;

  objc_msgSend_addTable_(self, v26, self->_zoneIDTable);
  objc_msgSend_addTable_(self, v27, self->_shareIDTable);
  objc_msgSend_addTable_(self, v28, self->_zoneShareTable);
  objc_msgSend_addTable_(self, v29, self->_recordTable);
}

+ (id)shareIDSQLCacheForContainer:(id)container error:(id *)error
{
  containerCopy = container;
  v9 = objc_msgSend_containerID(containerCopy, v7, v8);
  v12 = objc_msgSend_directoryContext(containerCopy, v10, v11);
  v15 = objc_msgSend_daemonDatabaseDirectory(v12, v13, v14);
  v18 = objc_msgSend_path(v15, v16, v17);

  v21 = objc_msgSend_deviceContext(containerCopy, v19, v20);
  v24 = objc_msgSend_deviceScopedDatabase(v21, v22, v23);

  v25 = objc_opt_class();
  v27 = objc_msgSend__groupNameForContainer_(v25, v26, containerCopy);

  v29 = objc_msgSend_shareIDSQLCacheForContainerID_dbPath_registryDatabase_groupName_error_(self, v28, v9, v18, v24, v27, error);

  return v29;
}

+ (id)shareIDSQLCacheForTestingWithIdentifier:(id)identifier error:(id *)error
{
  v6 = MEMORY[0x277CBC220];
  identifierCopy = identifier;
  v8 = [v6 alloc];
  v10 = objc_msgSend_initWithContainerIdentifier_environment_(v8, v9, identifierCopy, 2);
  v12 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(MEMORY[0x277CBC660], v11, 3, identifierCopy, @"DeviceCapabilityUsageSQLCache");

  v14 = objc_msgSend_shareIDSQLCacheForContainerID_dbPath_registryDatabase_groupName_error_(self, v13, v10, 0, 0, v12, error);

  return v14;
}

+ (id)shareIDSQLCacheForContainerID:(id)d dbPath:(id)path registryDatabase:(id)database groupName:(id)name error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  databaseCopy = database;
  nameCopy = name;
  if (objc_msgSend_length(pathCopy, v16, v17))
  {
    v35 = 0;
    v19 = &v35;
    v20 = objc_msgSend_databaseInDirectory_registryDatabase_options_error_(MEMORY[0x277CBC658], v18, pathCopy, databaseCopy, 0, &v35);
  }

  else
  {
    v34 = 0;
    v19 = &v34;
    v20 = objc_msgSend_newInMemoryDatabase_(MEMORY[0x277CBC658], v18, &v34);
  }

  v21 = v20;
  v22 = *v19;
  v24 = v22;
  if (!v21 || v22)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = dCopy;
      v38 = 2112;
      v39 = v24;
      _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Failed to create share ID Cache for containerID: %@, error: %@", buf, 0x16u);
      if (error)
      {
        goto LABEL_13;
      }
    }

    else if (error)
    {
LABEL_13:
      v29 = v24;
      v25 = 0;
LABEL_19:
      *error = v24;
      goto LABEL_22;
    }

    v25 = 0;
    goto LABEL_22;
  }

  v33 = 0;
  v25 = objc_msgSend_tableGroupInDatabase_withName_error_(self, v23, v21, nameCopy, &v33);
  v26 = v33;
  v24 = v26;
  if (v25 && !v26)
  {
    objc_msgSend_setContainerID_(v25, v27, dCopy);
    goto LABEL_22;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v30 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  *buf = 138412546;
  v37 = dCopy;
  v38 = 2112;
  v39 = v24;
  _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Failed to create share ID Cache for containerID: %@, error: %@", buf, 0x16u);
  if (error)
  {
LABEL_18:
    v31 = v24;
    goto LABEL_19;
  }

LABEL_22:

  return v25;
}

- (BOOL)removeShareWithShareEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  v9 = objc_msgSend_zoneShareTable(self, v7, v8);
  v12 = objc_msgSend_zoneRowID(entryCopy, v10, v11);
  v33 = 0;
  objc_msgSend_removeRowID_error_(v9, v13, v12, &v33);
  v14 = v33;

  if (!v14)
  {
    v17 = objc_msgSend_recordTable(self, v15, v16);
    v20 = objc_msgSend_rowID(entryCopy, v18, v19);
    v32 = 0;
    objc_msgSend_removeRecordsWithShareRowID_error_(v17, v21, v20, &v32);
    v14 = v32;

    if (!v14)
    {
      v24 = objc_msgSend_shareIDTable(self, v22, v23);
      v27 = objc_msgSend_rowID(entryCopy, v25, v26);
      v31 = 0;
      objc_msgSend_removeRowID_error_(v24, v28, v27, &v31);
      v14 = v31;
    }
  }

  if (error)
  {
    v29 = v14;
    *error = v14;
  }

  return v14 == 0;
}

+ (id)_groupNameForContainer:(id)container
{
  v3 = MEMORY[0x277CCACA8];
  v4 = sub_225081F2C(container);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@", v4);

  v8 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(MEMORY[0x277CBC660], v7, 3, v6, @"ShareIDSQLTableGroup");

  return v8;
}

- (id)shareIDForRecordID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_225073F10;
  v18 = sub_225073514;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_225151F04;
  v11[3] = &unk_278545CE0;
  v11[4] = self;
  v5 = dCopy;
  v12 = v5;
  v13 = &v14;
  v7 = objc_msgSend_performTransaction_(self, v6, v11);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) shareIDForRecordID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)zoneShareIDForZoneID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_225073F10;
  v18 = sub_225073514;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_225152204;
  v11[3] = &unk_278545CE0;
  v11[4] = self;
  v5 = dCopy;
  v12 = v5;
  v13 = &v14;
  v7 = objc_msgSend_performTransaction_(self, v6, v11);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) zoneShareIDForZoneID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)shareIDsForZoneID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_225073F10;
  v18 = sub_225073514;
  v19 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251524A8;
  v11[3] = &unk_278545CE0;
  v11[4] = self;
  v5 = dCopy;
  v12 = v5;
  v13 = &v14;
  v7 = objc_msgSend_performTransaction_(self, v6, v11);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) shareIDsForZoneID failed with SQLite database error: %@", buf, 0x16u);
    }
  }

  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)addOrUpdateRecordID:(id)d withParentID:(id)iD
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225152740;
  v13[3] = &unk_278546800;
  v13[4] = self;
  v8 = dCopy;
  v14 = v8;
  v9 = iDCopy;
  v15 = v9;
  v11 = objc_msgSend_performTransaction_(self, v10, v13);
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = v11;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "(%@) addOrUpdateRecordID failed with SQLite database error: %@", buf, 0x16u);
    }
  }
}

- (void)removeRecordID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22515297C;
  v9[3] = &unk_278546180;
  v9[4] = self;
  v5 = dCopy;
  v10 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v9);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) removeRecordID failed with SQLite database error: %@", buf, 0x16u);
    }
  }
}

- (void)addZoneShareID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225152BC4;
  v9[3] = &unk_278546180;
  v9[4] = self;
  v5 = dCopy;
  v10 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v9);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) addZoneShareID failed with SQLite database error: %@", buf, 0x16u);
    }
  }
}

- (void)addHierarchicalShareID:(id)d forRootRecordID:(id)iD
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225152EF0;
  v13[3] = &unk_278546800;
  v8 = dCopy;
  v14 = v8;
  selfCopy = self;
  v9 = iDCopy;
  v16 = v9;
  v11 = objc_msgSend_performTransaction_(self, v10, v13);
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "(%@) addHierarchicalShareID failed with SQLite database error: %@", buf, 0x16u);
    }
  }
}

- (void)removeShareID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225153284;
  v9[3] = &unk_278546180;
  v9[4] = self;
  v5 = dCopy;
  v10 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v9);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) removeShareID failed with SQLite database error: %@", buf, 0x16u);
    }
  }
}

- (void)removeZoneShareForZoneID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251534A0;
  v9[3] = &unk_278546180;
  v9[4] = self;
  v5 = dCopy;
  v10 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v9);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) removeZoneShareForZoneID failed with SQLite database error: %@", buf, 0x16u);
    }
  }
}

- (void)removeZoneWithID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225153734;
  v9[3] = &unk_278546180;
  v9[4] = self;
  v5 = dCopy;
  v10 = v5;
  v7 = objc_msgSend_performTransaction_(self, v6, v9);
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "(%@) removeZoneWithID failed with SQLite database error: %@", buf, 0x16u);
    }
  }
}

@end