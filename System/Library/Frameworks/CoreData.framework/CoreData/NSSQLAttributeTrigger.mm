@interface NSSQLAttributeTrigger
- (BOOL)isEqualToExtension:(id)extension;
- (BOOL)validate:(id *)validate;
- (BOOL)validatePredicate:(uint64_t *)predicate error:;
- (NSArray)bulkUpdateSQLStrings;
- (NSArray)dropSQLStrings;
- (NSSQLAttributeTrigger)initWithObjectFromUserInfo:(id)info onAttributeNamed:(id)named onEntity:(id)entity;
- (void)dealloc;
@end

@implementation NSSQLAttributeTrigger

- (void)dealloc
{
  self->_attribute = 0;

  self->_entity = 0;
  self->_relationship = 0;

  self->_destinationEntity = 0;
  self->_destinationAttributes = 0;

  self->_predicate = 0;
  self->_predicateString = 0;

  self->_mToManyInnerFetchWhereClause = 0;
  self->_mToManyIncrementWhenClause = 0;

  self->_mToManyDecrementWhenClause = 0;
  self->_mOfClause = 0;

  self->_mOldMatchingClause = 0;
  self->_mNewMatchingClause = 0;

  self->_mColumnChangedClause = 0;
  self->_mBulkChangeStrings = 0;

  self->_mSqlDropStrings = 0;
  self->_insertSQLStrings = 0;
  v3.receiver = self;
  v3.super_class = NSSQLAttributeTrigger;
  [(NSSQLAttributeTrigger *)&v3 dealloc];
}

- (NSSQLAttributeTrigger)initWithObjectFromUserInfo:(id)info onAttributeNamed:(id)named onEntity:(id)entity
{
  v11.receiver = self;
  v11.super_class = NSSQLAttributeTrigger;
  v8 = [(NSSQLAttributeTrigger *)&v11 init];
  if (v8)
  {
    if (entity)
    {
      v9 = [*(entity + 5) objectForKey:named];
    }

    else
    {
      v9 = 0;
    }

    v8->_attribute = v9;
    v8->_entity = entity;
    v8->_predicateString = info;
    v8->_mToManyDecrementWhenClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mToManyIncrementWhenClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mToManyInnerFetchWhereClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mOfClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mOldMatchingClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mNewMatchingClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mColumnChangedClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_destinationAttributes = NSArray_EmptyArray;
    v8->_mBulkChangeStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_mSqlDropStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_insertSQLStrings = 0;
  }

  return v8;
}

- (BOOL)isEqualToExtension:(id)extension
{
  v11.receiver = self;
  v11.super_class = NSSQLAttributeTrigger;
  if (([(NSSQLAttributeTrigger *)&v11 isEqual:?]& 1) != 0)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (extension)
    {
      if ([(NSString *)self->_predicateString isEqualToString:objc_getProperty(extension, v6, 16, 1)]&& [(NSSQLProperty *)self->_attribute isEqual:objc_getProperty(extension, v7, 32, 1)])
      {
        entity = self->_entity;
        Property = objc_getProperty(extension, v8, 24, 1);
        return [(NSStoreMapping *)entity isEqual:Property];
      }
    }

    else if ([(NSString *)self->_predicateString isEqualToString:0]&& [(NSSQLProperty *)self->_attribute isEqual:0])
    {
      Property = 0;
      entity = self->_entity;
      return [(NSStoreMapping *)entity isEqual:Property];
    }
  }

  return 0;
}

- (NSArray)bulkUpdateSQLStrings
{
  v2 = [(NSMutableArray *)self->_mBulkChangeStrings copy];

  return v2;
}

- (NSArray)dropSQLStrings
{
  v2 = [(NSMutableArray *)self->_mSqlDropStrings copy];

  return v2;
}

- (BOOL)validate:(id *)validate
{
  v105 = *MEMORY[0x1E69E9840];
  v100 = 0;
  if (self)
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:self->_predicateString];
    self->_predicate = v5;
    if ([(NSSQLAttributeTrigger *)self validatePredicate:v5 error:&v100])
    {
      columnName = [(NSSQLColumn *)self->_attribute columnName];
      tableName = [(NSSQLEntity *)self->_entity tableName];
      tableName2 = [(NSSQLEntity *)self->_destinationEntity tableName];
      v97 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], tableName, columnName, tableName2);
      entity = self->_entity;
      if (entity)
      {
        primaryKey = entity->_primaryKey;
      }

      else
      {
        primaryKey = 0;
      }

      columnName2 = [(NSSQLColumn *)primaryKey columnName];
      v11 = self->_entity;
      if (v11)
      {
        entityKey = v11->_entityKey;
      }

      else
      {
        entityKey = 0;
      }

      columnName3 = [(NSSQLColumn *)entityKey columnName];
      v98 = objc_opt_new();
      relationship = self->_relationship;
      if (relationship && LOBYTE(relationship->length) == 9)
      {
        correlationTableName = [(NSSQLRelationship *)self->_relationship correlationTableName];
        columnName4 = [(__CFString *)relationship columnName];
        inverseColumnName = [(NSSQLManyToMany *)relationship inverseColumnName];
        v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INSERT_INCREMENT", v97, correlationTableName];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v17];
        [v16 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER INSERT ON %@ FOR EACH ROW", v17, correlationTableName];
        [v16 appendString:@" BEGIN"];
        [v16 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
        [v16 appendFormat:@" WHERE NEW.%@ IN (SELECT %@ FROM %@ WHERE %@)", inverseColumnName, columnName2, tableName2, self->_mToManyInnerFetchWhereClause];
        [v16 appendFormat:@" AND NEW.%@ = %@;", columnName4, columnName2];
        [v16 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName4];
        [v16 appendFormat:@" END"];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v18];

        [v98 addObject:v16];
        v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_INCREMENT", v97];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v20];
        [v19 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v20];
        [v19 appendFormat:@" AFTER UPDATE OF %@ ON %@ FOR EACH ROW", self->_mOfClause, tableName2];
        [v19 appendFormat:@" WHEN %@", self->_mToManyIncrementWhenClause];
        [v19 appendString:@" BEGIN"];
        [v19 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
        [v19 appendFormat:@" WHERE %@ IN (SELECT %@ FROM %@ WHERE %@ = NEW.%@ AND (%@));", columnName2, columnName4, correlationTableName, inverseColumnName, columnName2, self->_mNewMatchingClause];
        [v19 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
        [v19 appendString:@" END"];
        [v98 addObject:v19];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v21];

        v22 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_DECREMENT", v97];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v23];
        [v22 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v23];
        [v22 appendFormat:@" AFTER UPDATE OF %@ ON %@ FOR EACH ROW", self->_mOfClause, tableName2];
        [v22 appendFormat:@" WHEN %@", self->_mToManyDecrementWhenClause];
        [v22 appendString:@" BEGIN"];
        [v22 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
        [v22 appendFormat:@" WHERE %@ IN (SELECT %@ FROM %@ WHERE %@ = NEW.%@ AND (%@));", columnName2, columnName4, correlationTableName, inverseColumnName, columnName2, self->_mOldMatchingClause];
        [v22 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
        [v22 appendString:@" END"];
        [v98 addObject:v22];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v24];

        v25 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_DELETE_DECREMENT", v97, correlationTableName];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v26];
        [v25 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER DELETE ON %@ FOR EACH ROW", v26, correlationTableName];
        [v25 appendFormat:@" BEGIN"];
        [v25 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
        [v25 appendFormat:@" WHERE OLD.%@ IN (SELECT %@ FROM %@ WHERE %@)", inverseColumnName, columnName2, tableName2, self->_mToManyInnerFetchWhereClause];
        [v25 appendFormat:@" AND OLD.%@ = %@;", columnName4, columnName2];
        [v25 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName4];
        [v25 appendFormat:@" END"];
        [v98 addObject:v25];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v27];

        v28 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_DELETE_DECREMENT", v97];
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v29];
        [v28 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER DELETE ON %@ FOR EACH ROW WHEN %@", v29, tableName2, self->_mOldMatchingClause];
        [v28 appendFormat:@" BEGIN"];
        [v28 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
        [v28 appendFormat:@" WHERE %@ IN (SELECT %@ FROM %@ WHERE %@ = OLD.%@ AND (%@));", columnName2, columnName4, correlationTableName, inverseColumnName, columnName2, self->_mOldMatchingClause];
        [v28 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
        [v28 appendFormat:@" END"];
        [v98 addObject:v28];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v30];

        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"COUNT_%@", v97];
        v32 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CREATE TEMP TABLE %@ AS", v31];
        [v32 appendFormat:@" SELECT %@, COUNT(DISTINCT(%@.%@)) AS COUNT", columnName4, tableName2, columnName2];
        [v32 appendFormat:@" FROM %@, %@", tableName2, correlationTableName];
        [v32 appendFormat:@" WHERE %@ AND %@.%@ == %@.%@", self->_mToManyInnerFetchWhereClause, correlationTableName, inverseColumnName, tableName2, columnName2];
        [v32 appendFormat:@" GROUP BY %@;", columnName4];
        p_mBulkChangeStrings = &self->_mBulkChangeStrings;
        [(NSMutableArray *)self->_mBulkChangeStrings addObject:v32];

        v34 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" CREATE INDEX %@_INDEX ON %@(%@, COUNT);", v31, v31, columnName4];
        [(NSMutableArray *)self->_mBulkChangeStrings addObject:v34];

        v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" UPDATE %@ SET %@ = IFNULL((SELECT COUNT FROM %@ WHERE %@ = %@), 0);", tableName, columnName, v31, columnName2, columnName4];
      }

      else
      {
        isToMany = [(NSSQLProperty *)self->_relationship isToMany];
        v37 = self->_relationship;
        if (isToMany)
        {
          if (v37)
          {
            v37 = v37->_inverse;
          }

          columnName5 = [(NSSQLProperty *)v37 columnName];
          v39 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_INSERT_INCREMENT", v97];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v40];
          [v39 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v40];
          [v39 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW WHEN %@", tableName2, self->_mNewMatchingClause];
          [v39 appendFormat:@" BEGIN"];
          [v39 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
          [v39 appendFormat:@" WHERE NEW.%@ = %@;", columnName5, columnName2];
          [v39 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v39 appendFormat:@" END"];
          [v98 addObject:v39];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v41];

          v42 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_INCREMENT", v97];
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v43];
          [v42 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v43];
          [v42 appendFormat:@" AFTER UPDATE OF %@ ON %@", self->_mOfClause, tableName2];
          [v42 appendFormat:@" FOR EACH ROW WHEN (%@) AND (%@) AND (NEW.%@ == OLD.%@)", self->_mNewMatchingClause, self->_mColumnChangedClause, columnName5, columnName5];
          [v42 appendFormat:@" BEGIN"];
          [v42 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
          [v42 appendFormat:@" WHERE NEW.%@ = %@;", columnName5, columnName2];
          [v42 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v42 appendFormat:@" END"];
          [v98 addObject:v42];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v44];

          v45 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_DECREMENT", v97];
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v46];
          [v45 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v46];
          [v45 appendFormat:@" AFTER UPDATE OF %@ ON %@", self->_mOfClause, tableName2];
          [v45 appendFormat:@" FOR EACH ROW WHEN (%@) AND (%@) AND (OLD.%@ == NEW.%@)", self->_mOldMatchingClause, self->_mColumnChangedClause, columnName5, columnName5];
          [v45 appendFormat:@" BEGIN"];
          [v45 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
          [v45 appendFormat:@" WHERE OLD.%@ = %@;", columnName5, columnName2];
          [v45 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v45 appendFormat:@" END"];
          [v98 addObject:v45];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v47];

          v48 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_DELETE_DECREMENT", v97];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v49];
          [v48 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v49];
          [v48 appendFormat:@" AFTER DELETE ON %@ FOR EACH ROW WHEN %@", tableName2, self->_mOldMatchingClause];
          [v48 appendFormat:@" BEGIN"];
          [v48 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1) WHERE OLD.%@ = %@;", tableName, columnName, columnName, columnName5, columnName2];
          [v48 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v48 appendFormat:@" END"];
          [v98 addObject:v48];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v50];

          v51 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INSERT_INCREMENT", v97, tableName];
          v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v52];
          [v51 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v52];
          [v51 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW", tableName];
          [v51 appendFormat:@" BEGIN"];
          [v51 appendFormat:@" UPDATE %@ SET %@ = (SELECT COUNT(%@) FROM %@ WHERE (%@ = NEW.%@) AND (%@)) WHERE %@ = NEW.%@;", tableName, columnName, columnName2, tableName2, columnName5, columnName2, self->_mToManyInnerFetchWhereClause, columnName2, columnName2];
          [v51 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
          [v51 appendFormat:@" END"];
          [v98 addObject:v51];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v53];

          v54 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_INCREMENT", v97, columnName5];
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v55];
          [v54 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v55];
          [v54 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN (%@) AND", columnName5, tableName2, self->_mNewMatchingClause];
          [v54 appendFormat:@" ((NEW.%@ IS NOT NULL AND OLD.%@ IS NULL) OR (NEW.%@ != OLD.%@))", columnName5, columnName5, columnName5, columnName5];
          [v54 appendFormat:@" BEGIN"];
          [v54 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1 WHERE %@ = NEW.%@;", tableName, columnName, columnName, columnName2, columnName5];
          [v54 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v54 appendFormat:@" END"];
          [v98 addObject:v54];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v56];

          v57 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_DECREMENT", v97, columnName5];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v58];
          [v57 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v58];
          [v57 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN (%@) AND", columnName5, tableName2, self->_mOldMatchingClause];
          [v57 appendFormat:@" ((OLD.%@ IS NOT NULL AND NEW.%@ IS NULL) OR (NEW.%@ != OLD.%@))", columnName5, columnName5, columnName5, columnName5];
          [v57 appendFormat:@" BEGIN"];
          [v57 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1) WHERE %@ = OLD.%@;", tableName, columnName, columnName, columnName2, columnName5];
          [v57 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v57 appendFormat:@" END"];
          [v98 addObject:v57];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v59];

          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"COUNT_%@", v97];
          v60 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CREATE TEMP TABLE %@ AS", v31];
          [v60 appendFormat:@" SELECT %@, COUNT(DISTINCT(%@.%@)) AS COUNT", columnName5, tableName2, columnName2];
          [v60 appendFormat:@" FROM %@", tableName2];
          [v60 appendFormat:@" WHERE %@", self->_mToManyInnerFetchWhereClause];
          [v60 appendFormat:@" GROUP BY %@;", columnName5];
          p_mBulkChangeStrings = &self->_mBulkChangeStrings;
          [(NSMutableArray *)self->_mBulkChangeStrings addObject:v60];

          v61 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" CREATE INDEX %@_INDEX ON %@(%@, COUNT);", v31, v31, columnName5];
          [(NSMutableArray *)self->_mBulkChangeStrings addObject:v61];

          v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" UPDATE %@ SET %@ = IFNULL((SELECT COUNT FROM %@ WHERE %@ = %@), 0);", tableName, columnName, v31, columnName2, columnName5];
        }

        else
        {
          if (!v37 || v37->super._propertyType != 7)
          {
LABEL_18:
            if ([v98 count])
            {
              v88 = [v98 copy];

              if (v88)
              {
LABEL_27:
                self->_insertSQLStrings = v88;
                LOBYTE(v91) = 1;
                return v91;
              }
            }

            else
            {
            }

            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v102 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
              v103 = 1024;
              v104 = 584;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
            }

            v90 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v102 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
              v103 = 1024;
              v104 = 584;
              _os_log_fault_impl(&dword_18565F000, v90, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
            }

            v88 = 0;
            goto LABEL_27;
          }

          columnName6 = [(NSSQLProperty *)v37 columnName];
          v63 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_INSERT_INCREMENT", v97];
          v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v64];
          [v63 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v64];
          [v63 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW WHEN %@", tableName2, self->_mNewMatchingClause];
          [v63 appendFormat:@" BEGIN"];
          [v63 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
          [v63 appendFormat:@" WHERE NEW.%@ = %@;", columnName2, columnName6];
          [v63 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName6, columnName2];
          [v63 appendFormat:@" END"];
          [v98 addObject:v63];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v65];

          v66 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_INCREMENT", v97];
          v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v67];
          [v66 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v67];
          [v66 appendFormat:@" AFTER UPDATE OF %@ ON %@", self->_mOfClause, tableName2];
          [v66 appendFormat:@" FOR EACH ROW WHEN (%@) AND (%@)", self->_mNewMatchingClause, self->_mColumnChangedClause];
          [v66 appendFormat:@" BEGIN"];
          [v66 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
          [v66 appendFormat:@" WHERE NEW.%@ = %@;", columnName2, columnName6];
          [v66 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName6, columnName2];
          [v66 appendFormat:@" END"];
          [v98 addObject:v66];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v68];

          v69 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_DECREMENT", v97];
          v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v70];
          [v69 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v70];
          [v69 appendFormat:@" AFTER UPDATE OF %@ ON %@", self->_mOfClause, tableName2];
          [v69 appendFormat:@" FOR EACH ROW WHEN (%@) AND (%@)", self->_mOldMatchingClause, self->_mColumnChangedClause];
          [v69 appendFormat:@" BEGIN"];
          [v69 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
          [v69 appendFormat:@" WHERE OLD.%@ = %@;", columnName2, columnName6];
          [v69 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName6, columnName2];
          [v69 appendFormat:@" END"];
          [v98 addObject:v69];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v71];

          v72 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_DELETE_DECREMENT", v97];
          v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v73];
          [v72 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v73];
          [v72 appendFormat:@" AFTER DELETE ON %@ FOR EACH ROW WHEN %@", tableName2, self->_mOldMatchingClause];
          [v72 appendFormat:@" BEGIN"];
          [v72 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1) WHERE OLD.%@ = %@;", tableName, columnName, columnName, columnName2, columnName6];
          [v72 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName6, columnName2];
          [v72 appendFormat:@" END"];
          [v98 addObject:v72];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v74];

          v75 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INSERT_INCREMENT", v97, tableName];
          v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v76];
          [v75 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v76];
          [v75 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW", tableName];
          [v75 appendFormat:@" BEGIN"];
          [v75 appendFormat:@" UPDATE %@ SET %@ = (SELECT COUNT(%@) FROM %@ WHERE (%@ = NEW.%@) AND (%@)) WHERE %@ = NEW.%@;", tableName, columnName, columnName2, tableName2, columnName2, columnName6, self->_mToManyInnerFetchWhereClause, columnName2, columnName2];
          [v75 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
          [v75 appendFormat:@" END"];
          [v98 addObject:v75];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v77];

          v78 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_TO_NULL", v97, columnName6];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v79];
          [v78 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v79];
          [v78 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN", columnName6, tableName];
          [v78 appendFormat:@" (NEW.%@ IS NULL AND OLD.%@ IS NOT NULL)", columnName6, columnName6];
          [v78 appendFormat:@" BEGIN"];
          [v78 appendFormat:@" UPDATE %@ SET %@ = 0 WHERE %@ = NEW.%@;", tableName, columnName, columnName2, columnName2];
          [v78 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
          [v78 appendFormat:@" END"];
          [v98 addObject:v78];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v80];

          v81 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_INCREMENT", v97, columnName6];
          v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v82];
          [v81 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v82];
          [v81 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN", columnName6, tableName];
          [v81 appendFormat:@" ((NEW.%@ IS NOT NULL AND OLD.%@ IS NULL) OR (NEW.%@ != OLD.%@))", columnName6, columnName6, columnName6, columnName6];
          [v81 appendFormat:@" BEGIN"];
          [v81 appendFormat:@" UPDATE %@ SET %@ = (SELECT COUNT(%@) FROM %@ WHERE %@ = NEW.%@ AND (%@)) WHERE %@ = NEW.%@;", tableName, columnName, columnName2, tableName2, columnName2, columnName6, self->_mToManyInnerFetchWhereClause, columnName2, columnName2];
          [v81 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
          [v81 appendFormat:@" END"];
          [v98 addObject:v81];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v83];

          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"COUNT_%@", v97];
          v84 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CREATE TEMP TABLE %@ AS", v31];
          [v84 appendFormat:@" SELECT %@, COUNT(DISTINCT(%@)) AS COUNT", columnName2, columnName2];
          [v84 appendFormat:@" FROM %@", tableName2];
          [v84 appendFormat:@" WHERE %@", self->_mToManyInnerFetchWhereClause];
          [v84 appendFormat:@" GROUP BY %@;", columnName2];
          p_mBulkChangeStrings = &self->_mBulkChangeStrings;
          [(NSMutableArray *)self->_mBulkChangeStrings addObject:v84];

          v85 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" CREATE INDEX %@_INDEX ON %@(%@, COUNT);", v31, v31, columnName2];
          [(NSMutableArray *)self->_mBulkChangeStrings addObject:v85];

          v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" UPDATE %@ SET %@ = IFNULL((SELECT COUNT FROM %@ WHERE %@ = %@), 0);", tableName, columnName, v31, columnName2, columnName6];
        }
      }

      v86 = v35;
      [(NSMutableArray *)*p_mBulkChangeStrings addObject:v35];

      v87 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" DROP TABLE %@;", v31];
      [(NSMutableArray *)*p_mBulkChangeStrings addObject:v87];

      goto LABEL_18;
    }
  }

  if (v100)
  {
    if (validate)
    {
      LOBYTE(v91) = 0;
      *validate = v100;
      return v91;
    }

LABEL_37:
    LOBYTE(v91) = 0;
    return v91;
  }

  v92 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v102 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
    v103 = 1024;
    v104 = 145;
    _os_log_error_impl(&dword_18565F000, v92, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v93 = _PFLogGetLogStream(17);
  v91 = os_log_type_enabled(v93, OS_LOG_TYPE_FAULT);
  if (v91)
  {
    *buf = 136315394;
    v102 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
    v103 = 1024;
    v104 = 145;
    _os_log_fault_impl(&dword_18565F000, v93, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_37;
  }

  return v91;
}

- (BOOL)validatePredicate:(uint64_t *)predicate error:
{
  v97 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v71 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a2 compoundPredicateType] == 1 || objc_msgSend(a2, "compoundPredicateType") == 2)
      {
        predicateCopy = predicate;
        v66 = [*(v5 + 64) length];
        if (v66)
        {
          objc_msgSend(*(v5 + 64), "appendString:", @"(");
          objc_msgSend(*(v5 + 96), "appendString:", @"(");
          objc_msgSend(*(v5 + 104), "appendString:", @"(");
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        subpredicates = [a2 subpredicates];
        v14 = [subpredicates countByEnumeratingWithState:&v67 objects:v76 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v68;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v68 != v16)
              {
                objc_enumerationMutation(subpredicates);
              }

              v18 = *(*(&v67 + 1) + 8 * i);
              if ([*(v5 + 64) length] && objc_msgSend(*(v5 + 64), "characterAtIndex:", objc_msgSend(*(v5 + 64), "length") - 1) != 40)
              {
                if ([a2 compoundPredicateType] == 1)
                {
                  v19 = @"AND";
                }

                else
                {
                  v19 = @"OR";
                }

                [*(v5 + 64) appendFormat:@" %@ ", v19];
                [*(v5 + 96) appendFormat:@" %@ ", v19];
                [*(v5 + 104) appendFormat:@" %@ ", v19];
              }

              if (![(NSSQLAttributeTrigger *)v5 validatePredicate:v18 error:&v71])
              {
                predicate = predicateCopy;
                if (v66)
                {
                  [*(v5 + 64) appendString:@""]);
                  [*(v5 + 96) appendString:@""]);
                  [*(v5 + 104) appendString:@""]);
                }

                goto LABEL_34;
              }
            }

            v15 = [subpredicates countByEnumeratingWithState:&v67 objects:v76 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        if (v66)
        {
          [*(v5 + 64) appendString:@""]);
          [*(v5 + 96) appendString:@""]);
          [*(v5 + 104) appendString:@""]);
        }

        return 1;
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A250];
      v74[0] = @"offendingPredicate";
      if (!a2)
      {
        a2 = [MEMORY[0x1E695DFB0] null];
      }

      v74[1] = *MEMORY[0x1E696A588];
      v75[0] = a2;
      v75[1] = @"Invalid trigger predicate, compound predicates must be AND or OR predicates.";
      v23 = MEMORY[0x1E695DF20];
      v24 = v75;
      v25 = v74;
    }

    else
    {
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A250];
      v72[0] = @"offendingPredicate";
      if (!a2)
      {
        a2 = [MEMORY[0x1E695DFB0] null];
      }

      v72[1] = *MEMORY[0x1E696A588];
      v73[0] = a2;
      v73[1] = @"Invalid trigger predicate, predicate must evaluate to an instance of NSComparisonPredicate or NSCompoundPredicate.";
      v23 = MEMORY[0x1E695DF20];
      v24 = v73;
      v25 = v72;
    }

    v71 = [v21 errorWithDomain:v22 code:134060 userInfo:{objc_msgSend(v23, "dictionaryWithObjects:forKeys:count:", v24, v25, 2)}];
LABEL_34:
    v26 = v71;
    if (v71)
    {
LABEL_48:
      if (predicate)
      {
        result = 0;
        *predicate = v26;
        return result;
      }

      return 0;
    }

    goto LABEL_35;
  }

  if ([objc_msgSend(a2 "leftExpression")] != 3)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v20 = *MEMORY[0x1E696A588];
    v81[0] = @"offendingPredicate";
    v81[1] = v20;
    v82[0] = a2;
    v82[1] = @"Invalid trigger predicate, left expression must evaluate to an instance of NSKeyPathExpressionType.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v82;
    v12 = v81;
    goto LABEL_40;
  }

  v6 = [objc_msgSend(objc_msgSend(a2 "leftExpression")];
  if ([v6 count] != 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v29 = *MEMORY[0x1E696A588];
    v83[0] = @"offendingPredicate";
    v83[1] = v29;
    v84[0] = a2;
    v84[1] = @"Invalid trigger predicate, left expression must be a key-path with only two components.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v84;
    v12 = v83;
    goto LABEL_40;
  }

  if ([objc_msgSend(a2 "rightExpression")])
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v9 = *MEMORY[0x1E696A588];
    v85[0] = @"offendingPredicate";
    v85[1] = v9;
    v86[0] = a2;
    v86[1] = @"Invalid trigger predicate, right expression must evaluate to an instance of NSConstantValueExpressionType.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v86;
    v12 = v85;
LABEL_40:
    v30 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:2];
    v31 = v7;
    v32 = v8;
    goto LABEL_41;
  }

  if (![objc_msgSend(objc_msgSend(a2 "rightExpression")])
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v46 = *MEMORY[0x1E696A588];
    v87[0] = @"offendingPredicate";
    v87[1] = v46;
    v88[0] = a2;
    v88[1] = @"Invalid trigger predicate, right expression must evaluate to a constant integer value.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v88;
    v12 = v87;
    goto LABEL_40;
  }

  v36 = [objc_msgSend(objc_msgSend(a2 "rightExpression")];
  if ([a2 predicateOperatorType] > 5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v47 = *MEMORY[0x1E696A588];
    v89[0] = @"offendingPredicate";
    v89[1] = v47;
    v90[0] = a2;
    v90[1] = @"Invalid trigger predicate, predicate operator must be one of:\nNSLessThanPredicateOperatorType,\nNSLessThanOrEqualToPredicateOperatorType,\nNSGreaterThanPredicateOperatorType,\nNSGreaterThanOrEqualToPredicateOperatorType,\nNSEqualToPredicateOperatorType,\nNSNotEqualToPredicateOperatorType";
    v10 = MEMORY[0x1E695DF20];
    v11 = v90;
    v12 = v89;
    goto LABEL_40;
  }

  v37 = *(v5 + 24);
  v38 = [v6 objectAtIndexedSubscript:0];
  if (v37)
  {
    v39 = [*(v37 + 40) objectForKey:v38];
  }

  else
  {
    v39 = 0;
  }

  destinationEntity = [v39 destinationEntity];
  v41 = [v6 objectAtIndexedSubscript:1];
  if (destinationEntity)
  {
    v42 = [*(destinationEntity + 40) objectForKey:v41];
  }

  else
  {
    v42 = 0;
  }

  v43 = [objc_msgSend(a2 "predicateOperator")];
  v44 = [objc_msgSend(a2 "predicateOperator")];
  if (v44 > 5)
  {
    v45 = 0;
  }

  else
  {
    v45 = [objc_alloc(MEMORY[0x1E696AE20]) initWithOperatorType:qword_18592E558[v44]];
  }

  symbol = [v45 symbol];

  if (!v39)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v60 = *MEMORY[0x1E696A588];
    v91[0] = @"offendingPredicate";
    v91[1] = v60;
    v92[0] = a2;
    v92[1] = @"Invalid trigger predicate, failed to find the relationship identified by the keyPath.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v92;
    v12 = v91;
    goto LABEL_40;
  }

  v49 = *(v5 + 40);
  if (!v49)
  {
    goto LABEL_72;
  }

  if (![v49 isEqual:v39])
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v61 = *MEMORY[0x1E696A588];
    v93[0] = @"offendingPredicate";
    v93[1] = v61;
    v94[0] = a2;
    v94[1] = @"Invalid trigger predicate, this predicate appears to reference a different relationship than other predicates in this trigger.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v94;
    v12 = v93;
    goto LABEL_40;
  }

  if (!*(v5 + 40))
  {
LABEL_72:
    v50 = v39;
    *(v5 + 40) = v50;
    *(v5 + 48) = [v50 destinationEntity];
  }

  if (v42)
  {
    v51 = *(v5 + 32);
    if (v51)
    {
      *(v51 + 32) |= 8u;
    }

    if (([*(v5 + 56) containsObject:v42] & 1) == 0)
    {
      v52 = [*(v5 + 56) mutableCopy];
      [v52 addObject:v42];

      *(v5 + 56) = [v52 copy];
      v53 = v39[7];
      if (v53)
      {
        [(NSSQLAttribute *)v42 addKeyForTriggerOnRelationship:v53];
      }

      v54 = [*(v5 + 80) length];
      v55 = *(v5 + 80);
      columnName = [v42 columnName];
      columnName2 = [v42 columnName];
      if (v54)
      {
        v58 = @" OR (NEW.%@ %@ %ld AND OLD.%@ %@ %ld)";
      }

      else
      {
        v58 = @"(NEW.%@ %@ %ld AND OLD.%@ %@ %ld)";
      }

      v59 = @" OR (NEW.%@ %@ %ld AND OLD.%@ %@ %ld)";
      [v55 appendFormat:v58, columnName, v43, v36, columnName2, symbol, v36];
      if (![*(v5 + 72) length])
      {
        v59 = @"(NEW.%@ %@ %ld AND OLD.%@ %@ %ld)";
      }

      [*(v5 + 72) appendFormat:v59, objc_msgSend(v42, "columnName"), symbol, v36, objc_msgSend(v42, "columnName"), v43, v36];
      if ([*(v5 + 88) length])
      {
        [*(v5 + 88) appendString:{@", "}];
      }

      [*(v5 + 88) appendString:{objc_msgSend(v42, "columnName")}];
      if ([*(v5 + 112) length])
      {
        [*(v5 + 112) appendString:@" OR "];
      }

      [*(v5 + 112) appendFormat:@"NEW.%@ != OLD.%@", objc_msgSend(v42, "columnName"), objc_msgSend(v42, "columnName")];
    }

    [*(v5 + 64) appendFormat:@"%@ %@ %ld", objc_msgSend(v42, "columnName"), v43, objc_msgSend(objc_msgSend(objc_msgSend(a2, "rightExpression"), "constantValue"), "integerValue")];
    [*(v5 + 96) appendFormat:@"OLD.%@ %@ %ld", objc_msgSend(v42, "columnName"), v43, v36];
    [*(v5 + 104) appendFormat:@"NEW.%@ %@ %ld", objc_msgSend(v42, "columnName"), v43, v36];
    return 1;
  }

  v62 = MEMORY[0x1E696ABC0];
  v63 = *MEMORY[0x1E696A250];
  *buf = a2;
  v95[0] = @"offendingPredicate";
  v95[1] = @"offendingAttribute";
  name = [*(v5 + 32) name];
  v95[2] = *MEMORY[0x1E696A588];
  *&buf[8] = name;
  *&buf[16] = @"Invalid trigger predicate, unable to find the attribute specified by this predicate.";
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v95 count:3];
  v31 = v62;
  v32 = v63;
LABEL_41:
  v33 = [v31 errorWithDomain:v32 code:134060 userInfo:v30];
  v26 = v33;
  if (v33)
  {
    v71 = v33;
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *v77 = 136315394;
      v78 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
      v79 = 1024;
      v80 = 837;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v77, 0x12u);
    }

    v35 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *v77 = 136315394;
      v78 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
      v79 = 1024;
      v80 = 837;
      _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v77, 0x12u);
    }
  }

  if (v26)
  {
    goto LABEL_48;
  }

LABEL_35:
  v27 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
    *&buf[12] = 1024;
    *&buf[14] = 676;
    _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v28 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
    *&buf[12] = 1024;
    *&buf[14] = 676;
    _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    return 0;
  }

  return result;
}

@end