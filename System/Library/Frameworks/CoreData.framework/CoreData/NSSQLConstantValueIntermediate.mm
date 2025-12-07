@interface NSSQLConstantValueIntermediate
- (BOOL)_addBindVarForConstId:(uint64_t)id ofType:(void *)type inContext:;
- (NSSQLConstantValueIntermediate)initWithConstantValue:(id)value inScope:(id)scope context:(id)context;
- (NSSQLConstantValueIntermediate)initWithConstantValue:(id)value ofType:(unsigned __int8)type inScope:(id)scope context:(id)context;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLConstantValueIntermediate

- (void)dealloc
{
  self->_constantValue = 0;
  v3.receiver = self;
  v3.super_class = NSSQLConstantValueIntermediate;
  [(NSSQLConstantValueIntermediate *)&v3 dealloc];
}

- (NSSQLConstantValueIntermediate)initWithConstantValue:(id)value ofType:(unsigned __int8)type inScope:(id)scope context:(id)context
{
  v10 = [(NSSQLConstantValueIntermediate *)self initWithConstantValue:value inScope:scope context:context];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v12 = _sqlCoreLookupSQLEntityForEntityDescription([context objectForKey:@"persistentStore"], value);
      v13 = [context objectForKey:@"entitySpecificationKeypath"];
      if (v13)
      {
        [scope setDisambiguatingEntity:v12 withKeypath:v13 hasToMany:{objc_msgSend(objc_msgSend(context, "objectForKey:", @"entitySpecificationKeypathContainsToMany", "BOOLValue")}];
      }
    }
  }

  return v11;
}

- (NSSQLConstantValueIntermediate)initWithConstantValue:(id)value inScope:(id)scope context:(id)context
{
  v12.receiver = self;
  v12.super_class = NSSQLConstantValueIntermediate;
  v8 = [(NSSQLIntermediate *)&v12 initWithScope:scope];
  if (v8)
  {
    v8->_constantValue = value;
    v8->_type = 0;
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v9 = _sqlCoreLookupSQLEntityForEntityDescription([context objectForKey:@"persistentStore"], value);
      v10 = [context objectForKey:@"entitySpecificationKeypath"];
      if (v10)
      {
        [scope setDisambiguatingEntity:v9 withKeypath:v10 hasToMany:{objc_msgSend(objc_msgSend(context, "objectForKey:", @"entitySpecificationKeypathContainsToMany", "BOOLValue")}];
      }
    }
  }

  return v8;
}

- (BOOL)_addBindVarForConstId:(uint64_t)id ofType:(void *)type inContext:
{
  if (self)
  {
    if ([self isTargetColumnsScoped])
    {
      v8 = @"selectBindVars";
    }

    else
    {
      v8 = @"bindVars";
    }

    v9 = [type objectForKey:v8];
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v10 = _sqlCoreLookupSQLEntityForEntityDescription([type objectForKey:@"persistentStore"], a2);
      if (v10)
      {
        v11 = *(v10 + 184);
      }

      else
      {
        v11 = 0;
      }

      a2 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    }

    objc_opt_class();
    v12 = [[NSSQLBindVariable alloc] initWithValue:a2 sqlType:id propertyDescription:0 allowCoercion:(objc_opt_isKindOfClass() & 1) == 0];
    [v9 addObject:v12];
  }

  return self != 0;
}

- (id)generateSQLStringInContext:(id)context
{
  v85[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if ([(NSSQLIntermediate *)self isIndexScoped])
  {
    if (!self->_constantValue || (v6 = [MEMORY[0x1E695DFB0] null], v7 = self->_constantValue, v6 == v7))
    {
      v10 = @"nil";
    }

    else
    {
      isNSNumber = [v7 isNSNumber];
      constantValue = self->_constantValue;
      if (isNSNumber)
      {
        v10 = [constantValue description];
      }

      else if ([constantValue isNSString])
      {
        v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->_constantValue);
      }

      else if ([self->_constantValue isNSDate])
      {
        v38 = MEMORY[0x1E696AEC0];
        [self->_constantValue timeIntervalSinceReferenceDate];
        v10 = objc_msgSend_stringWithFormat_(v38, v39);
      }

      else
      {
        v40 = *MEMORY[0x1E695D940];
        v41 = self->_constantValue;
        v81 = @"valueSpecified";
        v82 = v41;
        [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v40, @"Can't specify non string/number/date value as part of index", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v82, &v81, 1)), @"NSUnderlyingException"}];
        v10 = 0;
      }
    }

    goto LABEL_90;
  }

  type = self->_type;
  entityDescription = self->_constantValue;
  if (!self->_type)
  {
    if (entityDescription)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectID = [entityDescription objectID];
        if (!objectID)
        {
          goto LABEL_24;
        }

LABEL_17:
        if (([objectID isTemporaryID] & 1) == 0 && (v16 = objc_msgSend(objectID, "persistentStore"), v16 == objc_msgSend(context, "objectForKey:", @"persistentStore")))
        {
          if ([(NSSQLIntermediate *)self isTargetColumnsScoped])
          {
            v42 = @"selectBindVars";
          }

          else
          {
            v42 = @"bindVars";
          }

          v18 = [context objectForKey:v42];
          if ([objc_msgSend(context objectForKey:{@"generatePairs", "BOOLValue"}])
          {
            v43 = [objc_msgSend(context objectForKey:{@"persistentStore", "model"}];
            if (v43)
            {
              v44 = *(v43 + 24);
            }

            else
            {
              v44 = 0;
            }

            v45 = [v44 objectForKey:{objc_msgSend(objectID, "entityName")}];
            v46 = [NSSQLBindVariable alloc];
            if (v45)
            {
              v47 = *(v45 + 184);
            }

            else
            {
              v47 = 0;
            }

            v48 = [(NSSQLBindVariable *)v46 initWithInt64:v47 sqlType:2];
            [v18 addObject:v48];
          }

          v20 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", [objectID _referenceData64], 2);
        }

        else
        {
          if ([(NSSQLIntermediate *)self isTargetColumnsScoped])
          {
            v17 = @"selectBindVars";
          }

          else
          {
            v17 = @"bindVars";
          }

          v18 = [context objectForKey:v17];
          v19 = [NSSQLBindVariable alloc];
          v20 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v19, "initWithValue:sqlType:propertyDescription:", [MEMORY[0x1E696AD98] numberWithLongLong:0], 2, 0);
        }

        v21 = v20;
        [v18 addObject:v20];

        v22 = 1;
        goto LABEL_83;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectID = entityDescription;
        goto LABEL_17;
      }
    }

LABEL_24:
    v23 = -[NSSQLiteAdapter sqlTypeForExpressionConstantValue:]([objc_msgSend(context objectForKey:{@"persistentStore", "adapter"}], entityDescription);
    _lastScopedItem = [(NSSQLIntermediate *)self->super._scope _lastScopedItem];
    if (!_lastScopedItem)
    {
      goto LABEL_73;
    }

    v25 = _lastScopedItem;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([objc_opt_class() isSimpleKeypath:v25] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v25))
    {
      goto LABEL_73;
    }

    v26 = [objc_msgSend(objc_msgSend(v25 "arguments")];
    destinationEntity = [(NSSQLIntermediate *)self governingEntityForKeypathExpression:v25];
    v28 = [v26 componentsSeparatedByString:@"."];
    v29 = [v28 count];
    v80 = v5;
    v79 = v23;
    if (v29)
    {
      v30 = v29;
      v31 = [v28 objectAtIndex:0];
      if (destinationEntity)
      {
        v32 = 1;
        while (1)
        {
          v33 = [destinationEntity[5] objectForKey:v31];
          if (!v33)
          {
            break;
          }

          v34 = v33;
          v35 = v33[24];
          v37 = v30 != v32 && v35 == 7;
          if (v35 == 9 || v37 || [v33 isToMany])
          {
            destinationEntity = [v34 destinationEntity];
          }

          if (v30 == v32)
          {
            goto LABEL_61;
          }

          v31 = [v28 objectAtIndex:v32++];
          if (!destinationEntity)
          {
            goto LABEL_44;
          }
        }

        if ([@"entity" isEqual:v31])
        {
          v34 = destinationEntity[17];
          goto LABEL_61;
        }
      }

      else
      {
LABEL_44:
        [@"entity" isEqual:v31];
      }
    }

    v34 = 0;
LABEL_61:
    propertyType = [v34 propertyType];
    v5 = v80;
    if (propertyType > 9)
    {
      goto LABEL_112;
    }

    if (((1 << propertyType) & 0x38C) != 0)
    {
      v23 = 2;
LABEL_64:
      if ([MEMORY[0x1E695DFB0] null] == entityDescription)
      {
        entityDescription = 0;
      }

      if (v23)
      {
        if (v23 == 7 && v79 == 8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v50 = MEMORY[0x1E696AD98];
            [entityDescription timeIntervalSinceReferenceDate];
            entityDescription = [v50 numberWithDouble:?];
          }

          v23 = 7;
        }
      }

      else
      {
        v23 = v79;
      }

LABEL_73:
      lastObject = [objc_msgSend_valueForKey_(context) lastObject];
      if ([lastObject isEqual:MEMORY[0x1E695E118]])
      {
        v52 = objc_msgSend_valueForKey_(context);
        model = [v52 model];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v54 = _sqlEntityForEntityDescription(model, entityDescription);
          if (!v54)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }

        if ([entityDescription isNSString])
        {
          v55 = [model entityNamed:entityDescription];
          if (!v55)
          {
            if (model)
            {
              v62 = model[3];
            }

            else
            {
              v62 = 0;
            }

            allKeys = [v62 allKeys];
            v64 = MEMORY[0x1E695E0F0];
            if (allKeys)
            {
              v65 = allKeys;
            }

            else
            {
              v65 = MEMORY[0x1E695E0F0];
            }

            identifier = [v52 identifier];
            if (identifier)
            {
              v67 = identifier;
            }

            else
            {
              v67 = @"no store ID";
            }

            configurationName = [v52 configurationName];
            if (configurationName)
            {
              v69 = configurationName;
            }

            else
            {
              v69 = @"no config";
            }

            v70 = [objc_msgSend(model "managedObjectModel")];
            if (v70)
            {
              v64 = objc_msgSend_valueForKey_(v70);
            }

            v83[0] = @"KnownEntities";
            v83[1] = @"StoreID";
            v84[0] = v65;
            v84[1] = v67;
            v83[2] = @"Configuration";
            v83[3] = @"ConfigurationEntities";
            v84[2] = v69;
            v84[3] = v64;
            v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:4];
            if (!objc_msgSend_valueForKey_([objc_msgSend(model "managedObjectModel")]) || (objc_msgSend(v64, "containsObject:", entityDescription) & 1) != 0 || (v72 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], entityDescription, v69)) == 0)
            {
              v72 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], entityDescription);
            }

            [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D930], v72, v71), @"NSUnderlyingException"}];
            v22 = 0;
            goto LABEL_83;
          }

          v54 = v55;
          entityDescription = [v55 entityDescription];
LABEL_80:
          v56 = objc_msgSend_valueForKey_(context);
          [v56 replaceObjectAtIndex:objc_msgSend(v56 withObject:{"indexOfObject:", lastObject), v54}];
        }
      }

LABEL_81:
      selfCopy2 = self;
      v14 = entityDescription;
      type = v23;
      goto LABEL_82;
    }

    if (propertyType != 1)
    {
      if (propertyType == 5)
      {
        v23 = 1;
        goto LABEL_64;
      }

LABEL_112:
      v23 = 0;
      goto LABEL_64;
    }

    sqlType = [v34 sqlType];
    if (sqlType != 18)
    {
      v23 = sqlType;
      if (sqlType == 15)
      {
        entityDescription = +[_PFRoutines retainedEncodeObjectValue:forTransformableAttribute:](_PFRoutines, entityDescription, [v34 propertyDescription]);
        v23 = 10;
        goto LABEL_73;
      }

      goto LABEL_64;
    }

    propertyDescription = [v34 propertyDescription];
    v84[0] = 0;
    if (entityDescription)
    {
      v75 = [propertyDescription encode:entityDescription withRegistry:objc_msgSend(objc_msgSend(objc_msgSend_valueForKey_(context) error:{"persistentStoreCoordinator"), "codableAdapterRegistry"), v84}];
      if (v75)
      {
        v23 = 10;
        entityDescription = v75;
        goto LABEL_73;
      }

      v76 = v84[0];
      if (v84[0])
      {
        v85[0] = *MEMORY[0x1E696AA08];
        v83[0] = v84[0];
        v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v85 count:1];
        v76 = v84[0];
LABEL_126:
        v78 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{entityDescription, v76), v77}];
        objc_exception_throw(v78);
      }
    }

    else
    {
      v76 = 0;
    }

    v77 = 0;
    goto LABEL_126;
  }

  selfCopy2 = self;
  v14 = self->_constantValue;
LABEL_82:
  v22 = [(NSSQLConstantValueIntermediate *)selfCopy2 _addBindVarForConstId:v14 ofType:type inContext:context];
LABEL_83:
  v57 = [objc_msgSend(context objectForKey:{@"generatePairs", "BOOLValue"}];
  v58 = @"(?, ?)";
  if (!v22)
  {
    v58 = 0;
  }

  v59 = @"?";
  if (!v22)
  {
    v59 = 0;
  }

  if (v57)
  {
    v10 = v58;
  }

  else
  {
    v10 = v59;
  }

LABEL_90:
  v60 = [(__CFString *)v10 mutableCopy];
  objc_autoreleasePoolPop(v5);
  return v60;
}

@end