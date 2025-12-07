@interface NSMergePolicy
+ (void)initialize;
- (BOOL)resolveConflicts:(NSArray *)list error:(NSError *)error;
- (BOOL)resolveConstraintConflicts:(NSArray *)list error:(NSError *)error;
- (BOOL)resolveOptimisticLockingVersionConflicts:(NSArray *)list error:(NSError *)error;
- (NSMergePolicy)init;
- (NSMergePolicy)initWithCoder:(id)coder;
- (id)initWithMergeType:(NSMergePolicyType)ty;
- (uint64_t)_byPropertyObjectTrumpResolveConstraintConflict:(void *)conflict;
- (uint64_t)_byPropertyStoreTrumpResolveConstraintConflict:(void *)conflict;
- (uint64_t)_overwriteResolveConstraintConflict:(void *)conflict;
- (uint64_t)_rollbackResolveConstraintConflict:(void *)conflict;
- (uint64_t)_valuesOnObject:(uint64_t)object matchAgainstValues:(void *)values;
- (void)_mergeChangesObjectUpdatesTrumpForObject:(id)object withRecord:(id)record;
- (void)_mergeChangesStoreUpdatesTrumpForObject:(id)object withRecord:(id)record;
- (void)_mergeToManyRelationshipsForObject:(void *)object ontoObject:(void *)ontoObject;
- (void)_mergeToManyUnionRelationshipsForObject:(void *)object andObject:(void *)andObject;
- (void)dealloc;
@end

@implementation NSMergePolicy

+ (void)initialize
{
  if ((_MergedGlobals_76 & 1) == 0)
  {
    _MergedGlobals_76 = 1;
    objc_opt_self();
    dword_1ED4BEA64 = _CFExecutableLinkedOnOrAfter() == 0;
    NSErrorMergePolicy = [[NSMergePolicy alloc] initWithMergeType:0];
    NSMergeByPropertyStoreTrumpMergePolicy = [[NSMergePolicy alloc] initWithMergeType:1];
    NSMergeByPropertyObjectTrumpMergePolicy = [[NSMergePolicy alloc] initWithMergeType:2];
    NSOverwriteMergePolicy = [[NSMergePolicy alloc] initWithMergeType:3];
    NSRollbackMergePolicy = [[NSMergePolicy alloc] initWithMergeType:4];
  }
}

- (void)dealloc
{
  if (NSMergeByPropertyStoreTrumpMergePolicy == self || NSMergeByPropertyObjectTrumpMergePolicy == self || NSOverwriteMergePolicy == self || NSRollbackMergePolicy == self || NSErrorMergePolicy == self)
  {

    selfCopy = self;
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v9.receiver = self;
    v9.super_class = NSMergePolicy;
    [(NSMergePolicy *)&v9 dealloc];
  }
}

- (id)initWithMergeType:(NSMergePolicyType)ty
{
  v5.receiver = self;
  v5.super_class = NSMergePolicy;
  result = [(NSMergePolicy *)&v5 init];
  if (result)
  {
    *(result + 1) = ty;
  }

  return result;
}

- (NSMergePolicy)init
{
  v3.receiver = self;
  v3.super_class = NSMergePolicy;
  return [(NSMergePolicy *)&v3 init];
}

- (NSMergePolicy)initWithCoder:(id)coder
{
  v4 = [coder decodeIntForKey:@"NSTypeCode"] - 1;
  if (v4 > 3)
  {
    v5 = &NSErrorMergePolicy;
  }

  else
  {
    v5 = off_1E6EC28D0[v4];
  }

  v7 = *v5;

  return v7;
}

- (uint64_t)_valuesOnObject:(uint64_t)object matchAgainstValues:(void *)values
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__NSMergePolicy__valuesOnObject_matchAgainstValues___block_invoke;
  v4[3] = &unk_1E6EC1CD8;
  v4[4] = object;
  v4[5] = &v5;
  [values enumerateKeysAndObjectsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __52__NSMergePolicy__valuesOnObject_matchAgainstValues___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = a3;
  if ([MEMORY[0x1E695DFB0] null] == a3)
  {
    v5 = 0;
  }

  result = objc_msgSend_valueForKey_(*(a1 + 32));
  if (v5 | result)
  {
    v8 = result;
    result = [v5 isEqual:result];
    if ((result & 1) == 0)
    {
      result = [v8 isNSString];
      if (!result || (result = [_PFRoutines isSanitizedVersionOf:v8 equalTo:v5], (result & 1) == 0))
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
        *a4 = 1;
      }
    }
  }

  return result;
}

- (uint64_t)_rollbackResolveConstraintConflict:(void *)conflict
{
  v1 = [objc_msgSend(conflict "conflictingObjects")];
  isInserted = [v1 isInserted];
  managedObjectContext = [v1 managedObjectContext];
  if (isInserted)
  {

    return [managedObjectContext deleteObject:v1];
  }

  else
  {

    return [managedObjectContext refreshObject:v1 mergeChanges:0];
  }
}

- (void)_mergeToManyUnionRelationshipsForObject:(void *)object andObject:(void *)andObject
{
  v55 = *MEMORY[0x1E69E9840];
  entity = [andObject entity];
  if (entity)
  {
    v3 = entity;
    result = [*(entity + 104) keys];
    v5 = v3[14];
    v6 = *(v5 + 144);
    v39 = *(v5 + 152) + v6;
    if (v6 < v39)
    {
      v7 = result;
      v36 = result;
      v37 = v3;
      while (1)
      {
        v8 = *(v3[12] + 24 + 8 * v6);
        inverseRelationship = [v8 inverseRelationship];
        name = [inverseRelationship name];
        isToMany = [inverseRelationship isToMany];
        isOrdered = [inverseRelationship isOrdered];
        isOrdered2 = [v8 isOrdered];
        v13 = v7[v6];
        v40 = v6;
        v38 = v8;
        if (isOrdered2)
        {
          break;
        }

        v17 = [object mutableSetValueForKey:v13];
        v15 = [andObject mutableSetValueForKey:v7[v6]];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        allObjects = [v15 allObjects];
        v19 = [allObjects countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v46;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              v23 = v15;
              if (*v46 != v21)
              {
                objc_enumerationMutation(allObjects);
              }

              v24 = *(*(&v45 + 1) + 8 * i);
              [v17 addObject:v24];
              if (!inverseRelationship)
              {
LABEL_40:
                [NSMergePolicy _cannotResolveConflictOnEntity:v37 relationshipWithNoInverse:v38];
              }

              if (isToMany)
              {
                if (isOrdered)
                {
                  v25 = [v24 mutableOrderedSetValueForKey:name];
                }

                else
                {
                  v25 = [v24 mutableSetValueForKey:name];
                }

                v26 = v25;
                [v25 removeObject:andObject];
                [v26 addObject:object];
              }

              else
              {
                [v24 setValue:object forKey:name];
              }

              v15 = v23;
            }

            v20 = [allObjects countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v20);
LABEL_37:
          v7 = v36;
          v3 = v37;
        }

LABEL_38:
        result = [v15 removeAllObjects];
        v6 = v40 + 1;
        if (v40 + 1 == v39)
        {
          return result;
        }
      }

      v14 = [object mutableOrderedSetValueForKey:v13];
      v15 = [andObject mutableOrderedSetValueForKey:v7[v6]];
      if ([v15 count])
      {
        array = [v15 objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", 0, objc_msgSend(v15, "count"))}];
      }

      else
      {
        array = [MEMORY[0x1E695DEC8] array];
      }

      v27 = array;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v28 = [array countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (!v28)
      {
        goto LABEL_38;
      }

      v29 = v28;
      v30 = *v50;
      obj = v27;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          v32 = v15;
          if (*v50 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v49 + 1) + 8 * j);
          [v14 addObject:v33];
          if (!inverseRelationship)
          {
            goto LABEL_40;
          }

          if (isToMany)
          {
            if (isOrdered)
            {
              v34 = [v33 mutableOrderedSetValueForKey:name];
            }

            else
            {
              v34 = [v33 mutableSetValueForKey:name];
            }

            v35 = v34;
            [v34 removeObject:andObject];
            [v35 addObject:object];
          }

          else
          {
            [v33 setValue:object forKey:name];
          }

          v15 = v32;
        }

        v29 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v29);
      goto LABEL_37;
    }
  }

  else
  {
    result = [0 keys];
    __break(1u);
  }

  return result;
}

- (uint64_t)_overwriteResolveConstraintConflict:(void *)conflict
{
  databaseObject = [conflict databaseObject];
  -[NSMergePolicy _mergeToManyUnionRelationshipsForObject:andObject:]([objc_msgSend(conflict "conflictingObjects")], objc_msgSend(conflict, "databaseObject"));
  managedObjectContext = [databaseObject managedObjectContext];

  return [managedObjectContext deleteObject:databaseObject];
}

- (void)_mergeToManyRelationshipsForObject:(void *)object ontoObject:(void *)ontoObject
{
  objectCopy = object;
  v104 = *MEMORY[0x1E69E9840];
  entity = [object entity];
  v4 = entity;
  if (entity)
  {
    keys = [*(entity + 104) keys];
    v6 = v4[14];
    if (!objectCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    keys = [0 keys];
    v6 = 0;
    if (!objectCopy)
    {
      goto LABEL_7;
    }
  }

  v7 = objectCopy[6];
  if (v7)
  {
    v66 = *(v7 + 8);
    goto LABEL_8;
  }

LABEL_7:
  v66 = 0;
LABEL_8:
  v8 = *(v6 + 144);
  v65 = *(v6 + 152) + v8;
  if (v8 < v65)
  {
    v71 = objectCopy;
    v67 = keys;
    v64 = v4;
    do
    {
      v9 = *(v4[12] + 24 + 8 * v8);
      inverseRelationship = [v9 inverseRelationship];
      name = [inverseRelationship name];
      isToMany = [inverseRelationship isToMany];
      isOrdered = [inverseRelationship isOrdered];
      v63 = v9;
      isOrdered2 = [v9 isOrdered];
      v14 = *(keys + 8 * v8);
      v68 = v8;
      if (isOrdered2)
      {
        v15 = [objectCopy mutableOrderedSetValueForKey:v14];
        v16 = [v66 objectForKey:*(keys + 8 * v8)];
        v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v18 = [v16 countByEnumeratingWithState:&v94 objects:v103 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v95;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v95 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v94 + 1) + 8 * i);
              if (([v15 containsObject:v22] & 1) == 0)
              {
                [v17 addObject:v22];
              }
            }

            v19 = [v16 countByEnumeratingWithState:&v94 objects:v103 count:16];
          }

          while (v19);
        }

        v23 = [ontoObject mutableOrderedSetValueForKey:*(v67 + 8 * v68)];
        if ([v15 count])
        {
          array = [v15 objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", 0, objc_msgSend(v15, "count"))}];
        }

        else
        {
          array = [MEMORY[0x1E695DEC8] array];
        }

        v48 = array;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v49 = [array countByEnumeratingWithState:&v90 objects:v102 count:16];
        obja = v15;
        if (v49)
        {
          v50 = v49;
          v51 = *v91;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v91 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v90 + 1) + 8 * j);
              [v23 addObject:v53];
              if (!inverseRelationship)
              {

                goto LABEL_96;
              }

              if (isToMany)
              {
                if (isOrdered)
                {
                  v54 = [v53 mutableOrderedSetValueForKey:name];
                }

                else
                {
                  v54 = [v53 mutableSetValueForKey:name];
                }

                v55 = v54;
                [v54 removeObject:v71];
                [v55 addObject:ontoObject];
              }

              else
              {
                [v53 setValue:ontoObject forKey:name];
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v90 objects:v102 count:16];
          }

          while (v50);
        }

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v56 = [v17 countByEnumeratingWithState:&v86 objects:v101 count:16];
        v4 = v64;
        if (v56)
        {
          v57 = v56;
          v58 = *v87;
          do
          {
            for (k = 0; k != v57; ++k)
            {
              if (*v87 != v58)
              {
                objc_enumerationMutation(v17);
              }

              v60 = *(*(&v86 + 1) + 8 * k);
              if ([v23 containsObject:v60])
              {
                [v23 removeObject:v60];
                if (!inverseRelationship)
                {

                  [NSMergePolicy _cannotResolveConflictOnEntity:v64 relationshipWithNoInverse:v63];
                }

                if (isOrdered)
                {
                  v61 = [v60 mutableOrderedSetValueForKey:name];
                }

                else
                {
                  v61 = [v60 mutableSetValueForKey:name];
                }

                [v61 removeObject:ontoObject];
              }
            }

            v57 = [v17 countByEnumeratingWithState:&v86 objects:v101 count:16];
          }

          while (v57);
        }

        [obja removeAllObjects];
      }

      else
      {
        v25 = [objectCopy mutableSetValueForKey:v14];
        v26 = [v66 objectForKey:*(keys + 8 * v8)];
        v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v28 = [v26 countByEnumeratingWithState:&v82 objects:v100 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v83;
          do
          {
            for (m = 0; m != v29; ++m)
            {
              if (*v83 != v30)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v82 + 1) + 8 * m);
              if (([v25 containsObject:v32] & 1) == 0)
              {
                [v27 addObject:v32];
              }
            }

            v29 = [v26 countByEnumeratingWithState:&v82 objects:v100 count:16];
          }

          while (v29);
        }

        v62 = v27;
        v33 = [ontoObject mutableSetValueForKey:*(v67 + 8 * v68)];
        allObjects = [v25 allObjects];
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        obj = allObjects;
        v35 = [allObjects countByEnumeratingWithState:&v78 objects:v99 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v79;
          do
          {
            for (n = 0; n != v36; ++n)
            {
              if (*v79 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v78 + 1) + 8 * n);
              [v33 addObject:v39];
              if (!inverseRelationship)
              {
LABEL_95:

LABEL_96:
                [NSMergePolicy _cannotResolveConflictOnEntity:v64 relationshipWithNoInverse:v63];
              }

              if (isToMany)
              {
                if (isOrdered)
                {
                  v40 = [v39 mutableOrderedSetValueForKey:name];
                }

                else
                {
                  v40 = [v39 mutableSetValueForKey:name];
                }

                v41 = v40;
                [v40 removeObject:v71];
                [v41 addObject:ontoObject];
              }

              else
              {
                [v39 setValue:ontoObject forKey:name];
              }

              [v25 removeObject:v39];
            }

            v36 = [obj countByEnumeratingWithState:&v78 objects:v99 count:16];
          }

          while (v36);
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v42 = [v62 countByEnumeratingWithState:&v74 objects:v98 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v75;
          do
          {
            for (ii = 0; ii != v43; ++ii)
            {
              if (*v75 != v44)
              {
                objc_enumerationMutation(v62);
              }

              v46 = *(*(&v74 + 1) + 8 * ii);
              if ([v33 containsObject:v46])
              {
                [v33 removeObject:v46];
                if (!inverseRelationship)
                {
                  goto LABEL_95;
                }

                if (isToMany)
                {
                  if (isOrdered)
                  {
                    v47 = [v46 mutableOrderedSetValueForKey:name];
                  }

                  else
                  {
                    v47 = [v46 mutableSetValueForKey:name];
                  }

                  [v47 removeObject:ontoObject];
                }

                else
                {
                  [v46 setValue:0 forKey:name];
                }
              }
            }

            v43 = [v62 countByEnumeratingWithState:&v74 objects:v98 count:16];
          }

          while (v43);
        }

        v4 = v64;
      }

      keys = v67;
      v8 = v68 + 1;
      objectCopy = v71;
    }

    while (v68 + 1 != v65);
  }
}

- (uint64_t)_byPropertyStoreTrumpResolveConstraintConflict:(void *)conflict
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(conflict "conflictingObjects")];
  conflictingObjects = [conflict conflictingObjects];
  if ([conflict _isDBConflict])
  {
    databaseObject = [conflict databaseObject];
  }

  else
  {
    databaseObject = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [conflictingObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(conflictingObjects);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (databaseObject != v9)
        {
          [NSMergePolicy _mergeToManyRelationshipsForObject:v9 ontoObject:databaseObject];
        }
      }

      v6 = [conflictingObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  managedObjectContext = [v2 managedObjectContext];

  return [managedObjectContext deleteObject:v2];
}

- (uint64_t)_byPropertyObjectTrumpResolveConstraintConflict:(void *)conflict
{
  v2 = [objc_msgSend(conflict "conflictingObjects")];
  databaseObject = [conflict databaseObject];
  isInserted = [v2 isInserted];
  managedObjectContext = [v2 managedObjectContext];
  entity = [v2 entity];
  v5 = entity;
  v45 = entity;
  if (entity)
  {
    keys = [*(entity + 104) keys];
    v5 = v5[14];
  }

  else
  {
    keys = [0 keys];
  }

  null = [MEMORY[0x1E695DFB0] null];
  if (v2 && (v8 = v2[6]) != 0)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v5[6];
  v11 = v5[7];
  if (v10 < v11 + v10)
  {
    v12 = (keys + 8 * v10);
    do
    {
      v13 = objc_msgSend_valueForKey_(v9);
      v14 = objc_msgSend_valueForKey_(v2);
      if (null == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      if ((isInserted & 1) != 0 || (null != v13 ? (v16 = v13) : (v16 = 0), ([v16 isEqual:v15] & 1) == 0))
      {
        [databaseObject setValue:v15 forKey:*v12];
      }

      ++v12;
      --v11;
    }

    while (v11);
  }

  v17 = v5[12];
  v18 = v5[13];
  if (v17 < v18 + v17)
  {
    v19 = 8 * v17;
    v46 = v2;
    v47 = v9;
    v42 = databaseObject;
    while (1)
    {
      v20 = objc_msgSend_valueForKey_(v9);
      if (null == v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v22 = objc_msgSend_valueForKey_(v2);
      v23 = v22;
      if (null == v22)
      {
        objectID = 0;
      }

      else
      {
        objectID = [v22 objectID];
      }

      if (isInserted & 1) == 0 && ([v21 isEqual:objectID])
      {
        goto LABEL_52;
      }

      v25 = databaseObject;
      v26 = objc_msgSend_valueForKey_(databaseObject);
      v27 = *(*(v45 + 96) + 24 + v19);
      inverseRelationship = [v27 inverseRelationship];
      name = [inverseRelationship name];
      isToMany = [inverseRelationship isToMany];
      if (!v26)
      {
        if (inverseRelationship)
        {
          if (isToMany)
          {
            isOrdered = [inverseRelationship isOrdered];
            name2 = [inverseRelationship name];
            if (isOrdered)
            {
              v39 = [v23 mutableOrderedSetValueForKey:name2];
            }

            else
            {
              v39 = [v23 mutableSetValueForKey:name2];
            }

            v40 = v39;
            [v39 addObject:v25];
            [v40 removeObject:v46];
          }

          else
          {
            [v23 setValue:v25 forKey:name];
          }
        }

        goto LABEL_51;
      }

      if (inverseRelationship)
      {
        break;
      }

LABEL_47:
      if ([v27 deleteRule] == 2)
      {
        [managedObjectContext deleteObject:v26];
      }

LABEL_51:
      [v46 setValue:0 forKey:*(keys + v19)];
      databaseObject = v25;
      v2 = v46;
      [databaseObject setValue:v23 forKey:*(keys + v19)];
LABEL_52:
      v19 += 8;
      --v18;
      v9 = v47;
      if (!v18)
      {
        goto LABEL_53;
      }
    }

    if (!isToMany)
    {
      [v23 setValue:v25 forKey:name];
      [v26 setValue:0 forKey:name];
      goto LABEL_47;
    }

    isOrdered2 = [inverseRelationship isOrdered];
    name3 = [inverseRelationship name];
    if (isOrdered2)
    {
      v43 = [v26 mutableOrderedSetValueForKey:name3];
      v33 = [v23 mutableOrderedSetValueForKey:{objc_msgSend(inverseRelationship, "name")}];
      if (([v33 containsObject:v25] & 1) == 0)
      {
        v34 = [v33 indexOfObject:v46];
        if (v34 < [v33 count])
        {
          [v33 replaceObjectAtIndex:v34 withObject:v25];
        }

        v35 = v43;
        v36 = v25;
        goto LABEL_46;
      }
    }

    else
    {
      [objc_msgSend(v26 mutableSetValueForKey:{name3), "removeObject:", v25}];
      v33 = [v23 mutableSetValueForKey:{objc_msgSend(inverseRelationship, "name")}];
      [v33 addObject:v42];
    }

    v35 = v33;
    v36 = v46;
LABEL_46:
    [v35 removeObject:v36];
    goto LABEL_47;
  }

LABEL_53:
  [NSMergePolicy _mergeToManyRelationshipsForObject:v2 ontoObject:databaseObject];

  return [managedObjectContext deleteObject:v2];
}

void __33__NSMergePolicy_resolveConflict___block_invoke(uint64_t a1)
{
  v2 = -[_NSQueryGenerationToken _generationalComponentForStore:]([*(a1 + 32) _queryGenerationToken], *(a1 + 40));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  [(NSXPCStore *)v3 _clearCachedRowForObjectWithID:v4 generation:v2];
}

- (void)_mergeChangesStoreUpdatesTrumpForObject:(id)object withRecord:(id)record
{
  managedObjectContext = [object managedObjectContext];
  objectCopy = object;
  if ([object isInserted])
  {
    [(NSManagedObjectContext *)managedObjectContext _forceMoveInsertToUpdatedList:object];
  }

  ancestorSnapshot = [record ancestorSnapshot];
  v6 = [record objectForKey:@"snapshot"];
  v7 = [record objectForKey:@"cachedRow"];
  v8 = v7;
  if (v6)
  {
    v9 = v7;
    v8 = v6;
  }

  else
  {
    v9 = [record objectForKey:@"databaseRow"];
  }

  if (v6)
  {
    v10 = dword_1ED4BEA64 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v40 = v11;
  entity = [objectCopy entity];
  v13 = entity;
  if (entity)
  {
    keys = [*(entity + 104) keys];
    v15 = *(v13 + 112);
  }

  else
  {
    keys = [0 keys];
    v15 = 0;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v37 = [-[NSManagedObjectContext _committedSnapshotForObject:](managedObjectContext objectCopy)];
  v17 = *(v15 + 48);
  v18 = *(v15 + 56);
  v35 = v15;
  if (v17 < v18 + v17)
  {
    do
    {
      v19 = [v8 objectForKey:*(keys + 8 * v17)];
      if (v19 == null)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v21 = [v9 objectForKey:*(keys + 8 * v17)];
      if (v21 == null)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      if (v20 != v22 && ([*(*(v13 + 96) + 24 + 8 * v17) _epsilonEquals:v22 rhs:v20 withFlags:1] & 1) == 0)
      {
        if (!ancestorSnapshot || (v23 = [ancestorSnapshot objectForKey:*(keys + 8 * v17)], v24 = v23, v23 == v20) || (objc_msgSend(v23, "isEqual:", v20) & 1) != 0)
        {
          v20 = v22;
        }

        else if (v24 != v22 && ![v24 isEqual:v22])
        {
          v20 = v22;
        }

        [objectCopy setValue:v20 forKey:*(keys + 8 * v17)];
        [v37 setValue:v20 atIndex:v17];
      }

      ++v17;
      --v18;
    }

    while (v18);
  }

  v25 = *(v35 + 96);
  v26 = *(v35 + 104);
  if (v25 < v26 + v25)
  {
    while (1)
    {
      v27 = [v8 objectForKey:*(keys + 8 * v25)];
      if (v27 == null)
      {
        objectID = 0;
      }

      else
      {
        objectID = v27;
      }

      if (v40)
      {
        objectID = [objectID objectID];
      }

      v29 = [v9 objectForKey:*(keys + 8 * v25)];
      if (v29 == null)
      {
        objectID2 = 0;
      }

      else
      {
        objectID2 = v29;
      }

      if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0)
      {
        objectID2 = [objectID2 objectID];
      }

      if (objectID == objectID2 || ([objectID2 isEqual:objectID] & 1) != 0)
      {
        goto LABEL_59;
      }

      if (!ancestorSnapshot)
      {
        goto LABEL_54;
      }

      v31 = [ancestorSnapshot objectForKey:*(keys + 8 * v25)];
      v32 = v31;
      if (v31 == objectID || ([v31 isEqual:objectID] & 1) != 0)
      {
        goto LABEL_54;
      }

      if (v32 != objectID2)
      {
        break;
      }

      objectID2 = objectID;
      if (!objectID)
      {
LABEL_57:
        v33 = 0;
        goto LABEL_58;
      }

LABEL_55:
      v33 = [NSManagedObjectContext _retainedObjectWithID:managedObjectContext optionalHandler:objectID2 withInlineStorage:0];
LABEL_58:
      [objectCopy setValue:v33 forKey:*(keys + 8 * v25)];
      [v37 setValue:v33 atIndex:v25];

LABEL_59:
      ++v25;
      if (!--v26)
      {
        goto LABEL_60;
      }
    }

    if ([v32 isEqual:objectID2])
    {
      objectID2 = objectID;
    }

LABEL_54:
    if (!objectID2)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

LABEL_60:

  if (ancestorSnapshot)
  {
    [(NSMergePolicy *)self mergeToManyRelationshipForSourceObject:objectCopy withOldSnapshot:v8 newSnapshot:v9 andAncestor:ancestorSnapshot andLegacyPath:v40];
  }

  if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
  {
    if ([objectCopy isDeleted])
    {
      -[NSManagedObjectContext _insertObjectWithGlobalID:globalID:]([objectCopy managedObjectContext], objectCopy, objc_msgSend(objectCopy, "objectID"));
    }
  }
}

void __68__NSMergePolicy__mergeDeletionWithStoreChangesForObject_withRecord___block_invoke(uint64_t a1)
{
  v125 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) entity];
  v3 = v2;
  if (v2)
  {
    v76 = [*(v2 + 104) keys];
    v4 = v3[14];
  }

  else
  {
    v76 = [0 keys];
    v4 = 0;
  }

  v70 = v3;
  v66 = _kvcPropertysPrimitiveGetters(v3);
  v5 = [MEMORY[0x1E695DFB0] null];
  v73 = [*(a1 + 32) objectID];
  v6 = *(v4 + 96);
  v7 = *(v4 + 104);
  v71 = v4;
  if (v6 < v7 + v6)
  {
    v8 = 8 * v6;
    while (1)
    {
      v9 = *(v76 + v8);
      v10 = [*(a1 + 40) objectForKey:v9];
      if (v10 == v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (*(a1 + 72))
      {
        v11 = [v11 objectID];
      }

      v12 = [*(a1 + 48) objectForKey:v9];
      if (v12 == v5)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0)
      {
        v13 = [v13 objectID];
      }

      if (v11 == v13)
      {
        goto LABEL_60;
      }

      if ([*(v70[12] + 24 + v8) _epsilonEquals:v13 rhs:v11 withFlags:1])
      {
        goto LABEL_60;
      }

      v14 = *(v70[12] + 24 + v8);
      v15 = [v14 deleteRule];
      if ((v15 - 1) > 1)
      {
        goto LABEL_60;
      }

      v16 = [v14 inverseRelationship];
      if (!v16)
      {
        goto LABEL_60;
      }

      if (v13)
      {
        v13 = [NSManagedObjectContext _retainedObjectWithID:v13 optionalHandler:0 withInlineStorage:?];
      }

      v17 = [v16 name];
      v74 = [v13 primitiveValueForKey:?];
      if (![v16 isToMany])
      {
        v68 = v17;
        if (v11)
        {
          v19 = [*(a1 + 64) newValuesForObjectWithID:v11 withContext:*(a1 + 56) error:0];
          if (v19)
          {
            v20 = v19;
            v21 = objc_opt_class();
            if (v21 != objc_opt_class())
            {
              v22 = [v20 valueForPropertyDescription:v16];
              *&v93 = 0;
              if (!v22)
              {
                v22 = [*(a1 + 64) newValueForRelationship:v16 forObjectWithID:v73 withContext:*(a1 + 56) error:&v93];
                if (!v22)
                {
                  NSLog(@"That was unexpected. Error trying to get %@ from %@ (%@)", v14, v73, v93);
                  v22 = 0;
                }
              }

              if ([MEMORY[0x1E695DFB0] null] == v22)
              {
                v23 = 0;
              }

              else
              {
                v23 = v22;
              }

              goto LABEL_49;
            }

            v19 = v20;
          }
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        v23 = objc_msgSend_valueForKey_(v19);
LABEL_49:
        if ((([v73 isEqual:v23] & 1) != 0 || v74 == *(a1 + 32)) && v13)
        {
          [*(a1 + 56) refreshObject:v13 mergeChanges:1];
          if (v15 == 2)
          {
            [*(a1 + 56) deleteObject:v13];
          }

          else
          {
            [v13 setValue:0 forKey:v68];
          }
        }

        goto LABEL_59;
      }

      v18 = v11 ? [*(a1 + 64) newValueForRelationship:v16 forObjectWithID:v11 withContext:*(a1 + 56) error:0] : 0;
      if (([v18 containsObject:v73] & 1) == 0)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_42;
      }

LABEL_58:

LABEL_59:
LABEL_60:
      v8 += 8;
      if (!--v7)
      {
        goto LABEL_61;
      }
    }

    v24 = [v74 containsObject:*(a1 + 32)];
    if (v13)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_42:
    [*(a1 + 56) refreshObject:v13 mergeChanges:1];
    if (v15 == 2)
    {
      [*(a1 + 56) deleteObject:v13];
    }

    else
    {
      if ([v16 isOrdered])
      {
        v26 = [v13 mutableOrderedSetValueForKey:v17];
      }

      else
      {
        v26 = [v13 mutableSetValueForKey:v17];
      }

      [v26 removeObject:*(a1 + 32)];
    }

    goto LABEL_58;
  }

LABEL_61:
  v27 = *(a1 + 32);
  if ((v27[17] & 0x80) != 0)
  {
    [v27 willAccessValueForKey:0];
  }

  v28 = *MEMORY[0x1E695E9F8];
  v90[1] = 0;
  v90[2] = 0;
  v90[4] = _PFObjectIDFastEquals64;
  v90[5] = _PFObjectIDFastHash64;
  v87[0] = v28;
  v87[1] = 0;
  v29 = *(MEMORY[0x1E695E9F8] + 24);
  v90[3] = *(MEMORY[0x1E695E9F8] + 24);
  v88 = v29;
  v30 = *(MEMORY[0x1E695E9F8] + 40);
  v87[2] = 0;
  v89 = v30;
  v90[0] = v28;
  objc_opt_class();
  v31 = v70;
  isKindOfClass = objc_opt_isKindOfClass();
  v33 = v87;
  v123 = 0u;
  v124 = 0u;
  if (isKindOfClass)
  {
    v33 = v90;
  }

  callBacks = v33;
  v121 = 0uLL;
  v122 = 0uLL;
  v119 = 0uLL;
  v120 = 0uLL;
  v117 = 0uLL;
  v118 = 0uLL;
  v115 = 0uLL;
  v116 = 0uLL;
  v113 = 0uLL;
  v114 = 0uLL;
  v111 = 0uLL;
  v112 = 0uLL;
  v109 = 0uLL;
  v110 = 0uLL;
  v107 = 0uLL;
  v108 = 0uLL;
  v105 = 0uLL;
  v106 = 0uLL;
  v103 = 0uLL;
  v104 = 0uLL;
  v101 = 0uLL;
  v102 = 0uLL;
  v99 = 0uLL;
  v100 = 0uLL;
  v97 = 0uLL;
  v98 = 0uLL;
  v95 = 0uLL;
  v96 = 0uLL;
  v35 = *(v71 + 144);
  v34 = *(v71 + 152);
  v36 = v34 + v35;
  v93 = 0uLL;
  v94 = 0uLL;
  if (v35 < v34 + v35)
  {
    v37 = 0x1EA8C5000uLL;
    v64 = v34 + v35;
    do
    {
      v38 = *(v31[12] + *(v37 + 1820) + 8 * v35);
      v39 = [v38 deleteRule];
      if ((v39 - 1) <= 1)
      {
        v77 = [v38 inverseRelationship];
        if (v77)
        {
          v75 = [v77 name];
          v40 = [*(a1 + 64) newValueForRelationship:v38 forObjectWithID:v73 withContext:*(a1 + 56) error:0];
          v41 = v40;
          if (v40 && [v40 count])
          {
            _PF_Handler_Primitive_GetProperty(*(a1 + 32), v35, 0, *(v66 + 8 * v35));
            v43 = v42;
            v44 = _PFStackAllocatorCreate(&v93, 1024);
            Mutable = CFSetCreateMutable(v44, 0, callBacks);
            v72 = v39;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v46 = [v43 countByEnumeratingWithState:&v83 objects:v92 count:16];
            if (v46)
            {
              v47 = *v84;
              do
              {
                for (i = 0; i != v46; ++i)
                {
                  if (*v84 != v47)
                  {
                    objc_enumerationMutation(v43);
                  }

                  CFSetAddValue(Mutable, *(*(*(&v83 + 1) + 8 * i) + 40));
                }

                v46 = [v43 countByEnumeratingWithState:&v83 objects:v92 count:16];
              }

              while (v46);
            }

            v67 = v35;
            v69 = v38;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v49 = [v41 countByEnumeratingWithState:&v79 objects:v91 count:16];
            if (v49)
            {
              v50 = *v80;
              do
              {
                for (j = 0; j != v49; ++j)
                {
                  if (*v80 != v50)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v52 = *(*(&v79 + 1) + 8 * j);
                  if (!CFSetContainsValue(Mutable, v52))
                  {
                    v53 = [NSManagedObjectContext _retainedObjectWithID:v52 optionalHandler:0 withInlineStorage:?];
                    v54 = v53;
                    if (v53)
                    {
                      v55 = [v53 primitiveValueForKey:v75];
                      v56 = [v77 isToMany];
                      v57 = *(a1 + 64);
                      if (v56)
                      {
                        v58 = [v57 newValueForRelationship:v77 forObjectWithID:v52 withContext:*(a1 + 56) error:0];
                        if (([v58 containsObject:v73] & 1) != 0 || objc_msgSend(v55, "containsObject:", *(a1 + 32)))
                        {
                          [*(a1 + 56) refreshObject:v54 mergeChanges:1];
                          if (v72 == 2)
                          {
                            [*(a1 + 56) deleteObject:v54];
                          }

                          else
                          {
                            if ([v77 isOrdered])
                            {
                              v63 = [v54 mutableOrderedSetValueForKey:v75];
                            }

                            else
                            {
                              v63 = [v54 mutableSetValueForKey:v75];
                            }

                            [v63 removeObject:*(a1 + 32)];
                          }
                        }
                      }

                      else
                      {
                        v59 = [v57 newValuesForObjectWithID:v52 withContext:*(a1 + 56) error:0];
                        if (!v59 || (v60 = objc_opt_class(), v60 == objc_opt_class()))
                        {
                          v61 = objc_msgSend_valueForKey_(v59);
                        }

                        else
                        {
                          v61 = [v59 valueForPropertyDescription:v77];
                          v78 = 0;
                          v62 = v77;
                          if (!v61)
                          {
                            v61 = [*(a1 + 64) newValueForRelationship:v77 forObjectWithID:v73 withContext:*(a1 + 56) error:&v78];
                            if (!v61)
                            {
                              NSLog(@"That was unexpected. Error trying to get %@ from %@ (%@)", v69, v73, v78);
                              v61 = 0;
                            }
                          }

                          if ([MEMORY[0x1E695DFB0] null] == v61)
                          {
                            v61 = 0;
                          }
                        }

                        if ([v73 isEqual:v61])
                        {
                          [*(a1 + 56) refreshObject:v54 mergeChanges:1];
                          if ([v54 primitiveValueForKey:v75] == *(a1 + 32))
                          {
                            if (v72 == 2)
                            {
                              [*(a1 + 56) deleteObject:v54];
                            }

                            else
                            {
                              [v54 setValue:0 forKey:v75];
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v49 = [v41 countByEnumeratingWithState:&v79 objects:v91 count:16];
              }

              while (v49);
            }

            if (*(&v94 + 1))
            {
              v31 = v70;
              v35 = v67;
              v36 = v64;
              v37 = 0x1EA8C5000;
              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }

            else
            {
              *(&v93 + 1) = v93;
              v31 = v70;
              v35 = v67;
              v36 = v64;
              v37 = 0x1EA8C5000;
            }
          }
        }
      }

      ++v35;
    }

    while (v35 != v36);
  }
}

- (void)_mergeChangesObjectUpdatesTrumpForObject:(id)object withRecord:(id)record
{
  v76 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  managedObjectContext = [object managedObjectContext];
  v7 = [(NSManagedObjectContext *)managedObjectContext _committedSnapshotForObject:object];
  if ([object isDeleted])
  {
    if (self)
    {
      v8 = [record objectForKey:@"snapshot"];
      v9 = [record objectForKey:@"cachedRow"];
      v10 = v9;
      if (v8)
      {
        v11 = v9;
        v10 = v8;
      }

      else
      {
        v11 = [record objectForKey:@"databaseRow"];
      }

      if (v8)
      {
        v12 = dword_1ED4BEA64 == 0;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      managedObjectContext2 = [object managedObjectContext];
      v15 = managedObjectContext2;
      if (managedObjectContext2)
      {
        v16 = *(managedObjectContext2 + 32);
      }

      else
      {
        v16 = 0;
      }

      *buf = MEMORY[0x1E69E9820];
      v67 = 3221225472;
      v68 = __68__NSMergePolicy__mergeDeletionWithStoreChangesForObject_withRecord___block_invoke;
      v69 = &unk_1E6EC2860;
      objectCopy = object;
      v71 = v10;
      v75 = v13;
      v72 = v11;
      v73 = managedObjectContext2;
      v74 = v16;
      [(NSManagedObjectContext *)managedObjectContext2 lockObjectStore];
      if (v16 == [v15 persistentStoreCoordinator])
      {
        [v16 performBlockAndWait:buf];
      }

      else
      {
        v68(buf);
      }

      [(NSManagedObjectContext *)v15 unlockObjectStore];
    }
  }

  else if ([object isInserted])
  {
    [(NSManagedObjectContext *)managedObjectContext _forceMoveInsertToUpdatedList:object];
  }

  v17 = [record objectForKey:@"snapshot"];
  v18 = [record objectForKey:@"cachedRow"];
  if (v17)
  {
    v54 = v18;
    v55 = v17;
  }

  else
  {
    v55 = v18;
    v54 = [record objectForKey:@"databaseRow"];
  }

  if (v17)
  {
    v19 = dword_1ED4BEA64 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v53 = v20;
  _newChangedValuesForRefresh__ = [(NSManagedObject *)object _newChangedValuesForRefresh__];
  v52 = [v7 copy];
  entity = [object entity];
  v51 = entity;
  if (entity)
  {
    v23 = entity;
    keys = [*(entity + 104) keys];
    v25 = *(v23 + 112);
  }

  else
  {
    keys = [0 keys];
    v25 = 0;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v27 = *(v25 + 48);
  v28 = *(v25 + 56);
  v49 = v25;
  if (v27 < v28 + v27)
  {
    do
    {
      v29 = objc_autoreleasePoolPush();
      v30 = [v55 objectForKey:*(keys + 8 * v27)];
      if (v30 == null)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      v32 = [v54 objectForKey:*(keys + 8 * v27)];
      if (v32 == null)
      {
        v33 = 0;
      }

      else
      {
        v33 = v32;
      }

      if (v31 != v33)
      {
        v34 = *(*(v51 + 96) + 24 + 8 * v27);
        if (([v34 _epsilonEquals:v33 rhs:v31 withFlags:1] & 1) == 0)
        {
          if ([v34 usesMergeableStorage])
          {
            [v33 merge:v31];
            v33 = [v33 copy];
          }

          [object setValue:v33 forKey:*(keys + 8 * v27)];
          [v52 setValue:v33 atIndex:v27];
        }
      }

      objc_autoreleasePoolPop(v29);
      ++v27;
      --v28;
    }

    while (v28);
  }

  v35 = *(v49 + 96);
  v36 = *(v49 + 104);
  if (v35 < v36 + v35)
  {
    do
    {
      v37 = [v55 objectForKey:*(keys + 8 * v35)];
      if (v37 == null)
      {
        objectID = 0;
      }

      else
      {
        objectID = v37;
      }

      if (v53)
      {
        objectID = [objectID objectID];
      }

      v39 = [v54 objectForKey:*(keys + 8 * v35)];
      if (v39 == null)
      {
        objectID2 = 0;
      }

      else
      {
        objectID2 = v39;
      }

      if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0)
      {
        objectID2 = [objectID2 objectID];
      }

      if (objectID != objectID2 && ([objectID2 isEqual:objectID] & 1) == 0)
      {
        if (objectID2)
        {
          v41 = [NSManagedObjectContext _retainedObjectWithID:managedObjectContext optionalHandler:objectID2 withInlineStorage:0];
        }

        else
        {
          v41 = 0;
        }

        [object setValue:v41 forKey:*(keys + 8 * v35)];
        [v52 setValue:v41 atIndex:v35];
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  [(NSManagedObject *)object _setOriginalSnapshot__:v52];
  if ([(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ count])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v42 = [(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v42)
    {
      v43 = *v61;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v61 != v43)
          {
            objc_enumerationMutation(_newChangedValuesForRefresh__);
          }

          [object willChangeValueForKey:*(*(&v60 + 1) + 8 * i)];
        }

        v42 = [(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v42);
    }

    [(NSManagedObject *)object _updateFromRefreshSnapshot:_newChangedValuesForRefresh__ includingTransients:0];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = [(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v45)
    {
      v46 = *v57;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v57 != v46)
          {
            objc_enumerationMutation(_newChangedValuesForRefresh__);
          }

          [object didChangeValueForKey:*(*(&v56 + 1) + 8 * j)];
        }

        v45 = [(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v45);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)resolveConflicts:(NSArray *)list error:(NSError *)error
{
  v7 = -[NSArray filteredArrayUsingPredicate:](list, "filteredArrayUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_9]);
  v8 = -[NSArray filteredArrayUsingPredicate:](list, "filteredArrayUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_243]);
  if ((![(NSArray *)v7 count]|| (v9 = [(NSMergePolicy *)self resolveOptimisticLockingVersionConflicts:v7 error:error])) && (![(NSArray *)v8 count]|| (v9 = [(NSMergePolicy *)self resolveConstraintConflicts:v8 error:error])))
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)resolveConstraintConflicts:(NSArray *)list error:(NSError *)error
{
  v201[16] = *MEMORY[0x1E69E9840];
  v176 = 0;
  if (![(NSArray *)list count])
  {
    return 1;
  }

  selfCopy = self;
  if (!self->_type)
  {
    goto LABEL_257;
  }

  v143 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([-[NSArray firstObject](list "firstObject")])
  {
    array = [MEMORY[0x1E695DF70] array];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v6 = [(NSArray *)list countByEnumeratingWithState:&v172 objects:v193 count:16];
    if (v6)
    {
      managedObjectContext = 0;
      v8 = *v173;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v173 != v8)
          {
            objc_enumerationMutation(list);
          }

          v10 = *(*(&v172 + 1) + 8 * i);
          v168 = 0u;
          v169 = 0u;
          v170 = 0u;
          v171 = 0u;
          conflictingObjects = [v10 conflictingObjects];
          v12 = [conflictingObjects countByEnumeratingWithState:&v168 objects:v192 count:16];
          if (v12)
          {
            v13 = *v169;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v169 != v13)
                {
                  objc_enumerationMutation(conflictingObjects);
                }

                v15 = *(*(&v168 + 1) + 8 * j);
                [array addObject:{objc_msgSend(v15, "objectID")}];
                if (!managedObjectContext)
                {
                  managedObjectContext = [v15 managedObjectContext];
                }
              }

              v12 = [conflictingObjects countByEnumeratingWithState:&v168 objects:v192 count:16];
            }

            while (v12);
          }
        }

        v6 = [(NSArray *)list countByEnumeratingWithState:&v172 objects:v193 count:16];
      }

      while (v6);
      if (managedObjectContext)
      {
        v16 = [_PFRoutines createDictionaryPartitioningObjectsIDByRootEntity:array];
        v201[0] = 0;
        v201[1] = v201;
        v201[2] = 0x3052000000;
        v201[3] = __Block_byref_object_copy__16;
        v201[4] = __Block_byref_object_dispose__16;
        v201[5] = [MEMORY[0x1E695DF70] array];
        v167[0] = MEMORY[0x1E69E9820];
        v167[1] = 3221225472;
        v167[2] = __50__NSMergePolicy_resolveConstraintConflicts_error___block_invoke;
        v167[3] = &unk_1E6EC1CD8;
        v167[4] = managedObjectContext;
        v167[5] = v201;
        [(__CFDictionary *)v16 enumerateKeysAndObjectsUsingBlock:v167];

        _Block_object_dispose(v201, 8);
      }
    }
  }

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v17 = [(NSArray *)list countByEnumeratingWithState:&v163 objects:v191 count:16];
  if (!v17)
  {
    goto LABEL_251;
  }

  v145 = *MEMORY[0x1E696A250];
  v146 = *v164;
LABEL_24:
  v156 = 0;
  v147 = v17;
  while (1)
  {
    if (*v164 != v146)
    {
      objc_enumerationMutation(list);
    }

    if (!selfCopy)
    {
      break;
    }

    v18 = *(*(&v163 + 1) + 8 * v156);
    if ([v18 _isDBConflict])
    {
      databaseObject = [v18 databaseObject];
      v20 = [objc_msgSend(v18 "conflictingObjects")];
      if ([v20 isDeleted] & 1) != 0 || (objc_msgSend(databaseObject, "isDeleted"))
      {
        goto LABEL_76;
      }

      constraint = [v18 constraint];
      databaseSnapshot = [v18 databaseSnapshot];
      if (databaseObject && (v22 = databaseObject[6]) != 0)
      {
        v159 = *(v22 + 8);
      }

      else
      {
        v159 = 0;
      }

      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v49 = [constraint countByEnumeratingWithState:&v185 objects:v201 count:16];
      if (v49)
      {
        v50 = *v186;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v186 != v50)
            {
              objc_enumerationMutation(constraint);
            }

            v52 = *(*(&v185 + 1) + 8 * k);
            v53 = objc_msgSend_valueForKey_(v20);
            v54 = objc_msgSend_valueForKey_(databaseSnapshot);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (([objc_msgSend(v53 "objectID")] & 1) == 0)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v196 = v52;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Got non-object value back for property '%@' which returned an objectID from the snapshot.\n", buf, 0xCu);
                }

                v56 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v196 = v52;
                  _os_log_fault_impl(&dword_18565F000, v56, OS_LOG_TYPE_FAULT, "CoreData: Got non-object value back for property '%@' which returned an objectID from the snapshot.", buf, 0xCu);
                }
              }
            }

            else if (([v53 isEqual:v54] & 1) == 0 && (!objc_msgSend(v53, "isNSString") || !+[_PFRoutines isSanitizedVersionOf:equalTo:](_PFRoutines, v53, v54)))
            {
              goto LABEL_76;
            }

            if ([databaseObject hasChanges])
            {
              v57 = objc_msgSend_valueForKey_(databaseObject);
              if (([v57 isEqual:objc_msgSend_valueForKey_(v159)] & 1) == 0 && (objc_msgSend(v57, "isEqual:", v53) & 1) == 0 && (!objc_msgSend(v57, "isNSString") || !+[_PFRoutines isSanitizedVersionOf:equalTo:](_PFRoutines, v53, v57)))
              {
                goto LABEL_76;
              }
            }
          }

          v49 = [constraint countByEnumeratingWithState:&v185 objects:v201 count:16];
        }

        while (v49);
      }

      v150 = v18;
    }

    else
    {
      array2 = [MEMORY[0x1E695DF70] array];
      constraintValues = [v18 constraintValues];
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      conflictingObjects2 = [v18 conflictingObjects];
      v26 = [conflictingObjects2 countByEnumeratingWithState:&v185 objects:v201 count:16];
      if (v26)
      {
        v27 = *v186;
        do
        {
          for (m = 0; m != v26; ++m)
          {
            if (*v186 != v27)
            {
              objc_enumerationMutation(conflictingObjects2);
            }

            v29 = *(*(&v185 + 1) + 8 * m);
            if (([v29 isDeleted] & 1) == 0 && -[NSMergePolicy _valuesOnObject:matchAgainstValues:](v29, constraintValues))
            {
              [array2 addObject:v29];
            }
          }

          v26 = [conflictingObjects2 countByEnumeratingWithState:&v185 objects:v201 count:16];
        }

        while (v26);
      }

      if ([array2 count] < 2)
      {
        goto LABEL_76;
      }

      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v31 = [array2 countByEnumeratingWithState:&v181 objects:&v197 count:16];
      if (v31)
      {
        v32 = *v182;
        do
        {
          for (n = 0; n != v31; ++n)
          {
            if (*v182 != v32)
            {
              objc_enumerationMutation(array2);
            }

            v34 = *(*(&v181 + 1) + 8 * n);
            if (!v34 || (v35 = *(v34 + 48)) == 0 || (null = *(v35 + 8)) == 0)
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            [v30 addObject:null];
          }

          v31 = [array2 countByEnumeratingWithState:&v181 objects:&v197 count:16];
        }

        while (v31);
      }

      v150 = -[NSConstraintConflict initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:]([NSConstraintConflict alloc], "initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:", [v18 constraint], 0, 0, array2, v30);
    }

    if (!v150)
    {
      goto LABEL_76;
    }

    v37 = [MEMORY[0x1E695DFA8] set];
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    conflictingObjects3 = [(NSConstraintConflict *)v150 conflictingObjects];
    v39 = [(NSArray *)conflictingObjects3 countByEnumeratingWithState:&v177 objects:v194 count:16];
    if (!v39)
    {
      goto LABEL_73;
    }

    managedObjectContext2 = 0;
    v41 = *v178;
    do
    {
      for (ii = 0; ii != v39; ++ii)
      {
        if (*v178 != v41)
        {
          objc_enumerationMutation(conflictingObjects3);
        }

        v43 = *(*(&v177 + 1) + 8 * ii);
        if (!managedObjectContext2)
        {
          managedObjectContext2 = [*(*(&v177 + 1) + 8 * ii) managedObjectContext];
        }

        [v37 addObject:{objc_msgSend(v43, "entity")}];
      }

      v39 = [(NSArray *)conflictingObjects3 countByEnumeratingWithState:&v177 objects:v194 count:16];
    }

    while (v39);
    if (!managedObjectContext2)
    {
LABEL_73:
      v47 = &unk_1EF4352D8;
      goto LABEL_74;
    }

    databaseObject2 = [(NSConstraintConflict *)v150 databaseObject];
    p_isa = &databaseObject2->super.isa;
    if (databaseObject2)
    {
      [v37 addObject:{-[NSManagedObject entity](databaseObject2, "entity")}];
    }

    v46 = [v37 count];
    v47 = &unk_1EF435300;
    if (v46 > 1)
    {
      goto LABEL_74;
    }

    if ((-[NSEntityDescription _isPathologicalForConstraintMerging:]([v37 anyObject], &v176) & 1) == 0)
    {
      if (![(NSConstraintConflict *)v150 _isDBConflict])
      {
        conflictingObjects4 = [(NSConstraintConflict *)v150 conflictingObjects];
        conflictingSnapshots = [(NSConstraintConflict *)v150 conflictingSnapshots];
        constraintValues2 = [(NSConstraintConflict *)v150 constraintValues];
        v63 = [(NSArray *)[(NSConstraintConflict *)v150 conflictingSnapshots] count];
        if (!v63)
        {
          goto LABEL_122;
        }

        p_isa = 0;
        v64 = 0;
        while (1)
        {
          v65 = [(NSArray *)conflictingSnapshots objectAtIndex:v64];
          if ([MEMORY[0x1E695DFB0] null] == v65 && (objc_msgSend(-[NSArray objectAtIndex:](conflictingObjects4, "objectAtIndex:", v64), "hasChanges") & 1) == 0)
          {
            p_isa = [(NSArray *)conflictingObjects4 objectAtIndex:v64];
          }

          else if ([NSMergePolicy _valuesOnObject:v65 matchAgainstValues:constraintValues2])
          {
            p_isa = [(NSArray *)conflictingObjects4 objectAtIndex:v64];
LABEL_121:
            if (p_isa)
            {
              goto LABEL_171;
            }

LABEL_122:
            v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v183 = 0u;
            v184 = 0u;
            v181 = 0u;
            v182 = 0u;
            v68 = [(NSArray *)conflictingObjects4 countByEnumeratingWithState:&v181 objects:&v197 count:16];
            if (v68)
            {
              v69 = *v182;
              do
              {
                for (jj = 0; jj != v68; ++jj)
                {
                  if (*v182 != v69)
                  {
                    objc_enumerationMutation(conflictingObjects4);
                  }

                  v71 = *(*(&v181 + 1) + 8 * jj);
                  if ([v71 isInserted])
                  {
                    v72 = v67;
                  }

                  else
                  {
                    v72 = v66;
                  }

                  [v72 addObject:v71];
                }

                v68 = [(NSArray *)conflictingObjects4 countByEnumeratingWithState:&v181 objects:&v197 count:16];
              }

              while (v68);
            }

            v73 = [v66 count];
            if (!v73)
            {
              firstObject = [v67 firstObject];
LABEL_169:
              p_isa = firstObject;
              goto LABEL_170;
            }

            if (v73 == 1)
            {
              firstObject = [v66 lastObject];
              goto LABEL_169;
            }

            v75 = [objc_msgSend(v66 "firstObject")];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v187 = 0u;
              v188 = 0u;
              v185 = 0u;
              v186 = 0u;
              v76 = [v66 countByEnumeratingWithState:&v185 objects:v201 count:16];
              if (v76)
              {
                p_isa = 0;
                v77 = *v186;
                v78 = 0x7FFFFFFFFFFFFFFFLL;
                do
                {
                  for (kk = 0; kk != v76; ++kk)
                  {
                    if (*v186 != v77)
                    {
                      objc_enumerationMutation(v66);
                    }

                    v80 = *(*(&v185 + 1) + 8 * kk);
                    v81 = [objc_msgSend(v80 "objectID")];
                    v82 = v78 <= v81;
                    if (v78 >= v81)
                    {
                      v78 = v81;
                    }

                    if (!v82)
                    {
                      p_isa = v80;
                    }
                  }

                  v76 = [v66 countByEnumeratingWithState:&v185 objects:v201 count:16];
                }

                while (v76);
                goto LABEL_170;
              }

LABEL_247:
              p_isa = 0;
              goto LABEL_170;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v75 _referenceData], (objc_opt_respondsToSelector() & 1) == 0))
            {
              firstObject = [v66 firstObject];
              goto LABEL_169;
            }

            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            v83 = [v66 countByEnumeratingWithState:&v185 objects:v201 count:16];
            if (!v83)
            {
              goto LABEL_247;
            }

            p_isa = 0;
            v84 = 0;
            v85 = *v186;
            do
            {
              for (mm = 0; mm != v83; ++mm)
              {
                if (*v186 != v85)
                {
                  objc_enumerationMutation(v66);
                }

                v87 = *(*(&v185 + 1) + 8 * mm);
                v88 = [objc_msgSend(v87 "objectID")];
                if (v84)
                {
                  v89 = v88;
                  if ([v84 compare:v88] != -1)
                  {
                    p_isa = v87;
                    v84 = v89;
                  }
                }

                else
                {
                  v84 = [objc_msgSend(v87 "objectID")];
                }
              }

              v83 = [v66 countByEnumeratingWithState:&v185 objects:v201 count:16];
            }

            while (v83);
LABEL_170:

LABEL_171:
            type = selfCopy->_type;
            if (type - 3 < 2)
            {
              v197 = 0u;
              v198 = 0u;
              v199 = 0u;
              v200 = 0u;
              conflictingObjects5 = [(NSConstraintConflict *)v150 conflictingObjects];
              v131 = [(NSArray *)conflictingObjects5 countByEnumeratingWithState:&v197 objects:v201 count:16];
              if (v131)
              {
                v132 = *v198;
                do
                {
                  for (nn = 0; nn != v131; ++nn)
                  {
                    if (*v198 != v132)
                    {
                      objc_enumerationMutation(conflictingObjects5);
                    }

                    v134 = *(*(&v197 + 1) + 8 * nn);
                    if (v134 != p_isa)
                    {
                      [objc_msgSend(*(*(&v197 + 1) + 8 * nn) "managedObjectContext")];
                    }
                  }

                  v131 = [(NSArray *)conflictingObjects5 countByEnumeratingWithState:&v197 objects:v201 count:16];
                }

                while (v131);
              }

LABEL_243:
              v58 = 1;
              goto LABEL_245;
            }

            if (type - 1 > 1)
            {
              v58 = 0;
              goto LABEL_245;
            }

            conflictingObjects6 = [(NSConstraintConflict *)v150 conflictingObjects];
            v200 = 0u;
            v199 = 0u;
            v198 = 0u;
            v197 = 0u;
            v92 = [(NSArray *)conflictingObjects6 countByEnumeratingWithState:&v197 objects:v201 count:16];
            if (!v92)
            {
              goto LABEL_243;
            }

            v154 = *v198;
            v151 = conflictingObjects6;
            while (2)
            {
              v93 = 0;
              v152 = v92;
LABEL_176:
              if (*v198 != v154)
              {
                objc_enumerationMutation(v151);
              }

              v94 = *(*(&v197 + 1) + 8 * v93);
              if (v94 != p_isa)
              {
                if (p_isa && (v95 = p_isa[6]) != 0)
                {
                  v96 = *(v95 + 8);
                  if (!v94)
                  {
LABEL_186:
                    v158 = 0;
                    goto LABEL_187;
                  }
                }

                else
                {
                  v96 = 0;
                  if (!v94)
                  {
                    goto LABEL_186;
                  }
                }

                v97 = v94[6];
                if (!v97)
                {
                  goto LABEL_186;
                }

                v158 = *(v97 + 8);
LABEL_187:
                entity = [p_isa entity];
                v99 = entity;
                if (entity)
                {
                  keys = [*(entity + 104) keys];
                  v101 = v99[14];
                }

                else
                {
                  keys = [0 keys];
                  v101 = 0;
                }

                null2 = [MEMORY[0x1E695DFB0] null];
                v157 = v99;
                v160 = v94;
                v102 = v101[6];
                v103 = v101[7];
                if (v102 < v103 + v102)
                {
                  v104 = (keys + 8 * v102);
                  do
                  {
                    if (!v96 || ((v105 = objc_msgSend_valueForKey_(v96), null2 != v105) ? (v106 = v105) : (v106 = 0), (v107 = objc_msgSend_valueForKey_(p_isa), v106 | v107) && [v106 isEqual:v107]))
                    {
                      v108 = objc_msgSend_valueForKey_(v158);
                      v109 = null2 == v108 ? 0 : v108;
                      v110 = objc_msgSend_valueForKey_(v160);
                      v111 = v110;
                      if (v110 | v109)
                      {
                        if (([v110 isEqual:v109] & 1) == 0)
                        {
                          [p_isa setValue:v111 forKey:*v104];
                        }
                      }
                    }

                    ++v104;
                    --v103;
                  }

                  while (v103);
                }

                v155 = v93;
                v112 = v101[12];
                v113 = v101[13];
                if (v112 < v113 + v112)
                {
                  v114 = 8 * v112;
                  do
                  {
                    v115 = p_isa;
                    v116 = objc_msgSend_valueForKey_(p_isa);
                    if (!v96 || ((v117 = objc_msgSend_valueForKey_(v96), null2 != v117) ? (v118 = v117) : (v118 = 0), v118 | v116 && [v118 isEqual:{objc_msgSend(v116, "objectID")}]))
                    {
                      v119 = objc_msgSend_valueForKey_(v158);
                      v120 = null2 == v119 ? 0 : v119;
                      v121 = objc_msgSend_valueForKey_(v160);
                      v122 = v121;
                      if (v121 | v120)
                      {
                        if (([v121 isEqual:v120] & 1) == 0)
                        {
                          v123 = *(v157[12] + 24 + v114);
                          inverseRelationship = [v123 inverseRelationship];
                          name = [inverseRelationship name];
                          isToMany = [inverseRelationship isToMany];
                          if (v116)
                          {
                            if (!inverseRelationship)
                            {
                              [NSMergePolicy _cannotResolveConflictOnEntity:v157 relationshipWithNoInverse:v123];
                            }

                            if (isToMany)
                            {
                              isOrdered = [inverseRelationship isOrdered];
                              name2 = [inverseRelationship name];
                              if (isOrdered)
                              {
                                [objc_msgSend(v116 mutableOrderedSetValueForKey:{name2), "removeObject:", v115}];
                                v129 = [v122 mutableOrderedSetValueForKey:{objc_msgSend(inverseRelationship, "name")}];
                              }

                              else
                              {
                                [objc_msgSend(v116 mutableSetValueForKey:{name2), "removeObject:", v115}];
                                v129 = [v122 mutableSetValueForKey:{objc_msgSend(inverseRelationship, "name")}];
                              }

                              [v129 addObject:v115];
                              [v129 removeObject:v160];
                            }

                            else
                            {
                              [v122 setValue:v115 forKey:name];
                              [v116 setValue:0 forKey:name];
                            }

                            if ([v123 deleteRule] == 2)
                            {
                              [objc_msgSend(v115 "managedObjectContext")];
                            }
                          }

                          [v160 setValue:0 forKey:*(keys + v114)];
                          [v115 setValue:v122 forKey:*(keys + v114)];
                        }
                      }
                    }

                    v114 += 8;
                    --v113;
                    p_isa = v115;
                  }

                  while (v113);
                }

                [NSMergePolicy _mergeToManyUnionRelationshipsForObject:v160 andObject:?];
                v92 = v152;
                v93 = v155;
                [objc_msgSend(v160 "managedObjectContext")];
              }

              if (++v93 == v92)
              {
                v92 = [(NSArray *)v151 countByEnumeratingWithState:&v197 objects:v201 count:16];
                if (!v92)
                {
                  goto LABEL_243;
                }

                continue;
              }

              goto LABEL_176;
            }
          }

          if (v63 == ++v64)
          {
            goto LABEL_121;
          }
        }
      }

      v58 = 0;
      v59 = selfCopy->_type;
      if (v59 > 2)
      {
        if (v59 == 3)
        {
          [NSMergePolicy _overwriteResolveConstraintConflict:v150];
        }

        else
        {
          if (v59 != 4)
          {
            goto LABEL_245;
          }

          [NSMergePolicy _rollbackResolveConstraintConflict:v150];
        }
      }

      else
      {
        if (v59 != 1)
        {
          if (v59 == 2)
          {
            [NSMergePolicy _byPropertyObjectTrumpResolveConstraintConflict:v150];
            goto LABEL_151;
          }

LABEL_245:
          [objc_msgSend(p_isa "managedObjectContext")];
          v47 = &unk_1EF435328;
          if (v58)
          {
            v48 = 1;
            goto LABEL_75;
          }

LABEL_74:
          v48 = 0;
          v176 = [MEMORY[0x1E696ABC0] errorWithDomain:v145 code:133020 userInfo:v47];
          goto LABEL_75;
        }

        [NSMergePolicy _byPropertyStoreTrumpResolveConstraintConflict:v150];
      }

LABEL_151:
      v58 = 1;
      goto LABEL_245;
    }

    v48 = 0;
LABEL_75:

    if ((v48 & 1) == 0)
    {
      break;
    }

LABEL_76:
    if (++v156 == v147)
    {
      v17 = [(NSArray *)list countByEnumeratingWithState:&v163 objects:v191 count:16];
      v149 = 1;
      if (!v17)
      {
        goto LABEL_253;
      }

      goto LABEL_24;
    }
  }

  v135 = v176;
LABEL_251:
  v149 = 0;
LABEL_253:
  [v143 drain];
  v136 = 0;
  if (v149)
  {
    return 1;
  }

  v138 = v176;
  if (v176)
  {
    *error = v176;
    v139 = v138;
    return 0;
  }

LABEL_257:
  v140 = MEMORY[0x1E696ABC0];
  v189 = @"conflictList";
  v190 = list;
  v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
  v142 = [v140 errorWithDomain:*MEMORY[0x1E696A250] code:133021 userInfo:v141];
  result = 0;
  *error = v142;
  return result;
}

uint64_t __50__NSMergePolicy_resolveConstraintConflicts_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __50__NSMergePolicy_resolveConstraintConflicts_error___block_invoke_2;
  v7 = &unk_1E6EC28A8;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  if ([v10 concurrencyType])
  {
    return [*(a1 + 32) performBlockAndWait:v5];
  }

  else
  {
    return v6(v5);
  }
}

uint64_t __50__NSMergePolicy_resolveConstraintConflicts_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(NSFetchRequest);
  [(NSFetchRequest *)v4 setEntity:v3];
  [(NSFetchRequest *)v4 setIncludesSubentities:1];
  [(NSFetchRequest *)v4 setIncludesPendingChanges:0];
  [(NSFetchRequest *)v4 setRelationshipKeyPathsForPrefetching:[(NSEntityDescription *)v3 _keypathsForDeletions]];
  -[NSFetchRequest setPredicate:](v4, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 40)]);
  v7 = 0;
  v5 = [*(a1 + 48) executeFetchRequest:v4 error:&v7];
  if (v5)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  }

  return [v2 drain];
}

- (BOOL)resolveOptimisticLockingVersionConflicts:(NSArray *)list error:(NSError *)error
{
  v4 = list;
  v54 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)list count])
  {
    return 1;
  }

  if (!self->_type)
  {
    v22 = 0;
    goto LABEL_51;
  }

  v33 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  array = [MEMORY[0x1E695DF70] array];
  obj = v4;
  if ([-[NSArray objectAtIndex:](v4 objectAtIndex:{0), "objectForKey:", @"snapshot"}])
  {
    goto LABEL_4;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v24 = [(NSArray *)v4 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (!v24)
  {
    goto LABEL_4;
  }

  managedObjectContext = 0;
  v26 = *v42;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v42 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v41 + 1) + 8 * i);
      v29 = [objc_msgSend(v28 objectForKey:{@"newVersion", "unsignedIntValue"}];
      v30 = [v28 objectForKey:@"object"];
      v31 = v30;
      if (managedObjectContext)
      {
        if (!v30)
        {
          continue;
        }
      }

      else
      {
        managedObjectContext = [v30 managedObjectContext];
        if (!v31)
        {
          continue;
        }
      }

      if (!v29 || [v31 isDeleted])
      {
        [array addObject:{objc_msgSend(v31, "objectID")}];
      }
    }

    v24 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  }

  while (v24);
  v4 = obj;
  if (managedObjectContext)
  {
    v32 = [_PFRoutines createDictionaryPartitioningObjectsIDByRootEntity:array];
    v45 = 0;
    v46 = &v45;
    v47 = 0x3052000000;
    v48 = __Block_byref_object_copy__16;
    v49 = __Block_byref_object_dispose__16;
    array2 = [MEMORY[0x1E695DF70] array];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke;
    v40[3] = &unk_1E6EC1CD8;
    v40[4] = managedObjectContext;
    v40[5] = &v45;
    [(__CFDictionary *)v32 enumerateKeysAndObjectsUsingBlock:v40];

    _Block_object_dispose(&v45, 8);
    v4 = obj;
  }

LABEL_4:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v7)
  {
    v8 = *v37;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v37 != v8)
      {
        objc_enumerationMutation(obj);
      }

      if (!self)
      {
        v22 = 0;
        goto LABEL_47;
      }

      v10 = *(*(&v36 + 1) + 8 * v9);
      v11 = [objc_msgSend(v10 objectForKey:{@"newVersion", "unsignedIntValue"}];
      v12 = [v10 objectForKey:@"object"];
      managedObjectContext2 = [v12 managedObjectContext];
      v14 = managedObjectContext2;
      if (v12)
      {
        v15 = managedObjectContext2 == 0;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v14 = *(v12 + 32);
        if (v14)
        {
          objectID = [v12 objectID];
          v17 = [v14 objectRegisteredForID:objectID];
          if (v17 == v12)
          {
            *(v12 + 16) &= ~0x80u;
          }

          else if (!v17)
          {
            [(NSManagedObjectContext *)v14 _registerObject:v12 withID:objectID];
          }
        }
      }

      type = self->_type;
      if (v11)
      {
        if (type > 2)
        {
          if (type == 3)
          {
            if (([v12 hasChanges] & 1) == 0)
            {
              _PFFastMOCObjectWillChange(v14, v12);
            }

            [v12 _setVersionReference__:v11];
          }

          else if (type == 4)
          {
            [v14 refreshObject:v12 mergeChanges:0];
            objectID2 = [v12 objectID];
            persistentStore = [objectID2 persistentStore];
            if (@"NSXPCStore" == [persistentStore type])
            {
              _persistentStoreCoordinator = [persistentStore _persistentStoreCoordinator];
              v45 = MEMORY[0x1E69E9820];
              v46 = 3221225472;
              v47 = __33__NSMergePolicy_resolveConflict___block_invoke;
              v48 = &unk_1E6EC19D8;
              v49 = v14;
              array2 = persistentStore;
              v51 = objectID2;
              [_persistentStoreCoordinator performBlockAndWait:&v45];
            }
          }
        }

        else if (type == 1)
        {
          [(NSMergePolicy *)self _mergeChangesStoreUpdatesTrumpForObject:v12 withRecord:v10];
          [v12 _setVersionReference__:v11];
        }

        else if (type == 2)
        {
          if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
          {
            [(NSMergePolicy *)self _mergeChangesObjectUpdatesTrumpForObject:v12 withRecord:v10];
            [v12 _setVersionReference__:v11];
          }

          else
          {
            [v14 refreshObject:v12 mergeChanges:1];
          }
        }
      }

      else
      {
        if (!(z9dsptsiQ80etb9782fsrs98bfdle88 & 1 | (type != 2)))
        {
          type = 3;
        }

        if ((type - 1) < 2)
        {
          goto LABEL_31;
        }

        if (type == 3)
        {
          if (([v12 isDeleted] & 1) == 0 && (objc_msgSend(v12, "isInserted") & 1) == 0)
          {
            [v14 _forceInsertionForObject:v12];
          }

          goto LABEL_44;
        }

        if (type == 4)
        {
LABEL_31:
          [v14 deleteObject:v12];
        }
      }

LABEL_44:
      [v12 awakeFromSnapshotEvents:64];
      if (v7 == ++v9)
      {
        v7 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v22 = 1;
LABEL_47:
  if (v33)
  {
    [v33 drain];
  }

LABEL_51:
  if (error && !v22)
  {
    v22 = 0;
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:133020 userInfo:0];
  }

  return v22;
}

uint64_t __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke_2;
  v7 = &unk_1E6EC28A8;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  if ([v10 concurrencyType])
  {
    return [*(a1 + 32) performBlockAndWait:v5];
  }

  else
  {
    return v6(v5);
  }
}

uint64_t __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(NSFetchRequest);
  [(NSFetchRequest *)v4 setEntity:v3];
  [(NSFetchRequest *)v4 setIncludesSubentities:1];
  [(NSFetchRequest *)v4 setIncludesPendingChanges:0];
  [(NSFetchRequest *)v4 setRelationshipKeyPathsForPrefetching:[(NSEntityDescription *)v3 _keypathsForDeletions]];
  -[NSFetchRequest setPredicate:](v4, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 40)]);
  v7 = 0;
  v5 = [*(a1 + 48) executeFetchRequest:v4 error:&v7];
  if (v5)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  }

  return [v2 drain];
}

@end