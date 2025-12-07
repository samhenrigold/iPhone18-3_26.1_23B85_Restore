@interface NSSQLKeypathExpressionIntermediate
- (id)_generateSQLForKeyPathExpression:(id)expression allowToMany:(BOOL)many inContext:(id)context;
- (id)generateSQLStringInContext:(id)context;
- (unsigned)_propertyDescriptionForKeypath:(id *)keypath startingAtEntity:(char)entity allowToMany:(char)many allowToOne:(uint64_t *)one lastKeyVisited:(void *)visited inContext:;
- (void)_propertyDescriptionsForKeypath:(uint64_t)keypath rootedAtEntity:(uint64_t)entity allowToMany:(uint64_t)many allowToOne:(uint64_t *)one lastKeyVisited:(void *)visited inContext:;
@end

@implementation NSSQLKeypathExpressionIntermediate

- (unsigned)_propertyDescriptionForKeypath:(id *)keypath startingAtEntity:(char)entity allowToMany:(char)many allowToOne:(uint64_t *)one lastKeyVisited:(void *)visited inContext:
{
  if (!self)
  {
    return 0;
  }

  v13 = [a2 count];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v36 = v13 - 1;
  visitedCopy = visited;
  v17 = v13;
  while (1)
  {
    v18 = [a2 objectAtIndex:{v15, v36}];
    *one = v18;
    v19 = [@"entity" compare:v18 options:1];
    if (v17 == 1 && !v19)
    {
      break;
    }

    v20 = -[NSEntityDescription _attributeNamed:]([keypath entityDescription], *one);
    if (v20 && [v20 attributeType] == 2100)
    {
      v21 = [a2 componentsJoinedByString:@"."];
    }

    else
    {
      v21 = *one;
    }

    if (keypath)
    {
      v22 = [keypath[5] objectForKey:v21];
    }

    else
    {
      v22 = 0;
    }

    if (v14 != 1 || v22)
    {
      goto LABEL_22;
    }

    v23 = [visitedCopy objectForKeyedSubscript:@"fabricatedSQLEntityForReadOnlyFetch"];
    if (v23)
    {
      v24 = *(v23 + 184);
      if (keypath)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = 0;
      if (keypath)
      {
LABEL_16:
        v25 = *(keypath + 46);
        goto LABEL_17;
      }
    }

    v25 = 0;
LABEL_17:
    if (v24 == v25)
    {
      if (v23)
      {
        v23 = *(v23 + 40);
      }

      v22 = [v23 objectForKeyedSubscript:*one];
    }

    else
    {
      v22 = 0;
    }

LABEL_22:
    propertyType = [v22 propertyType];
    if ([objc_msgSend(v22 "propertyDescription")])
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"transient property used in fetch request";
      goto LABEL_46;
    }

    if ([v22 isToMany])
    {
      goto LABEL_26;
    }

    if (!v22)
    {
      goto LABEL_32;
    }

    v27 = v22[24];
    if (v27 == 9)
    {
LABEL_26:
      if ((entity & 1) == 0)
      {
        v28 = MEMORY[0x1E695DF30];
        v29 = *MEMORY[0x1E695D940];
        v30 = @"to-many key not allowed here";
        goto LABEL_46;
      }

      if (v16)
      {
        v28 = MEMORY[0x1E695DF30];
        v29 = *MEMORY[0x1E695D940];
        v30 = @"multiple to-many keys not allowed here";
LABEL_46:
        [visitedCopy setObject:objc_msgSend(v28 forKey:{"exceptionWithName:reason:userInfo:", v29, v30, 0), @"NSUnderlyingException"}];
        return 0;
      }

      if (!v22)
      {
        v16 = 1;
        goto LABEL_32;
      }

      v27 = v22[24];
      v16 = 1;
    }

    if (v27 == 7 && (many & 1) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"to-one key not allowed here";
      goto LABEL_46;
    }

LABEL_32:
    if ((propertyType - 7) <= 2)
    {
      keypath = [v22 destinationEntity];
      ++v15;
      if (--v17)
      {
        continue;
      }
    }

    return v22;
  }

  if (keypath)
  {
    v31 = visitedCopy;
    if (*(keypath + 46) == 16001)
    {
      v22 = [keypath[5] objectForKey:*one];
    }

    else
    {
      v22 = keypath[17];
    }
  }

  else
  {
    v22 = 0;
    v31 = visitedCopy;
  }

  [v31 setValue:objc_msgSend(a2 forKey:{"subarrayWithRange:", 0, v36), @"entitySpecificationKeypath"}];
  if (v16)
  {
    v33 = MEMORY[0x1E695E118];
  }

  else
  {
    v33 = MEMORY[0x1E695E110];
  }

  [v31 setValue:v33 forKey:@"entitySpecificationKeypathContainsToMany"];
  v34 = objc_msgSend_valueForKey_(v31);
  if (v34)
  {
    [v34 addObject:MEMORY[0x1E695E118]];
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v35 addObject:MEMORY[0x1E695E118]];
    [v31 setValue:v35 forKey:@"explicitRestrictingEntityQualifier"];
  }

  return v22;
}

- (void)_propertyDescriptionsForKeypath:(uint64_t)keypath rootedAtEntity:(uint64_t)entity allowToMany:(uint64_t)many allowToOne:(uint64_t *)one lastKeyVisited:(void *)visited inContext:
{
  v28 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v12 = result;
    v13 = keypath ? *(keypath + 152) : 0;
    result = [v13 count];
    if (result)
    {
      v14 = [MEMORY[0x1E695DFA8] set];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        obj = v13;
        v22 = *v24;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v23 + 1) + 8 * i);
            v19 = [(NSSQLKeypathExpressionIntermediate *)v12 _propertyDescriptionForKeypath:a2 startingAtEntity:v18 allowToMany:entity allowToOne:many lastKeyVisited:one inContext:visited];
            if (v19)
            {
              [v14 addObject:v19];
            }

            else if ([visited objectForKey:@"NSUnderlyingException"])
            {
              return 0;
            }

            v20 = [(NSSQLKeypathExpressionIntermediate *)v12 _propertyDescriptionsForKeypath:a2 rootedAtEntity:v18 allowToMany:entity allowToOne:many lastKeyVisited:one inContext:visited];
            if (v20)
            {
              [v14 addObjectsFromArray:{objc_msgSend(v20, "allObjects")}];
            }

            else if ([visited objectForKey:@"NSUnderlyingException"])
            {
              return 0;
            }
          }

          v16 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      if ([v14 count])
      {
        return v14;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)_generateSQLForKeyPathExpression:(id)expression allowToMany:(BOOL)many inContext:(id)context
{
  manyCopy = many;
  v72[1] = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = [context objectForKey:@"storeRequest"];
  requestType = [v10 requestType];
  if (requestType != 8)
  {
    if (requestType == 6)
    {
      context = v9;
      goto LABEL_8;
    }

    if (requestType != 1)
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D930], @"this should be inside a fetch or an update", 0), @"NSUnderlyingException"}];
      objc_autoreleasePoolPop(v9);
      return 0;
    }
  }

  context = v9;
  if (!manyCopy)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (([v10 returnsDistinctResults] & 1) != 0 || (v30 = -[NSSQLIntermediate fetchIntermediate](self, "fetchIntermediate")) == 0)
  {
    v12 = 1;
  }

  else
  {
    v31 = v30[8];
    v12 = 1;
    if (v31)
    {
      *(v31 + 48) = 1;
    }
  }

LABEL_9:
  v13 = [(NSSQLIntermediate *)self governingEntityForKeypathExpression:expression];
  v14 = [(NSSQLIntermediate *)self governingAliasForKeypathExpression:expression];
  v15 = [objc_msgSend(objc_msgSend(expression "arguments")];
  v16 = [v15 componentsSeparatedByString:@"."];
  v68 = 0;
  anyObject = [(NSSQLKeypathExpressionIntermediate *)self _propertyDescriptionForKeypath:v16 startingAtEntity:v13 allowToMany:v12 allowToOne:1 lastKeyVisited:&v68 inContext:context];
  if ([objc_msgSend(anyObject "propertyDescription")] != 7)
  {
    propertyDescription = [anyObject propertyDescription];
    if ((!propertyDescription || ![propertyDescription superCompositeAttribute]) && -[NSSQLIntermediate isUpdateScoped](self, "isUpdateScoped") && objc_msgSend(v16, "count") >= 2)
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = @"keypaths (joins) not supported in batch update statements";
LABEL_33:
      v34 = 0;
LABEL_34:
      v35 = [v19 exceptionWithName:v20 reason:v21 userInfo:v34];
      v36 = @"NSUnderlyingException";
LABEL_35:
      [context setObject:v35 forKey:v36];
LABEL_36:
      v28 = 0;
LABEL_37:
      objc_autoreleasePoolPop(context);
      return v28;
    }
  }

  disambiguatingEntity = [(NSSQLIntermediate *)self disambiguatingEntity];
  if (anyObject || (v23 = disambiguatingEntity) == 0)
  {
    v23 = v13;
    goto LABEL_22;
  }

  disambiguationKeypath = [(NSSQLIntermediate *)self disambiguationKeypath];
  if (![(NSArray *)disambiguationKeypath count])
  {
    v68 = 0;
    v29 = [(NSSQLKeypathExpressionIntermediate *)self _propertyDescriptionForKeypath:v16 startingAtEntity:v23 allowToMany:v12 allowToOne:1 lastKeyVisited:&v68 inContext:context];
    if (v29)
    {
      anyObject = v29;
      v13 = v23;
      goto LABEL_53;
    }

    v68 = 0;
    v40 = [(NSSQLKeypathExpressionIntermediate *)self _propertyDescriptionsForKeypath:v16 rootedAtEntity:v23 allowToMany:v12 allowToOne:1 lastKeyVisited:&v68 inContext:context];
    if (v40)
    {
      v41 = v40;
      if ([v40 count] == 1)
      {
        anyObject = [v41 anyObject];
LABEL_22:
        v13 = v23;
        if (anyObject)
        {
          goto LABEL_53;
        }

        goto LABEL_23;
      }

      if ([v41 count] >= 2)
      {
        v42 = MEMORY[0x1E695DF30];
        v43 = *MEMORY[0x1E695D940];
        v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression);
        v71 = @"found";
        v72[0] = objc_msgSend_valueForKey_(v41);
        v45 = MEMORY[0x1E695DF20];
        v46 = v72;
        v47 = &v71;
        goto LABEL_111;
      }
    }

    else if (objc_msgSend_valueForKey_(context))
    {
      goto LABEL_36;
    }

LABEL_23:
    v68 = 0;
    v26 = -[NSSQLKeypathExpressionIntermediate _propertyDescriptionsForKeypath:rootedAtEntity:allowToMany:allowToOne:lastKeyVisited:inContext:](self, v16, v13, v12, [v16 count] < 2, &v68, context);
    if (!v26)
    {
      if (v23 && *(v23 + 184) == 16001 && [v15 isEqualToString:@"changedObjectID"])
      {
        [context setValue:&unk_1EF435E00 forKey:@"generatePairs"];
        v38 = [*(v23 + 40) objectForKey:@"ENTITY"];
        v39 = [*(v23 + 40) objectForKey:@"ENTITYPK"];
        v28 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"(%@, %@)", objc_msgSend(v38, "columnName"), objc_msgSend(v39, "columnName")];
        goto LABEL_37;
      }

      anyObject = 0;
      v28 = 0;
      if (objc_msgSend_valueForKey_(context))
      {
        goto LABEL_37;
      }

      goto LABEL_53;
    }

    v27 = v26;
    if ([v26 count] == 1)
    {
      anyObject = [v27 anyObject];
      goto LABEL_53;
    }

    if ([v27 count] < 2)
    {
      anyObject = 0;
      goto LABEL_53;
    }

    v42 = MEMORY[0x1E695DF30];
    v43 = *MEMORY[0x1E695D940];
    v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression);
    v69 = @"found";
    v70 = objc_msgSend_valueForKey_(v27);
    v45 = MEMORY[0x1E695DF20];
    v46 = &v70;
    v47 = &v69;
LABEL_111:
    v34 = [v45 dictionaryWithObjects:v46 forKeys:v47 count:1];
    v19 = v42;
    v20 = v43;
    v21 = v44;
    goto LABEL_34;
  }

  if (![v15 hasPrefix:{-[NSArray componentsJoinedByString:](disambiguationKeypath, "componentsJoinedByString:", @"."}])
  {
LABEL_32:
    v32 = MEMORY[0x1E695DF30];
    v33 = *MEMORY[0x1E695D940];
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression);
    v19 = v32;
    v20 = v33;
    goto LABEL_33;
  }

  v25 = -[NSSQLKeypathExpressionIntermediate _propertyDescriptionForKeypath:startingAtEntity:allowToMany:allowToOne:lastKeyVisited:inContext:](self, [v16 subarrayWithRange:{-[NSArray count](disambiguationKeypath, "count"), objc_msgSend(v16, "count") - -[NSArray count](disambiguationKeypath, "count")}], v23, v12 & !-[NSSQLIntermediate disambiguationKeypathHasToMany](self, "disambiguationKeypathHasToMany"), 1, &v68, context);
  if (!v25)
  {
    if ([context objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  anyObject = v25;
  v23 = v13;
LABEL_53:
  propertyType = [anyObject propertyType];
  entityDescription = [v23 entityDescription];
  if (propertyType > 0xA)
  {
    goto LABEL_81;
  }

  if (((1 << propertyType) & 0x42E) != 0)
  {
    goto LABEL_62;
  }

  if (((1 << propertyType) & 0x300) != 0)
  {
    entity = [anyObject entity];
    if (entity)
    {
      anyObject = *(entity + 128);
      if (!self)
      {
        goto LABEL_72;
      }
    }

    else
    {
      anyObject = 0;
      if (!self)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_63;
  }

  if (propertyType != 7)
  {
LABEL_81:
    firstObject = [v16 firstObject];
    if (firstObject && (v58 = [objc_msgSend(entityDescription "propertiesByName")]) != 0)
    {
      isTransient = [v58 isTransient];
    }

    else
    {
      isTransient = 0;
    }

    if ([context objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_36;
    }

    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], expression, objc_msgSend(v13, "name")), 0), @"NSUnderlyingException"}];
    if (!isTransient)
    {
      goto LABEL_36;
    }

    v35 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v36 = @"LastKeyPathWasTransientProperty";
    goto LABEL_35;
  }

  if (![(NSSQLIntermediate *)self isTargetColumnsScoped])
  {
    anyObject = [anyObject foreignKey];
  }

LABEL_62:
  if (!self)
  {
    goto LABEL_72;
  }

LABEL_63:
  if ([(NSSQLIntermediate *)self isUpdateScoped])
  {
    v51 = [context objectForKey:@"outerFetch"];
  }

  else
  {
    v51 = [(NSSQLIntermediate *)self fetchIntermediateForKeypathExpression:self->super._expression];
  }

  v52 = [NSSQLJoinIntermediate createJoinIntermediatesForKeypath:v16 startEntity:v13 startAlias:v14 forScope:self inStatementIntermediate:v51 inContext:context];
  if (![(NSSQLIntermediate *)self isUpdateScoped])
  {
    if ([context objectForKey:@"NSUnderlyingException"])
    {

      goto LABEL_72;
    }

    if (v52 && *(v52 + 56) == 1)
    {
      v53 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" "];
      [v53 appendString:v52[5]];
      [v53 appendString:@"."];
      inverseColumnName = [(NSSQLManyToMany *)v52[2] inverseColumnName];
    }

    else
    {
      if (-[NSSQLIntermediate isTargetColumnsScoped](self, "isTargetColumnsScoped") && [anyObject propertyType] == 7)
      {
        if (v52)
        {
          v14 = v52[4];
        }

        v53 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" "];
        destinationEntity = [anyObject destinationEntity];
        if (destinationEntity)
        {
          v61 = *(destinationEntity + 152);
          if (v61)
          {
            if ([v61 count])
            {
              [v53 appendString:v14];
              [v53 appendString:@"."];
              if (anyObject)
              {
                v62 = *(anyObject + 9);
              }

              else
              {
                v62 = 0;
              }

              [v53 appendString:{objc_msgSend(v62, "columnName")}];
              [v53 appendString:{@", "}];
            }
          }
        }

        [v53 appendString:v14];
        [v53 appendString:@"."];
        [v53 appendString:{objc_msgSend(objc_msgSend(anyObject, "foreignKey"), "columnName")}];
        [context setObject:anyObject forKey:@"keypathExpressionDestinationRelationship"];
        goto LABEL_115;
      }

      v53 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" "];
      if (![context objectForKeyedSubscript:@"fabricatedSQLEntityForReadOnlyFetch"] || (v63 = objc_msgSend(context, "objectForKeyedSubscript:", @"fabricatedSQLEntityForReadOnlyFetch"), v63 != objc_msgSend(anyObject, "entity")))
      {
        if (v52)
        {
          v14 = v52[4];
        }

        [v53 appendString:v14];
        [v53 appendString:@"."];
      }

      if (*(&self->super._allowToMany + 1))
      {
        v64 = @"Z_PK";
LABEL_114:
        [v53 appendString:v64];
LABEL_115:

        goto LABEL_120;
      }

      inverseColumnName = [anyObject columnName];
    }

    v64 = inverseColumnName;
    goto LABEL_114;
  }

  if (!v52)
  {
    v53 = objc_alloc_init(MEMORY[0x1E696AD60]);
    propertyType2 = [anyObject propertyType];
    if ((propertyType2 - 1) >= 3)
    {
      if (propertyType2 == 7)
      {
        if (anyObject)
        {
          v65 = *(anyObject + 9);
        }

        else
        {
          v65 = 0;
        }

        goto LABEL_118;
      }

      if (propertyType2 != 5)
      {

        if ([context objectForKey:@"NSUnderlyingException"])
        {
          goto LABEL_72;
        }

        goto LABEL_69;
      }
    }

    if (*(&self->super._allowToMany + 1))
    {
      columnName = @"Z_PK";
LABEL_119:
      [v53 appendString:columnName];
      goto LABEL_120;
    }

    v65 = anyObject;
LABEL_118:
    columnName = [v65 columnName];
    goto LABEL_119;
  }

  if (![context objectForKey:@"NSUnderlyingException"])
  {
LABEL_69:
    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], anyObject), 0), @"NSUnderlyingException"}];
  }

LABEL_72:
  v53 = 0;
LABEL_120:
  v66 = v53;
  objc_autoreleasePoolPop(context);

  return v53;
}

- (id)generateSQLStringInContext:(id)context
{
  v38[1] = *MEMORY[0x1E69E9840];
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v5 = [-[NSArray objectAtIndex:](-[NSExpression arguments](self->super._expression "arguments")];
  [v5 rangeOfString:@".@"];
  if (v6)
  {
    goto LABEL_3;
  }

  if ([(NSSQLIntermediate *)self isIndexScoped])
  {
    governingEntity = [(NSSQLIntermediate *)self governingEntity];
    if (!governingEntity || (v15 = [governingEntity[5] objectForKey:v5]) == 0)
    {
      v18 = MEMORY[0x1E695DF30];
      v19 = *MEMORY[0x1E695D930];
      expression = self->super._expression;
      v37 = @"expression";
      v38[0] = expression;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v9 = @"Bad keypath: can't find property";
      goto LABEL_31;
    }

    v16 = v15;
    if ((*(v15 + 32) & 0x20) == 0)
    {
      [v5 rangeOfString:@"."];
      if (v17)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D930];
        v20 = self->super._expression;
        v35 = @"expression";
        v36 = v20;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v9 = @"Bad keypath: too many joins for an index";
LABEL_31:
        v10 = v18;
        v11 = v19;
        goto LABEL_4;
      }
    }

    v26 = v16[24];
    if (v26 != 1)
    {
      if ((v26 - 7) >= 3)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D930];
        v30 = self->super._expression;
        v33 = @"expression";
        v34 = v30;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v9 = @"Unable to generate SQL for keypath";
        goto LABEL_31;
      }

      if (v26 != 7)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D930];
        v29 = self->super._expression;
        v31 = @"expression";
        v32 = v29;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v9 = @"Bad keypath: indexes may not contain to many relationshps";
        goto LABEL_31;
      }
    }

    columnName = [v16 columnName];

    return [columnName mutableCopy];
  }

  else
  {
    if ([(NSSQLIntermediate *)self isTargetColumnsScoped])
    {
      fetchIntermediate = [(NSSQLIntermediate *)self fetchIntermediate];
      if (fetchIntermediate && fetchIntermediate[9] && ![(NSSQLIntermediate *)self isFunctionScoped]&& ![(NSSQLFetchIntermediate *)[(NSSQLIntermediate *)self fetchIntermediate] groupByClauseContainsKeypath:?])
      {
LABEL_3:
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->super._expression);
        v10 = v7;
        v11 = v8;
        v12 = 0;
LABEL_4:
        [context setObject:objc_msgSend(v10 forKey:{"exceptionWithName:reason:userInfo:", v11, v9, v12), @"NSUnderlyingException"}];
        return 0;
      }

      v22 = self->super._expression;
      allowToMany = [(NSSQLIntermediate *)self isFunctionScoped];
      selfCopy2 = self;
      v25 = v22;
    }

    else
    {
      v25 = self->super._expression;
      allowToMany = self->super._allowToMany;
      selfCopy2 = self;
    }

    return [(NSSQLKeypathExpressionIntermediate *)selfCopy2 _generateSQLForKeyPathExpression:v25 allowToMany:allowToMany inContext:context];
  }
}

@end