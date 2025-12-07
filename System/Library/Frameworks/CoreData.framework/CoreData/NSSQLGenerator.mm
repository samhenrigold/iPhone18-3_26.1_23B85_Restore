@interface NSSQLGenerator
+ (void)initialize;
- (NSSQLGenerator)initWithPersistentStore:(id)store;
- (NSSQLiteStatement)newSQLStatmentForBinaryIndex:(uint64_t)index inStore:;
- (id)initializeContextForRequest:(int)request ignoreInheritance:(uint64_t)inheritance nestingLevel:;
- (uint64_t)newSQLStatementForRequest:(int)request ignoreInheritance:(int)inheritance countOnly:(uint64_t)only nestingLevel:(int)level nestIsWhereScoped:(uint64_t)scoped requestContext:;
- (void)generateGroupByIntermediatesForProperties:(uint64_t)properties inContext:(void *)context;
- (void)generateHavingIntermediateForPredicate:(uint64_t)predicate inContext:(void *)context;
- (void)generateIntermediateForLimit:(uint64_t)limit inContext:(void *)context;
- (void)generateIntermediateForOffset:(uint64_t)offset inContext:(void *)context;
- (void)generateOrderIntermediateInContext:(void *)context;
- (void)generateSelectIntermediateInContext:(void *)context;
- (void)generateWhereIntermediatesInContext:(void *)context;
@end

@implementation NSSQLGenerator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    objc_opt_self();
    objc_opt_self();
    supportedFunctions = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"@min", @"@max", @"@sum", @"@avg", 0}];
  }
}

- (NSSQLGenerator)initWithPersistentStore:(id)store
{
  v5.receiver = self;
  v5.super_class = NSSQLGenerator;
  result = [(NSSQLGenerator *)&v5 init];
  if (result)
  {
    result->_persistentStore = store;
  }

  return result;
}

- (void)generateSelectIntermediateInContext:(void *)context
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = [context objectForKey:@"outerFetch"];
  v3 = [context objectForKey:@"entity"];
  v4 = [context objectForKey:@"storeRequest"];
  resultType = [v4 resultType];
  v6 = [objc_msgSend(context objectForKey:{@"nestingLevel", "unsignedIntValue"}];
  if ([objc_msgSend(v4 "propertiesToFetch")])
  {
    v7 = 1;
  }

  else
  {
    v7 = resultType == 2;
  }

  v8 = v7;
  if (!v6)
  {
    if (v8)
    {
      v18 = [objc_msgSend(v4 "propertiesToFetch")];
      if ([v18 count])
      {
        if (!resultType)
        {
          v47 = v3;
          v48 = v2;
          v19 = [v18 count];
          if (v19 - 1 >= 0)
          {
            v20 = v19;
            do
            {
              if ([objc_msgSend(v18 objectAtIndex:{--v20), "isTransient"}])
              {
                [v18 removeObjectAtIndex:v20];
              }
            }

            while (v20 > 0);
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v21 = [v18 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v50;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v50 != v23)
                {
                  objc_enumerationMutation(v18);
                }

                v25 = *(*(&v49 + 1) + 8 * i);
                _propertyType = [v25 _propertyType];
                if (_propertyType > 7 || ((1 << _propertyType) & 0xD4) == 0)
                {
                  [context setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(v25, "name")), 0), @"NSUnderlyingException"}];

                  return;
                }
              }

              v22 = [v18 countByEnumeratingWithState:&v49 objects:v57 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v28 = objc_alloc_init(NSExpressionDescription);
          [(NSPropertyDescription *)v28 setName:@"ZZ_PK"];
          -[NSExpressionDescription setExpression:](v28, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
          [(NSExpressionDescription *)v28 setExpressionResultType:2000];
          [v18 insertObject:v28 atIndex:0];

          v3 = v47;
          v2 = v48;
        }

LABEL_72:
        v17 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:]([NSSQLReadOnlySelectIntermediate alloc], "initWithEntity:alias:fetchColumns:inScope:", v3, [v2 governingAlias], v18, v2);

        if (![v4 returnsDistinctResults] || resultType != 2)
        {
          goto LABEL_90;
        }

        goto LABEL_74;
      }

      v18 = [objc_msgSend(objc_msgSend(objc_msgSend(v4 "entity")];
      [v18 sortUsingFunction:_comparePropertiesByName context:0];
      v40 = [v18 count];
      if (v40 - 1 < 0)
      {
        goto LABEL_72;
      }

      v41 = v40;
      while (1)
      {
        v42 = [v18 objectAtIndex:--v41];
        if (([v42 isTransient] & 1) == 0)
        {
          if (!v42 || [v42 attributeType] != 2100)
          {
            goto LABEL_71;
          }

          [v18 addObjectsFromArray:{objc_msgSend(v42, "_flattenElements:", objc_msgSend(v42, "elements"))}];
        }

        [v18 removeObjectAtIndex:v41];
LABEL_71:
        if (v41 <= 0)
        {
          goto LABEL_72;
        }
      }
    }

    if (([v4 includesPropertyValues] & 1) == 0)
    {
      v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v38 = v37;
      if (v3)
      {
        [v37 insertObject:v3[17] atIndex:0];
        v39 = v3[16];
      }

      else
      {
        [v37 insertObject:0 atIndex:0];
        v39 = 0;
      }

      [v38 insertObject:v39 atIndex:1];
      if (!v3)
      {
        goto LABEL_86;
      }

      goto LABEL_83;
    }

    if ([v4 includesSubentities])
    {
      if (v3)
      {
        v32 = v3[19];
        if (v32 && [v32 count])
        {
          v33 = v3;
          while (v33)
          {
            v34 = v33;
            v33 = v33[21];
            if (v33 == v34)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_92;
        }

LABEL_78:
        v38 = v3[10];
        if (v38)
        {
LABEL_83:
          if (v3[20] || (v44 = v3[19]) != 0 && [v44 count])
          {
LABEL_89:
            v17 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:]([NSSQLSelectIntermediate alloc], "initWithEntity:alias:fetchColumns:inScope:", v3, [v2 governingAlias], v38, v2);
            goto LABEL_90;
          }

LABEL_86:
          v38 = [v38 mutableCopy];
          v45 = [[NSSQLColumn alloc] initWithColumnName:@"0" sqlType:1];
          v46 = v45;
          if (v45)
          {
            *&v45->super._flags &= ~1u;
          }

          [v38 replaceObjectAtIndex:0 withObject:v45];

          goto LABEL_89;
        }

        v43 = v3;
        while (v43)
        {
          v34 = v43;
          v43 = v43[21];
          if (v43 == v34)
          {
LABEL_82:
            v38 = v34[9];
            goto LABEL_83;
          }
        }

LABEL_92:
        v38 = 0;
        goto LABEL_83;
      }
    }

    else if (v3)
    {
      goto LABEL_78;
    }

    v38 = 0;
    goto LABEL_86;
  }

  if (!v8)
  {
    if (v3)
    {
      v29 = v3[16];
    }

    else
    {
      v29 = 0;
    }

    v30 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:]([NSSQLSelectIntermediate alloc], "initWithEntity:alias:fetchColumns:inScope:", v3, [v2 governingAlias], objc_msgSend(MEMORY[0x1E695DF70], "arrayWithObject:", v29), v2);
    v17 = v30;
    if (resultType != 4 || !v30)
    {
      goto LABEL_90;
    }

    v31 = &OBJC_IVAR___NSSQLSelectIntermediate__isCount;
    goto LABEL_76;
  }

  v9 = [objc_msgSend(v4 "propertiesToFetch")];
  if (v9 == 1)
  {
    array = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    propertiesToFetch = [v4 propertiesToFetch];
    v12 = [propertiesToFetch countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v54;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v54 != v14)
          {
            objc_enumerationMutation(propertiesToFetch);
          }

          v16 = *(*(&v53 + 1) + 8 * j);
          if (([v16 isTransient] & 1) == 0)
          {
            [array addObject:v16];
          }
        }

        v13 = [propertiesToFetch countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v13);
    }

    v17 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:]([NSSQLReadOnlySelectIntermediate alloc], "initWithEntity:alias:fetchColumns:inScope:", v3, [v2 governingAlias], array, v2);
    if (![v4 returnsDistinctResults])
    {
      goto LABEL_90;
    }

LABEL_74:
    if (!v17)
    {
LABEL_90:
      [(NSSQLFetchIntermediate *)v2 setSelectIntermediate:v17];

      return;
    }

    v31 = &OBJC_IVAR___NSSQLSelectIntermediate__useDistinct;
LABEL_76:
    *(&v17->super.super.super.isa + *v31) = 1;
    goto LABEL_90;
  }

  v35 = @"Too many";
  if (!v9)
  {
    v35 = @"Too few";
  }

  v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{v35), 0}];

  [context setValue:v36 forKey:@"NSUnderlyingException"];
}

- (void)generateWhereIntermediatesInContext:(void *)context
{
  v2 = [context objectForKey:@"outerFetch"];
  v3 = [context objectForKey:@"predicate"];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:v4 inScope:v2];
    v9 = v5;
    v6 = v2;
LABEL_7:
    [(NSSQLStatementIntermediate *)v6 setWhereIntermediate:v5];

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:v4 inScope:v2 inContext:context];
    if (!v7)
    {
      return;
    }

    v5 = v7;
    v6 = v2;
    v9 = v5;
    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{v4), 0}];

  [context setObject:v8 forKey:@"NSUnderlyingException"];
}

- (void)generateOrderIntermediateInContext:(void *)context
{
  v2 = [context objectForKey:@"storeRequest"];
  if ([v2 sortDescriptors])
  {
    v3 = [context objectForKey:@"outerFetch"];
    v4 = -[NSSQLOrderIntermediate initWithSortDescriptors:inScope:]([NSSQLOrderIntermediate alloc], "initWithSortDescriptors:inScope:", [v2 sortDescriptors], v3);
    [(NSSQLStatementIntermediate *)v3 setOrderIntermediate:v4];
  }
}

- (void)generateIntermediateForLimit:(uint64_t)limit inContext:(void *)context
{
  v3 = [context objectForKey:@"outerFetch"];
  v4 = [[NSSQLLimitIntermediate alloc] initWithLimit:limit inScope:v3];
  [(NSSQLStatementIntermediate *)v3 setLimitIntermediate:v4];
}

- (void)generateIntermediateForOffset:(uint64_t)offset inContext:(void *)context
{
  v3 = [context objectForKey:@"outerFetch"];
  v4 = [[NSSQLOffsetIntermediate alloc] initWithOffset:offset inScope:v3];
  [(NSSQLFetchIntermediate *)v3 setOffsetIntermediate:v4];
}

- (void)generateGroupByIntermediatesForProperties:(uint64_t)properties inContext:(void *)context
{
  v3 = [context objectForKey:@"outerFetch"];
  v4 = [[NSSQLGroupByIntermediate alloc] initWithProperties:properties inScope:v3];
  [(NSSQLFetchIntermediate *)v3 setGroupByIntermediate:v4];
}

- (void)generateHavingIntermediateForPredicate:(uint64_t)predicate inContext:(void *)context
{
  v4 = [context objectForKey:@"outerFetch"];
  v5 = [[NSSQLHavingIntermediate alloc] initWithPredicate:predicate inScope:v4 inContext:context];
  [(NSSQLFetchIntermediate *)v4 setHavingIntermediate:v5];
}

- (id)initializeContextForRequest:(int)request ignoreInheritance:(uint64_t)inheritance nestingLevel:
{
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:a2 forKey:@"storeRequest"];
  [v9 setObject:*(self + 8) forKey:@"persistentStore"];
  v10 = _sqlCoreLookupSQLEntityForEntityDescription(*(self + 8), [a2 entity]);
  if (v10)
  {
    [v9 setObject:v10 forKey:@"entity"];
  }

  [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", inheritance), @"nestingLevel"}];
  [v9 setObject:supportedFunctions forKey:@"supportedKVCAggregates"];
  v11 = [[NSSQLAliasGenerator alloc] initWithNestingLevel:inheritance];
  [v9 setObject:v11 forKey:@"aliasGenerator"];

  if (request)
  {
    predicate = [a2 predicate];
  }

  else
  {
    v13 = [v9 objectForKey:@"storeRequest"];
    predicate2 = [v13 predicate];
    v15 = [v9 objectForKey:@"entity"];
    v16 = v15;
    v18 = v15 && (v17 = *(v15 + 152)) != 0 && [v17 count] != 0;
    if ([objc_msgSend(v9 objectForKey:{@"ignoreInheritance", "BOOLValue"}])
    {
      includesSubentities = 0;
    }

    else
    {
      includesSubentities = [v13 includesSubentities];
    }

    if (!v16 || *(v16 + 160) || ((includesSubentities | !v18) & 1) == 0)
    {
      v20 = v18 & includesSubentities;
      v21 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:@"_ent"];
      v22 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v21];

      v23 = objc_alloc(MEMORY[0x1E696AD98]);
      if (v20 == 1)
      {
        if (v16)
        {
          v24 = *(v16 + 184);
        }

        else
        {
          v24 = 0;
        }

        v25 = [v23 initWithUnsignedInt:v24];
        v26 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v25];

        v27 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v22 rightExpression:v26 modifier:0 type:3 options:0];
        v28 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:@"_ent"];
        v29 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v28];

        v30 = objc_alloc(MEMORY[0x1E696AD98]);
        if (v16)
        {
          v31 = *(v16 + 188);
        }

        else
        {
          v31 = 0;
        }

        v32 = [v30 initWithUnsignedInt:v31];
        v33 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v32];

        v34 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v29 rightExpression:v33 modifier:0 type:1 options:0];
        v35 = objc_alloc(MEMORY[0x1E695DEC8]);
        if (predicate2)
        {
          v36 = [v35 initWithObjects:{predicate2, v27, v34, 0}];
        }

        else
        {
          v36 = [v35 initWithObjects:{v27, v34, 0, v52}];
        }

        v43 = v36;
        predicate2 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v36];

        v44 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v27, v34, 0}];
        v40 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v44];
      }

      else
      {
        if (v16)
        {
          v37 = *(v16 + 184);
        }

        else
        {
          v37 = 0;
        }

        v38 = [v23 initWithUnsignedInt:v37];
        v39 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v38];

        v40 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v22 rightExpression:v39 modifier:0 type:4 options:0];
        v41 = objc_alloc(MEMORY[0x1E695DEC8]);
        if (predicate2)
        {
          v42 = [v41 initWithObjects:{predicate2, v40, 0}];
        }

        else
        {
          v42 = [v41 initWithObjects:{v40, 0, v51}];
        }

        v44 = v42;
        predicate2 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v42];
      }

      [v9 setObject:v40 forKey:@"restrictingEntityPredicate"];
    }

    predicate = [predicate2 minimalFormInContext:v9];
  }

  v45 = predicate;
  if (![v9 objectForKey:@"NSUnderlyingException"] && (objc_msgSend(objc_msgSend(MEMORY[0x1E696AF08], "defaultInstance"), "isEqual:", v45) & 1) == 0 && v45)
  {
    v46 = objc_autoreleasePoolPush();
    v47 = objc_alloc_init(NSSQLPredicateAnalyser);
    [v9 setObject:v47 forKey:@"informationGatherer"];
    [v45 acceptVisitor:v47 flags:1];
    [v9 setObject:v45 forKey:@"predicate"];

    objc_autoreleasePoolPop(v46);
  }

  if (![v9 objectForKey:@"NSUnderlyingException"])
  {
    v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v9 setObject:v48 forKey:@"bindVars"];

    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v9 setObject:v49 forKey:@"selectBindVars"];
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

- (uint64_t)newSQLStatementForRequest:(int)request ignoreInheritance:(int)inheritance countOnly:(uint64_t)only nestingLevel:(int)level nestIsWhereScoped:(uint64_t)scoped requestContext:
{
  v146 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  requestType = [a2 requestType];
  v15 = objc_autoreleasePoolPush();
  if (requestType != 1)
  {
    v17 = [(NSSQLGenerator *)self initializeContextForRequest:a2 ignoreInheritance:0 nestingLevel:0];
    goto LABEL_19;
  }

  v16 = [(NSSQLGenerator *)self initializeContextForRequest:a2 ignoreInheritance:request nestingLevel:only];
  v17 = v16;
  if (level)
  {
    [v16 setValue:MEMORY[0x1E695E118] forKey:@"nestedWhereSelect"];
  }

  v18 = [objc_msgSend(a2 "havingPredicate")];
  if (![v17 objectForKey:@"NSUnderlyingException"] && (objc_msgSend(objc_msgSend(MEMORY[0x1E696AF08], "defaultInstance"), "isEqual:", v18) & 1) == 0 && v18)
  {
    v19 = objc_alloc_init(NSSQLPredicateAnalyser);
    [v17 setObject:v19 forKey:@"havingPredicateAnalyser"];

    [v18 acceptVisitor:v19 flags:1];
    [v17 setObject:v18 forKey:@"havingPredicate"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (scoped && (v20 = *(scoped + 216)) != 0)
    {
      [v17 setObject:v20 forKey:@"substitutionVariables"];
      substitutionVariables = MEMORY[0x1E695E118];
      v22 = @"duringPrefetching";
    }

    else
    {
      if (![a2 substitutionVariables])
      {
        goto LABEL_17;
      }

      substitutionVariables = [a2 substitutionVariables];
      v22 = @"substitutionVariables";
    }

    [v17 setObject:substitutionVariables forKey:v22];
LABEL_17:
    if ([v17 objectForKey:@"substitutionVariables"])
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v17 setObject:v23 forKey:@"subOrder"];

      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v17 setObject:v24 forKey:@"columnSubOrder"];
    }
  }

LABEL_19:
  v25 = [v17 objectForKey:@"NSUnderlyingException"];
  if ([v17 objectForKey:@"NSUnderlyingException"])
  {
    v111 = v25;

    objc_exception_throw(v25);
  }

  v26 = -[NSSQLiteAdapter newStatementWithEntity:]([*(self + 8) adapter], objc_msgSend(v17, "objectForKey:", @"entity"));
  if (![objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")])
  {
    v122 = v26;
    if (requestType == 8 || requestType == 1)
    {
      v31 = [v17 objectForKey:@"storeRequest"];
      v32 = [v17 objectForKey:@"informationGatherer"];
      v33 = [v17 objectForKey:@"havingPredicateAnalyser"];
      if (v32)
      {
        v34 = *(v32 + 24);
      }

      else
      {
        v34 = 0;
      }

      v27 = v122;
      if ([v34 count] || (!v33 ? (v35 = 0) : (v35 = *(v33 + 24)), objc_msgSend(v35, "count")))
      {
        if (v32)
        {
          v36 = *(v32 + 24);
        }

        else
        {
          v36 = 0;
        }

        v37 = [v36 count];
        v38 = MEMORY[0x1E695DF30];
        v39 = *MEMORY[0x1E695D940];
        v40 = MEMORY[0x1E696AEC0];
        if (v37)
        {
          v41 = [objc_msgSend(v17 objectForKey:{@"storeRequest", "predicate"}];
        }

        else
        {
          v41 = [v17 objectForKey:@"havingPredicate"];
        }

        [v17 setObject:objc_msgSend(v38 forKey:{"exceptionWithName:reason:userInfo:", v39, objc_msgSend_stringWithFormat_(v40, v41), 0), @"NSUnderlyingException"}];
        goto LABEL_114;
      }

      if (inheritance && ![objc_msgSend(v31 "propertiesToFetch")])
      {
        v75 = off_1E6EC0B88;
      }

      else
      {
        v75 = off_1E6EC0B90;
      }

      v76 = [objc_alloc(*v75) initWithEntity:objc_msgSend(v17 alias:"objectForKey:" inScope:{@"entity", objc_msgSend(objc_msgSend(v17, "objectForKey:", @"aliasGenerator", "generateTableAlias"), 0}];
      [v17 setObject:v76 forKey:@"outerFetch"];

      [NSSQLGenerator generateWhereIntermediatesInContext:v17];
      if ([v17 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_113;
      }

      v77 = v76;
      propertiesToGroupBy = [v31 propertiesToGroupBy];
      v79 = [v17 objectForKey:@"havingPredicate"];
      v80 = v79;
      if (!propertiesToGroupBy && v79)
      {
        v81 = MEMORY[0x1E695DF30];
        v82 = *MEMORY[0x1E695D940];
        v83 = @"Invalid fetch request: HAVING with no GROUP BY";
LABEL_112:
        [v17 setObject:objc_msgSend(v81 forKey:{"exceptionWithName:reason:userInfo:", v82, v83, 0), @"NSUnderlyingException"}];
        goto LABEL_113;
      }

      if (propertiesToGroupBy)
      {
        if ([v31 resultType] != 2)
        {
          v81 = MEMORY[0x1E695DF30];
          v82 = *MEMORY[0x1E695D940];
          v83 = @"Invalid fetch request: GROUP BY requires NSDictionaryResultType";
          goto LABEL_112;
        }

        [NSSQLGenerator generateGroupByIntermediatesForProperties:propertiesToGroupBy inContext:v17];
        if (!v77)
        {
          goto LABEL_113;
        }

        if (!v77[1].super.super.super.isa)
        {
          goto LABEL_113;
        }

        if (v80)
        {
          [NSSQLGenerator generateHavingIntermediateForPredicate:v80 inContext:v17];
          if (!v77[1].super.super._scope || [v17 objectForKey:@"NSUnderlyingException"])
          {
            goto LABEL_113;
          }
        }
      }

      [NSSQLGenerator generateSelectIntermediateInContext:v17];
      if (![(NSSQLFetchDictionaryCountIntermediate *)v77 selectIntermediate])
      {
LABEL_113:
        [v17 removeObjectForKey:@"outerFetch"];
LABEL_114:
        v43 = 0;
        goto LABEL_115;
      }

      [NSSQLGenerator generateOrderIntermediateInContext:v17];
      v84 = objc_msgSend_valueForKey_(v17);
      if ([v31 fetchLimit] || objc_msgSend_valueForKey_(v84))
      {
        -[NSSQLGenerator generateIntermediateForLimit:inContext:]([v31 fetchLimit], v17);
      }

      if ([v31 fetchOffset] || objc_msgSend_valueForKey_(v84))
      {
        if (!v77 || !v77->super._limitClause)
        {
          [NSSQLGenerator generateIntermediateForLimit:v17 inContext:?];
        }

        -[NSSQLGenerator generateIntermediateForOffset:inContext:]([v31 fetchOffset], v17);
      }

      if (inheritance)
      {
        v43 = v77;
        if ([objc_msgSend(v31 "propertiesToFetch")])
        {
          if (v77)
          {
            LOBYTE(v77[1].super._correlationToken) = 1;
          }

          v43 = [[NSSQLFetchDictionaryCountIntermediate alloc] initWithFetchIntermediate:v77 inScope:0];
        }
      }

      else
      {
        v43 = v77;
      }
    }

    else
    {
      v42 = [v17 objectForKey:@"entity"];
      if ([v17 objectForKey:@"outerFetch"])
      {
        [v17 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(v17, "objectForKey:", @"outerFetch", 0), @"NSUnderlyingException"}];
        v43 = 0;
        v27 = v122;
        goto LABEL_115;
      }

      v44 = -[NSSQLUpdateIntermediate initWithEntity:alias:inScope:]([NSSQLUpdateIntermediate alloc], "initWithEntity:alias:inScope:", v42, [objc_msgSend(v17 objectForKey:{@"aliasGenerator", "generateTableAlias"}], 0);
      [v17 setObject:v44 forKey:@"outerFetch"];

      [NSSQLGenerator generateWhereIntermediatesInContext:v17];
      v27 = v26;
      if ([v17 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_113;
      }

      v116 = v44;
      v45 = [v17 objectForKey:@"storeRequest"];
      v115 = [v17 objectForKey:@"outerFetch"];
      propertiesToUpdate = [v45 propertiesToUpdate];
      keyCallBacks.version = *MEMORY[0x1E695E9D8];
      keyCallBacks.retain = 0;
      *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
      v47 = *(MEMORY[0x1E695E9D8] + 40);
      keyCallBacks.release = 0;
      keyCallBacks.hash = v47;
      v48 = *MEMORY[0x1E695E9E8];
      *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
      v49 = *(MEMORY[0x1E695E9E8] + 24);
      valueCallBacks.version = v48;
      valueCallBacks.copyDescription = v49;
      valueCallBacks.equal = 0;
      v50 = *MEMORY[0x1E695E480];
      theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
      v51 = CFDictionaryCreateMutable(v50, 0, &keyCallBacks, &valueCallBacks);
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v52 = [propertiesToUpdate countByEnumeratingWithState:&v137 objects:v145 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v138;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v138 != v54)
            {
              objc_enumerationMutation(propertiesToUpdate);
            }

            CFDictionarySetValue(v51, *(*(&v137 + 1) + 8 * i), [propertiesToUpdate objectForKey:*(*(&v137 + 1) + 8 * i)]);
          }

          v53 = [propertiesToUpdate countByEnumeratingWithState:&v137 objects:v145 count:16];
        }

        while (v53);
      }

      v117 = v17;
      v118 = v15;
      if (CFDictionaryGetCount(v51) >= 1)
      {
        v56 = 0x1E696A000uLL;
        do
        {
          context = objc_autoreleasePoolPush();
          v57 = [_PFRoutines anyObjectFromCollection:v51];
          Value = CFDictionaryGetValue(v51, v57);
          if ([v57 attributeType] == 2100)
          {
            constantValue = [Value constantValue];
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v126 = [constantValue countByEnumeratingWithState:&v133 objects:v144 count:16];
            if (v126)
            {
              v60 = 0;
              v124 = v57;
              v125 = *v134;
              v123 = constantValue;
              do
              {
                for (j = 0; j != v126; ++j)
                {
                  v128 = v60;
                  if (*v134 != v125)
                  {
                    objc_enumerationMutation(constantValue);
                  }

                  v62 = *(*(&v133 + 1) + 8 * j);
                  v63 = objc_autoreleasePoolPush();
                  v64 = [constantValue objectForKey:v62];
                  v129 = 0u;
                  v130 = 0u;
                  v131 = 0u;
                  v132 = 0u;
                  elements = [v57 elements];
                  v66 = [elements countByEnumeratingWithState:&v129 objects:v143 count:16];
                  if (v66)
                  {
                    v67 = v66;
                    v127 = v63;
                    v68 = v56;
                    v69 = v51;
                    v70 = *v130;
                    while (2)
                    {
                      for (k = 0; k != v67; ++k)
                      {
                        if (*v130 != v70)
                        {
                          objc_enumerationMutation(elements);
                        }

                        v72 = *(*(&v129 + 1) + 8 * k);
                        if ([objc_msgSend(v72 "name")])
                        {
                          v60 = v72;
                          v51 = v69;
                          v56 = v68;
                          constantValue = v123;
                          v57 = v124;
                          goto LABEL_68;
                        }
                      }

                      v67 = [elements countByEnumeratingWithState:&v129 objects:v143 count:16];
                      if (v67)
                      {
                        continue;
                      }

                      break;
                    }

                    v51 = v69;
                    v56 = v68;
                    constantValue = v123;
                    v57 = v124;
                    v60 = v128;
LABEL_68:
                    v63 = v127;
                  }

                  else
                  {
                    v60 = v128;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    CFDictionarySetValue(v51, v60, v64);
                  }

                  else
                  {
                    v73 = [objc_alloc(*(v56 + 2880)) initWithObject:v64];
                    CFDictionarySetValue(v51, v60, v73);
                  }

                  objc_autoreleasePoolPop(v63);
                }

                v126 = [constantValue countByEnumeratingWithState:&v133 objects:v144 count:16];
              }

              while (v126);
            }
          }

          else
          {
            CFDictionarySetValue(theDict, v57, Value);
          }

          CFDictionaryRemoveValue(v51, v57);
          objc_autoreleasePoolPop(context);
        }

        while (CFDictionaryGetCount(v51) > 0);
      }

      CFRelease(v51);
      v74 = [[NSSQLUpdateColumnsIntermediate alloc] initWithPropertiesToUpdate:theDict inScope:v115];
      [(NSSQLUpdateIntermediate *)v115 setUpdateColumnsIntermediate:v74];

      CFRelease(theDict);
      v17 = v117;
      v15 = v118;
      v27 = v122;
      v43 = v116;
      if (!v116 || !v116->_realFetch)
      {
        goto LABEL_113;
      }
    }

LABEL_115:
    v85 = [v17 objectForKey:@"NSUnderlyingException"];
    if (!v85)
    {
      v86 = [(NSSQLFetchDictionaryCountIntermediate *)v43 generateSQLStringInContext:v17];
      if (v86)
      {
        v87 = v86;
        if (v27)
        {
          v88 = *(v27 + 32);
          if (v88 != v86)
          {

            *(v27 + 32) = [v87 copy];
          }
        }

        -[NSSQLiteStatement setBindIntarrays:](v27, [v17 objectForKey:@"bindIntarrays"]);
        v89 = [v17 objectForKey:@"selectBindVars"];
        [v89 addObjectsFromArray:{objc_msgSend(v17, "objectForKey:", @"bindVars"}];
        v90 = [v89 count];
        if (v90)
        {
          v91 = v90;
          for (m = 0; m != v91; ++m)
          {
            [objc_msgSend(v89 objectAtIndex:{m), "setIndex:", m}];
          }
        }

        [(NSSQLiteAdapter *)v27 _useModel:v89];
        if ([v17 objectForKey:@"fabricatedSQLEntityForReadOnlyFetch"])
        {
          -[NSSQLiteStatement cacheFakeEntityForFetch:](v27, [v17 objectForKey:@"fabricatedSQLEntityForReadOnlyFetch"]);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_144;
        }

        v93 = objc_alloc_init(NSCachedFetchRequestInfo);
        v94 = objc_msgSend_valueForKey_(v17);
        v95 = [v94 count];
        v96 = objc_msgSend_valueForKey_(v17);
        v98 = v96;
        if (v94 && v95 >= 2)
        {
          v119 = v15;
          v99 = [v96 count];
          if (v99)
          {
            v100 = v99;
            v101 = 0;
            v102 = v95 >> 1;
            do
            {
              v103 = objc_autoreleasePoolPush();
              v104 = [v98 objectAtIndex:v101 + 1];
              [v98 replaceObjectAtIndex:v101 + 1 withObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v104, "integerValue") + v102)}];
              objc_autoreleasePoolPop(v103);
              v101 += 2;
            }

            while (v101 < v100);
          }

          [v94 addObjectsFromArray:v98];
          v15 = v119;
          v27 = v122;
        }

        else
        {
          v94 = v96;
        }

        if (v93)
        {
          objc_setProperty_nonatomic(v93, v97, v94, 8);
          v105 = objc_msgSend_valueForKey_(v17);
          objc_setProperty_nonatomic(v93, v106, v105, 16);
          if (!v27)
          {
            goto LABEL_139;
          }
        }

        else
        {
          objc_msgSend_valueForKey_(v17);
          if (!v27)
          {
LABEL_139:
            v108 = [objc_msgSend(v17 objectForKey:{@"sqlIneligibleForCaching", "BOOLValue"}];
            if (v27)
            {
              if (v108)
              {
                v109 = *(v27 + 56);
                if (v109)
                {
                  *(v109 + 24) = 1;
                }
              }
            }

            goto LABEL_144;
          }
        }

        objc_setProperty_nonatomic(v27, v107, v93, 56);
        goto LABEL_139;
      }

      v85 = [v17 objectForKey:@"NSUnderlyingException"];
      if (!v85)
      {
        if (!v27)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    v112 = v85;
    v113 = v85;

    v114 = v112;
    objc_exception_throw(v112);
  }

  v27 = v26;
  if (v26)
  {
LABEL_22:
    *(v27 + 40) = 1;
  }

LABEL_23:
  v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [objc_msgSend(v17 objectForKey:{@"entity", "tableName"}]);
  if (v27)
  {
    v29 = v28;
    v30 = *(v27 + 32);
    if (v30 != v28)
    {

      *(v27 + 32) = [v29 copy];
    }
  }

LABEL_144:

  objc_autoreleasePoolPop(v15);
  return v27;
}

- (NSSQLiteStatement)newSQLStatmentForBinaryIndex:(uint64_t)index inStore:
{
  v57 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:objc_msgSend(a2 forKey:{"sqlEntity"), @"entity"}];
  [v7 setObject:index forKey:@"persistentStore"];
  v8 = [objc_msgSend(objc_msgSend(a2 "indexDescription")];
  v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  if (v8 && v9 != v8)
  {
    [v7 setObject:v8 forKey:@"predicate"];
  }

  v10 = [v7 objectForKey:@"NSUnderlyingException"];
  if ([v7 objectForKey:@"NSUnderlyingException"])
  {
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
    {
      goto LABEL_24;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      *&buf[4] = a2;
      v13 = "CoreData: error: Unable to generate index for %@\n";
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      *&buf[4] = a2;
      v13 = "CoreData: warning: Unable to generate index for %@\n";
    }

    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
LABEL_24:
    if (_pflogging_catastrophic_mode)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    _NSCoreDataLog_console(v24, "Unable to generate index for %@", a2);
    objc_autoreleasePoolPop(v11);
    v25 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v26 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          reason = [v10 reason];
          userInfo = [v10 userInfo];
          *buf = 138412546;
          *&buf[4] = reason;
          *&buf[12] = 2112;
          *&buf[14] = userInfo;
          v29 = "CoreData: error: Reason: %@, %@\n";
LABEL_74:
          _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
        }
      }

      else
      {
        v26 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          reason2 = [v10 reason];
          userInfo2 = [v10 userInfo];
          *buf = 138412546;
          *&buf[4] = reason2;
          *&buf[12] = 2112;
          *&buf[14] = userInfo2;
          v29 = "CoreData: warning: Reason: %@, %@\n";
          goto LABEL_74;
        }
      }
    }

    v30 = _pflogging_catastrophic_mode;
    reason3 = [v10 reason];
    userInfo3 = [v10 userInfo];
    v33 = 1;
    if (!v30)
    {
      v33 = 2;
    }

    _NSCoreDataLog_console(v33, "Reason: %@, %@", reason3, userInfo3, *buf, *&buf[8], v57);
    goto LABEL_54;
  }

  if (![objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")])
  {
    v17 = -[NSSQLiteAdapter newStatementWithEntity:]([*(self + 8) adapter], objc_msgSend(v7, "objectForKey:", @"entity"));
    v18 = [[NSSQLIndexIntermediate alloc] initForIndex:a2 withScope:0];
    v19 = [v18 generateSQLStringInContext:v7];

    v20 = [v7 objectForKey:@"NSUnderlyingException"];
    if (![v7 objectForKey:@"NSUnderlyingException"])
    {
      if (v17)
      {
        sqlString = v17->_sqlString;
        if (sqlString != v19)
        {

          v17->_sqlString = [(NSString *)v19 copy];
        }
      }

      goto LABEL_56;
    }

    v21 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v22 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        *buf = 138412290;
        *&buf[4] = a2;
        v23 = "CoreData: error: Unable to generate index for %@\n";
      }

      else
      {
        v22 = _PFLogGetLogStream(2);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        *buf = 138412290;
        *&buf[4] = a2;
        v23 = "CoreData: warning: Unable to generate index for %@\n";
      }

      _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
    }

LABEL_59:
    if (_pflogging_catastrophic_mode)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    _NSCoreDataLog_console(v40, "Unable to generate index for %@", a2);
    objc_autoreleasePoolPop(v21);
    v41 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
    {
      goto LABEL_68;
    }

    if (_pflogging_catastrophic_mode)
    {
      v42 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        reason4 = [v20 reason];
        userInfo4 = [v20 userInfo];
        *buf = 138412546;
        *&buf[4] = reason4;
        *&buf[12] = 2112;
        *&buf[14] = userInfo4;
        v45 = "CoreData: error: Reason: %@, %@\n";
LABEL_82:
        _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, v45, buf, 0x16u);
      }
    }

    else
    {
      v42 = _PFLogGetLogStream(2);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        reason5 = [v20 reason];
        userInfo5 = [v20 userInfo];
        *buf = 138412546;
        *&buf[4] = reason5;
        *&buf[12] = 2112;
        *&buf[14] = userInfo5;
        v45 = "CoreData: warning: Reason: %@, %@\n";
        goto LABEL_82;
      }
    }

LABEL_68:
    v46 = _pflogging_catastrophic_mode;
    reason6 = [v20 reason];
    userInfo6 = [v20 userInfo];
    v49 = 1;
    if (!v46)
    {
      v49 = 2;
    }

    _NSCoreDataLog_console(v49, "Reason: %@, %@", reason6, userInfo6, *buf, *&buf[8], v57);
    objc_autoreleasePoolPop(v41);

    goto LABEL_55;
  }

  v14 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
  {
    goto LABEL_41;
  }

  if (_pflogging_catastrophic_mode)
  {
    v15 = _PFLogGetLogStream(1);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    *&buf[4] = a2;
    v16 = "CoreData: error: Unable to generate index for %@\n";
  }

  else
  {
    v15 = _PFLogGetLogStream(2);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    *&buf[4] = a2;
    v16 = "CoreData: warning: Unable to generate index for %@\n";
  }

  _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
LABEL_41:
  if (_pflogging_catastrophic_mode)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  _NSCoreDataLog_console(v35, "Unable to generate index for %@", a2);
  objc_autoreleasePoolPop(v14);
  v25 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
  {
    goto LABEL_50;
  }

  if (_pflogging_catastrophic_mode)
  {
    v36 = _PFLogGetLogStream(1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "CoreData: error: Reason: predicate always evaluates to false\n";
LABEL_78:
      _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, v37, buf, 2u);
    }
  }

  else
  {
    v36 = _PFLogGetLogStream(2);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "CoreData: warning: Reason: predicate always evaluates to false\n";
      goto LABEL_78;
    }
  }

LABEL_50:
  if (_pflogging_catastrophic_mode)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  _NSCoreDataLog_console(v38, "Reason: predicate always evaluates to false", v54, v55, *buf, *&buf[8], v57);
LABEL_54:
  objc_autoreleasePoolPop(v25);
LABEL_55:
  v17 = 0;
LABEL_56:

  [v6 drain];
  return v17;
}

@end