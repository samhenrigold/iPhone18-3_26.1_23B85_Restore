@interface NSSQLKeypathTriggerAttributeExtension
- (BOOL)isEqualToExtension:(id)extension;
- (BOOL)validate:(id *)validate;
- (NSSQLKeypathTriggerAttributeExtension)initWithObjectFromUserInfo:(id)info onAttributeNamed:(id)named onEntity:(id)entity;
- (NSString)description;
- (uint64_t)validateKeypath:(uint64_t)result;
- (void)dealloc;
@end

@implementation NSSQLKeypathTriggerAttributeExtension

- (NSSQLKeypathTriggerAttributeExtension)initWithObjectFromUserInfo:(id)info onAttributeNamed:(id)named onEntity:(id)entity
{
  v11.receiver = self;
  v11.super_class = NSSQLKeypathTriggerAttributeExtension;
  v8 = [(NSSQLKeypathTriggerAttributeExtension *)&v11 init];
  if (v8)
  {
    v8->_objectFromUserInfo = info;
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
    v8->_insertSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v8->_dropSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v8->_bulkUpdateSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v8;
}

- (void)dealloc
{
  self->_countedRelationship = 0;

  self->_insertSQLStrings = 0;
  self->_dropSQLStrings = 0;

  self->_bulkUpdateSQLStrings = 0;
  self->_entity = 0;

  self->_attribute = 0;
  self->_keypath = 0;

  v3.receiver = self;
  v3.super_class = NSSQLKeypathTriggerAttributeExtension;
  [(NSSQLKeypathTriggerAttributeExtension *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSSQLKeypathTriggerAttributeExtension;
  v4 = [(NSString *)[(NSSQLKeypathTriggerAttributeExtension *)&v6 description] stringByAppendingFormat:@" %@.%@ = %@", [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name], self->_objectFromUserInfo];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)validate:(id *)validate
{
  v77[1] = *MEMORY[0x1E69E9840];
  v55 = 0;
  objectFromUserInfo = self->_objectFromUserInfo;
  if (objectFromUserInfo)
  {
    if ([objectFromUserInfo isNSString])
    {
      if ([self->_objectFromUserInfo length])
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = [MEMORY[0x1E696ABC8] expressionWithFormat:self->_objectFromUserInfo];
        v8 = v7;
        if (v7)
        {
          if ([v7 expressionType] == 3)
          {
            v9 = [v8 minimalFormInContext:v6];
            if ([v9 expressionType] == 4)
            {
              selector = [v9 selector];
              if (selector == NSSelectorFromString(@"count:"))
              {
                if ([objc_msgSend(objc_msgSend(v9 "arguments")] == 3)
                {
                  self->_keypath = [objc_msgSend(objc_msgSend(v9 "arguments")];
                  attribute = self->_attribute;
                  if (attribute)
                  {
                    if (attribute->super.super._propertyType == 1)
                    {
                      v51 = [-[NSSQLAttribute attributeDescription](attribute "attributeDescription")];
                      if (v51 == 100 || v51 == 200 || v51 == 300)
                      {
                        v41 = [(NSSQLKeypathTriggerAttributeExtension *)self validateKeypath:?];
LABEL_25:
                        if ([v6 objectForKey:@"NSUnderlyingException"])
                        {
                          v45 = MEMORY[0x1E696ABC0];
                          v62 = *MEMORY[0x1E696A588];
                          v63[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name]);
                          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
                          v55 = [v45 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v46];
                        }

                        if (v41)
                        {
                          return 1;
                        }

                        v19 = v55;
                        if (!v55)
                        {
                          goto LABEL_30;
                        }

                        goto LABEL_13;
                      }

                      v52 = MEMORY[0x1E696ABC0];
                      v76 = *MEMORY[0x1E696A588];
                      v77[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name], [(NSSQLProperty *)self->_attribute name]);
                      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
                    }

                    else
                    {
                      v52 = MEMORY[0x1E696ABC0];
                      v74 = *MEMORY[0x1E696A588];
                      v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name], [NSAttributeDescription stringForAttributeType:300]);
                      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
                    }
                  }

                  else
                  {
                    v52 = MEMORY[0x1E696ABC0];
                    v72 = *MEMORY[0x1E696A588];
                    v73 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name], self->_objectFromUserInfo);
                    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
                  }

                  v42 = [v52 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v53];
                  if (v42)
                  {
                    goto LABEL_20;
                  }

                  LogStream = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLKeypathTriggerAttributeExtension.m";
                    v70 = 1024;
                    v71 = 191;
                    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
                  }

                  v44 = _PFLogGetLogStream(17);
                  if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_24;
                  }

                  *buf = 136315394;
                  v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLKeypathTriggerAttributeExtension.m";
                  v70 = 1024;
                  v71 = 191;
                  goto LABEL_52;
                }

                v11 = MEMORY[0x1E696ABC0];
                v76 = *MEMORY[0x1E696A588];
                v77[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], -[NSSQLEntity name](self->_entity, "name"), -[NSSQLProperty name](self->_attribute, "name"), [objc_msgSend(v9 "arguments")]);
                v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
              }

              else
              {
                v11 = MEMORY[0x1E696ABC0];
                v74 = *MEMORY[0x1E696A588];
                v12 = MEMORY[0x1E696AEC0];
                name = [(NSSQLEntity *)self->_entity name];
                name2 = [(NSSQLProperty *)self->_attribute name];
                v15 = NSStringFromSelector([v9 selector]);
                v75 = objc_msgSend_stringWithFormat_(v12, name, name2, v15);
                v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
              }
            }

            else
            {
              v11 = MEMORY[0x1E696ABC0];
              v72 = *MEMORY[0x1E696A588];
              v73 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name], self->_objectFromUserInfo);
              v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            }

            v42 = [v11 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v16];
            if (v42)
            {
LABEL_20:
              v55 = v42;
LABEL_24:
              v41 = 0;
              goto LABEL_25;
            }

            v43 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLKeypathTriggerAttributeExtension.m";
              v70 = 1024;
              v71 = 154;
              _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
            }

            v44 = _PFLogGetLogStream(17);
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_24;
            }

            *buf = 136315394;
            v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLKeypathTriggerAttributeExtension.m";
            v70 = 1024;
            v71 = 154;
LABEL_52:
            _os_log_fault_impl(&dword_18565F000, v44, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
            goto LABEL_24;
          }

          v39 = MEMORY[0x1E696ABC0];
          v66 = *MEMORY[0x1E696A588];
          v67 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name]);
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v38 = [v39 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v40];
        }

        else
        {
          v30 = MEMORY[0x1E696ABC0];
          v64 = *MEMORY[0x1E696A588];
          v31 = MEMORY[0x1E696AEC0];
          name3 = [(NSSQLEntity *)self->_entity name];
          name4 = [(NSSQLProperty *)self->_attribute name];
          v34 = self->_objectFromUserInfo;
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v65 = objc_msgSend_stringWithFormat_(v31, name3, name4, v34, v36);
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v38 = [v30 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v37];
        }

        v41 = 0;
        v55 = v38;
        goto LABEL_25;
      }

      v27 = MEMORY[0x1E696ABC0];
      v60 = *MEMORY[0x1E696A588];
      v61 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name]);
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v19 = [v27 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v28];
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A588];
      v21 = MEMORY[0x1E696AEC0];
      name5 = [(NSSQLEntity *)self->_entity name];
      name6 = [(NSSQLProperty *)self->_attribute name];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v59 = objc_msgSend_stringWithFormat_(v21, name5, name6, v25);
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v19 = [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v26];
    }
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A588];
    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSSQLEntity *)self->_entity name], [(NSSQLProperty *)self->_attribute name]);
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v18];
  }

  v55 = v19;
  if (!v19)
  {
LABEL_30:
    v47 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLKeypathTriggerAttributeExtension.m";
      v70 = 1024;
      v71 = 122;
      _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v48 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLKeypathTriggerAttributeExtension.m";
      v70 = 1024;
      v71 = 122;
      _os_log_fault_impl(&dword_18565F000, v48, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    return 0;
  }

LABEL_13:
  if (!validate)
  {
    return 0;
  }

  v29 = 0;
  *validate = v19;
  return v29;
}

- (uint64_t)validateKeypath:(uint64_t)result
{
  v91[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 48);
    if (v4)
    {
      v5 = [*(v4 + 40) objectForKey:*(result + 16)];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      if (v6[24] - 7 > 2)
      {
        v35 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696A250];
        v88 = *MEMORY[0x1E696A588];
        v89 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(v3 + 48) name], objc_msgSend(*(v3 + 56), "name"), *(v3 + 16));
        v37 = MEMORY[0x1E695DF20];
        v38 = &v89;
        v39 = &v88;
      }

      else
      {
        if (([v6 isToMany] & 1) != 0 || v7[24] == 9)
        {
          *(v3 + 64) = v7;
          v8 = *(v3 + 56);
          if (v8)
          {
            *(v8 + 32) |= 8u;
          }

          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          columnName = [*(v3 + 56) columnName];
          tableName = [*(v3 + 48) tableName];
          v76 = columnName;
          v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], tableName, columnName, [*(v3 + 64) name]);
          v14 = *(v3 + 48);
          if (v14)
          {
            v15 = *(v14 + 128);
          }

          else
          {
            v15 = 0;
          }

          columnName2 = [v15 columnName];
          v17 = *(v3 + 48);
          if (v17)
          {
            v18 = *(v17 + 136);
          }

          else
          {
            v18 = 0;
          }

          columnName3 = [v18 columnName];
          v19 = *(v3 + 64);
          if (v19 && *(v19 + 24) == 9)
          {
            correlationTableName = [*(v3 + 64) correlationTableName];
            v78 = v13;
            columnName4 = [v19 columnName];
            inverseColumnName = [(NSSQLManyToMany *)v19 inverseColumnName];
            v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v71 = v7;
            v22 = v9;
            v77 = v9;
            v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INSERT_INCREMENT", v13, correlationTableName];
            v72 = v10;
            v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v23];
            [v21 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER INSERT ON %@ FOR EACH ROW", v23, correlationTableName];
            [v21 appendString:@" BEGIN"];
            v25 = v76;
            [v21 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, v76, v76];
            [v21 appendFormat:@" WHERE NEW.%@ = %@;", columnName4, columnName2];
            [v21 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, v25, v25, tableName, columnName2, columnName4];
            [v21 appendFormat:@" END"];
            [v81 addObject:v24];

            v26 = v22;
            v7 = v71;
            [v26 addObject:v21];

            v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_DELETE_DECREMENT", v78, correlationTableName];
            v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v28];
            [v27 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER DELETE ON %@ FOR EACH ROW", v28, correlationTableName];
            [v27 appendFormat:@" BEGIN"];
            [v27 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, v25, v25];
            [v27 appendFormat:@" WHERE OLD.%@ = %@;", columnName4, columnName2];
            v30 = columnName2;
            [v27 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, v76, v76, tableName, columnName2, columnName4];
            [v27 appendFormat:@" END"];
            [v77 addObject:v27];
            [v81 addObject:v29];

            v10 = v72;
            v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"COUNT_%@", v78];
            v32 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CREATE TEMP TABLE %@ AS", v31];
            [v32 appendFormat:@" SELECT %@, COUNT(DISTINCT(%@.%@)) AS COUNT", columnName4, correlationTableName, inverseColumnName];
            [v32 appendFormat:@" FROM %@", correlationTableName];
            [v32 appendFormat:@" GROUP BY %@;", columnName4];
            [v72 addObject:v32];

            v33 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" CREATE INDEX %@_INDEX ON %@(%@, COUNT);", v31, v31, columnName4];
            [v72 addObject:v33];

            v34 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" UPDATE %@ SET %@ = IFNULL((SELECT COUNT FROM %@ WHERE %@ = %@), 0);", tableName, v76, v31, v30, columnName4];
          }

          else
          {
            if (![*(v3 + 64) isToMany])
            {
LABEL_32:

              *(v3 + 24) = [v9 copy];
              *(v3 + 32) = [v81 copy];

              *(v3 + 40) = [v10 copy];
              return 1;
            }

            v43 = *(v3 + 64);
            v73 = v10;
            v69 = columnName2;
            v44 = tableName;
            if (v43)
            {
              v45 = *(v43 + 56);
            }

            else
            {
              v45 = 0;
            }

            columnName5 = [v45 columnName];
            v47 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v79 = v13;
            v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_INSERT_INCREMENT", v13];
            v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v48];
            v75 = [objc_msgSend(*(v3 + 64) "destinationEntity")];
            [v47 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v48];
            [v47 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW", v75];
            [v47 appendFormat:@" BEGIN"];
            v50 = v76;
            [v47 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", v44, v76, v76];
            v51 = v69;
            [v47 appendFormat:@" WHERE NEW.%@ = %@;", columnName5, v69];
            [v47 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", v44, columnName3, v51, v50, v50, v44, v51, columnName5];
            [v47 appendFormat:@" END"];
            [v9 addObject:v47];
            [v81 addObject:v49];

            v52 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_DELETE_DECREMENT", v79];
            v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v53];
            [v52 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v53];
            [v52 appendFormat:@" AFTER DELETE ON %@", v75];
            [v52 appendFormat:@" BEGIN"];
            [v52 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1) WHERE OLD.%@ = %@;", v44, v50, v50, columnName5, v69];
            [v52 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", v44, columnName3, v51, v50, v50, v44, v51, columnName5];
            [v52 appendFormat:@" END"];
            [v9 addObject:v52];
            [v81 addObject:v54];

            v55 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INSERT_INCREMENT", v79, v44];
            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v56];
            [v55 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v56];
            [v55 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW", v44];
            [v55 appendFormat:@" BEGIN"];
            [v55 appendFormat:@" UPDATE %@ SET %@ = (SELECT COUNT(%@) FROM %@ WHERE (%@ = NEW.%@)) WHERE %@ = NEW.%@;", v44, v76, v51, v75, columnName5, v51, v51, v51];
            [v55 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", v44, columnName3, v51, v50, v50, v44, v51, v51];
            [v55 appendFormat:@" END"];
            [v9 addObject:v55];
            [v81 addObject:v57];

            v58 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_INCREMENT", v79, columnName5];
            v60 = v9;
            v77 = v9;
            v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v59];
            [v58 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v59];
            [v58 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN", columnName5, v75];
            [v58 appendFormat:@" ((NEW.%@ IS NOT NULL AND OLD.%@ IS NULL) OR (NEW.%@ != OLD.%@))", columnName5, columnName5, columnName5, columnName5];
            [v58 appendFormat:@" BEGIN"];
            [v58 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1 WHERE %@ = NEW.%@;", v44, v50, v50, v69, columnName5];
            [v58 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", v44, columnName3, v51, v50, v50, v44, v51, columnName5];
            [v58 appendFormat:@" END"];
            [v60 addObject:v58];
            [v81 addObject:v61];

            v62 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_DECREMENT", v79, columnName5];
            v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v63];
            [v62 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v63];
            [v62 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN", columnName5, v75];
            [v62 appendFormat:@" ((OLD.%@ IS NOT NULL AND NEW.%@ IS NULL) OR (NEW.%@ != OLD.%@))", columnName5, columnName5, columnName5, columnName5];
            [v62 appendFormat:@" BEGIN"];
            [v62 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1) WHERE %@ = OLD.%@;", v44, v50, v50, v69, columnName5];
            [v62 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", v44, columnName3, v51, v50, v50, v44, v51, columnName5];
            [v62 appendFormat:@" END"];
            [v77 addObject:v62];
            [v81 addObject:v64];

            v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"COUNT_%@", v79];
            v65 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CREATE TEMP TABLE %@ AS", v31];
            [v65 appendFormat:@" SELECT %@, COUNT(DISTINCT(%@.%@)) AS COUNT", columnName5, v75, v69];
            [v65 appendFormat:@" FROM %@", v75];
            [v65 appendFormat:@" GROUP BY %@;", columnName5];
            v10 = v73;
            [v73 addObject:v65];

            v66 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" CREATE INDEX %@_INDEX ON %@(%@, COUNT);", v31, v31, columnName5];
            [v73 addObject:v66];

            v34 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" UPDATE %@ SET %@ = IFNULL((SELECT COUNT FROM %@ WHERE %@ = %@), 0);", v44, v76, v31, v69, columnName5];
          }

          v67 = v34;
          [v10 addObject:v34];

          v68 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" DROP TABLE %@;", v31];
          [v10 addObject:v68];

          v9 = v77;
          goto LABEL_32;
        }

        v35 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696A250];
        v90 = *MEMORY[0x1E696A588];
        v91[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(v3 + 48) name], objc_msgSend(*(v3 + 56), "name"), *(v3 + 16));
        v37 = MEMORY[0x1E695DF20];
        v38 = v91;
        v39 = &v90;
      }
    }

    else
    {
      v35 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A250];
      v86 = *MEMORY[0x1E696A588];
      v87 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(v3 + 48) name], objc_msgSend(*(v3 + 56), "name"), *(v3 + 16), objc_msgSend(*(v3 + 48), "name"));
      v37 = MEMORY[0x1E695DF20];
      v38 = &v87;
      v39 = &v86;
    }

    v40 = [v35 errorWithDomain:v36 code:134060 userInfo:{objc_msgSend(v37, "dictionaryWithObjects:forKeys:count:", v38, v39, 1)}];

    if (v40)
    {
      if (a2)
      {
        result = 0;
        *a2 = v40;
        return result;
      }

      return 0;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v83 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLKeypathTriggerAttributeExtension.m";
      v84 = 1024;
      v85 = 225;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v42 = _PFLogGetLogStream(17);
    result = os_log_type_enabled(v42, OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 136315394;
      v83 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLKeypathTriggerAttributeExtension.m";
      v84 = 1024;
      v85 = 225;
      _os_log_fault_impl(&dword_18565F000, v42, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      return 0;
    }
  }

  return result;
}

- (BOOL)isEqualToExtension:(id)extension
{
  v13.receiver = self;
  v13.super_class = NSSQLKeypathTriggerAttributeExtension;
  if (([(NSSQLKeypathTriggerAttributeExtension *)&v13 isEqual:?]& 1) != 0)
  {
LABEL_2:
    LOBYTE(isNSString) = 1;
    return isNSString;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  keypath = self->_keypath;
  if (!keypath)
  {
    objectFromUserInfo = self->_objectFromUserInfo;
    if (extension)
    {
      v9 = *(extension + 1);
    }

    else
    {
      v9 = 0;
    }

    if (objectFromUserInfo == v9)
    {
      goto LABEL_2;
    }

    isNSString = [objectFromUserInfo isNSString];
    if (!isNSString)
    {
      return isNSString;
    }

    if (extension)
    {
      isNSString = [*(extension + 1) isNSString];
      if (!isNSString)
      {
        return isNSString;
      }

      v10 = *(extension + 1);
      goto LABEL_15;
    }

    isNSString2 = [0 isNSString];
    v10 = 0;
    if (isNSString2)
    {
LABEL_15:
      isNSString = [self->_objectFromUserInfo isEqualToString:v10];
      if (!isNSString)
      {
        return isNSString;
      }

      goto LABEL_2;
    }

LABEL_20:
    LOBYTE(isNSString) = 0;
    return isNSString;
  }

  if (extension)
  {
    v7 = *(extension + 2);
  }

  else
  {
    v7 = 0;
  }

  LOBYTE(isNSString) = [(NSString *)keypath isEqualToString:v7];
  return isNSString;
}

@end