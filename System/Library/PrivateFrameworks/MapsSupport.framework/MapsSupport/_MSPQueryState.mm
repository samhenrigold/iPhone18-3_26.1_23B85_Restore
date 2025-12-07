@interface _MSPQueryState
- (_MSPQueryState)initWithContainerContents:(id)contents;
- (_MSPQueryState)initWithContents:(id)contents identifiers:(id)identifiers;
- (id)stateByDeletingObjectAtIndex:(unint64_t)index;
- (id)stateByDeletingObjectsAtIndexes:(id)indexes;
- (id)stateByInvokingPreprocessingBlock:(id)block mappingBlock:(id)mappingBlock;
- (id)stateByMovingObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
@end

@implementation _MSPQueryState

- (_MSPQueryState)initWithContainerContents:(id)contents
{
  v25 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  v19.receiver = self;
  v19.super_class = _MSPQueryState;
  v5 = [(_MSPQueryState *)&v19 init];
  if (v5)
  {
    v6 = [contentsCopy copy];
    contents = v5->_contents;
    v5->_contents = v6;

    v8 = contentsCopy;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          storageIdentifier = [*(*(&v20 + 1) + 8 * v14) storageIdentifier];
          if (storageIdentifier)
          {
            [v9 addObject:storageIdentifier];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    identifiers = v5->_identifiers;
    v5->_identifiers = v16;
  }

  return v5;
}

- (_MSPQueryState)initWithContents:(id)contents identifiers:(id)identifiers
{
  contentsCopy = contents;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = _MSPQueryState;
  v8 = [(_MSPQueryState *)&v14 init];
  if (v8)
  {
    v9 = [contentsCopy copy];
    contents = v8->_contents;
    v8->_contents = v9;

    v11 = [identifiersCopy copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v11;
  }

  return v8;
}

- (id)stateByInvokingPreprocessingBlock:(id)block mappingBlock:(id)mappingBlock
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  mappingBlockCopy = mappingBlock;
  if (blockCopy)
  {
    contents = [(_MSPQueryState *)self contents];
    v23 = blockCopy[2](blockCopy, contents);
  }

  else
  {
    v23 = 0;
  }

  v19 = blockCopy;
  v22 = objc_opt_new();
  v21 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(_MSPQueryState *)self contents];
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = mappingBlockCopy[2](mappingBlockCopy, *(*(&v24 + 1) + 8 * i), v23);
        if (v14)
        {
          identifiers = [(_MSPQueryState *)self identifiers];
          v16 = [identifiers objectAtIndexedSubscript:v11];

          [v22 addObject:v14];
          [v21 addObject:v16];
        }

        ++v11;
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v17 = [objc_alloc(objc_opt_class()) initWithContents:v22 identifiers:v21];

  return v17;
}

- (id)stateByDeletingObjectAtIndex:(unint64_t)index
{
  contents = [(_MSPQueryState *)self contents];
  v6 = [contents mutableCopy];

  identifiers = [(_MSPQueryState *)self identifiers];
  v8 = [identifiers mutableCopy];

  [v6 removeObjectAtIndex:index];
  [v8 removeObjectAtIndex:index];
  v9 = [objc_alloc(objc_opt_class()) initWithContents:v6 identifiers:v8];

  return v9;
}

- (id)stateByDeletingObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  contents = [(_MSPQueryState *)self contents];
  v6 = [contents mutableCopy];

  identifiers = [(_MSPQueryState *)self identifiers];
  v8 = [identifiers mutableCopy];

  [v6 removeObjectsAtIndexes:indexesCopy];
  [v8 removeObjectsAtIndexes:indexesCopy];

  v9 = [objc_alloc(objc_opt_class()) initWithContents:v6 identifiers:v8];

  return v9;
}

- (id)stateByMovingObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  contents = [(_MSPQueryState *)self contents];
  v8 = [contents mutableCopy];

  identifiers = [(_MSPQueryState *)self identifiers];
  v10 = [identifiers mutableCopy];

  v11 = [v8 objectAtIndexedSubscript:index];
  [v8 removeObjectAtIndex:index];
  [v8 insertObject:v11 atIndex:toIndex];
  v12 = [v10 objectAtIndexedSubscript:index];
  [v10 removeObjectAtIndex:index];
  [v10 insertObject:v12 atIndex:toIndex];
  v13 = [objc_alloc(objc_opt_class()) initWithContents:v8 identifiers:v10];

  return v13;
}

@end