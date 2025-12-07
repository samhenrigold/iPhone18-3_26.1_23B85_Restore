@interface NSSQLBatchOperationRequestContext
- (uint64_t)createDropTemporaryTablesForBatchOperationTriggers;
- (uint64_t)createObjectIDCaptureStatementsForDrop:(uint64_t)drop;
- (uint64_t)createTemporaryTablesForBatchOperationTriggers;
- (void)createTriggerForUpdateOnEntity:(void *)entity onAttributes:(char)attributes forDrop:;
- (void)dealloc;
@end

@implementation NSSQLBatchOperationRequestContext

- (void)dealloc
{
  self->_tempTableName = 0;
  v3.receiver = self;
  v3.super_class = NSSQLBatchOperationRequestContext;
  [(NSSQLStoreRequestContext *)&v3 dealloc];
}

- (uint64_t)createObjectIDCaptureStatementsForDrop:(uint64_t)drop
{
  v26 = *MEMORY[0x1E69E9840];
  if (!drop)
  {
    return 0;
  }

  v2 = a2;
  persistentStoreRequest = [drop persistentStoreRequest];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((v2 & 1) == 0)
      {
        objc_setProperty_nonatomic(drop, v10, @"TEMP_CDBATCHUPDATEOBJECTIDS", 88);
      }

      v11 = _sqlCoreLookupSQLEntityForEntityDescription(*(drop + 8), [persistentStoreRequest entity]);
      model = [v11 model];
      if (!model || !*(model + 60) || [*(drop + 32) _allowAncillaryEntities])
      {
        v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
        if (v2)
        {
          createDropTemporaryTablesForBatchOperationTriggers = [(NSSQLBatchOperationRequestContext *)drop createDropTemporaryTablesForBatchOperationTriggers];
        }

        else
        {
          createDropTemporaryTablesForBatchOperationTriggers = [(NSSQLBatchOperationRequestContext *)drop createTemporaryTablesForBatchOperationTriggers];
        }

        [v13 addObjectsFromArray:createDropTemporaryTablesForBatchOperationTriggers];
        [v13 addObjectsFromArray:{-[NSSQLBatchOperationRequestContext createTriggerForUpdateOnEntity:onAttributes:forDrop:](drop, v11, objc_msgSend(objc_msgSend(persistentStoreRequest, "propertiesToUpdate"), "allKeys"), v2)}];
        return v13;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = persistentStoreRequest;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected batch operation: %@\n", buf, 0xCu);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = persistentStoreRequest;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Unexpected batch operation: %@", buf, 0xCu);
      }
    }

    return MEMORY[0x1E695E0F0];
  }

  if ((v2 & 1) == 0)
  {
    objc_setProperty_nonatomic(drop, v5, @"TEMP_CDBATCHINSERTOBJECTIDS", 88);
  }

  v6 = _sqlCoreLookupSQLEntityForEntityDescription(*(drop + 8), [persistentStoreRequest entity]);
  model2 = [v6 model];
  if (model2 && *(model2 + 60) && ![*(drop + 32) _allowAncillaryEntities])
  {
    return MEMORY[0x1E695E0F0];
  }

  if (!v6)
  {
    return 0;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if (v2)
  {
    createDropTemporaryTablesForBatchOperationTriggers2 = [(NSSQLBatchOperationRequestContext *)drop createDropTemporaryTablesForBatchOperationTriggers];
  }

  else
  {
    createDropTemporaryTablesForBatchOperationTriggers2 = [(NSSQLBatchOperationRequestContext *)drop createTemporaryTablesForBatchOperationTriggers];
  }

  [v8 addObjectsFromArray:createDropTemporaryTablesForBatchOperationTriggers2];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ZQ_%@_%@_%@", @"INSERT", *(drop + 88), objc_msgSend(v6, "name")];
  if (v2)
  {
    v18 = [NSSQLiteStatement alloc];
    v19 = [(NSSQLiteStatement *)v18 initWithEntity:v6 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17)];
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT INTO %@ (ENTITYID, PRIMEKEY, TYPE) SELECT %@, %@, %ld;", *(drop + 88), @"NEW.Z_ENT", @"NEW.Z_PK", 0];
    v21 = [NSSQLiteStatement alloc];
    v19 = -[NSSQLiteStatement initWithEntity:sqlString:](v21, "initWithEntity:sqlString:", v6, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"INSERT", [v6 tableName], v20));
  }

  *buf = v19;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];

  [v8 addObjectsFromArray:v22];
  [v8 addObjectsFromArray:{-[NSSQLBatchOperationRequestContext createTriggerForUpdateOnEntity:onAttributes:forDrop:](drop, v6, objc_msgSend(objc_msgSend(objc_msgSend(v6, "entityDescription"), "attributesByName"), "allValues"), v2)}];
  v23 = MEMORY[0x1E695DEC8];

  return [v23 arrayWithArray:v8];
}

- (uint64_t)createTemporaryTablesForBatchOperationTriggers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [NSSQLiteStatement alloc];
  v3 = [(NSSQLiteStatement *)v2 initWithEntity:0 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 88))];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (uint64_t)createDropTemporaryTablesForBatchOperationTriggers
{
  selfCopy = self;
  v3[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self[1];
  }

  v3[0] = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([self adapter], selfCopy[11]);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

- (void)createTriggerForUpdateOnEntity:(void *)entity onAttributes:(char)attributes forDrop:
{
  v54 = *MEMORY[0x1E69E9840];
  v41 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(entity, "count") + 1}];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ZQ_UPDATE_%@_%@", *(self + 88), objc_msgSend(a2, "name")];
  attributesCopy = attributes;
  if (attributes)
  {
    v9 = [NSSQLiteStatement alloc];
    v10 = [(NSSQLiteStatement *)v9 initWithEntity:a2 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8)];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT INTO %@ (ENTITYID, PRIMEKEY, TYPE) SELECT OLD.Z_ENT, OLD.Z_PK, %ld;", *(self + 88), 1];
    v12 = [NSSQLiteStatement alloc];
    v10 = -[NSSQLiteStatement initWithEntity:sqlString:](v12, "initWithEntity:sqlString:", a2, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, [a2 tableName], v11));
  }

  [v41 addObject:v10];

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(entity, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = [entity countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v49;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(entity);
        }

        v18 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 addObjectsFromArray:{objc_msgSend(v18, "_flattenElements:", objc_msgSend(v18, "elements"))}];
        }

        else
        {
          [v13 addObject:v18];
        }
      }

      v15 = [entity countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v15);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = [v13 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    v38 = v13;
    selfCopy = self;
    v37 = *v45;
    do
    {
      v22 = 0;
      v42 = v20;
      do
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v13);
        }

        v23 = *(*(&v44 + 1) + 8 * v22);
        if (([v23 isTransient] & 1) == 0)
        {
          _qualifiedName = [v23 _qualifiedName];
          if (a2)
          {
            v25 = [a2[5] objectForKey:_qualifiedName];
          }

          else
          {
            v25 = 0;
          }

          columnName = [v25 columnName];
          if (columnName)
          {
            v27 = columnName;
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ZQ_UPDATE_%@_%@_%@", *(self + 88), objc_msgSend(a2, "name"), objc_msgSend(v23, "name")];
            if (attributesCopy)
            {
              v29 = [NSSQLiteStatement alloc];
              v30 = [(NSSQLiteStatement *)v29 initWithEntity:a2 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28)];
            }

            else
            {
              v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT INTO %@ (ENTITYID, PRIMEKEY, TYPE, ATTRIBUTENAME) SELECT OLD.Z_ENT, OLD.Z_PK, %ld, '%@';", *(self + 88), 1, objc_msgSend(v23, "name")];
              v34 = [NSSQLiteStatement alloc];
              v30 = -[NSSQLiteStatement initWithEntity:sqlString:](v34, "initWithEntity:sqlString:", a2, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, [a2 tableName], v27, v27, v33));
            }

            [v41 addObject:v30];

            v13 = v38;
            self = selfCopy;
            v20 = v42;
            v21 = v37;
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Expected an attribute for the entity\n", buf, 2u);
            }

            v32 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: Expected an attribute for the entity", buf, 2u);
            }
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v35 = [v13 countByEnumeratingWithState:&v44 objects:v52 count:16];
      v20 = v35;
    }

    while (v35);
  }

  return v41;
}

@end