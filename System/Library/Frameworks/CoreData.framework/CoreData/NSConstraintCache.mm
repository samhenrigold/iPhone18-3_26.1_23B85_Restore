@interface NSConstraintCache
+ (void)createCachesForEntity:(void *)entity forValidator:;
- (id)description;
- (id)reset;
- (void)dealloc;
- (void)extendConstraint:(void *)constraint onParentEntity:(uint64_t)entity parentCache:;
- (void)initForEntity:(void *)entity constraint:(void *)constraint extension:;
- (void)registerObject:(void *)result;
- (void)validateForSave:(void *)result;
@end

@implementation NSConstraintCache

- (id)reset
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    [result[4] removeAllObjects];
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v2 = v1[5];
    result = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v2);
          }

          [(NSConstraintCache *)*(*(&v6 + 1) + 8 * v5) reset];
          v5 = (v5 + 1);
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)dealloc
{
  self->_entity = 0;

  self->_constraint = 0;
  self->_extension = 0;

  self->_children = 0;
  self->_knownValues = 0;
  v3.receiver = self;
  v3.super_class = NSConstraintCache;
  [(NSConstraintCache *)&v3 dealloc];
}

- (void)extendConstraint:(void *)constraint onParentEntity:(uint64_t)entity parentCache:
{
  v53 = *MEMORY[0x1E69E9840];
  v30 = result;
  if (result)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [constraint subentities];
    result = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    v27 = result;
    if (result)
    {
      v26 = *v43;
      entityCopy = entity;
      do
      {
        v5 = 0;
        do
        {
          if (*v43 != v26)
          {
            v6 = v5;
            objc_enumerationMutation(obj);
            v5 = v6;
          }

          v28 = v5;
          v32 = *(*(&v42 + 1) + 8 * v5);
          v7 = [(NSEntityDescription *)v32 _extensionsOfParentConstraint:a2];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v31 = v7;
          v34 = [v7 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v34)
          {
            v33 = *v39;
            do
            {
              v8 = 0;
              do
              {
                if (*v39 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                v37 = v8;
                v35 = *(*(&v38 + 1) + 8 * v8);
                v9 = [v35 objectAtIndexedSubscript:0];
                if (entity)
                {
                  v10 = v9;
                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v11 = *(entity + 40);
                  v12 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
                  if (v12)
                  {
                    v13 = v12;
                    v14 = *v47;
                    do
                    {
                      v15 = 0;
                      do
                      {
                        if (*v47 != v14)
                        {
                          objc_enumerationMutation(v11);
                        }

                        v16 = *(*(&v46 + 1) + 8 * v15);
                        if (v16)
                        {
                          v17 = *(v16 + 8);
                        }

                        else
                        {
                          v17 = 0;
                        }

                        v18 = [v10 count];
                        v19 = [v17 count];
                        if (v18 > v19)
                        {
                          v20 = 0;
                          v21 = v19;
                          if (v19)
                          {
                            v22 = 0;
                            do
                            {
                              v20 += [objc_msgSend(v10 objectAtIndex:{v22), "isEqual:", objc_msgSend(v17, "objectAtIndex:", v22)}];
                              ++v22;
                            }

                            while (v21 != v22);
                          }

                          if (v20 == v21)
                          {
                            entity = entityCopy;
                            goto LABEL_33;
                          }
                        }

                        ++v15;
                      }

                      while (v15 != v13);
                      v23 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
                      v13 = v23;
                      entity = entityCopy;
                    }

                    while (v23);
                  }
                }

                v24 = -[NSConstraintCache initForEntity:constraint:extension:]([NSConstraintCache alloc], v32, [v35 objectAtIndexedSubscript:0], objc_msgSend(v35, "objectAtIndexedSubscript:", 2));
                if (entity)
                {
                  [*(entity + 40) addObject:v24];
                }

                -[NSConstraintCache extendConstraint:onParentEntity:parentCache:](v30, [v35 objectAtIndexedSubscript:0], v32, v24);
LABEL_33:
                v8 = v37 + 1;
              }

              while (v37 + 1 != v34);
              v34 = [v31 countByEnumeratingWithState:&v38 objects:v50 count:16];
            }

            while (v34);
          }

          [(NSConstraintCache *)v30 extendConstraint:a2 onParentEntity:v32 parentCache:entity];
          v5 = v28 + 1;
        }

        while ((v28 + 1) != v27);
        result = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
        v27 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)initForEntity:(void *)entity constraint:(void *)constraint extension:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = NSConstraintCache;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = v7;
  if (v7)
  {
    v7[3] = a2;
    v7[1] = entity;
    v8[2] = constraint;
    v8[5] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8[4] = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v8;
}

+ (void)createCachesForEntity:(void *)entity forValidator:
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (a2)
  {
    v5 = a2[16];
    if (!v5 || (v6 = *(v5 + 24)) == 0)
    {
      v6 = NSArray_EmptyArray;
    }
  }

  else
  {
    v6 = 0;
  }

  result = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ((-[NSEntityDescription _constraintIsExtension:]([a2 superentity], v11) & 1) == 0)
        {
          v12 = [[NSConstraintCache alloc] initForEntity:a2 constraint:v11 extension:0];
          [(NSConstraintCache *)v12 extendConstraint:v11 onParentEntity:a2 parentCache:v12];
          [(NSConstraintValidator *)entity _addConstraintRoot:v12 forEntity:a2];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSEntityDescription *)self->_entity name], self->_constraint, self->_extension);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)registerObject:(void *)result
{
  v48 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [objc_msgSend(a2 "entity")];
  if (!result)
  {
    return result;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = v3;
  v5 = v3[1];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v8 = *v37;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v37 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v36 + 1) + 8 * i) componentsSeparatedByString:@"."];
      if ([v10 count] < 2)
      {
        v12 = objc_msgSend_valueForKey_(a2);
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (![v10 count])
        {
          goto LABEL_19;
        }

        v11 = 0;
        v12 = 0;
        do
        {
          v13 = [v10 objectAtIndex:v11];
          if (v11)
          {
            v14 = [v12 objectForKey:v13];
          }

          else
          {
            v14 = objc_msgSend_valueForKey_(a2);
          }

          v12 = v14;
          ++v11;
        }

        while ([v10 count] > v11);
        if (!v12)
        {
LABEL_19:
          null = [MEMORY[0x1E695DFB0] null];
          goto LABEL_22;
        }
      }

      if ([v12 isNSString])
      {
        null = [_PFRoutines sanitize:v12];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_23;
        }

        null = [v12 objectID];
      }

LABEL_22:
      v12 = null;
LABEL_23:
      [v4 addObject:v12];
    }

    v7 = [v5 countByEnumeratingWithState:&v36 objects:v46 count:16];
  }

  while (v7);
LABEL_25:
  v16 = v31[2];
  if (!v16)
  {
    v16 = v31[1];
  }

  if ([v16 count] == 1)
  {
    firstObject = [v4 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [firstObject objectID];

      firstObject = objectID;
    }
  }

  else
  {
    v19 = [NSConstraintCacheKey alloc];
    if (v19)
    {
      v44.receiver = v19;
      v44.super_class = NSConstraintCacheKey;
      firstObject = objc_msgSendSuper2(&v44, sel_init);
      if (firstObject)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v21 = [v4 countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v41;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(v4);
              }

              objectID2 = *(*(&v40 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objectID2 = [objectID2 objectID];
              }

              [v20 addObject:objectID2];
            }

            v22 = [v4 countByEnumeratingWithState:&v40 objects:v47 count:16];
          }

          while (v22);
        }

        firstObject[1] = [v20 copy];
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  v26 = [v31[4] objectForKey:firstObject];
  if (!v26)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v31[4] setObject:v26 forKey:firstObject];
  }

  [v26 addObject:a2];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = v31[5];
  result = [v27 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (result)
  {
    v28 = result;
    v29 = *v33;
    do
    {
      v30 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v27);
        }

        [(NSConstraintCache *)*(*(&v32 + 1) + 8 * v30) registerObject:a2];
        v30 = (v30 + 1);
      }

      while (v28 != v30);
      result = [v27 countByEnumeratingWithState:&v32 objects:v45 count:16];
      v28 = result;
    }

    while (result);
  }

  return result;
}

- (void)validateForSave:(void *)result
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v3[5];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:{objc_msgSend(-[NSConstraintCache validateForSave:](*(*(&v13 + 1) + 8 * i), v2), "allObjects")}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = v3[4];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__NSConstraintCache_validateForSave___block_invoke;
    v12[3] = &unk_1E6EC4328;
    v12[4] = v3;
    v12[5] = v2;
    v12[6] = v5;
    [v11 enumerateKeysAndObjectsUsingBlock:v12];

    return v5;
  }

  return result;
}

void __37__NSConstraintCache_validateForSave___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E695DFB0] null] != a2 && objc_msgSend(a3, "count") >= 2 && *(a1 + 32))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = [objc_msgSend(*(*(&v33 + 1) + 8 * i) "objectID")];
          if (!v10)
          {

            goto LABEL_15;
          }

          [v5 addObject:v10];
        }

        v7 = [a3 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = [v5 count];

    if (v11 != [a3 count])
    {
LABEL_15:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = [a3 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        while (2)
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(a3);
            }

            if (![*(a1 + 40) containsObject:*(*(&v29 + 1) + 8 * j)])
            {
              [*(a1 + 40) addObjectsFromArray:a3];
              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v17 = [a3 countByEnumeratingWithState:&v25 objects:v37 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v26;
                do
                {
                  for (k = 0; k != v18; ++k)
                  {
                    if (*v26 != v19)
                    {
                      objc_enumerationMutation(a3);
                    }

                    v21 = *(*(&v25 + 1) + 8 * k);
                    if (!v21 || (v22 = *(v21 + 48)) == 0 || (v23 = *(v22 + 8)) == 0)
                    {
                      v23 = [MEMORY[0x1E695DFB0] null];
                    }

                    [v16 addObject:v23];
                  }

                  v18 = [a3 countByEnumeratingWithState:&v25 objects:v37 count:16];
                }

                while (v18);
              }

              v24 = [[NSConstraintConflict alloc] initWithConstraint:*(*(a1 + 32) + 8) databaseObject:0 databaseSnapshot:0 conflictingObjects:a3 conflictingSnapshots:v16];

              [*(a1 + 48) addObject:v24];
              return;
            }
          }

          v13 = [a3 countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }
  }
}

@end