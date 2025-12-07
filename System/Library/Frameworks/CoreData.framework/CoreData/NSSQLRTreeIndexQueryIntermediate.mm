@interface NSSQLRTreeIndexQueryIntermediate
- (id)generateSQLStringInContext:(id)context;
- (id)initForIndexNamed:(id)named onEntity:(id)entity properties:(id)properties ranges:(id)ranges inScope:(id)scope;
- (uint64_t)_validateCollection:(void *)collection context:;
- (uint64_t)_validateExpression:(void *)expression context:;
- (void)dealloc;
@end

@implementation NSSQLRTreeIndexQueryIntermediate

- (id)initForIndexNamed:(id)named onEntity:(id)entity properties:(id)properties ranges:(id)ranges inScope:(id)scope
{
  v13.receiver = self;
  v13.super_class = NSSQLRTreeIndexQueryIntermediate;
  v11 = [(NSSQLIntermediate *)&v13 initWithScope:scope];
  if (v11)
  {
    v11->_indexName = named;
    v11->_entity = entity;
    v11->_properties = properties;
    v11->_ranges = ranges;
  }

  return v11;
}

- (void)dealloc
{
  self->_indexName = 0;
  self->_entity = 0;

  self->_properties = 0;
  self->_ranges = 0;
  v3.receiver = self;
  v3.super_class = NSSQLRTreeIndexQueryIntermediate;
  [(NSSQLRTreeIndexQueryIntermediate *)&v3 dealloc];
}

- (uint64_t)_validateCollection:(void *)collection context:
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if ([a2 isNSArray])
    {
      if ([a2 count] == 2)
      {
        return 1;
      }

      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2);
      v14[0] = @"entity";
      v13 = [objc_msgSend(*(v5 + 16) "entityDescription")];
      v14[1] = @"properties";
      v15[0] = v13;
      v15[1] = objc_msgSend_valueForKey_(*(v5 + 32));
      v10 = MEMORY[0x1E695DF20];
      v11 = v15;
      v12 = v14;
    }

    else
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2);
      v16[0] = @"entity";
      v9 = [objc_msgSend(*(v5 + 16) "entityDescription")];
      v16[1] = @"properties";
      v17[0] = v9;
      v17[1] = objc_msgSend_valueForKey_(*(v5 + 32));
      v10 = MEMORY[0x1E695DF20];
      v11 = v17;
      v12 = v16;
    }

    [collection setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", v7, v8, objc_msgSend(v10, "dictionaryWithObjects:forKeys:count:", v11, v12, 2)), @"NSUnderlyingException"}];
    return 0;
  }

  return result;
}

- (uint64_t)_validateExpression:(void *)expression context:
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if ([a2 expressionType])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2);
      v10[0] = @"entity";
      v9 = [objc_msgSend(*(v5 + 16) "entityDescription")];
      v10[1] = @"properties";
      v11[0] = v9;
      v11[1] = objc_msgSend_valueForKey_(*(v5 + 32));
      [expression setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", v7, v8, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)), @"NSUnderlyingException"}];
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)generateSQLStringInContext:(id)context
{
  v99[2] = *MEMORY[0x1E69E9840];
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v5 = [(NSArray *)self->_properties count];
  if (v5 != [(NSArray *)self->_ranges count])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    properties = self->_properties;
    v98[0] = @"properties";
    v98[1] = @"ranges";
    ranges = self->_ranges;
    v99[0] = properties;
    v99[1] = ranges;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:2];
    v11 = @"Mismatch between number of properties and number of ranges for rtree query";
LABEL_7:
    v16 = v12;
    v17 = v13;
    goto LABEL_56;
  }

  indexName = self->_indexName;
  if (indexName)
  {
    expressionType = [(NSExpression *)indexName expressionType];
    indexName = self->_indexName;
    if (expressionType)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v96 = @"indexNameExpression";
      v97 = indexName;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v11 = @"Invalid index name expression (should be a constant value)";
LABEL_55:
      v16 = v8;
      v17 = v9;
      goto LABEL_56;
    }
  }

  constantValue = [(NSExpression *)indexName constantValue];
  if (([constantValue isNSString] & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v94 = @"indexName";
    v95 = constantValue;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    v11 = @"Invalid index name (should be a string)";
    goto LABEL_55;
  }

  v19 = -[NSSQLAliasGenerator initWithNestingLevel:]([NSSQLAliasGenerator alloc], "initWithNestingLevel:", [objc_msgSend(context objectForKey:{@"nestingLevel", "integerValue"}] + 1);
  generateTableAlias = [(NSSQLAliasGenerator *)v19 generateTableAlias];

  array = [MEMORY[0x1E695DF70] array];
  if (![(NSArray *)self->_properties count])
  {
    v73 = 0;
    v74 = 0;
LABEL_59:
    v52 = [array componentsJoinedByString:@" AND "];
    return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ IN (SELECT %@.Z_PK FROM %@ %@ WHERE (%@))", v73, generateTableAlias, v74, generateTableAlias, v52];
  }

  v73 = 0;
  v74 = 0;
  v20 = 0;
  v68 = constantValue;
  while (1)
  {
    v21 = [(NSArray *)self->_properties objectAtIndex:v20];
    v22 = [(NSArray *)self->_ranges objectAtIndex:v20];
    if (([objc_opt_class() isSimpleKeypath:v21] & 1) == 0)
    {
      v53 = MEMORY[0x1E695DF30];
      v54 = *MEMORY[0x1E695D940];
      v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21);
      v92[0] = @"entity";
      v56 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
      v92[1] = @"properties";
      v93[0] = v56;
      v93[1] = objc_msgSend_valueForKey_(self->_properties);
      v57 = MEMORY[0x1E695DF20];
      v58 = v93;
      v59 = v92;
      goto LABEL_70;
    }

    if (![(NSSQLIntermediate *)self keypathExpressionIsSafeLHSForIn:v21])
    {
      v53 = MEMORY[0x1E695DF30];
      v54 = *MEMORY[0x1E695D940];
      v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21);
      v60 = self->_properties;
      v90[0] = @"properties";
      v90[1] = @"ranges";
      v61 = self->_ranges;
      v91[0] = v60;
      v91[1] = v61;
      v57 = MEMORY[0x1E695DF20];
      v58 = v91;
      v59 = v90;
      goto LABEL_70;
    }

    if (!v73)
    {
      v23 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v21 allowToMany:0 inScope:self->super._scope];
      v24 = v23;
      if (v23)
      {
        *(&v23->super._allowToMany + 1) = 1;
      }

      v25 = [(NSSQLKeypathExpressionIntermediate *)v23 generateSQLStringInContext:context];

      v73 = v25;
      if (!v25)
      {
        break;
      }
    }

    v71 = v20;
    if ([v21 expressionType])
    {
      keyPath = [v21 keyPath];
    }

    else
    {
      keyPath = [v21 constantValue];
    }

    v27 = keyPath;
    v28 = [keyPath componentsSeparatedByString:@"."];
    entity = self->_entity;
    v72 = v22;
    if ([v28 count] == 1)
    {
      v30 = self->_entity;
      if (v30)
      {
        v31 = [(NSMutableDictionary *)v30->_properties objectForKey:v27];
        goto LABEL_38;
      }

LABEL_37:
      v31 = 0;
      goto LABEL_38;
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v32 = [v28 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (!v32)
    {
      goto LABEL_37;
    }

    v33 = v32;
    v34 = *v76;
    do
    {
      v35 = 0;
      do
      {
        if (*v76 != v34)
        {
          objc_enumerationMutation(v28);
        }

        if (entity)
        {
          v31 = [(NSMutableDictionary *)entity->_properties objectForKey:*(*(&v75 + 1) + 8 * v35)];
        }

        else
        {
          v31 = 0;
        }

        if ([v31 propertyType] != 1)
        {
          entity = [v31 destinationEntity];
        }

        ++v35;
      }

      while (v33 != v35);
      v36 = [v28 countByEnumeratingWithState:&v75 objects:v87 count:16];
      v33 = v36;
    }

    while (v36);
LABEL_38:
    if ([v31 propertyType] != 1)
    {
      v53 = MEMORY[0x1E695DF30];
      v54 = *MEMORY[0x1E695D940];
      v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21);
      v85[0] = @"entity";
      v62 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
      v85[1] = @"properties";
      v86[0] = v62;
      v86[1] = objc_msgSend_valueForKey_(self->_properties);
      v57 = MEMORY[0x1E695DF20];
      v58 = v86;
      v59 = v85;
      goto LABEL_70;
    }

    v37 = [(NSSQLEntity *)entity rtreeIndexForIndexNamed:v68];
    if (!v37)
    {
      if (v68)
      {
        v63 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v68);
      }

      else
      {
        v63 = @"(no index name specified, multiple indices available)";
      }

      v53 = MEMORY[0x1E695DF30];
      v54 = *MEMORY[0x1E695D940];
      v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v63);
      v83[0] = @"entity";
      v67 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
      v83[1] = @"properties";
      v84[0] = v67;
      v84[1] = objc_msgSend_valueForKey_(self->_properties);
      v57 = MEMORY[0x1E695DF20];
      v58 = v84;
      v59 = v83;
      goto LABEL_70;
    }

    v38 = v74;
    if (v74)
    {
      v39 = v72;
      if (([v74 isEqual:*(v37 + 48)] & 1) == 0)
      {
        v12 = MEMORY[0x1E695DF30];
        v13 = *MEMORY[0x1E695D930];
        v81[0] = @"entity";
        v64 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
        v81[1] = @"properties";
        v82[0] = v64;
        v82[1] = objc_msgSend_valueForKey_(self->_properties);
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
        v11 = @"Can't generate SQL; crosscheck failed";
        goto LABEL_7;
      }
    }

    else
    {
      v38 = *(v37 + 48);
      v39 = v72;
    }

    expressionType2 = [v39 expressionType];
    v74 = v38;
    if (expressionType2 == 14)
    {
      collection = [v39 collection];
      if (![(NSSQLRTreeIndexQueryIntermediate *)self _validateCollection:collection context:context])
      {
        return 0;
      }

      firstObject = [collection firstObject];
      lastObject = [collection lastObject];
      if (![(NSSQLRTreeIndexQueryIntermediate *)self _validateExpression:firstObject context:context]|| ![(NSSQLRTreeIndexQueryIntermediate *)self _validateExpression:lastObject context:context])
      {
        return 0;
      }

      constantValue2 = [firstObject constantValue];
      constantValue3 = [lastObject constantValue];
    }

    else
    {
      if (expressionType2)
      {
        v53 = MEMORY[0x1E695DF30];
        v54 = *MEMORY[0x1E695D940];
        v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v39);
        v79[0] = @"entity";
        v65 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
        v79[1] = @"properties";
        v80[0] = v65;
        v80[1] = objc_msgSend_valueForKey_(self->_properties);
        v57 = MEMORY[0x1E695DF20];
        v58 = v80;
        v59 = v79;
        goto LABEL_70;
      }

      constantValue4 = [v39 constantValue];
      if (![(NSSQLRTreeIndexQueryIntermediate *)self _validateCollection:constantValue4 context:context])
      {
        return 0;
      }

      constantValue2 = [constantValue4 firstObject];
      constantValue3 = [constantValue4 lastObject];
    }

    v47 = constantValue3;
    v48 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:constantValue2 inContext:context];
    v49 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v47 inContext:context];
    v50 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v48, generateTableAlias, [v31 columnName], generateTableAlias, objc_msgSend(v31, "columnName"), v49);

    [array addObject:v50];
    v20 = v71 + 1;
    if (v71 + 1 >= [(NSArray *)self->_properties count])
    {
      goto LABEL_59;
    }
  }

  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v53 = MEMORY[0x1E695DF30];
  v54 = *MEMORY[0x1E695D940];
  v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21);
  v88[0] = @"entity";
  v66 = [-[NSSQLEntity entityDescription](self->_entity "entityDescription")];
  v88[1] = @"properties";
  v89[0] = v66;
  v89[1] = objc_msgSend_valueForKey_(self->_properties);
  v57 = MEMORY[0x1E695DF20];
  v58 = v89;
  v59 = v88;
LABEL_70:
  v10 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:2];
  v16 = v53;
  v17 = v54;
  v11 = v55;
LABEL_56:
  [context setObject:objc_msgSend(v16 forKey:{"exceptionWithName:reason:userInfo:", v17, v11, v10), @"NSUnderlyingException"}];
  return 0;
}

@end