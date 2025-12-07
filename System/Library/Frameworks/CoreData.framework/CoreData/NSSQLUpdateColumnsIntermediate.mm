@interface NSSQLUpdateColumnsIntermediate
- (NSSQLConstantValueIntermediate)_generateSQLForAttributeUpdate:(uint64_t)update value:(void *)value inContext:;
- (NSSQLUpdateColumnsIntermediate)initWithPropertiesToUpdate:(id)update inScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLUpdateColumnsIntermediate

- (void)dealloc
{
  self->_propertiesToUpdate = 0;
  v3.receiver = self;
  v3.super_class = NSSQLUpdateColumnsIntermediate;
  [(NSSQLUpdateColumnsIntermediate *)&v3 dealloc];
}

- (NSSQLUpdateColumnsIntermediate)initWithPropertiesToUpdate:(id)update inScope:(id)scope
{
  v7.receiver = self;
  v7.super_class = NSSQLUpdateColumnsIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:scope];
  if (v5)
  {
    v5->_propertiesToUpdate = update;
  }

  return v5;
}

- (NSSQLConstantValueIntermediate)_generateSQLForAttributeUpdate:(uint64_t)update value:(void *)value inContext:
{
  if (!self)
  {
    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ ", objc_msgSend(a2, "columnName")];
  v9 = -[NSSQLConstantValueIntermediate initWithConstantValue:ofType:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:ofType:inScope:context:", update, [a2 sqlType], self, value);
  v10 = [(NSSQLConstantValueIntermediate *)v9 generateSQLStringInContext:value];
  if (v10)
  {
    v11 = v10;
    [(NSSQLConstantValueIntermediate *)v8 appendFormat:@"= %@", v10];
  }

  else
  {
    if (![value objectForKey:@"NSUnderlyingException"])
    {
      [value setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], update), 0), @"NSUnderlyingException"}];
    }

    v9 = v8;
    v8 = 0;
  }

  return v8;
}

- (id)generateSQLStringInContext:(id)context
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [context objectForKey:@"entity"];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = self->_propertiesToUpdate;
  v98 = [(NSDictionary *)obj countByEnumeratingWithState:&v101 objects:v106 count:16];
  if (!v98)
  {
    goto LABEL_100;
  }

  v7 = 0;
  selfCopy = self;
  v96 = *v102;
  v8 = 0x1E696A000uLL;
LABEL_3:
  v9 = 0;
  v10 = v7;
  v90 = v98 + v7;
  while (1)
  {
    if (*v102 != v96)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v101 + 1) + 8 * v9);
    v99 = v10;
    if (v10)
    {
      [v5 appendString:{@", "}];
    }

    v12 = [(NSDictionary *)self->_propertiesToUpdate objectForKey:v11];
    _propertyType = [v11 _propertyType];
    _qualifiedName = [v11 _qualifiedName];
    if (!v6 || (v15 = [v6[5] objectForKey:_qualifiedName]) == 0)
    {
LABEL_106:
      v69 = MEMORY[0x1E695DF30];
      v70 = *MEMORY[0x1E695D940];
      v71 = objc_msgSend_stringWithFormat_(*(v8 + 3776), [v11 name], objc_msgSend(v6, "entityDescription"));
      goto LABEL_130;
    }

    v16 = v15;
    propertyType = [v15 propertyType];
    if (propertyType == 1)
    {
      if ([objc_msgSend(v16 "propertyDescription")] == 6)
      {
        goto LABEL_106;
      }
    }

    else if (propertyType != 7)
    {
      goto LABEL_106;
    }

    expressionType = [v12 expressionType];
    if (expressionType > 9)
    {
      if (expressionType == 10)
      {
        goto LABEL_30;
      }

      if (expressionType == 13)
      {
        v97 = v12;
        v41 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v12 trailingKeypath:0 inScope:self];
        v42 = [(NSSQLSubqueryExpressionIntermediate *)v41 generateSQLStringInContext:context];

        if (!v42)
        {
          v12 = v97;
          if (![context objectForKey:@"NSUnderlyingException"])
          {
            v76 = MEMORY[0x1E695DF30];
            v77 = *MEMORY[0x1E695D940];
            v78 = objc_msgSend_stringWithFormat_(*(v8 + 3776), v97, v88);
            goto LABEL_126;
          }

          goto LABEL_128;
        }

        v19 = [objc_msgSend(v16 "columnName")];
        [(NSSQLConstantValueIntermediate *)v19 appendString:@" = "];
        [(NSSQLConstantValueIntermediate *)v19 appendString:v42];

        v12 = v97;
LABEL_55:
        self = selfCopy;
        if (!v19)
        {
          goto LABEL_128;
        }

        goto LABEL_93;
      }

      if (expressionType != 50)
      {
        goto LABEL_129;
      }

      v22 = [v12 expressionValueWithObject:0 context:0];
      if (!v22)
      {
        goto LABEL_129;
      }

      lastObject = v22;
      if ([v22 isNSArray])
      {
        v24 = [lastObject count];
        if (!v24)
        {
          goto LABEL_90;
        }

        if (v24 != 1)
        {
          goto LABEL_129;
        }

        lastObject = [lastObject lastObject];
        objc_opt_class();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          lastObject = [lastObject objectID];
LABEL_76:
          self = selfCopy;
          goto LABEL_91;
        }

        objc_opt_class();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_76;
        }

        self = selfCopy;
        if (![lastObject isNSDictionary] || !objc_msgSend(lastObject, "count"))
        {
          goto LABEL_90;
        }

        if ([lastObject count] != 1)
        {
          goto LABEL_129;
        }

        memset(v100, 0, sizeof(v100));
        if ([lastObject countByEnumeratingWithState:v100 objects:v105 count:16])
        {
          lastObject = [lastObject objectForKey:**(&v100[0] + 1)];
        }

        else
        {
LABEL_90:
          lastObject = 0;
        }
      }

LABEL_91:
      if (_propertyType == 4)
      {
        v97 = v12;
        v76 = MEMORY[0x1E695DF30];
        v77 = *MEMORY[0x1E695D940];
        v78 = objc_msgSend_stringWithFormat_(*(v8 + 3776), [v16 name], lastObject);
        goto LABEL_126;
      }

      v19 = [(NSSQLUpdateColumnsIntermediate *)self _generateSQLForAttributeUpdate:v16 value:lastObject inContext:context];
      if (!v19)
      {
        goto LABEL_128;
      }

      goto LABEL_93;
    }

    if (!expressionType)
    {
      v97 = v12;
      constantValue = [v12 constantValue];
      if (_propertyType == 4)
      {
        contextCopy = context;
        v73 = v5;
        objc_opt_class();
        v74 = v8;
        if (objc_opt_isKindOfClass())
        {
          objectID = [constantValue objectID];
        }

        else
        {
          objc_opt_class();
          objectID = constantValue;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objectID = 0;
            if ([MEMORY[0x1E695DFB0] null] == constantValue)
            {
              constantValue = 0;
            }
          }
        }

        v86 = *MEMORY[0x1E695D940];
        v87 = *(v74 + 3776);
        if (objectID || !constantValue)
        {
          v83 = [MEMORY[0x1E695DF30] exceptionWithName:v86 reason:objc_msgSend_stringWithFormat_(v87 userInfo:{objc_msgSend(v16, "name"), objectID), 0}];
          v5 = v73;
          context = contextCopy;
          v8 = v74;
          goto LABEL_127;
        }

        [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", v86, objc_msgSend_stringWithFormat_(v87, v97, v11), 0), @"NSUnderlyingException"}];

        return 0;
      }

      v19 = [(NSSQLUpdateColumnsIntermediate *)self _generateSQLForAttributeUpdate:v16 value:constantValue inContext:context];
      v12 = v97;
      if (!v19)
      {
        goto LABEL_128;
      }

      goto LABEL_93;
    }

    if (expressionType != 3)
    {
      if (expressionType != 4 || _propertyType == 4)
      {
        goto LABEL_129;
      }

      v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ ", objc_msgSend(v16, "columnName")];
      v20 = [(NSSQLIntermediate *)self _generateSQLForExpression:v12 allowToMany:0 inContext:context];
      if (!v20)
      {
        if (![context objectForKey:@"NSUnderlyingException"])
        {
          [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(*(v8 + 3776), v12), 0), @"NSUnderlyingException"}];
        }

        goto LABEL_131;
      }

      v21 = v20;
      [(NSSQLConstantValueIntermediate *)v19 appendFormat:@" = %@", v20];

      goto LABEL_55;
    }

LABEL_30:
    v97 = v12;
    v25 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "arguments")];
    if ([v25 count] != 1)
    {
      break;
    }

    lastObject2 = [v25 lastObject];
    propertyType2 = [v16 propertyType];
    entity = [v16 entity];
    if (entity)
    {
      v29 = [*(entity + 40) objectForKey:lastObject2];
    }

    else
    {
      v29 = 0;
    }

    propertyType3 = [v29 propertyType];
    if (propertyType3 != 1 && propertyType3 != 7)
    {
      v79 = MEMORY[0x1E695DF30];
      v80 = *MEMORY[0x1E695D940];
      v81 = objc_msgSend_stringWithFormat_(*(v8 + 3776), [v16 name], v88);
      goto LABEL_123;
    }

    if (propertyType2 != propertyType3)
    {
      v79 = MEMORY[0x1E695DF30];
      v80 = *MEMORY[0x1E695D940];
      v81 = objc_msgSend_stringWithFormat_(*(v8 + 3776), [v16 name], objc_msgSend(v29, "name"));
LABEL_123:
      [context setObject:objc_msgSend(v79 forKey:{"exceptionWithName:reason:userInfo:", v80, v81, 0), @"NSUnderlyingException"}];
      v12 = v97;
      goto LABEL_124;
    }

    if ([objc_msgSend(v16 "propertyDescription")] != 4)
    {
      v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ = %@", objc_msgSend(v16, "columnName"), objc_msgSend(v29, "columnName")];
LABEL_58:
      v12 = v97;
      goto LABEL_83;
    }

    if (v16[9])
    {
      if (!v29 || !v29[9])
      {
        goto LABEL_119;
      }
    }

    else if (v29 && v29[9])
    {
LABEL_119:
      v79 = MEMORY[0x1E695DF30];
      v80 = *MEMORY[0x1E695D940];
      v81 = objc_msgSend_stringWithFormat_(*(v8 + 3776), v16, v88);
      goto LABEL_123;
    }

    if (([objc_msgSend(objc_msgSend(v16 "destinationEntity")] & 1) == 0)
    {
      goto LABEL_119;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@ = %@", objc_msgSend(v16, "columnName"), objc_msgSend(v29, "columnName")];
    v53 = [objc_msgSend(v16 "destinationEntity")];
    v54 = v53;
    if (v53)
    {
      v55 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
      if ([*(v53 + 144) count])
      {
        goto LABEL_80;
      }

      if (atomic_load((v54 + 124)))
      {
        v57 = *(v54 + 72);
      }

      else
      {
        superentity = v54;
        do
        {
          v57 = superentity;
          superentity = [superentity superentity];
        }

        while (superentity);
      }
    }

    else
    {
      v55 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
      if ([0 count])
      {
        goto LABEL_80;
      }

      v57 = 0;
    }

    v59 = v57 == v54;
    v55 = &OBJC_IVAR____PFFetchPlanHeader_sql_model;
    if (v59)
    {
      goto LABEL_58;
    }

LABEL_80:
    columnName = [*(v16 + v55[82]) columnName];
    v61 = v55;
    v62 = columnName;
    if (v29)
    {
      v63 = *(v29 + v61[82]);
    }

    else
    {
      v63 = 0;
    }

    v12 = v97;
    -[NSSQLConstantValueIntermediate appendFormat:](v19, "appendFormat:", @", %@ = %@", v62, [v63 columnName]);
LABEL_83:
    self = selfCopy;
    if (!v19)
    {
      goto LABEL_124;
    }

LABEL_93:
    v10 = v99 + 1;
    [v5 appendString:v19];

    if (++v9 == v98)
    {
      v64 = [(NSDictionary *)obj countByEnumeratingWithState:&v101 objects:v106 count:16];
      v7 = v90;
      v98 = v64;
      if (!v64)
      {
LABEL_100:
        [v5 appendString:{@", Z_OPT = (Z_OPT + 1) "}];
        return v5;
      }

      goto LABEL_3;
    }
  }

  v91 = v6;
  contextCopy2 = context;
  v93 = v5;
  destinationEntity = [objc_msgSend(context objectForKey:{@"entity", "entityDescription"}];
  v33 = [v25 count] - 1;
  v89 = [objc_msgSend(v25 "lastObject")];
  v34 = 0;
  v35 = 0;
  v36 = v33;
  while (1)
  {
    v37 = [v25 objectAtIndex:v34];
    if (!destinationEntity || (v38 = [objc_msgSend(destinationEntity "propertiesByName")]) == 0)
    {
      if (![v37 hasPrefix:@"@"])
      {
        context = contextCopy2;
        v5 = v93;
        v8 = 0x1E696A000;
        goto LABEL_103;
      }

      if (!v36)
      {
        goto LABEL_64;
      }

LABEL_102:
      context = contextCopy2;
      v5 = v93;
      v8 = 0x1E696A000uLL;
LABEL_103:
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(*(v8 + 3776), objc_msgSend(v25, "componentsJoinedByString:", @".", 0), @"NSUnderlyingException"}];
      v12 = v97;
      goto LABEL_104;
    }

    v39 = v38;
    if ([v38 _isAttribute])
    {
      break;
    }

    if ([v39 _isRelationship])
    {
      destinationEntity = [v39 destinationEntity];
      isToMany = [v39 isToMany];
      if (isToMany & v35)
      {
        goto LABEL_102;
      }

      v35 |= isToMany;
    }

    ++v34;
    --v36;
    if (v34 > v33)
    {
      goto LABEL_64;
    }
  }

  if (v36 && ((v36 == 1) & v89) == 0)
  {
    goto LABEL_102;
  }

LABEL_64:
  v43 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v25 lastObject]);
  v44 = [objc_opt_class() _newKeyPathExpressionForString:v43];
  v45 = [objc_msgSend(v25 subarrayWithRange:{0, objc_msgSend(v25, "count") - 1), "componentsJoinedByString:", @"."}];
  governingAlias = [(NSSQLIntermediate *)selfCopy->super._scope governingAlias];
  context = contextCopy2;
  if (!governingAlias)
  {
    v47 = [contextCopy2 objectForKey:@"aliasGenerator"];
    governingAlias = [(NSSQLAliasGenerator *)v47 generateVariableAlias];
  }

  v49 = MEMORY[0x1E696ABC8];
  v50 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v45];
  v51 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [v49 expressionForSubquery:v50 usingIteratorVariable:governingAlias predicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithValue:", 1)}], v44, selfCopy);

  v52 = [(NSSQLSubqueryExpressionIntermediate *)v51 generateSQLStringInContext:contextCopy2];
  v6 = v91;
  if (v52)
  {
    v19 = [objc_msgSend(v16 "columnName")];
    [(NSSQLConstantValueIntermediate *)v19 appendString:@" = "];
    [(NSSQLConstantValueIntermediate *)v19 appendString:v52];

    v5 = v93;
    v12 = v97;
    v8 = 0x1E696A000;
    goto LABEL_83;
  }

  v5 = v93;
  v12 = v97;
  v8 = 0x1E696A000;
  if (![contextCopy2 objectForKey:@"NSUnderlyingException"])
  {
    goto LABEL_103;
  }

LABEL_104:
  if (![context objectForKey:@"NSUnderlyingException"])
  {
    v65 = MEMORY[0x1E695DF30];
    v66 = *MEMORY[0x1E695D940];
    v67 = objc_msgSend_stringWithFormat_(*(v8 + 3776), v25);
    v68 = v66;
    v12 = v97;
    [context setObject:objc_msgSend(v65 forKey:{"exceptionWithName:reason:userInfo:", v68, v67, 0), @"NSUnderlyingException"}];
  }

LABEL_124:
  if (![context objectForKey:@"NSUnderlyingException"])
  {
    v76 = MEMORY[0x1E695DF30];
    v82 = v12;
    v77 = *MEMORY[0x1E695D940];
    v78 = objc_msgSend_stringWithFormat_(*(v8 + 3776), v82, v88);
LABEL_126:
    v83 = [v76 exceptionWithName:v77 reason:v78 userInfo:0];
LABEL_127:
    [context setObject:v83 forKey:@"NSUnderlyingException"];
    v12 = v97;
  }

LABEL_128:
  if (![context objectForKey:@"NSUnderlyingException"])
  {
LABEL_129:
    v69 = MEMORY[0x1E695DF30];
    v84 = v12;
    v70 = *MEMORY[0x1E695D940];
    v71 = objc_msgSend_stringWithFormat_(*(v8 + 3776), v84);
LABEL_130:
    [context setObject:objc_msgSend(v69 forKey:{"exceptionWithName:reason:userInfo:", v70, v71, 0), @"NSUnderlyingException"}];
  }

LABEL_131:

  return 0;
}

@end