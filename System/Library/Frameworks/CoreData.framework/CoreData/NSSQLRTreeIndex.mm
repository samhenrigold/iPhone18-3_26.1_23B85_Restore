@interface NSSQLRTreeIndex
- (id)bulkUpdateStatementsForStore:(id)store;
- (id)dropStatementsForStore:(id)store;
- (id)generateStatementsForStore:(id)store;
- (id)initForIndexDescription:(id)description sqlEntity:(id)entity;
- (void)dealloc;
- (void)generateSQLStrings;
@end

@implementation NSSQLRTreeIndex

- (id)initForIndexDescription:(id)description sqlEntity:(id)entity
{
  v8.receiver = self;
  v8.super_class = NSSQLRTreeIndex;
  v6 = [NSSQLIndex initForIndexDescription:sel_initForIndexDescription_sqlEntity_ sqlEntity:?];
  if (v6)
  {
    v6[6] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_%@_%@", objc_msgSend(entity, "name"), objc_msgSend(description, "name")];
  }

  return v6;
}

- (void)dealloc
{
  self->_tableName = 0;
  v3.receiver = self;
  v3.super_class = NSSQLRTreeIndex;
  [(NSSQLIndex *)&v3 dealloc];
}

- (void)generateSQLStrings
{
  v53 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    context = objc_autoreleasePoolPush();
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v43 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v45 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v44 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v38 = [objc_msgSend(selfCopy "sqlEntity")];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [objc_msgSend(selfCopy "indexDescription")];
    v2 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (!v2)
    {
      goto LABEL_20;
    }

    v3 = v2;
    v4 = &stru_1EF3F1768;
    v5 = *v49;
    v6 = &stru_1EF3F1768;
    v7 = selfCopy;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v49 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        property = [v9 property];
        if (([property _propertyType] & 0xFFFFFFFFFFFFFFFBLL) == 2)
        {
          if (property && [property superCompositeAttribute])
          {
            _qualifiedName = [property _qualifiedName];
            sqlEntity = [selfCopy sqlEntity];
            if (sqlEntity)
            {
              sqlEntity2 = sqlEntity;
              goto LABEL_14;
            }
          }

          else
          {
            sqlEntity2 = [selfCopy sqlEntity];
            name = [property name];
            if (sqlEntity2)
            {
              _qualifiedName = name;
LABEL_14:
              sqlEntity = [*(sqlEntity2 + 40) objectForKey:_qualifiedName];
            }

            else
            {
              sqlEntity = 0;
            }
          }

          columnName = [sqlEntity columnName];
          [v46 appendFormat:@"%@%@_MIN, %@_MAX", v6, columnName, columnName];
          [v43 appendFormat:@"%@NEW.%@, NEW.%@", v6, columnName, columnName];
          [v44 appendFormat:@"%@%@, %@", v6, columnName, columnName];
          [v45 appendFormat:@"%@%@ NOT NULL", v4, columnName];
          selfCopy = v7;
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
        v4 = @" AND ";
        v6 = @", ";
      }

      while (v3 != v8);
      v17 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      v3 = v17;
      v4 = @" AND ";
      if (!v17)
      {
LABEL_20:
        v18 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], selfCopy[6], v46));
        [v39 addObject:v18];

        v19 = [NSSQLiteStatement alloc];
        sqlEntity3 = [selfCopy sqlEntity];
        v21 = [(NSSQLiteStatement *)v19 initWithEntity:sqlEntity3 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], selfCopy[6])];
        [v40 addObject:v21];

        v22 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], selfCopy[6], v38, selfCopy[6], v46, v43));
        [v39 addObject:v22];

        v23 = [NSSQLiteStatement alloc];
        sqlEntity4 = [selfCopy sqlEntity];
        v25 = [(NSSQLiteStatement *)v23 initWithEntity:sqlEntity4 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], selfCopy[6])];
        [v40 addObject:v25];

        v26 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], selfCopy[6], v38, selfCopy[6], selfCopy[6], v46, v43));
        [v39 addObject:v26];

        v27 = [NSSQLiteStatement alloc];
        sqlEntity5 = [selfCopy sqlEntity];
        v29 = [(NSSQLiteStatement *)v27 initWithEntity:sqlEntity5 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], selfCopy[6])];
        [v40 addObject:v29];

        v30 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], selfCopy[6], v38, selfCopy[6]));
        [v39 addObject:v30];

        v31 = [NSSQLiteStatement alloc];
        sqlEntity6 = [selfCopy sqlEntity];
        v33 = [(NSSQLiteStatement *)v31 initWithEntity:sqlEntity6 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], selfCopy[6])];
        [v40 addObject:v33];

        v34 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], selfCopy[6], v46, v44, v38, v45));
        [v41 addObject:v34];

        objc_setProperty_nonatomic(selfCopy, v35, v39, 24);
        objc_setProperty_nonatomic(selfCopy, v36, v40, 32);

        objc_setProperty_nonatomic(selfCopy, v37, v41, 40);
        objc_autoreleasePoolPop(context);
        return;
      }
    }
  }
}

- (id)generateStatementsForStore:(id)store
{
  if (self)
  {
    result = self->super._createStrings;
    if (!result)
    {
      [(NSSQLRTreeIndex *)&self->super.super.isa generateSQLStrings];
      return self->super._createStrings;
    }
  }

  else
  {
    [(NSSQLRTreeIndex *)0 generateSQLStrings];
    return 0;
  }

  return result;
}

- (id)dropStatementsForStore:(id)store
{
  if (self)
  {
    result = self->super._dropStrings;
    if (!result)
    {
      [(NSSQLRTreeIndex *)&self->super.super.isa generateSQLStrings];
      return self->super._dropStrings;
    }
  }

  else
  {
    [(NSSQLRTreeIndex *)0 generateSQLStrings];
    return 0;
  }

  return result;
}

- (id)bulkUpdateStatementsForStore:(id)store
{
  if (self)
  {
    result = self->super._updateStrings;
    if (!result)
    {
      [(NSSQLRTreeIndex *)&self->super.super.isa generateSQLStrings];
      return self->super._updateStrings;
    }
  }

  else
  {
    [(NSSQLRTreeIndex *)0 generateSQLStrings];
    return 0;
  }

  return result;
}

@end