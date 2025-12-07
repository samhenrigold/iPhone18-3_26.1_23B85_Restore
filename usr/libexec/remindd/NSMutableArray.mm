@interface NSMutableArray
- (void)ic_addNonNilObject:(id)object;
- (void)ic_addObjectsFromNonNilArray:(id)array;
- (void)ic_insertNonNilObject:(id)object atIndex:(int64_t)index;
- (void)ic_removeRecordsWithSameCKRecordIDInRecords:(id)records;
@end

@implementation NSMutableArray

- (void)ic_addNonNilObject:(id)object
{
  if (object)
  {
    [(NSMutableArray *)self addObject:?];
  }
}

- (void)ic_addObjectsFromNonNilArray:(id)array
{
  if (array)
  {
    [(NSMutableArray *)self addObjectsFromArray:?];
  }
}

- (void)ic_insertNonNilObject:(id)object atIndex:(int64_t)index
{
  objectCopy = object;
  if (index < 0)
  {
    v8 = +[REMLog utility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10076AF84(index, v8);
    }
  }

  else if ([(NSMutableArray *)self count]>= index)
  {
    if (objectCopy)
    {
      [(NSMutableArray *)self insertObject:objectCopy atIndex:index];
    }
  }

  else
  {
    v7 = +[REMLog utility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076AEE8(self, index, v7);
    }
  }
}

- (void)ic_removeRecordsWithSameCKRecordIDInRecords:(id)records
{
  recordsCopy = records;
  v4 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = REMDynamicCast();
        v11 = v10;
        if (v10)
        {
          recordID = [v10 recordID];
          recordName = [recordID recordName];
          [v4 setObject:recordID forKeyedSubscript:recordName];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v14 = objc_alloc_init(NSMutableArray);
  objectEnumerator = [(NSMutableArray *)self objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v17 = nextObject;
    do
    {
      objc_opt_class();
      v18 = REMDynamicCast();
      v19 = v18;
      if (v18)
      {
        recordID2 = [v18 recordID];
        recordName2 = [recordID2 recordName];
        v22 = [v4 objectForKeyedSubscript:recordName2];

        if ([recordID2 isEqual:v22])
        {
          [v14 addObject:v19];
        }
      }

      nextObject2 = [objectEnumerator nextObject];

      v17 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMutableArray *)self removeObjectsInArray:v14];
}

@end