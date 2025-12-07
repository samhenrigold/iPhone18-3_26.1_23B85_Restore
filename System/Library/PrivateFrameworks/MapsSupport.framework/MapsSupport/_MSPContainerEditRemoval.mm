@interface _MSPContainerEditRemoval
- (NSString)description;
- (_MSPContainerEditRemoval)initWithRemovedObjects:(id)objects indexes:(id)indexes;
- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block;
@end

@implementation _MSPContainerEditRemoval

- (_MSPContainerEditRemoval)initWithRemovedObjects:(id)objects indexes:(id)indexes
{
  objectsCopy = objects;
  indexesCopy = indexes;
  v14.receiver = self;
  v14.super_class = _MSPContainerEditRemoval;
  v8 = [(_MSPContainerEditRemoval *)&v14 init];
  if (v8)
  {
    v9 = [objectsCopy copy];
    originalObjects = v8->_originalObjects;
    v8->_originalObjects = v9;

    v11 = [indexesCopy copy];
    indexesOfRemovedObjects = v8->_indexesOfRemovedObjects;
    v8->_indexesOfRemovedObjects = v11;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _MSPContainerEditRemoval;
  v4 = [(_MSPContainerEditRemoval *)&v9 description];
  removedImmutableObjects = [(_MSPContainerEditRemoval *)self removedImmutableObjects];
  indexesOfRemovedObjects = [(_MSPContainerEditRemoval *)self indexesOfRemovedObjects];
  v7 = [v3 stringWithFormat:@"%@ { removes objects = %@ from indexes = %@ }", v4, removedImmutableObjects, indexesOfRemovedObjects];

  return v7;
}

- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  blockCopy = block;
  originalObjects = [(_MSPContainerEditRemoval *)self originalObjects];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __94___MSPContainerEditRemoval_useImmutableObjectsFromMap_intermediateMutableObjectTransferBlock___block_invoke;
  v27 = &unk_279868670;
  v23 = mapCopy;
  v28 = v23;
  v22 = blockCopy;
  v29 = v22;
  v9 = originalObjects;
  v10 = &v24;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = (v26)(v10, *(*(&v30 + 1) + 8 * v17), v15);
        if (v18)
        {
          [v11 addObject:{v18, v22, v23, v24, v25}];
        }

        ++v15;

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v19 = [v11 copy];
  v20 = [v19 copy];
  removedImmutableObjects = self->_removedImmutableObjects;
  self->_removedImmutableObjects = v20;
}

@end