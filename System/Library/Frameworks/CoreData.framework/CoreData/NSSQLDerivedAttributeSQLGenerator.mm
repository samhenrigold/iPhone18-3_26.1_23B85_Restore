@interface NSSQLDerivedAttributeSQLGenerator
+ (__CFString)_triggerColumnListComponentForAttributeKeypaths:(uint64_t)keypaths startingAt:;
+ (uint64_t)_computeNewColumnTokenForKeypathExpression:(uint64_t)expression governingEntity:;
+ (uint64_t)_computeSingleParameterTokenForFunctionAttribute:(uint64_t)attribute functionName:;
+ (uint64_t)_generateSQLForAttributeFunctionDerivationForDerivedAttribute:(void *)attribute keypaths:;
+ (uint64_t)_generateSQLForDerivedAttributeWithOneParameterKeypath:(void *)keypath keypaths:;
+ (uint64_t)_generateSQLForToOneDerivationForDerivedAttribute:(void *)attribute toOneKeypath:;
+ (uint64_t)_generateTriggerForAttribute:(uint64_t)attribute newToken:(void *)token updateToken:(uint64_t)updateToken triggerColumnListComponent:(uint64_t)component triggerColumnWhereComponent:(void *)whereComponent;
+ (uint64_t)_parameterPropertyTokenForDerivedAttribute:(void *)attribute andKeypath:(id *)keypath onEntity:;
+ (uint64_t)generateSQLForDerivedAttribute:(void *)attribute keypaths:;
@end

@implementation NSSQLDerivedAttributeSQLGenerator

+ (uint64_t)_parameterPropertyTokenForDerivedAttribute:(void *)attribute andKeypath:(id *)keypath onEntity:
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  if ([attribute count] != 2)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v16 = @"derived attribute";
    v17[0] = propertyDescription;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = @"Unsupported: (multi-step keypath)";
    goto LABEL_10;
  }

  v8 = [attribute objectAtIndexedSubscript:1];
  if (keypath)
  {
    keypath = [keypath[5] objectForKey:v8];
  }

  if ([keypath propertyType] != 1)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v14 = @"derived attribute";
    v15 = propertyDescription;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = @"Unsupported: (bad keypath, should be toOne.attribute)";
LABEL_10:
    objc_exception_throw([v10 exceptionWithName:v11 reason:v13 userInfo:v12]);
  }

  return [keypath columnName];
}

+ (uint64_t)_generateSQLForToOneDerivationForDerivedAttribute:(void *)attribute toOneKeypath:
{
  v82[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  entity = [a2 entity];
  propertyDescription = [a2 propertyDescription];
  derivationExpression = [propertyDescription derivationExpression];
  expressionType = [derivationExpression expressionType];
  v9 = [attribute objectAtIndexedSubscript:0];
  if (entity)
  {
    v10 = [*(entity + 40) objectForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  destinationEntity = [v10 destinationEntity];
  v73 = a2;
  columnName = [a2 columnName];
  if (expressionType != 4)
  {
    if (expressionType == 3)
    {
      v12 = [NSSQLDerivedAttributeSQLGenerator _parameterPropertyTokenForDerivedAttribute:a2 andKeypath:attribute onEntity:destinationEntity];
      v64 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12);
      v69 = v12;
      v67 = v12;
      goto LABEL_10;
    }

    v59 = MEMORY[0x1E695DF30];
    v60 = *MEMORY[0x1E695D940];
    v79 = @"derived attribute";
    v80 = propertyDescription;
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v62 = @"Unsupported: (unsupported expression for to one)";
LABEL_46:
    objc_exception_throw([v59 exceptionWithName:v60 reason:v62 userInfo:v61]);
  }

  v13 = [NSSQLDerivedAttributeSQLGenerator _parameterPropertyTokenForDerivedAttribute:a2 andKeypath:attribute onEntity:destinationEntity];
  selector = [derivationExpression selector];
  v67 = v13;
  if (sel_canonical_ != selector && sel_uppercase_ != selector && sel_lowercase_ != selector)
  {
    v59 = MEMORY[0x1E695DF30];
    v60 = *MEMORY[0x1E695D940];
    v81 = @"derived attribute";
    v82[0] = propertyDescription;
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:&v81 count:1];
    v62 = @"Unsupported: (unsupported function for to one)";
    goto LABEL_46;
  }

  v64 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13);
  v69 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13);
LABEL_10:
  tableName = [entity tableName];
  tableName2 = [destinationEntity tableName];
  columnName2 = [v10 columnName];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", tableName, objc_msgSend(objc_msgSend(propertyDescription, "entity"), "name"), objc_msgSend(propertyDescription, "name")];
  v72 = tableName2;
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", tableName2, objc_msgSend(objc_msgSend(propertyDescription, "entity"), "name"), objc_msgSend(propertyDescription, "name")];
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v17];
  v68 = v17;
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v17];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v18];
  v70 = v18;
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v18];
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v19];

  [array addObject:v25];
  v26 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v20];

  [array addObject:v26];
  v27 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v21];

  [array addObject:v27];
  v28 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v22];

  v66 = array;
  [array addObject:v28];

  v78[0] = v25;
  v78[1] = v26;
  v78[2] = v27;
  v78[3] = v28;
  v65 = dictionary;
  [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v78, 4), @"dropStatements"}];
  if (entity)
  {
    v29 = v68;
    if (*(entity + 160) || (v36 = *(entity + 152)) != 0 && [v36 count] && *(entity + 160))
    {
      v30 = *(entity + 184);
      v31 = *(entity + 188);
      v32 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v30 >= v31)
      {
        v33 = [v32 initWithFormat:@"%d = NEW.Z_ENT", v30];
        v34 = 0x1E696A000uLL;
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d = Z_ENT", v30, v63];
      }

      else
      {
        v33 = [v32 initWithFormat:@"%d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v30, v31];
        v34 = 0x1E696A000uLL;
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d <= Z_ENT AND Z_ENT <= %d", v30, v31];
      }

      v37 = v35;
    }

    else
    {
      v34 = 0x1E696A000uLL;
      v37 = 0;
      v33 = 0;
    }
  }

  else
  {
    v34 = 0x1E696A000;
    v37 = 0;
    v33 = 0;
    v29 = v68;
  }

  v38 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v38 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v29, tableName];
  [v38 appendString:@" BEGIN"];
  if (v33)
  {
    v39 = objc_msgSend_stringWithFormat_(*(v34 + 3776), v33);
  }

  else
  {
    v39 = &stru_1EF3F1768;
  }

  [v38 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = NEW.%@) WHERE Z_PK = NEW.Z_PK%@;", tableName, columnName, v69, v72, columnName2, v39];
  name = [v73 name];
  if (v33)
  {
    v41 = objc_msgSend_stringWithFormat_(*(v34 + 3776), v33);
  }

  else
  {
    v41 = &stru_1EF3F1768;
  }

  [v38 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK%@;", tableName, name, columnName, tableName, v41];
  [v38 appendFormat:@" END"];
  v42 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v33)
  {
    v43 = objc_msgSend_stringWithFormat_(*(v34 + 3776), v33);
  }

  else
  {
    v43 = &stru_1EF3F1768;
  }

  [v42 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE OF %@ ON %@ FOR EACH ROW%@", v29, columnName2, tableName, v43];
  [v42 appendString:@" BEGIN"];
  [v42 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = NEW.%@) WHERE Z_PK = NEW.Z_PK;", tableName, columnName, v69, v72, columnName2];
  [v42 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", tableName, objc_msgSend(v73, "name"), columnName, tableName];
  [v42 appendFormat:@" END"];
  v44 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v44 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v70, v72];
  [v44 appendString:@" BEGIN"];
  if (v37)
  {
    v45 = objc_msgSend_stringWithFormat_(*(v34 + 3776), v37);
  }

  else
  {
    v45 = &stru_1EF3F1768;
  }

  [v44 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE %@ = NEW.Z_PK%@;", tableName, columnName, v64, columnName2, v45];
  name2 = [v73 name];
  if (v37)
  {
    v47 = objc_msgSend_stringWithFormat_(*(v34 + 3776), v37);
  }

  else
  {
    v47 = &stru_1EF3F1768;
  }

  [v44 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE %@ = NEW.Z_PK%@;", tableName, name2, columnName, tableName, columnName2, v47];
  [v44 appendFormat:@" END"];
  v48 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v48 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE OF %@ ON %@ FOR EACH ROW", v70, v67, v72];
  [v48 appendString:@" BEGIN"];
  if (v37)
  {
    v49 = objc_msgSend_stringWithFormat_(*(v34 + 3776), v37);
  }

  else
  {
    v49 = &stru_1EF3F1768;
  }

  [v48 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE %@ = NEW.Z_PK%@;", tableName, columnName, v64, columnName2, v49];
  name3 = [v73 name];
  if (v37)
  {
    v51 = objc_msgSend_stringWithFormat_(*(v34 + 3776), v37);
  }

  else
  {
    v51 = &stru_1EF3F1768;
  }

  [v48 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE %@ = NEW.Z_PK%@;", tableName, name3, columnName, tableName, columnName2, v51];
  [v48 appendFormat:@" END"];

  v52 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v38];
  [v66 addObject:v52];

  v53 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v42];
  [v66 addObject:v53];

  v54 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v44];
  [v66 addObject:v54];

  v55 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v48];
  [v66 addObject:v55];

  v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT %@ FROM %@ WHERE Z_PK = %@.%@)%@", tableName, columnName, v69, v72, tableName, columnName2, &stru_1EF3F1768];
  v57 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v56];

  v77 = v57;
  [v65 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v77, 1), @"dataStatements"}];

  v76[0] = v52;
  v76[1] = v53;
  v76[2] = v54;
  v76[3] = v55;
  [v65 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v76, 4), @"triggerCreationStatements"}];
  v75[0] = v66;
  v75[1] = v65;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
}

+ (uint64_t)_generateTriggerForAttribute:(uint64_t)attribute newToken:(void *)token updateToken:(uint64_t)updateToken triggerColumnListComponent:(uint64_t)component triggerColumnWhereComponent:(void *)whereComponent
{
  v45[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  entity = [token entity];
  propertyDescription = [token propertyDescription];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(entity, "tableName"), objc_msgSend(objc_msgSend(propertyDescription, "entity"), "name"), objc_msgSend(propertyDescription, "name")];
  tableName = [entity tableName];
  columnName = [token columnName];
  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v10];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v10];
  if ([objc_msgSend(propertyDescription "derivationExpression")] == 3 && (v13 = objc_msgSend(objc_msgSend(propertyDescription, "derivationExpression"), "keyPath"), entity) && (v14 = objc_msgSend(*(entity + 40), "objectForKey:", v13)) != 0)
  {
    v41 = [objc_msgSend(v14 "propertyDescription")];
  }

  else
  {
    v41 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v15 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v10, tableName];
  if ([whereComponent length])
  {
    [v15 appendFormat:@" WHEN (NEW.%@ NOT NULL)", whereComponent];
  }

  [v15 appendString:@" BEGIN"];
  if (v41)
  {
    [v15 appendFormat:@" UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) WHERE Z_PK = NEW.Z_PK;", tableName, columnName, tableName, objc_msgSend(token, "name"), component];
  }

  else
  {
    [v15 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE Z_PK = NEW.Z_PK;", tableName, columnName, updateToken, v31, v33];
  }

  [v15 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", tableName, objc_msgSend(token, "name"), columnName, tableName];
  [v15 appendFormat:@" END"];
  v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v16 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE OF %@ ON %@ FOR EACH ROW", v10, whereComponent, tableName];
  if ([&stru_1EF3F1768 length])
  {
    [v16 appendFormat:@" %@", &stru_1EF3F1768];
  }

  [v16 appendString:@" BEGIN"];
  componentCopy = component;
  if (v41)
  {
    [v16 appendFormat:@" UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) WHERE Z_PK = NEW.Z_PK;", tableName, columnName, tableName, objc_msgSend(token, "name"), component];
  }

  else
  {
    [v16 appendFormat:@" UPDATE %@ SET %@ = %@ WHERE Z_PK = NEW.Z_PK;", tableName, columnName, updateToken, v32, v34];
  }

  [v16 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", tableName, objc_msgSend(token, "name"), columnName, tableName];
  [v16 appendFormat:@" END"];

  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v37];
  [array addObject:v19];

  v20 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v38];
  [array addObject:v20];

  v45[0] = v19;
  v45[1] = v20;
  [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v45, 2), @"dropStatements"}];

  v21 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v15];
  [array addObject:v21];

  v22 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v16];
  [array addObject:v22];

  if (entity && (*(entity + 160) || (v24 = *(entity + 152)) != 0 && [v24 count] && *(entity + 160)))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WHERE %d <= Z_ENT AND Z_ENT <= %d", *(entity + 184), *(entity + 188)];
  }

  else
  {
    v23 = &stru_1EF3F1768;
  }

  v25 = v23;
  v26 = objc_alloc(MEMORY[0x1E696AD60]);
  if (v41)
  {
    v27 = [v26 initWithFormat:@"UPDATE %@ SET %@ = NSCoreDataDATriggerMergeableString('%@', Z_ENT, Z_PK, '%@', %@) %@", tableName, columnName, tableName, objc_msgSend(token, "name"), componentCopy, v25];
  }

  else
  {
    v27 = [v26 initWithFormat:@"UPDATE %@ SET %@ = %@ %@", tableName, columnName, componentCopy, v25, v35, v36];
  }

  v28 = v27;

  v29 = [[NSSQLiteStatement alloc] initWithEntity:entity sqlString:v28];
  v44 = v29;
  [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v44, 1), @"dataStatements"}];
  v43[0] = v21;
  v43[1] = v22;
  [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v43, 2), @"triggerCreationStatements"}];

  v42[0] = array;
  v42[1] = dictionary;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
}

+ (uint64_t)_computeNewColumnTokenForKeypathExpression:(uint64_t)expression governingEntity:
{
  v20[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  keyPath = [a2 keyPath];
  if (!expression || (v6 = [*(expression + 40) objectForKey:keyPath]) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v19 = @"bad keypath";
    v20[0] = a2;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v12 = v9;
    v13 = v10;
    v14 = @"bad keypath";
    goto LABEL_7;
  }

  v7 = v6;
  if ([objc_msgSend(v6 "propertyDescription")] != 2)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"bad keypath";
    v18 = a2;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = @"currently unsupported (bad root property type)";
    v12 = v15;
    v13 = v16;
LABEL_7:
    objc_exception_throw([v12 exceptionWithName:v13 reason:v14 userInfo:v11]);
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v7 columnName]);
}

+ (uint64_t)_computeSingleParameterTokenForFunctionAttribute:(uint64_t)attribute functionName:
{
  v19[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  v6 = [objc_msgSend(propertyDescription "derivationExpression")];
  if ([v6 count] != 1)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v18 = @"derived attribute";
    v19[0] = propertyDescription;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = @"currently unsupported (wrong number of arguments)";
    goto LABEL_6;
  }

  entity = [a2 entity];
  firstObject = [v6 firstObject];
  if ([firstObject expressionType] != 3)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v16 = @"derived attribute";
    v17 = propertyDescription;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = @"bad parameter to function expression canonical: (not a keypath expression)";
LABEL_6:
    objc_exception_throw([v12 exceptionWithName:v13 reason:v15 userInfo:v14]);
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [NSSQLDerivedAttributeSQLGenerator _computeNewColumnTokenForKeypathExpression:firstObject governingEntity:entity];
  return objc_msgSend_stringWithFormat_(v9, attribute, v10);
}

+ (__CFString)_triggerColumnListComponentForAttributeKeypaths:(uint64_t)keypaths startingAt:
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![a2 count] || objc_msgSend(a2, "count") == 1 && !objc_msgSend(objc_msgSend(a2, "anyObject"), "count"))
  {
    return @"Z_OPT";
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = 1;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if ([v11 count] >= 2)
        {
          v17 = *MEMORY[0x1E695D940];
          v22 = @"problem keypath";
          v23 = v11;
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v17 reason:@"currently unsupported (extended keypath)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v23, &v22, 1)}]);
        }

        firstObject = [v11 firstObject];
        if (keypaths)
        {
          v13 = [*(keypaths + 40) objectForKey:firstObject];
        }

        else
        {
          v13 = 0;
        }

        columnName = [v13 columnName];
        if ((v9 & 1) == 0)
        {
          [v5 appendString:{@", "}];
        }

        [v5 appendString:columnName];
        v9 = 0;
        ++v10;
      }

      while (v7 != v10);
      v15 = [a2 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v7 = v15;
      v9 = 0;
    }

    while (v15);
  }

  return v5;
}

+ (uint64_t)_generateSQLForAttributeFunctionDerivationForDerivedAttribute:(void *)attribute keypaths:
{
  v15[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = +[NSSQLDerivedAttributeSQLGenerator _triggerColumnListComponentForAttributeKeypaths:startingAt:](NSSQLDerivedAttributeSQLGenerator, attribute, [a2 entity]);
  [a2 entity];
  objc_opt_self();
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  v7 = [objc_msgSend(propertyDescription "derivationExpression")];
  if (sel_canonical_ == v7)
  {
    v9 = @"NSCoreDataCanonical";
LABEL_11:
    v8 = [NSSQLDerivedAttributeSQLGenerator _computeSingleParameterTokenForFunctionAttribute:a2 functionName:v9];
    goto LABEL_12;
  }

  if (sel_uppercase_ == v7)
  {
    v9 = @"NSCoreDataToUpper";
    goto LABEL_11;
  }

  if (sel_lowercase_ == v7)
  {
    v9 = @"NSCoreDataToLower";
    goto LABEL_11;
  }

  if (sel_random == v7)
  {
    v9 = @"random";
    goto LABEL_11;
  }

  if (sel_now != v7)
  {
    v13 = *MEMORY[0x1E695D940];
    v14 = @"derived attribute";
    v15[0] = propertyDescription;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v13 reason:@"currently unsupported (unsupported function)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}]);
  }

  objc_opt_self();
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
LABEL_12:
  v10 = v8;
  v11 = [v8 stringByReplacingOccurrencesOfString:@"NEW." withString:&stru_1EF3F1768];

  return [NSSQLDerivedAttributeSQLGenerator _generateTriggerForAttribute:a2 newToken:v10 updateToken:v11 triggerColumnListComponent:v5 triggerColumnWhereComponent:?];
}

+ (uint64_t)_generateSQLForDerivedAttributeWithOneParameterKeypath:(void *)keypath keypaths:
{
  v257[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  v6 = [objc_msgSend(propertyDescription "derivationExpression")];
  v7 = [objc_msgSend(keypath "anyObject")];
  v231 = a2;
  entity = [a2 entity];
  if (entity)
  {
    entity = [entity[5] objectForKey:v7];
  }

  propertyType = [entity propertyType];
  if (v6 == 4)
  {
    if (propertyType <= 7)
    {
      if (propertyType == 1)
      {

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForAttributeFunctionDerivationForDerivedAttribute:a2 keypaths:keypath];
      }

      if (propertyType == 7)
      {
LABEL_12:
        objc_opt_self();
        anyObject = [keypath anyObject];

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForToOneDerivationForDerivedAttribute:a2 toOneKeypath:anyObject];
      }

LABEL_107:
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v237 = @"derived attribute";
      v238 = propertyDescription;
      v166 = MEMORY[0x1E695DF20];
      v167 = &v238;
      v168 = &v237;
      goto LABEL_108;
    }

    if (propertyType != 8)
    {
      if (propertyType != 9)
      {
        goto LABEL_107;
      }

      objc_opt_self();
      propertyDescription2 = [a2 propertyDescription];
      v17 = [-[NSSQLiteStatement derivationExpression](propertyDescription2 "derivationExpression")];
      if (sel_count_ == v17)
      {
        v18 = v17;
        anyObject2 = [keypath anyObject];
        objc_opt_self();
        entity2 = [a2 entity];
        propertyDescription3 = [a2 propertyDescription];
        derivationExpression = [(NSSQLiteStatement *)propertyDescription3 derivationExpression];
        v23 = [anyObject2 objectAtIndexedSubscript:0];
        if (entity2)
        {
          v24 = [*(entity2 + 40) objectForKey:v23];
        }

        else
        {
          v24 = 0;
        }

        columnName = [v231 columnName];
        columnName2 = [v24 columnName];
        if (v18 == [derivationExpression selector])
        {
          tableName = [entity2 tableName];
          correlationTableName = [v24 correlationTableName];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", correlationTableName, objc_msgSend(entity2, "name"), -[NSSQLiteStatement name](propertyDescription3, "name")];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", objc_msgSend(entity2, "tableName"), objc_msgSend(entity2, "name"), -[NSSQLiteStatement name](propertyDescription3, "name")];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v26];
          v228 = v26;
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v26];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v27];
          array = [MEMORY[0x1E695DF70] array];
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v33 = [[NSSQLiteStatement alloc] initWithEntity:entity2 sqlString:v28];
          [array addObject:v33];

          v34 = [[NSSQLiteStatement alloc] initWithEntity:entity2 sqlString:v29];
          [array addObject:v34];

          v35 = [[NSSQLiteStatement alloc] initWithEntity:entity2 sqlString:v30];
          [array addObject:v35];

          v250 = v33;
          v251 = v34;
          v252 = v35;
          v213 = dictionary;
          [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v250, 3), @"dropStatements"}];
          v216 = entity2;
          v210 = array;
          if (entity2 && (*(entity2 + 160) || (v71 = *(entity2 + 152)) != 0 && [v71 count] && *(entity2 + 160)))
          {
            v36 = entity2;
            v37 = tableName;
            v38 = *(v36 + 184);
            v39 = *(v36 + 188);
            v40 = objc_alloc(MEMORY[0x1E696AEC0]);
            v41 = correlationTableName;
            v42 = columnName2;
            if (v38 >= v39)
            {
              v201 = [v40 initWithFormat:@" WHEN %d = NEW.Z_ENT", v38];
              v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v38];
              v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v38, v176];
            }

            else
            {
              v201 = [v40 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v38, v39];
              v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v38, v39];
              v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v38, v39];
            }
          }

          else
          {
            v37 = tableName;
            v41 = correlationTableName;
            v42 = columnName2;
            v201 = &stru_1EF3F1768;
            v43 = &stru_1EF3F1768;
            v176 = &stru_1EF3F1768;
          }

          v206 = v176;
          v72 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v73 = v41;
          [v72 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW", v228, v41];
          [v72 appendString:@" BEGIN"];
          [v72 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1 WHERE Z_PK = NEW.%@%@;", v37, columnName, columnName, v42, v43];
          [v72 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v37, objc_msgSend(v231, "name"), columnName, v37, v42, v43];
          [v72 appendFormat:@" END"];
          v74 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v196 = v73;
          [v74 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW", v228, v73];
          [v74 appendString:@" BEGIN"];
          [v74 appendFormat:@" UPDATE %@ SET %@ = %@ - 1 WHERE Z_PK = OLD.%@%@;", v37, columnName, columnName, v42, v43];
          [v74 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v37, objc_msgSend(v231, "name"), columnName, v37, v42, v43];
          [v74 appendFormat:@" END"];
          v75 = objc_alloc_init(MEMORY[0x1E696AD60]);
          [v75 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v27, v37, v201];
          [v75 appendString:@" BEGIN"];
          [v75 appendFormat:@" UPDATE %@ SET %@ = (SELECT IFNULL(COUNT(%@), 0) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", v37, columnName, v42, v73, v42];
          [v75 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v37, objc_msgSend(v231, "name"), columnName, v37];
          [v75 appendFormat:@" END"];

          v232 = [[NSSQLiteStatement alloc] initWithEntity:v216 sqlString:v72];
          [v210 addObject:v232];

          v76 = [[NSSQLiteStatement alloc] initWithEntity:v216 sqlString:v74];
          [v210 addObject:v76];

          v77 = [[NSSQLiteStatement alloc] initWithEntity:v216 sqlString:v75];
          [v210 addObject:v77];

          v206 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT IFNULL(COUNT(%@), 0) FROM %@ WHERE %@ = %@.Z_PK)%@;", v37, columnName, v42, v196, v42, v37, v206];
          v79 = [[NSSQLiteStatement alloc] initWithEntity:v216 sqlString:v206];

          v257[0] = v79;
          [v213 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v257, 1), @"dataStatements"}];
          v245 = v232;
          v246 = v76;
          v247 = v77;
          [v213 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v245, 3), @"triggerCreationStatements"}];

          v255 = v210;
          v256 = v213;
          v80 = MEMORY[0x1E695DEC8];
          return [v80 arrayWithObjects:&v255 count:2];
        }

        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v245 = @"derived attribute";
        v250 = propertyDescription3;
LABEL_117:
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v250 forKeys:&v245 count:1];
        v13 = @"Unsupported: (unsupported function)";
        goto LABEL_118;
      }

      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v245 = @"derived attribute";
      v250 = propertyDescription2;
      v169 = MEMORY[0x1E695DF20];
      v170 = &v250;
      v171 = &v245;
LABEL_113:
      v12 = [v169 dictionaryWithObjects:v170 forKeys:v171 count:1];
      v13 = @"currently unsupported (unsupported function on to many (not count or sum))";
      goto LABEL_118;
    }

    objc_opt_self();
    propertyDescription4 = [a2 propertyDescription];
    v49 = [objc_msgSend(propertyDescription4 "derivationExpression")];
    if (sel_count_ != v49 && sel_sum_ != v49)
    {
      if (sel_min_ != v49 && sel_max_ != v49)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v243 = @"derived attribute";
        v244 = propertyDescription4;
        v169 = MEMORY[0x1E695DF20];
        v170 = &v244;
        v171 = &v243;
        goto LABEL_113;
      }

      anyObject3 = [keypath anyObject];
      objc_opt_self();
      entity3 = [v231 entity];
      propertyDescription5 = [v231 propertyDescription];
      derivationExpression2 = [(NSSQLiteStatement *)propertyDescription5 derivationExpression];
      v54 = [anyObject3 objectAtIndexedSubscript:0];
      if (entity3)
      {
        v55 = [entity3[5] objectForKey:v54];
      }

      else
      {
        v55 = 0;
      }

      destinationEntity = [v55 destinationEntity];
      columnName3 = [v231 columnName];
      if (v55)
      {
        v56 = v55[7];
      }

      else
      {
        v56 = 0;
      }

      columnName4 = [v56 columnName];
      v58 = [anyObject3 objectAtIndexedSubscript:1];
      if (destinationEntity)
      {
        v59 = [*(destinationEntity + 40) objectForKey:v58];
      }

      else
      {
        v59 = 0;
      }

      columnName5 = [v59 columnName];
      v207 = columnName4;
      v202 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName4, columnName5);
      if (sel_min_ == [derivationExpression2 selector])
      {
        v220 = @"<";
        v60 = @"MIN";
      }

      else
      {
        if (sel_max_ != [derivationExpression2 selector])
        {
          v174 = MEMORY[0x1E695DF30];
          v175 = *MEMORY[0x1E695D940];
          v245 = @"derived attribute";
          v250 = propertyDescription5;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v250 forKeys:&v245 count:1];
          v13 = @"Unsupported: (unsupported function)";
          v172 = v174;
          v173 = v175;
LABEL_119:
          objc_exception_throw([v172 exceptionWithName:v173 reason:v13 userInfo:v12]);
        }

        v220 = @">";
        v60 = @"MAX";
      }

      v211 = v60;
      tableName2 = [entity3 tableName];
      tableName3 = [destinationEntity tableName];
      v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(destinationEntity, "tableName"), objc_msgSend(entity3, "name"), -[NSSQLiteStatement name](propertyDescription5, "name")];
      v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@", objc_msgSend(entity3, "tableName"), objc_msgSend(entity3, "name"), -[NSSQLiteStatement name](propertyDescription5, "name")];
      v214 = entity3;
      v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v83];
      v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_SET", v83];
      v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_UNSET", v83];
      v225 = v83;
      v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v83];
      v187 = v84;
      v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v84];
      array2 = [MEMORY[0x1E695DF70] array];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v92 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v85];
      [array2 addObject:v92];

      v93 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v86];
      [array2 addObject:v93];

      v94 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v87];
      [array2 addObject:v94];

      v95 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v88];
      [array2 addObject:v95];

      v96 = [[NSSQLiteStatement alloc] initWithEntity:v214 sqlString:v89];
      v191 = array2;
      [array2 addObject:v96];

      v250 = v92;
      v251 = v93;
      v252 = v94;
      v253 = v95;
      v254 = v96;
      v189 = dictionary2;
      [dictionary2 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v250, 5), @"dropStatements"}];

      if (v214 && (v214[20] || (v104 = v214[19]) != 0 && [v104 count] && v214[20]))
      {
        v97 = *(v214 + 46);
        v98 = *(v214 + 47);
        v99 = 0x1E696A000uLL;
        v100 = objc_alloc(MEMORY[0x1E696AEC0]);
        v101 = v207;
        if (v97 >= v98)
        {
          v183 = [v100 initWithFormat:@" WHEN %d = NEW.Z_ENT", v97];
          v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v97];
          v177 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v97, v177];
        }

        else
        {
          v183 = [v100 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v97, v98];
          v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v97, v98];
          v177 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v97, v98];
        }

        v185 = v177;
      }

      else
      {
        v183 = &stru_1EF3F1768;
        v102 = &stru_1EF3F1768;
        v185 = &stru_1EF3F1768;
        v99 = 0x1E696A000;
        v101 = v207;
      }

      v105 = destinationEntity;
      if (destinationEntity && (*(destinationEntity + 160) || (v111 = *(destinationEntity + 152)) != 0 && (v112 = [v111 count], v105 = destinationEntity, v112) && *(destinationEntity + 160)))
      {
        v106 = *(v105 + 184);
        v107 = *(v105 + 188);
        v108 = objc_alloc(*(v99 + 3776));
        if (v106 >= v107)
        {
          v106 = [v108 initWithFormat:@" AND %d = Z_ENT", v106];
          v1772 = [objc_alloc(*(v99 + 3776)) initWithFormat:@" WHERE %d = Z_ENT", v106, v177];
        }

        else
        {
          v106 = [v108 initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v106, v107];
          v1772 = [objc_alloc(*(v99 + 3776)) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v106, v107];
        }
      }

      else
      {
        v106 = &stru_1EF3F1768;
        v1772 = &stru_1EF3F1768;
      }

      v181 = v1772;
      v113 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v113 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL AND NEW.%@ NOT NULL%@)", v225, tableName3, v101, columnName5, v106];
      [v113 appendString:@" BEGIN"];
      v114 = v106;
      v209 = v106;
      v115 = columnName3;
      v116 = tableName2;
      v180 = v113;
      [v113 appendFormat:@" UPDATE %@ SET %@ = NEW.%@ WHERE Z_PK = NEW.%@%@ AND %@;", tableName2, columnName3, columnName5, v101, v102, objc_msgSend_stringWithFormat_(*(v99 + 3776), columnName3, columnName5, v220, columnName3)];
      [v113 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@ AND %@;", v116, objc_msgSend(v231, "name"), v115, v116, v101, v102, objc_msgSend_stringWithFormat_(*(v99 + 3776), v115, columnName5, v220, v115)];
      [v113 appendFormat:@" END"];
      v117 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v117 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_SET AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL AND NEW.%@ NOT NULL%@)", v225, v202, tableName3, v101, columnName5, v114];
      v200 = v117;
      [v117 appendString:@" BEGIN"];
      [v117 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", tableName2, columnName3, v211, columnName5, tableName3, v101, v101, v101, v102, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName5, v220, columnName3)];
      name = [v231 name];
      [v200 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v116, name, columnName3, v116, v101, v102, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName5, v220, columnName3)];
      [v200 appendFormat:@" UPDATE %@ SET %@ = NEW.%@ WHERE Z_PK = NEW.%@%@ AND %@;", tableName2, v115, columnName5, v101, v102, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v115, columnName5, v220, v115)];
      name2 = [v231 name];
      [v200 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@ AND %@;", v116, name2, columnName3, v116, v101, v102, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName5, v220, columnName3)];
      [v200 appendFormat:@" END"];
      v120 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v120 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_UNSET AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL AND OLD.%@ NOT NULL AND (NEW.%@ IS NULL OR NEW.%@ IS NULL)%@)", v225, v202, tableName3, v101, columnName5, v101, columnName5, v209];
      [v120 appendString:@" BEGIN"];
      [v120 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", tableName2, columnName3, v211, columnName5, tableName3, v101, v101, v101, v102, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName5, v220, columnName3)];
      name3 = [v231 name];
      [v120 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v116, name3, v115, v116, v101, v102, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v115, columnName5, v220, v115)];
      [v120 appendFormat:@" END"];
      v122 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v122 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL AND OLD.%@ NOT NULL%@)", v225, tableName3, v101, columnName5, v209];
      [v122 appendString:@" BEGIN"];
      [v122 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = OLD.%@) WHERE Z_PK = OLD.%@%@ AND %@;", tableName2, columnName3, v211, columnName5, tableName3, v101, v101, v101, v102, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName5, v220, columnName3)];
      name4 = [v231 name];
      [v122 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@ AND %@;", v116, name4, v115, v116, v101, v102, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v115, columnName5, v220, v115)];
      [v122 appendFormat:@" END"];
      v124 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v124 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v187, tableName2, v183];
      [v124 appendString:@" BEGIN"];
      [v124 appendFormat:@" UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", tableName2, columnName3, v211, columnName5, objc_msgSend(destinationEntity, "tableName"), v101];
      [v124 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", v116, objc_msgSend(v231, "name"), columnName3, v116];
      [v124 appendFormat:@" END"];

      v233 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v180];
      [v191 addObject:v233];

      v226 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v200];
      [v191 addObject:v226];

      v221 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v120];
      [v191 addObject:v221];

      v125 = [[NSSQLiteStatement alloc] initWithEntity:destinationEntity sqlString:v122];
      [v191 addObject:v125];

      v126 = [[NSSQLiteStatement alloc] initWithEntity:v214 sqlString:v124];
      [v191 addObject:v126];

      v181 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT %@(%@) FROM %@ WHERE %@ = %@.Z_PK)%@;", v116, columnName3, v211, columnName5, objc_msgSend(destinationEntity, "tableName"), v101, v116, v181];
      v128 = [[NSSQLiteStatement alloc] initWithEntity:v214 sqlString:v181];

      v257[0] = v128;
      [v189 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v257, 1), @"dataStatements"}];
      v245 = v233;
      v246 = v226;
      v247 = v221;
      v248 = v125;
      v249 = v126;
      [v189 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v245, 5), @"triggerCreationStatements"}];

      v255 = v191;
      v256 = v189;
LABEL_103:
      v80 = MEMORY[0x1E695DEC8];
      return [v80 arrayWithObjects:&v255 count:2];
    }

    anyObject4 = [keypath anyObject];
    objc_opt_self();
    entity4 = [v231 entity];
    propertyDescription6 = [v231 propertyDescription];
    derivationExpression3 = [(NSSQLiteStatement *)propertyDescription6 derivationExpression];
    v65 = [anyObject4 objectAtIndexedSubscript:0];
    if (entity4)
    {
      v66 = [*(entity4 + 40) objectForKey:v65];
    }

    else
    {
      v66 = 0;
    }

    destinationEntity2 = [v66 destinationEntity];
    columnName6 = [v231 columnName];
    if (v66)
    {
      v68 = v66[7];
    }

    else
    {
      v68 = 0;
    }

    columnName7 = [v68 columnName];
    if (sel_count_ != [derivationExpression3 selector])
    {
      goto LABEL_49;
    }

    if ([anyObject4 count] < 2)
    {
      v69 = 0;
      v199 = 1;
      v224 = columnName7;
      v230 = @"+ 1";
      v70 = @"- 1";
    }

    else
    {
      v81 = [anyObject4 objectAtIndexedSubscript:1];
      if (!destinationEntity2 || (v82 = [destinationEntity2[5] objectForKey:v81]) == 0 || v82[24] != 1)
      {
LABEL_49:
        v69 = 0;
        v199 = 0;
        v70 = 0;
        v224 = 0;
        v230 = 0;
        goto LABEL_83;
      }

      v70 = 0;
      v224 = 0;
      v230 = 0;
      v69 = [objc_msgSend(v82 "propertyDescription")] == 800;
      v199 = v69;
    }

LABEL_83:
    selector = [derivationExpression3 selector];
    v203 = v69;
    if (v69 || (columnName8 = v224, sel_sum_ == selector))
    {
      v131 = [anyObject4 objectAtIndexedSubscript:1];
      if (destinationEntity2)
      {
        v132 = [destinationEntity2[5] objectForKey:v131];
      }

      else
      {
        v132 = 0;
      }

      columnName8 = [v132 columnName];
      v230 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName8);
      v70 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName8);
      v224 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], columnName7, columnName8);
    }

    v222 = columnName8;
    if (!v230 || !v70)
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v245 = @"derived attribute";
      v250 = propertyDescription6;
      goto LABEL_117;
    }

    v190 = v70;
    tableName4 = [entity4 tableName];
    tableName5 = [destinationEntity2 tableName];
    v218 = destinationEntity2;
    v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_PARAMETER", objc_msgSend(destinationEntity2, "tableName"), objc_msgSend(entity4, "name"), -[NSSQLiteStatement name](propertyDescription6, "name")];
    v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_DA_%@_%@_%@_SOURCE", objc_msgSend(entity4, "tableName"), objc_msgSend(entity4, "name"), -[NSSQLiteStatement name](propertyDescription6, "name")];
    v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v133];
    v1332 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_INCREMENT", v133];
    v1333 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE_DECREMENT", v133];
    v215 = v133;
    v1334 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v133];
    v188 = v134;
    v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v134];
    array3 = [MEMORY[0x1E695DF70] array];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v142 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v133];
    [array3 addObject:v142];

    v143 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v1332];
    [array3 addObject:v143];

    v144 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v1333];
    [array3 addObject:v144];

    v145 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v1334];
    [array3 addObject:v145];

    v146 = [[NSSQLiteStatement alloc] initWithEntity:entity4 sqlString:v134];
    [array3 addObject:v146];

    v250 = v142;
    v251 = v143;
    v252 = v144;
    v253 = v145;
    v254 = v146;
    v192 = dictionary3;
    [dictionary3 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v250, 5), @"dropStatements"}];
    v197 = entity4;
    if (entity4 && (*(entity4 + 160) || (v152 = *(entity4 + 152)) != 0 && [v152 count] && *(entity4 + 160)))
    {
      v147 = *(entity4 + 184);
      v148 = *(entity4 + 188);
      v149 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v147 >= v148)
      {
        v147 = [v149 initWithFormat:@" WHEN %d = NEW.Z_ENT", v147];
        v1472 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d = Z_ENT", v147];
        v178 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d = Z_ENT", v147, v178];
      }

      else
      {
        v147 = [v149 initWithFormat:@" WHEN %d <= NEW.Z_ENT AND NEW.Z_ENT <= %d", v147, v148];
        v1472 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" AND %d <= Z_ENT AND Z_ENT <= %d", v147, v148];
        v178 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" WHERE %d <= Z_ENT AND Z_ENT <= %d", v147, v148];
      }
    }

    else
    {
      v147 = &stru_1EF3F1768;
      v1472 = &stru_1EF3F1768;
      v178 = &stru_1EF3F1768;
    }

    v186 = v178;
    v153 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v153 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL)", v215, tableName5, columnName7];
    v182 = v153;
    [v153 appendString:@" BEGIN"];
    v154 = columnName6;
    v155 = tableName4;
    [v153 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) %@ WHERE Z_PK = NEW.%@%@;", tableName4, columnName6, columnName6, v230, columnName7, v1472];
    [v153 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v155, objc_msgSend(v231, "name"), columnName6, v155, columnName7, v1472];
    [v153 appendFormat:@" END"];
    v156 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v156 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_INCREMENT AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (NEW.%@ NOT NULL)", v215, v224, tableName5, columnName7];
    [v156 appendString:@" BEGIN"];
    [v156 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = NEW.%@%@;", tableName4, v154, v154, v230, columnName7, v1472];
    [v156 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.%@%@;", v155, objc_msgSend(v231, "name"), columnName6, v155, columnName7, v1472];
    [v156 appendFormat:@" END"];
    v157 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v157 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_UPDATE_DECREMENT AFTER UPDATE OF %@ ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL)", v215, v224, tableName5, columnName7];
    v179 = v157;
    [v157 appendString:@" BEGIN"];
    [v157 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = OLD.%@%@;", tableName4, v154, v154, v190, columnName7, v1472];
    [v157 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v155, objc_msgSend(v231, "name"), columnName6, v155, columnName7, v1472];
    [v157 appendFormat:@" END"];
    v158 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v158 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW WHEN (OLD.%@ NOT NULL)", v215, tableName5, columnName7];
    [v158 appendString:@" BEGIN"];
    [v158 appendFormat:@" UPDATE %@ SET %@ = %@ %@ WHERE Z_PK = OLD.%@%@;", tableName4, v154, v154, v190, columnName7, v1472];
    [v158 appendFormat:@" SELECT NSCoreDataDATriggerUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = OLD.%@%@;", v155, objc_msgSend(v231, "name"), columnName6, v155, columnName7, v1472];
    [v158 appendFormat:@" END"];
    v159 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v159 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW%@", v188, tableName4, v147];
    [v159 appendString:@" BEGIN"];
    if ((v199 & !v203) != 0)
    {
      v160 = @"COUNT";
    }

    else
    {
      v160 = @"SUM";
    }

    [v159 appendFormat:@" UPDATE %@ SET %@ = (SELECT IFNULL(%@(%@), 0) FROM %@ WHERE %@ = NEW.Z_PK) WHERE Z_PK = NEW.Z_PK;", tableName4, columnName6, v160, v222, objc_msgSend(v218, "tableName"), columnName7];
    [v159 appendFormat:@" SELECT NSCoreDataDATriggerInsertUpdatedAffectedObjectValue('%@', Z_ENT, Z_PK, '%@', %@) FROM %@ WHERE Z_PK = NEW.Z_PK;", tableName4, objc_msgSend(v231, "name"), columnName6, tableName4];
    [v159 appendFormat:@" END"];

    v234 = [[NSSQLiteStatement alloc] initWithEntity:v197 sqlString:v182];
    [array3 addObject:v234];

    v227 = [[NSSQLiteStatement alloc] initWithEntity:v197 sqlString:v156];
    [array3 addObject:v227];

    v161 = [[NSSQLiteStatement alloc] initWithEntity:v197 sqlString:v179];
    [array3 addObject:v161];

    v162 = [[NSSQLiteStatement alloc] initWithEntity:v197 sqlString:v158];
    [array3 addObject:v162];

    v163 = [[NSSQLiteStatement alloc] initWithEntity:v197 sqlString:v159];
    [array3 addObject:v163];

    v186 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE %@ SET %@ = (SELECT IFNULL(%@(%@), 0) FROM %@ WHERE %@ = %@.Z_PK)%@;", tableName4, columnName6, v160, v222, objc_msgSend(v218, "tableName"), columnName7, tableName4, v186];
    v165 = [[NSSQLiteStatement alloc] initWithEntity:v197 sqlString:v186];

    v257[0] = v165;
    [v192 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v257, 1), @"dataStatements"}];
    v245 = v234;
    v246 = v227;
    v247 = v161;
    v248 = v162;
    v249 = v163;
    [v192 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", &v245, 5), @"triggerCreationStatements"}];

    v255 = array3;
    v256 = v192;
    goto LABEL_103;
  }

  if (v6 != 3)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v235 = @"derived attribute";
    v236 = propertyDescription;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v236 forKeys:&v235 count:1];
    v13 = @"currently unsupported (unsupported expression type)";
    goto LABEL_118;
  }

  if (propertyType != 1)
  {
    if (propertyType != 7)
    {
      if (propertyType == 8)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v241 = @"derived attribute";
        v242 = propertyDescription;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
        v13 = @"malformed expression (dependent property is to many, derivation expression is not a function)";
LABEL_118:
        v172 = v10;
        v173 = v11;
        goto LABEL_119;
      }

      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v239 = @"derived attribute";
      v240 = propertyDescription;
      v166 = MEMORY[0x1E695DF20];
      v167 = &v240;
      v168 = &v239;
LABEL_108:
      v12 = [v166 dictionaryWithObjects:v167 forKeys:v168 count:1];
      v13 = @"currently unsupported (unsupported keypath property type)";
      goto LABEL_118;
    }

    goto LABEL_12;
  }

  objc_opt_self();
  v45 = +[NSSQLDerivedAttributeSQLGenerator _triggerColumnListComponentForAttributeKeypaths:startingAt:](NSSQLDerivedAttributeSQLGenerator, keypath, [a2 entity]);
  [a2 entity];
  objc_opt_self();
  objc_opt_self();
  v46 = +[NSSQLDerivedAttributeSQLGenerator _computeNewColumnTokenForKeypathExpression:governingEntity:](NSSQLDerivedAttributeSQLGenerator, [objc_msgSend(a2 "propertyDescription")], objc_msgSend(a2, "entity"));
  v47 = [v46 stringByReplacingOccurrencesOfString:@"NEW." withString:&stru_1EF3F1768];

  return [NSSQLDerivedAttributeSQLGenerator _generateTriggerForAttribute:a2 newToken:v46 updateToken:v47 triggerColumnListComponent:v45 triggerColumnWhereComponent:?];
}

+ (uint64_t)generateSQLForDerivedAttribute:(void *)attribute keypaths:
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  propertyDescription = [a2 propertyDescription];
  if ([propertyDescription filteringPredicate])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v16 = @"derived attribute";
    v17[0] = propertyDescription;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = @"currently unsupported (predicate)";
    goto LABEL_15;
  }

  if ([attribute count])
  {
    if ([attribute count] == 1)
    {
      anyObject = [attribute anyObject];
      if ([anyObject count] == 1 || objc_msgSend(anyObject, "count") == 2)
      {

        return [NSSQLDerivedAttributeSQLGenerator _generateSQLForDerivedAttributeWithOneParameterKeypath:a2 keypaths:attribute];
      }

      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v14 = @"derived attribute";
      v15 = propertyDescription;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v11 = @"currently unsupported (too many steps)";
    }

    else
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v12 = @"derived attribute";
      v13 = propertyDescription;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v11 = @"currently unsupported (too many keypaths)";
    }

LABEL_15:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v11 userInfo:v10]);
  }

  return [NSSQLDerivedAttributeSQLGenerator _generateSQLForAttributeFunctionDerivationForDerivedAttribute:a2 keypaths:attribute];
}

@end