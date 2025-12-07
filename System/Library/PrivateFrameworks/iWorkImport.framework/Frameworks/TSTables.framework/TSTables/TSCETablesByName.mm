@interface TSCETablesByName
+ (id)containerNameForTable:(id)table;
+ (id)tableNameForTable:(id)table;
- (BOOL)resolverNameIsUsed:(id)used;
- (TSCETablesByName)initWithCalcEngine:(id)engine;
- (id)anyTableForTableName:(id)name;
- (id)description;
- (id)resolverMatchingName:(id)name;
- (id)resolversMatchingPrefix:(id)prefix;
- (id)tableForTableName:(id)name containerName:(id)containerName;
- (void)addTable:(id)table;
- (void)dropTable:(id)table;
- (void)dropTable:(id)table withTableName:(id)name withContainerName:(id)containerName;
- (void)renameTable:(id)table fromName:(id)name;
- (void)willClose;
@end

@implementation TSCETablesByName

- (TSCETablesByName)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = TSCETablesByName;
  v5 = [(TSCETablesByName *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_calcEngine, engineCopy);
    v7 = objc_opt_new();
    tablesByTableNameByContainerName = v6->_tablesByTableNameByContainerName;
    v6->_tablesByTableNameByContainerName = v7;

    v9 = objc_opt_new();
    tableNameChangeDistributor = v6->_tableNameChangeDistributor;
    v6->_tableNameChangeDistributor = v9;
  }

  return v6;
}

- (void)willClose
{
  objc_msgSend_removeAllObjects(self->_tablesByTableNameByContainerName, a2, v2, v3);
  tableNameChangeDistributor = self->_tableNameChangeDistributor;

  objc_msgSend_disconnect(tableNameChangeDistributor, v5, v6, v7);
}

+ (id)containerNameForTable:(id)table
{
  tableCopy = table;
  if (!tableCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCETablesByName containerNameForTable:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETablesByName.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 78, 0, "invalid nil value for '%{public}s'", "table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_sheetName(tableCopy, v3, v4, v5);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_2834BADA0;
  }

  v19 = v18;

  return v18;
}

+ (id)tableNameForTable:(id)table
{
  tableCopy = table;
  if (!tableCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCETablesByName tableNameForTable:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETablesByName.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 86, 0, "invalid nil value for '%{public}s'", "table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_tableName(tableCopy, v3, v4, v5);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_2834BADA0;
  }

  v19 = v18;

  return v18;
}

- (void)addTable:(id)table
{
  tableCopy = table;
  if (tableCopy)
  {
    v27 = tableCopy;
    v6 = objc_msgSend_containerNameForTable_(TSCETablesByName, tableCopy, tableCopy, v5);
    v9 = objc_msgSend_tableNameForTable_(TSCETablesByName, v7, v27, v8);
    v15 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v10, v6, v11);
    if (!v15)
    {
      v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13, v14);
      objc_msgSend_setObject_forKey_(self->_tablesByTableNameByContainerName, v16, v15, v6);
    }

    v20 = objc_msgSend_objectForKey_(v15, v12, v9, v14);
    if (!v20)
    {
      v20 = objc_msgSend_set(MEMORY[0x277CBEB58], v17, v18, v19);
      objc_msgSend_setObject_forKey_(v15, v21, v20, v9);
    }

    objc_msgSend_addObject_(v20, v17, v27, v19);
    v25 = objc_msgSend_resolverUID(v27, v22, v23, v24);
    objc_msgSend_didAddTableName_forTableUID_(self->_tableNameChangeDistributor, v26, v9, v25, v26);

    tableCopy = v27;
  }
}

- (void)dropTable:(id)table withTableName:(id)name withContainerName:(id)containerName
{
  tableCopy = table;
  nameCopy = name;
  containerNameCopy = containerName;
  if (tableCopy)
  {
    v12 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v9, containerNameCopy, v10);
    v15 = v12;
    if (v12)
    {
      v19 = objc_msgSend_objectForKey_(v12, v13, nameCopy, v14);
      if (v19)
      {
        v20 = objc_msgSend_resolverUID(tableCopy, v16, v17, v18);
        objc_msgSend_didRemoveTableName_forTableUID_(self->_tableNameChangeDistributor, v21, nameCopy, v20, v21);
        objc_msgSend_removeObject_(v19, v22, tableCopy, v23);
        if (!objc_msgSend_count(v19, v24, v25, v26))
        {
          objc_msgSend_removeObjectForKey_(v15, v27, nameCopy, v28);
        }
      }
    }
  }
}

- (void)dropTable:(id)table
{
  tableCopy = table;
  if (tableCopy)
  {
    v11 = tableCopy;
    v6 = objc_msgSend_containerNameForTable_(TSCETablesByName, tableCopy, tableCopy, v5);
    v9 = objc_msgSend_tableNameForTable_(TSCETablesByName, v7, v11, v8);
    objc_msgSend_dropTable_withTableName_withContainerName_(self, v10, v11, v9, v6);

    tableCopy = v11;
  }
}

- (void)renameTable:(id)table fromName:(id)name
{
  tableCopy = table;
  nameCopy = name;
  if (tableCopy)
  {
    v9 = objc_msgSend_containerNameForTable_(TSCETablesByName, v6, tableCopy, v7);
    v12 = objc_msgSend_tableNameForTable_(TSCETablesByName, v10, tableCopy, v11);
    objc_msgSend_dropTable_withTableName_withContainerName_(self, v13, tableCopy, nameCopy, v9);
    objc_msgSend_addTable_(self, v14, tableCopy, v15);
    v19 = objc_msgSend_resolverUID(tableCopy, v16, v17, v18);
    objc_msgSend_didChangeTableName_fromTableName_forTableUID_(self->_tableNameChangeDistributor, v20, v12, nameCopy, v19, v20);
  }
}

- (id)tableForTableName:(id)name containerName:(id)containerName
{
  nameCopy = name;
  containerNameCopy = containerName;
  if (containerNameCopy)
  {
    v10 = containerNameCopy;
  }

  else
  {
    v10 = &stru_2834BADA0;
  }

  if (nameCopy)
  {
    v11 = nameCopy;
  }

  else
  {
    v11 = &stru_2834BADA0;
  }

  v12 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v8, v10, v9);
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_objectForKey_(v12, v13, v11, v14);
    if (objc_msgSend_count(v16, v17, v18, v19))
    {
      v23 = objc_msgSend_anyObject(v16, v20, v21, v22);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)description
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  selfCopy = self;
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"%@<%p>:\n", v6, v4, self);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_tablesByTableNameByContainerName;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v43, v49, 16);
  if (v28)
  {
    v30 = *v44;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v12 = objc_msgSend_objectForKey_(selfCopy->_tablesByTableNameByContainerName, v9, v11, v10);
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v34 = v12;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v13, &v39, v48, 16);
        if (v16)
        {
          v33 = *v40;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v40 != v33)
              {
                objc_enumerationMutation(v34);
              }

              v18 = *(*(&v39 + 1) + 8 * j);
              v19 = objc_msgSend_objectForKey_(v34, v14, v18, v15);
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v20 = v19;
              v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v35, v47, 16);
              if (v24)
              {
                v25 = *v36;
                do
                {
                  for (k = 0; k != v24; ++k)
                  {
                    if (*v36 != v25)
                    {
                      objc_enumerationMutation(v20);
                    }

                    objc_msgSend_appendFormat_(v7, v22, @"  ContainerName: '%@' TableName: '%@' Table: %@\n", v23, v11, v18, *(*(&v35 + 1) + 8 * k));
                  }

                  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v35, v47, 16);
                }

                while (v24);
              }
            }

            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v14, &v39, v48, 16);
          }

          while (v16);
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v43, v49, 16);
    }

    while (v28);
  }

  return v7;
}

- (id)anyTableForTableName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_tablesByTableNameByContainerName;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v24, v28, 16);
  if (v9)
  {
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v7, *(*(&v24 + 1) + 8 * i), v8, v24);
        v15 = objc_msgSend_objectForKey_(v12, v13, nameCopy, v14);
        if (objc_msgSend_count(v15, v16, v17, v18))
        {
          v22 = objc_msgSend_anyObject(v15, v19, v20, v21);

          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v24, v28, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_11:

  return v22;
}

- (id)resolverMatchingName:(id)name
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v8 = objc_msgSend_tableForTableName_containerName_(self, v5, nameCopy, 0);
  if (!v8)
  {
    v9 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v6, &stru_2834BADA0, v7);
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v14 = objc_msgSend_documentLocale(WeakRetained, v11, v12, v13);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v9;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v31, v35, 16);
    if (v18)
    {
      v8 = 0;
      v19 = *v32;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          if (objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v14, v17, nameCopy, v21, v31))
          {
            if (v8)
            {

              goto LABEL_17;
            }

            v23 = objc_msgSend_objectForKey_(v15, v17, v21, v22);
            if (objc_msgSend_count(v23, v24, v25, v26) == 1)
            {
              v8 = objc_msgSend_anyObject(v23, v27, v28, v29);
            }

            else
            {
              v8 = 0;
            }
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v31, v35, 16);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_17:
      v8 = 0;
    }
  }

  return v8;
}

- (id)resolversMatchingPrefix:(id)prefix
{
  v43 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v5 = objc_opt_new();
  v37 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v6, &stru_2834BADA0, v7);
  if (objc_msgSend_length(prefixCopy, v8, v9, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v18 = objc_msgSend_documentLocale(WeakRetained, v15, v16, v17);
    v22 = objc_msgSend_locale(v18, v19, v20, v21);

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = v37;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v38, v42, 16);
    if (v26)
    {
      v27 = *v39;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v38 + 1) + 8 * i);
          if (objc_msgSend_tsce_hasCaseInsensitivePrefix_withLocale_(v29, v25, prefixCopy, v22))
          {
            v32 = objc_msgSend_tableForTableName_containerName_(self, v25, v29, &stru_2834BADA0);
            if (v32)
            {
              objc_msgSend_addObject_(v5, v30, v32, v31);
            }
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v38, v42, 16);
      }

      while (v26);
    }
  }

  else
  {
    v33 = objc_msgSend_allValues(v37, v11, v12, v13);
    objc_msgSend_addObjectsFromArray_(v5, v34, v33, v35);
  }

  return v5;
}

- (BOOL)resolverNameIsUsed:(id)used
{
  v28 = *MEMORY[0x277D85DE8];
  usedCopy = used;
  v7 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v5, &stru_2834BADA0, v6);
  v10 = objc_msgSend_objectForKey_(v7, v8, usedCopy, v9);
  v14 = objc_msgSend_count(v10, v11, v12, v13);

  if (v14)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v7;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v23, v27, 16);
    if (v15)
    {
      v20 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v16);
          }

          if (!objc_msgSend_caseInsensitiveCompare_(*(*(&v23 + 1) + 8 * i), v18, usedCopy, v19, v23))
          {
            LOBYTE(v15) = 1;
            goto LABEL_13;
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v23, v27, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v15;
}

@end