@interface _NSFaultingMutableOrderedSet
- (BOOL)_isIdenticalFault:(id)fault;
- (BOOL)_reorderObjectsToLocationsByOrderKey:(id)key error:(id *)error;
- (BOOL)containsObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOrderedSet:(id)set;
- (_BYTE)willChange;
- (_NSFaultingMutableOrderedSet)initWithOrderedSet:(id)set;
- (_NSFaultingMutableOrderedSet)initWithSource:(id)source destinations:(id)destinations forRelationship:(id)relationship inContext:(id)context;
- (_NSFaultingMutableOrderedSet)initWithSource:(id)source forRelationship:(id)relationship asFault:(BOOL)fault;
- (id)_newOrderKeys;
- (id)_orderedObjectsAndKeys;
- (id)_populateOrderKeysUsingSnapshot:(void *)snapshot orderKeys:(void *)keys newIndexes:(void *)indexes reorderedIndexes:;
- (id)_updateOrderKeysFromOrderOfObjectIDs:(id *)result;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionWithLocale:(id)locale;
- (id)indexesOfObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)indexesOfObjectsWithOptions:(unint64_t)options passingTest:(id)test;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectEnumerator;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (uint64_t)_orderKeyForObject:(uint64_t)object;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObject:(id)object;
- (unint64_t)indexOfObjectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (unint64_t)indexOfObjectWithOptions:(unint64_t)options passingTest:(id)test;
- (void)_setProcessingIdempotentKVO:(BOOL)o;
- (void)addObject:(id)object;
- (void)addObjects:(const void *)objects count:(unint64_t)count;
- (void)addObjectsFromArray:(id)array;
- (void)dealloc;
- (void)enumerateObjectsAtIndexes:(id)indexes options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)minusOrderedSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsInArray:(id)array;
- (void)removeObjectsInRange:(_NSRange)range;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)setValue:(id)value forKey:(id)key;
- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)turnIntoFault;
- (void)unionOrderedSet:(id)set;
- (void)unionSet:(id)set;
- (void)willRead;
- (void)willReadWithContents:(id)contents;
@end

@implementation _NSFaultingMutableOrderedSet

- (void)willRead
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {

    [(_NSFaultingMutableOrderedSet *)self willReadWithContents:0];
  }
}

- (unint64_t)count
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet count];
}

- (void)dealloc
{
  realSet = self->_realSet;
  if (realSet && (*&self->_flags & 1) != 0)
  {

    PF_FREE_OBJECT_ARRAY(self->_realSet);
  }

  else
  {
  }

  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    v5 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v5 = malloc_default_zone();
      orderKeys = self->_orderKeys;
    }

    malloc_zone_free(v5, orderKeys);
    self->_orderKeys = 0;
  }

  self->_grottyHack = 0;
  self->_realSet = 0;
  self->_source = 0;

  self->_forcedKeys = 0;

  _PFDeallocateObject(self);
}

- (_NSFaultingMutableOrderedSet)initWithOrderedSet:(id)set
{
  v7.receiver = self;
  v7.super_class = _NSFaultingMutableOrderedSet;
  v4 = [(_NSFaultingMutableOrderedSet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_source = 0;
    v4->_realSet = set;
    *&v5->_flags &= 0xFFE0u;
  }

  return v5;
}

- (_NSFaultingMutableOrderedSet)initWithSource:(id)source forRelationship:(id)relationship asFault:(BOOL)fault
{
  faultCopy = fault;
  v14.receiver = self;
  v14.super_class = _NSFaultingMutableOrderedSet;
  v8 = [(_NSFaultingMutableOrderedSet *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_source = source;
    if ([relationship _isRelationship])
    {
      v10 = *&v9->_flags & 0xFFFFFFFD | (2 * (([relationship deleteRule] - 1) < 2));
    }

    else
    {
      v10 = *&v9->_flags & 0xFFFFFFFD;
    }

    v9->_flags = v10;
    v9->_flags = (v10 & 0xFFFF001F);
    v11 = *&v9->_flags & 0xFFE3 | ([relationship _entitysReferenceID] << 16);
    if (faultCopy)
    {
      v12 = 0;
      v9->_flags = (v11 | 1);
    }

    else
    {
      v9->_flags = (v11 & 0xFFFFFFE2);
      v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    }

    v9->_realSet = v12;
    v9->_orderKeys = 0;
  }

  return v9;
}

- (_NSFaultingMutableOrderedSet)initWithSource:(id)source destinations:(id)destinations forRelationship:(id)relationship inContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  context = [(_NSFaultingMutableOrderedSet *)self initWithSource:source forRelationship:relationship asFault:0, context];
  if (context)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [destinations countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(destinations);
          }

          CFSetAddValue(context->_realSet, *(*(&v13 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [destinations countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  return context;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  flags = self->_flags;
  v5 = MEMORY[0x1E696AEC0];
  name = [(NSPropertyDescription *)[(_NSFaultingMutableOrderedSet *)self relationship] name];
  source = self->_source;
  if (*&flags)
  {
    v8 = objc_msgSend_stringWithFormat_(v5, name, self->_source, source);
  }

  else
  {
    v8 = objc_msgSend_stringWithFormat_(v5, name, source, source, [self->_realSet description]);
  }

  v9 = v8;
  v10 = v8;
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)descriptionWithLocale:(id)locale
{
  v5 = objc_autoreleasePoolPush();
  flags = self->_flags;
  v7 = MEMORY[0x1E696AEC0];
  name = [(NSPropertyDescription *)[(_NSFaultingMutableOrderedSet *)self relationship] name];
  source = self->_source;
  if (*&flags)
  {
    v10 = objc_msgSend_stringWithFormat_(v7, name, self->_source, source);
  }

  else
  {
    v10 = objc_msgSend_stringWithFormat_(v7, name, source, source, [self->_realSet descriptionWithLocale:locale]);
  }

  v11 = v10;
  v12 = v10;
  objc_autoreleasePoolPop(v5);

  return v11;
}

- (void)willReadWithContents:(id)contents
{
  v28 = *MEMORY[0x1E69E9840];
  if (*&self->_flags)
  {
    realSet = self->_realSet;
    managedObjectContext = [(NSManagedObject *)self->_source managedObjectContext];
    entity = [(NSManagedObject *)self->_source entity];
    if (contents)
    {
      v8 = [contents count];
      v9 = MEMORY[0x1EEE9AC00](v8);
      v12 = &v27 - v11;
      if (v9 > 0x200)
      {
        v12 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v27 - v11, 8 * v10);
      }

      [contents getObjects:v12 range:{0, v8}];
      self->_realSet = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v12 count:v8];
      if (v8 >= 0x201)
      {
        NSZoneFree(0, v12);
      }

      if (!realSet)
      {
        goto LABEL_30;
      }
    }

    else
    {
      isa = entity->_properties[*(&self->_flags + 1) + 3].super.super.isa;
      source = self->_source;
      if (source)
      {
        v15 = _insertion_fault_handler;
      }

      else
      {
        v15 = 0;
      }

      v16 = [(NSFaultHandler *)v15 retainedFulfillAggregateFaultForObject:isa andRelationship:managedObjectContext withContext:?];
      v17 = [v16 count];
      if (v17)
      {
        v18 = v17;
        v27 = &v27;
        v19 = MEMORY[0x1EEE9AC00](v17);
        v21 = &v27 - v20;
        if (v19 > 0x200)
        {
          v21 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(&v27 - v20, 8 * v19);
        }

        [v16 getObjects:{v21, v27, v28}];
        for (i = 0; i != v18; ++i)
        {
          *&v21[8 * i] = [NSManagedObjectContext _retainedObjectWithID:managedObjectContext optionalHandler:*&v21[8 * i] withInlineStorage:0];
        }

        v23 = 0;
        self->_realSet = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v21 count:v18];
        do
        {
        }

        while (v18 != v23);
        if (v18 >= 0x201)
        {
          NSZoneFree(0, v21);
        }
      }

      else
      {
        self->_realSet = objc_alloc_init(MEMORY[0x1E695DFA0]);
      }

      if (!realSet)
      {
        goto LABEL_30;
      }
    }

    v25 = *realSet;
    v24 = realSet[1];
    if (*realSet)
    {
      [self->_realSet unionSet:*realSet];
    }

    if (v24)
    {
      [self->_realSet minusSet:v24];
    }

    PF_FREE_OBJECT_ARRAY(realSet);
LABEL_30:
    flags = self->_flags;
    self->_flags = (flags & 0xFFFFFFFE);
    [(NSManagedObject *)&self->_source->super.isa _commitPhotoshoperyForRelationshipAtIndex:self newValue:?];
  }
}

- (_BYTE)willChange
{
  if (result)
  {
    v1 = result;
    result = [result willRead];
    if ((v1[12] & 0x10) != 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot mutate an immutable faulting NSOrderedSet" userInfo:0]);
    }
  }

  return result;
}

- (void)_setProcessingIdempotentKVO:(BOOL)o
{
  if (o)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFB | v3);
}

- (id)_updateOrderKeysFromOrderOfObjectIDs:(id *)result
{
  v79 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if ([result[2] count])
    {
      v4 = [v3[2] count];
      if (!v3[4])
      {
        v5 = v4;
        v6 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v6 = malloc_default_zone();
        }

        v3[4] = malloc_type_zone_calloc(v6, v5, 4uLL, 0x100004052888210uLL);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v7 = [a2 count];
      v8 = MEMORY[0x1EEE9AC00](v7);
      v11 = (v33 - v10);
      v12 = 8 * v9;
      v34 = v8;
      v35 = v3;
      v33[1] = v13;
      if (v8 > 0x200)
      {
        v11 = NSAllocateScannedUncollectable();
        v15 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v33 - v10, 8 * v9);
        MEMORY[0x1EEE9AC00](v14);
        v15 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v15, v12);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v16 = [a2 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v42;
        do
        {
          v20 = 0;
          v21 = v18;
          do
          {
            if (*v42 != v19)
            {
              objc_enumerationMutation(a2);
            }

            v22 = *(*(&v41 + 1) + 8 * v20);
            v18 = v21 + 1;
            *&v15[8 * v21] = v21 + 1;
            v11[v21] = v22;
            ++v20;
            ++v21;
          }

          while (v17 != v20);
          v17 = [a2 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v17);
      }

      v23 = _PFStackAllocatorCreate(&v47, 1024);
      memset(&v40, 0, 24);
      *&v40.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
      v40.hash = *(MEMORY[0x1E695E9D8] + 40);
      v24 = CFDictionaryCreate(v23, v11, v15, v34, &v40, 0);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v35[2];
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = *v37;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v37 != v29)
            {
              objc_enumerationMutation(v25);
            }

            Value = CFDictionaryGetValue(v24, [*(*(&v36 + 1) + 8 * i) objectID]);
            if (Value)
            {
              *(v35[4] + v28) = *(a2[4] + 4 * (Value - 1));
            }

            ++v28;
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v27);
      }

      if (v34 >= 0x201)
      {
        NSZoneFree(0, v15);
        NSZoneFree(0, v11);
      }

      v3 = v35;
      if (*(&v48 + 1))
      {
        if (v24)
        {
          CFRelease(v24);
        }
      }

      else
      {
        *(&v47 + 1) = v47;
      }
    }

    v32 = v3[5];
    if (v32)
    {
    }

    result = a2;
    v3[5] = result;
  }

  return result;
}

- (id)_populateOrderKeysUsingSnapshot:(void *)snapshot orderKeys:(void *)keys newIndexes:(void *)indexes reorderedIndexes:
{
  snapshotCopy = snapshot;
  v94 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v8 = result;
  result = [result[2] count];
  v9 = result;
  if (indexes)
  {
    v10 = *keys;
    v11 = *indexes;
    if (v8[4])
    {
      v12 = 1;
    }

    else
    {
      v12 = result == 0;
    }

    if (v12)
    {
      result = memset(*indexes, 1, result);
      if (v9)
      {
        v13 = v8[4];
        do
        {
          v14 = *v13++;
          *v10++ = v14;
          v9 = (v9 - 1);
        }

        while (v9);
      }

      return result;
    }
  }

  else
  {
    if (v8[4])
    {
      v15 = 1;
    }

    else
    {
      v15 = result == 0;
    }

    if (v15)
    {
      return result;
    }

    v11 = 0;
    v10 = 0;
  }

  v16 = [a2 count];
  v17 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v17 = malloc_default_zone();
  }

  v18 = v9;
  result = malloc_type_zone_calloc(v17, v9, 4uLL, 0x100004052888210uLL);
  v8[4] = result;
  v86 = a2;
  if (!a2 || !snapshotCopy || !v16 || (v19 = v16, result = [snapshotCopy count], v16 != result))
  {
    if ((v9 + 1) < 0x400000)
    {
      if (!v9)
      {
        goto LABEL_31;
      }

      v23 = 1024;
    }

    else
    {
      v23 = 0xFFFFFFFF / (v9 + 1);
    }

    v24 = 0;
    v25 = 2 * v23;
    do
    {
      *(v8[4] + v24) = v25;
      v25 += v23;
      ++v24;
    }

    while (v9 != v24);
LABEL_31:
    if (indexes)
    {
      result = memset(v11, 1, v9);
      if (v9)
      {
        v26 = v8[4];
        do
        {
          v27 = *v26++;
          *v10++ = v27;
          --v18;
        }

        while (v18);
      }
    }

    return result;
  }

  v87 = v11;
  v85 = &v83;
  MEMORY[0x1EEE9AC00](result);
  v22 = &v83 - v20;
  v84 = v21;
  if (v9 > 0x200uLL)
  {
    v22 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v83 - v20, 8 * v21);
  }

  v28 = v8[2];
  v91 = v22;
  [v28 getObjects:v22 range:{0, v9}];
  v29 = 0;
  if (v16 >= 6)
  {
    memset(&keyCallBacks, 0, 24);
    *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
    memset(&valueCallBacks, 0, 24);
    *&valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
    MEMORY[0x1EEE9AC00](0);
    v31 = (&v83 - v30);
    if (v16 > 0x200uLL)
    {
      v31 = NSAllocateScannedUncollectable();
      [v86 getObjects:v31 range:{0, v16}];
      v33 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v83 - v30, 8 * v16);
      v32 = [v86 getObjects:v31 range:{0, v16}];
      MEMORY[0x1EEE9AC00](v32);
      v33 = &v83 - ((8 * v16 + 15) & 0xFFFFFFFF0);
      bzero(v33, 8 * v19);
    }

    [snapshotCopy getObjects:v33 range:{0, v19}];
    v29 = CFDictionaryCreate(*MEMORY[0x1E695E480], v31, v33, v19, &keyCallBacks, &valueCallBacks);
    if (v19 >= 0x201)
    {
      v34 = v29;
      NSZoneFree(0, v31);
      NSZoneFree(0, v33);
      v29 = v34;
    }
  }

  v88 = v29;
  indexesCopy = indexes;
  if (v9)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 1;
    v39 = v91;
    while (1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objectID = *&v39[8 * v35];
      if ((isKindOfClass & 1) == 0)
      {
        objectID = [*&v39[8 * v35] objectID];
      }

      v42 = v8[6];
      if (!v42)
      {
        goto LABEL_52;
      }

      v43 = [v42 objectForKey:objectID];
      v44 = v43;
      if (indexesCopy && v43)
      {
        v87[v35] = 1;
        goto LABEL_58;
      }

      if (!v43)
      {
LABEL_52:
        if (v88)
        {
          Value = CFDictionaryGetValue(v88, objectID);
        }

        else
        {
          v46 = [v86 indexOfObject:objectID];
          if (v46 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = 0;
            goto LABEL_58;
          }

          Value = [snapshotCopy objectAtIndex:v46];
        }

        v44 = Value;
      }

LABEL_58:
      unsignedIntValue = [v44 unsignedIntValue];
      if (v44 && unsignedIntValue)
      {
        if (v37)
        {
          v48 = v37 < unsignedIntValue;
        }

        else
        {
          v48 = 1;
        }

        v49 = v48;
        if (v38)
        {
          v37 = unsignedIntValue;
        }

        v38 &= v49;
        *(v8[4] + v35) = unsignedIntValue;
      }

      else
      {
        v38 &= v44 == 0;
        ++v36;
        if (v37)
        {
          ++v37;
        }

        else
        {
          v37 = 0;
        }
      }

      v39 = v91;
      if (v9 == ++v35)
      {
        goto LABEL_75;
      }
    }
  }

  v36 = 0;
  v38 = 1;
  v39 = v91;
LABEL_75:
  if (v88)
  {
    CFRelease(v88);
  }

  v50 = v8[6];
  v51 = v87;
  if (v50)
  {

    v8[6] = 0;
  }

  if (v36 == v9)
  {
    v52 = 1;
  }

  else
  {
    v52 = v38;
  }

  if ((v52 & 1) == 0)
  {
    v53 = 0;
    v54 = 0;
    v55 = 2;
    v56 = 1;
    while (1)
    {
      v57 = v56;
      v58 = (preserveOrderKeyFuncs[v53])(v8[4], v9, v54, 1);
      if (v58 == ~v36 + v9)
      {
        break;
      }

      v56 = 0;
      v59 = v58 <= v54;
      if (v58 <= v54)
      {
        v54 = v54;
      }

      else
      {
        v54 = v58;
      }

      if (!v59)
      {
        v55 = v53;
      }

      v53 = 1;
      if ((v57 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    v55 = v53;
LABEL_93:
    if (v55 <= 1)
    {
      v60 = v55;
    }

    else
    {
      v60 = 0;
    }

    (preserveOrderKeyFuncs[v60])(v8[4], v9, v54, 0);
    v51 = v87;
    v39 = v91;
  }

  if (v9 >= 0x201uLL)
  {
    NSZoneFree(0, v39);
  }

  result = indexesCopy;
  if (!v9)
  {
LABEL_128:
    v69 = v84;
    if (result && v9)
    {
      goto LABEL_159;
    }

    return result;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v64 = v8[4];
    v65 = v64[v61];
    if (v63 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v65)
      {
        v63 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v63 = v61;
      }
    }

    else
    {
      if (!v65)
      {
        goto LABEL_125;
      }

      if (v63)
      {
        v62 = v64[v63 - 1];
        v66 = (v65 - v62) / (v61 - (v63 - 1));
        v67 = v66 + v62;
        if (!v66)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v61 >= v65 >> 10)
        {
          v66 = v65 / (v61 + 1);
        }

        else
        {
          v66 = 1024;
        }

        v67 = v65 - v66 * v61;
        if (!v66)
        {
LABEL_116:
          v64[v61] = 0;
          goto LABEL_125;
        }
      }

      if (v63 && v66 == 1 && v65 - v62 == v61 - v63 + 1)
      {
        goto LABEL_116;
      }

      if (v63 < v61)
      {
        do
        {
          if (v67 <= 1)
          {
            v68 = 1;
          }

          else
          {
            v68 = v67;
          }

          *(v8[4] + v63) = v68;
          if (result)
          {
            v51[v63] = 1;
          }

          v67 = v68 + v66;
          ++v63;
        }

        while (v61 != v63);
      }

      v63 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_125:
    ++v61;
  }

  while (v61 != v9);
  if (v63)
  {
    if (v63 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_128;
    }

    v70 = v8[4];
    v71 = v70[v63 - 1];
    if (v63 >= 1 && v63 + (v9 ^ 0xFFFFFFFFLL) <= v71)
    {
      v72 = v70 - 1;
      while (1)
      {
        v71 = v72[v63];
        if (v71 && (v9 ^ 0xFFFFFFFFLL) + v63 >= v71)
        {
          break;
        }

        if (v63-- <= 1)
        {
          goto LABEL_140;
        }
      }
    }

    if (v71 + ((v9 - v63) << 10) < 0x100000000)
    {
      v75 = 1024;
    }

    else
    {
      v75 = (v71 ^ 0xFFFFFFFFLL) / (v9 - v63);
    }

    if (v9 > v63)
    {
      v80 = v75 + v71;
      if (v80 <= 1)
      {
        LODWORD(v80) = 1;
      }

      do
      {
        *(v8[4] + v63) = v80;
        if (result)
        {
          v51[v63] = 1;
        }

        ++v63;
        LODWORD(v80) = v80 + v75;
      }

      while (v9 != v63);
    }

    v69 = v84;
    if (result)
    {
LABEL_159:
      v81 = v8[4];
      do
      {
        v82 = *v81++;
        *v10++ = v82;
        --v69;
      }

      while (v69);
    }
  }

  else
  {
LABEL_140:
    if ((v9 + 1) < 0x400000)
    {
      v74 = 1024;
    }

    else
    {
      v74 = 0xFFFFFFFF / (v9 + 1);
    }

    v76 = 0;
    v77 = 2 * v74;
    do
    {
      *(v8[4] + v76) = v77;
      v77 += v74;
      ++v76;
    }

    while (v9 != v76);
    if (result)
    {
      result = memset(v51, 1, v9);
      v78 = v8[4];
      do
      {
        v79 = *v78++;
        *v10++ = v79;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

- (uint64_t)_orderKeyForObject:(uint64_t)object
{
  while (1)
  {
    if (!object)
    {
      return 0;
    }

    v4 = [*(object + 16) indexOfObject:a2];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    object = *(object + 40);
    if (!object)
    {
      return 0;
    }
  }

  if (!*(object + 32))
  {
    return 0;
  }

  v5 = v4;
  if (v4 >= [*(object + 16) count])
  {
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Index of object > number of objects" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", object, @"_NSFaultingMutableOrderedSet", "raise"}];
  }

  return *(*(object + 32) + 4 * v5);
}

- (id)_newOrderKeys
{
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return selfCopy;
  }

  v2 = [self[2] count];
  v3 = v2;
  v4 = selfCopy[4];
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == 0;
    }

    if (v6)
    {
      return NSArray_EmptyArray;
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          *buf = 67109120;
          v17 = v3;
LABEL_30:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: nil order keys and %d objects in real set\n", buf, 8u);
        }
      }

      else if (v10)
      {
        *buf = 67109120;
        v17 = v3;
        goto LABEL_30;
      }
    }

    _NSCoreDataLog_console(1, "nil order keys and %d objects in real set", v3);
    objc_autoreleasePoolPop(v7);
    return NSArray_EmptyArray;
  }

  MEMORY[0x1EEE9AC00](v2);
  v12 = &buf[-v11];
  if (v3 > 0x200)
  {
    v12 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&buf[-v11], 8 * v3);
  }

  v13 = 0;
  do
  {
    *&v12[8 * v13] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(selfCopy[4] + v13)];
    ++v13;
  }

  while (v3 != v13);
  selfCopy = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v12 count:v3];
  v14 = 0;
  do
  {
  }

  while (v3 != v14);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v12);
  }

  return selfCopy;
}

- (void)turnIntoFault
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  realSet = self->_realSet;
  if (realSet && (*&self->_flags & 1) != 0)
  {

    PF_FREE_OBJECT_ARRAY(self->_realSet);
  }

  else
  {
  }

  self->_realSet = 0;
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  *&self->_flags |= 1u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {
    v6 = [[_NSFaultingMutableOrderedSet alloc] initWithSource:self->_source forRelationship:[(_NSFaultingMutableOrderedSet *)self relationship] asFault:1];
    realSet = self->_realSet;
    if (realSet)
    {
      v10 = PF_ALLOCATE_OBJECT_ARRAY(2);
      *v10 = [*realSet mutableCopyWithZone:zone];
      v10[1] = [realSet[1] mutableCopyWithZone:zone];
      v6->_realSet = v10;
    }

    v6->_flags = (*&v6->_flags & 0xFFFFFFFD | (2 * ((*&self->_flags >> 1) & 1)));
    return v6;
  }

  if ([self->_realSet count])
  {
    v5 = [[_NSFaultingMutableOrderedSet alloc] initWithSource:self->_source forRelationship:[(_NSFaultingMutableOrderedSet *)self relationship] asFault:0];
    v6 = v5;
    v7 = self->_realSet;
    if (v7)
    {
      v8 = v5->_realSet;
      if (v8)
      {

        v7 = self->_realSet;
      }

      v6->_realSet = v7;
      *&self->_flags |= 8u;
      *&v6->_flags |= 0x10u;
    }

    return v6;
  }

  v12 = NSOrderedSet_EmptyOrderedSet;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  v4 = objc_alloc(MEMORY[0x1E695DFA0]);
  realSet = self->_realSet;

  return [v4 initWithOrderedSet:realSet];
}

- (id)objectAtIndex:(unint64_t)index
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet objectAtIndex:index];
}

- (unint64_t)indexOfObject:(id)object
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexOfObject:object];
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if (self->_orderKeys && [self->_realSet indexOfObject:object] == 0x7FFFFFFFFFFFFFFFLL)
  {
    PF_FREE_OBJECT_ARRAY(self->_orderKeys);
    self->_orderKeys = 0;
  }

  if ((*&self->_flags & 8) != 0)
  {
    v7 = [self->_realSet mutableCopy];

    self->_realSet = v7;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;

  [realSet insertObject:object atIndex:index];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet countByEnumeratingWithState:state objects:objects count:count];
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  [realSet enumerateObjectsWithOptions:options usingBlock:block];
}

- (void)enumerateObjectsAtIndexes:(id)indexes options:(unint64_t)options usingBlock:(id)block
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  [realSet enumerateObjectsAtIndexes:indexes options:options usingBlock:block];
}

- (unint64_t)indexOfObjectWithOptions:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexOfObjectWithOptions:options passingTest:test];
}

- (unint64_t)indexOfObjectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexOfObjectAtIndexes:indexes options:options passingTest:test];
}

- (id)indexesOfObjectsWithOptions:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexesOfObjectsWithOptions:options passingTest:test];
}

- (id)indexesOfObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexesOfObjectsAtIndexes:indexes options:options passingTest:test];
}

- (id)objectEnumerator
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet objectEnumerator];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  [realSet getObjects:objects range:{location, length}];
}

- (void)getObjects:(id *)objects
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;
  v6 = [realSet count];

  [realSet getObjects:objects range:{0, v6}];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ((*&self->_flags & 8) != 0)
  {
    v6 = [self->_realSet mutableCopy];

    self->_realSet = v6;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;

  [realSet removeObjectAtIndex:index];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if (self->_orderKeys)
  {
    v7 = [self->_realSet indexOfObject:object];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 != index)
    {
      PF_FREE_OBJECT_ARRAY(self->_orderKeys);
      self->_orderKeys = 0;
    }
  }

  if ((*&self->_flags & 8) != 0)
  {
    v9 = [self->_realSet mutableCopy];

    self->_realSet = v9;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;

  [realSet replaceObjectAtIndex:index withObject:object];
}

- (void)setValue:(id)value forKey:(id)key
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if ((*&self->_flags & 8) != 0)
  {
    v7 = [self->_realSet mutableCopy];

    self->_realSet = v7;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;

  [realSet setValue:value forKey:key];
}

- (id)valueForKey:(id)key
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return objc_msgSend_valueForKey_(realSet);
}

- (id)valueForKeyPath:(id)path
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet valueForKeyPath:path];
}

- (BOOL)isEqualToOrderedSet:(id)set
{
  v24 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (set == self)
  {
    return 1;
  }

  if (*&self->_flags)
  {
    if ([set isFault])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        source = self->_source;
        if (source == [set source])
        {
          relationship = [(_NSFaultingMutableOrderedSet *)self relationship];
          if (relationship == [set relationship])
          {
            return 1;
          }
        }
      }
    }
  }

  v7 = [(_NSFaultingMutableOrderedSet *)self count];
  if (v7 != [set count])
  {
    return 0;
  }

  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= 0x201)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v19 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 > 0x200)
  {
    v10 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v19 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v8);
  }

  [(_NSFaultingMutableOrderedSet *)self getObjects:v10];
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v19 = 0u;
  v12 = [set countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v20;
    while (2)
    {
      v16 = 0;
      v17 = &v10[8 * v14];
      v14 += v13;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(set);
        }

        if (*&v17[8 * v16] != *(*(&v19 + 1) + 8 * v16))
        {
          v11 = 0;
          goto LABEL_31;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [set countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_31:
  if (v7 >= 0x201)
  {
    NSZoneFree(0, v10);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(isNSOrderedSet) = 1;
  }

  else
  {
    isNSOrderedSet = [equal isNSOrderedSet];
    if (isNSOrderedSet)
    {

      LOBYTE(isNSOrderedSet) = [(_NSFaultingMutableOrderedSet *)self isEqualToOrderedSet:equal];
    }
  }

  return isNSOrderedSet;
}

- (BOOL)_isIdenticalFault:(id)fault
{
  if (fault == self)
  {
    return 1;
  }

  if (*&self->_flags)
  {
    if ([fault isFault])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        source = self->_source;
        if (source == [fault source])
        {
          relationship = [(_NSFaultingMutableOrderedSet *)self relationship];
          if (relationship == [fault relationship])
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

- (BOOL)containsObject:(id)object
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet containsObject:object];
}

- (void)addObject:(id)object
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if (self->_orderKeys && [self->_realSet indexOfObject:object] == 0x7FFFFFFFFFFFFFFFLL)
  {
    PF_FREE_OBJECT_ARRAY(self->_orderKeys);
    self->_orderKeys = 0;
  }

  if ((*&self->_flags & 8) != 0)
  {
    v5 = [self->_realSet mutableCopy];

    self->_realSet = v5;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;
  v7 = [realSet count];

  [realSet insertObject:object atIndex:v7];
}

- (void)addObjects:(const void *)objects count:(unint64_t)count
{
  v46 = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if (count > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = _PFStackAllocatorCreate(&v14, 1024);
    v13 = CFArrayCreate(v12, objects, count, 0);
    self->_realSet = [_PFRoutines newOrderedSetFromCollection:v13 byAddingItems:?];
    if (*(&v15 + 1))
    {
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      *(&v14 + 1) = v14;
    }
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v8 = [self->_realSet mutableCopy];

      self->_realSet = v8;
      *&self->_flags &= ~8u;
    }

    v9 = self->_realSet;

    [v9 addObjects:objects count:count];
  }
}

- (void)addObjectsFromArray:(id)array
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([array count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:array byAddingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 addObjectsFromArray:array];
  }
}

- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index
{
  v49 = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableOrderedSet *)self willChange];
  v9 = [self->_realSet count];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if (v9 <= index)
  {

    [(_NSFaultingMutableOrderedSet *)self addObjects:objects count:count];
  }

  else if (count > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = _PFStackAllocatorCreate(&v17, 1024);
    v16 = CFArrayCreate(v15, objects, count, 0);
    self->_realSet = [_PFRoutines newOrderedSetFromCollection:v16 byInsertingItems:index atIndex:?];
    if (*(&v18 + 1))
    {
      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      *(&v17 + 1) = v17;
    }
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v11 = [self->_realSet mutableCopy];

      self->_realSet = v11;
      *&self->_flags &= ~8u;
    }

    v12 = self->_realSet;

    [v12 insertObjects:objects count:count atIndex:index];
  }
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  firstIndex = [indexes firstIndex];
  if (firstIndex >= [self->_realSet count])
  {

    [(_NSFaultingMutableOrderedSet *)self addObjectsFromArray:objects];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v9 = [self->_realSet mutableCopy];

      self->_realSet = v9;
      *&self->_flags &= ~8u;
    }

    realSet = self->_realSet;

    [realSet insertObjects:objects atIndexes:indexes];
  }
}

- (void)removeObjectsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22[1] = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if (length > 2)
  {
    v9 = [self->_realSet count];
    if (location < v9)
    {
      v10 = v9;
      v11 = v9 + 1;
      v12 = 1;
      if (v9 + 1 > 1)
      {
        v12 = v9 + 1;
      }

      if (v11 >= 0x201)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = v22 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11 > 0x200)
      {
        v14 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v22 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v12);
      }

      [self->_realSet getObjects:v14];
      v15 = location + length >= v10;
      if (location + length >= v10)
      {
        v16 = v10;
      }

      else
      {
        v16 = location + length;
      }

      if (!v15)
      {
        v17 = location;
        v18 = v16;
        do
        {
          *&v14[8 * v17++] = *&v14[8 * v18];
          if (v17 >= v10)
          {
            break;
          }

          ++v18;
        }

        while (v18 < v10);
      }

      v19 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v14 count:v10 + location - v16];
      if (v11 >= 0x201)
      {
        NSZoneFree(0, v14);
      }

      realSet = self->_realSet;
      flags = self->_flags;
      if ((*&flags & 8) != 0)
      {
        self->_flags = (*&flags & 0xFFFFFFF7);
      }

      self->_realSet = v19;
    }
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v7 = [self->_realSet mutableCopy];

      self->_realSet = v7;
      *&self->_flags &= ~8u;
    }

    v8 = self->_realSet;

    [v8 removeObjectsInRange:{location, length}];
  }
}

- (void)removeAllObjects
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  flags = self->_flags;
  if ((*&flags & 8) != 0)
  {
    self->_flags = (*&flags & 0xFFFFFFF7);
  }

  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  self->_realSet = objc_alloc_init(MEMORY[0x1E695DFA0]);
}

- (void)removeObjectsInArray:(id)array
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  v5 = [array count];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if (v5 > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v11 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:array byRemovingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v7 = [self->_realSet mutableCopy];

      self->_realSet = v7;
      *&self->_flags &= ~8u;
    }

    v8 = self->_realSet;

    [v8 removeObjectsInArray:array];
  }
}

- (void)minusOrderedSet:(id)set
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([set count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:set byRemovingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 minusOrderedSet:set];
  }
}

- (void)unionOrderedSet:(id)set
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([set count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:set byAddingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 unionOrderedSet:set];
  }
}

- (void)minusSet:(id)set
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([set count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:set byRemovingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 minusSet:set];
  }
}

- (void)unionSet:(id)set
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([set count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:set byAddingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 unionSet:set];
  }
}

- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  length = range.length;
  location = range.location;
  v35 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  v10 = 12;
  v11 = [*(-[NSManagedObject entity](self->_source "entity")[96] + 24 + 8 * *(&self->_flags + 1))];
  if ([(NSManagedObject *)self->_source hasFaultForRelationshipNamed:v11])
  {
    v12 = location;
    v13 = objc_alloc_init(NSFetchRequest);
    [(NSFetchRequest *)v13 setEntity:[(NSManagedObject *)self->_source entity]];
    -[NSFetchRequest setRelationshipKeyPathsForPrefetching:](v13, "setRelationshipKeyPathsForPrefetching:", [MEMORY[0x1E695DEC8] arrayWithObject:v11]);
    -[NSFetchRequest setPredicate:](v13, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self == %@", -[NSManagedObject objectID](self->_source, "objectID")]);
    [(NSFetchRequest *)v13 setReturnsObjectsAsFaults:0];
    [(NSFetchRequest *)v13 setIncludesPendingChanges:0];
    if (!v13)
    {
LABEL_6:
      location = v12;
      goto LABEL_7;
    }

LABEL_5:
    [(NSManagedObjectContext *)[(NSManagedObject *)self->_source managedObjectContext] executeFetchRequest:v13 error:0];
    goto LABEL_6;
  }

  v33 = 12;
  v15 = objc_msgSend_valueForKey_(self->_source);
  v16 = [v15 count];
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = v16;
  }

  if (v16)
  {
    v17 = v16;
    v31 = &v29;
    optionsCopy = options;
    v18 = MEMORY[0x1EEE9AC00](v16);
    v20 = &v29 - v19;
    if (v18 > 0x200)
    {
      v20 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v29 - v19, 8 * v18);
    }

    [v15 getObjects:v20];
    if (location >= v17 + location)
    {
      v21 = 0;
    }

    else
    {
      v29 = location;
      comparatorCopy = comparator;
      v21 = 0;
      v22 = 8 * location;
      v23 = v17;
      do
      {
        v24 = *&v20[v22];
        v25 = (v24[4] >> 15) & 7;
        if (v25)
        {
          v26 = v25 == 5;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          objectID = [v24 objectID];
          if (([objectID isTemporaryID] & 1) == 0)
          {
            *&v20[8 * v21++] = objectID;
          }
        }

        v22 += 8;
        --v23;
      }

      while (v23);
      if (v21)
      {
        v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v20 count:v21];
      }

      location = v29;
      comparator = comparatorCopy;
    }

    if (v17 >= 0x201)
    {
      NSZoneFree(0, v20);
    }

    v12 = location;
    if ([v21 count])
    {
      v28 = [(NSDictionary *)[(NSEntityDescription *)[(NSManagedObject *)self->_source entity] relationshipsByName] objectForKey:v11];
      v13 = objc_alloc_init(NSFetchRequest);
      -[NSFetchRequest setEntity:](v13, "setEntity:", [v28 destinationEntity]);
      -[NSFetchRequest setPredicate:](v13, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v21]);
      [(NSFetchRequest *)v13 setReturnsObjectsAsFaults:0];
      [(NSFetchRequest *)v13 setIncludesPendingChanges:0];
    }

    else
    {
      v13 = 0;
    }

    options = optionsCopy;

    v10 = v33;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = v33;
LABEL_7:
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if ((*(&self->super.super.super.isa + v10) & 8) != 0)
  {
    v14 = [self->_realSet mutableCopy];

    self->_realSet = v14;
    *(&self->super.super.super.isa + v10) &= ~8u;
  }

  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = [self->_realSet count];
  }

  v34.receiver = self;
  v34.super_class = _NSFaultingMutableOrderedSet;
  [(_NSFaultingMutableOrderedSet *)&v34 sortRange:location options:length usingComparator:options, comparator];
}

- (id)allObjects
{
  v10[1] = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableOrderedSet *)self willRead];
  v3 = [self->_realSet count];
  v4 = MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  if (v4 > 0x200)
  {
    v7 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v10 - v6, 8 * v5);
  }

  [self->_realSet getObjects:v7 range:{0, v3}];
  v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v3];
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  return v8;
}

- (id)_orderedObjectsAndKeys
{
  source = self->_source;
  if (source && (source->_cd_stateFlags & 0x38) != 0)
  {
    v3 = 0;
  }

  else
  {
    if (source)
    {
      v4 = _insertion_fault_handler;
    }

    else
    {
      v4 = 0;
    }

    v3 = [(NSFaultHandler *)v4 retainedOrderedFaultInformationForAggregateFaultForObject:[(_NSFaultingMutableOrderedSet *)self relationship] andRelationship:[(NSManagedObject *)self->_source managedObjectContext] withContext:0 error:?];
  }

  return v3;
}

- (BOOL)_reorderObjectsToLocationsByOrderKey:(id)key error:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];

  self->_forcedKeys = 0;
  if ([key count])
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A250];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"bad input oidsAndLocations => should have an even number", @"Reason", 0}];
      v20 = v17;
      v21 = v18;
LABEL_14:
      v24 = [v20 errorWithDomain:v21 code:134060 userInfo:v19];
      LOBYTE(v9) = 0;
      *error = v24;
      return v9;
    }

LABEL_15:
    LOBYTE(v9) = 0;
    return v9;
  }

  source = self->_source;
  if (source)
  {
    v8 = _insertion_fault_handler;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSFaultHandler *)v8 retainedOrderedFaultInformationForAggregateFaultForObject:[(_NSFaultingMutableOrderedSet *)self relationship] andRelationship:[(NSManagedObject *)self->_source managedObjectContext] withContext:error error:?];
  if (!v9)
  {
    return v9;
  }

  v10 = v9;
  if ([v9 count] != 2)
  {

    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A250];
      v47 = @"message";
      v48[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSManagedObject *)self->_source objectID], [(NSPropertyDescription *)[(_NSFaultingMutableOrderedSet *)self relationship] name]);
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v20 = v22;
      v21 = v23;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v11 = [objc_msgSend(v10 objectAtIndex:{0), "mutableCopy"}];
  v12 = [objc_msgSend(v10 objectAtIndex:{1), "mutableCopy"}];
  v13 = [v11 count];
  if (v13)
  {
    v14 = v13;
    v46 = 48;
    flags = self->_flags;
    v44 = v10;
    if (flags)
    {
      v16 = 0;
    }

    else
    {
      v16 = self->_realSet;
      [(_NSFaultingMutableOrderedSet *)self turnIntoFault];
    }

    managedObjectContext = [(NSManagedObject *)self->_source managedObjectContext];
    v43[1] = v43;
    MEMORY[0x1EEE9AC00](managedObjectContext);
    v27 = v43 - v26;
    if (v14 > 0x200)
    {
      v27 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v43 - v26, 8 * v14);
    }

    [v11 getObjects:v27 range:{0, v14}];
    for (i = 0; i != v14; ++i)
    {
      *&v27[8 * i] = [NSManagedObjectContext _retainedObjectWithID:managedObjectContext optionalHandler:*&v27[8 * i] withInlineStorage:0];
    }

    v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v27 count:v14];
    [(_NSFaultingMutableOrderedSet *)self willReadWithContents:v29];

    for (j = 0; j != v14; ++j)
    {
    }

    if (v14 >= 0x201)
    {
      NSZoneFree(0, v27);
    }

    if (v16)
    {
    }

    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
    *(&self->super.super.super.isa + v46) = v31;
    v32 = [key count];
    v33 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v11 copyItems:0];
    v45 = [(NSManagedObject *)self->_source mutableOrderedSetValueForKey:[(NSPropertyDescription *)[(_NSFaultingMutableOrderedSet *)self relationship] name]];
    if (v32)
    {
      v34 = 0;
      do
      {
        v35 = [key objectAtIndex:v34];
        v36 = v34 + 1;
        v37 = [key objectAtIndex:v34 + 1];
        v38 = [v33 indexOfObject:v35];
        if (v38 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = v38;
          if (([objc_msgSend(v12 objectAtIndex:{v38), "isEqual:", v37}] & 1) == 0)
          {
            [v12 removeObjectAtIndex:v39];
            [v33 removeObjectAtIndex:v39];
            v40 = [v12 indexOfObject:v37 inSortedRange:0 options:objc_msgSend(v12 usingComparator:{"count"), 1024, &__block_literal_global_25}];
            v41 = [MEMORY[0x1E696AC90] indexSetWithIndex:v39];
            [v45 moveObjectsAtIndexes:v41 toIndex:v40];
            [v12 insertObject:v37 atIndex:v40];
            [v33 insertObject:v35 atIndex:v40];
            [*(&self->super.super.super.isa + v46) setObject:v37 forKey:v35];
          }
        }

        v34 = v36 + 1;
      }

      while (v36 + 1 < v32);
    }

    LOBYTE(v9) = 1;
  }

  else
  {

    LOBYTE(v9) = 1;
  }

  return v9;
}

@end