@interface NSSQLBinaryIndex
- (id)dropStatementsForStore:(id)store;
- (id)generateStatementsForStore:(id)store;
@end

@implementation NSSQLBinaryIndex

- (id)generateStatementsForStore:(id)store
{
  v48 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_autoreleasePoolPush();
  if (-[NSFetchIndexDescription _isMappedSinglePropertyIndex](-[NSSQLIndex indexDescription](self, "indexDescription")) && [objc_msgSend(-[NSArray firstObject](-[NSFetchIndexDescription elements](-[NSSQLIndex indexDescription](self "indexDescription")] == 4 && !-[NSFetchIndexDescription _isUnique](-[NSSQLIndex indexDescription](self, "indexDescription")))
  {
    goto LABEL_54;
  }

  if (![(NSFetchIndexDescription *)[(NSSQLIndex *)self indexDescription] partialIndexPredicate]&& ([(NSFetchIndexDescription *)[(NSSQLIndex *)self indexDescription] _isPurelyModeledIndex]& 1) != 0)
  {
    v7 = MEMORY[0x1E696AD60];
    if ([(NSSQLIndex *)self isUnique])
    {
      v8 = @"UNIQUE ";
    }

    else
    {
      v8 = &stru_1EF3F1768;
    }

    v42 = objc_msgSend_stringWithFormat_(v7, v8, [(NSSQLEntity *)[(NSSQLIndex *)self sqlEntity] name], [(NSFetchIndexDescription *)[(NSSQLIndex *)self indexDescription] name], [(NSSQLEntity *)[(NSSQLIndex *)self sqlEntity] tableName]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    elements = [(NSFetchIndexDescription *)[(NSSQLIndex *)self indexDescription] elements];
    v10 = [(NSArray *)elements countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (!v10)
    {
      goto LABEL_54;
    }

    v11 = v10;
    selfCopy = self;
    v40 = v6;
    v41 = array;
    v13 = 0;
    v14 = *v44;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(elements);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        property = [v16 property];
        _propertyType = [property _propertyType];
        if ([property isTransient])
        {
          v20 = _propertyType == 5;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          if ([property _isAttribute])
          {
            if (property && [property superCompositeAttribute])
            {
              _qualifiedName = [property _qualifiedName];
              sqlEntity = [(NSSQLIndex *)selfCopy sqlEntity];
              if (!sqlEntity)
              {
                goto LABEL_47;
              }

              v23 = *(sqlEntity + 40);
              v24 = _qualifiedName;
LABEL_29:
              v27 = [v23 objectForKey:v24];
              if (!v27)
              {
                goto LABEL_47;
              }

LABEL_30:
              columnName = [v27 columnName];
              if (v13)
              {
                [v42 appendString:{@", "}];
              }

              isAscending = [v16 isAscending];
              v30 = @"DESC";
              if (isAscending)
              {
                v30 = @"ASC";
              }

              [v42 appendFormat:@"%@ COLLATE BINARY %@", columnName, v30];
              v13 = 1;
              goto LABEL_47;
            }

LABEL_27:
            sqlEntity2 = [(NSSQLIndex *)selfCopy sqlEntity];
            name = [property name];
            if (!sqlEntity2)
            {
              goto LABEL_47;
            }

            v24 = name;
            v23 = *(sqlEntity2 + 40);
            goto LABEL_29;
          }

          if ([property _isRelationship])
          {
            if ([property inverseRelationship] && (objc_msgSend(property, "isToMany") & 1) != 0)
            {
              goto LABEL_47;
            }

            goto LABEL_27;
          }

          if (_propertyType != 5)
          {
            goto LABEL_47;
          }

          expression = [property expression];
          expressionType = [expression expressionType];
          if (expressionType == 3)
          {
            keyPath = [expression keyPath];
            if ([@"self" isEqual:keyPath])
            {
              goto LABEL_40;
            }

            if (![@"entity" isEqual:keyPath])
            {
              goto LABEL_47;
            }

            sqlEntity3 = [(NSSQLIndex *)selfCopy sqlEntity];
            if (!sqlEntity3)
            {
              goto LABEL_47;
            }

            v35 = 136;
          }

          else
          {
            if (expressionType != 1)
            {
              goto LABEL_47;
            }

LABEL_40:
            sqlEntity3 = [(NSSQLIndex *)selfCopy sqlEntity];
            if (!sqlEntity3)
            {
              goto LABEL_47;
            }

            v35 = 128;
          }

          v27 = *(sqlEntity3 + v35);
          if (!v27)
          {
            goto LABEL_47;
          }

          goto LABEL_30;
        }

LABEL_47:
        objc_autoreleasePoolPop(v17);
      }

      v11 = [(NSArray *)elements countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (!v11)
      {
        v6 = v40;
        array = v41;
        if (v13)
        {
          [v42 appendString:@""]);
          v36 = [[NSSQLiteStatement alloc] initWithEntity:[(NSSQLIndex *)selfCopy sqlEntity] sqlString:v42];
          [v41 addObject:v36];
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }
  }

  v36 = [[NSSQLGenerator alloc] initWithPersistentStore:store];
  v37 = [(NSSQLGenerator *)v36 newSQLStatmentForBinaryIndex:store inStore:?];
  if (v37)
  {
    v38 = v37;
    [array addObject:v37];
  }

LABEL_53:

LABEL_54:
  objc_autoreleasePoolPop(v6);
  return array;
}

- (id)dropStatementsForStore:(id)store
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = [[NSSQLiteStatement alloc] initWithEntity:[(NSSQLIndex *)self sqlEntity] sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], [(NSSQLEntity *)[(NSSQLIndex *)self sqlEntity] name], [(NSFetchIndexDescription *)[(NSSQLIndex *)self indexDescription] name])];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
}

@end