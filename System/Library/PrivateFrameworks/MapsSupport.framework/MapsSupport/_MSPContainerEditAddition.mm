@interface _MSPContainerEditAddition
- (NSString)description;
- (_MSPContainerEditAddition)initWithObjects:(id)objects indexes:(id)indexes identifiersAtop:(id)atop;
- (id)identifierForObjectAtopAddedImmutableObject:(id)object;
- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block;
@end

@implementation _MSPContainerEditAddition

- (_MSPContainerEditAddition)initWithObjects:(id)objects indexes:(id)indexes identifiersAtop:(id)atop
{
  v37 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  indexesCopy = indexes;
  atopCopy = atop;
  v35.receiver = self;
  v35.super_class = _MSPContainerEditAddition;
  v30 = [(_MSPContainerEditAddition *)&v35 init];
  if (v30)
  {
    v11 = [objectsCopy copy];
    objects = v30->_objects;
    v30->_objects = v11;

    v13 = [indexesCopy copy];
    indexesOfAddedObjects = v30->_indexesOfAddedObjects;
    v30->_indexesOfAddedObjects = v13;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifiersAtopByIdentifier = v30->_identifiersAtopByIdentifier;
    v30->_identifiersAtopByIdentifier = strongToStrongObjectsMapTable;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = objectsCopy;
    obj = objectsCopy;
    v17 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v31 + 1) + 8 * i);
          v23 = [atopCopy objectAtIndexedSubscript:v19];
          null = [MEMORY[0x277CBEB68] null];

          if (v23 != null)
          {
            v25 = v30->_identifiersAtopByIdentifier;
            storageIdentifier = [v22 storageIdentifier];
            [(NSMapTable *)v25 setObject:v23 forKey:storageIdentifier];
          }

          ++v19;
        }

        v18 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v18);
    }

    objectsCopy = v28;
  }

  return v30;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _MSPContainerEditAddition;
  v4 = [(_MSPContainerEditAddition *)&v9 description];
  addedImmutableObjects = [(_MSPContainerEditAddition *)self addedImmutableObjects];
  indexesOfAddedObjects = [(_MSPContainerEditAddition *)self indexesOfAddedObjects];
  v7 = [v3 stringWithFormat:@"%@ { adds objects = %@ at indexes = %@ }", v4, addedImmutableObjects, indexesOfAddedObjects];

  return v7;
}

- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  blockCopy = block;
  objects = [(_MSPContainerEditAddition *)self objects];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __95___MSPContainerEditAddition_useImmutableObjectsFromMap_intermediateMutableObjectTransferBlock___block_invoke;
  v27 = &unk_279868670;
  v23 = mapCopy;
  v28 = v23;
  v22 = blockCopy;
  v29 = v22;
  v9 = objects;
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
  addedImmutableObjects = self->_addedImmutableObjects;
  self->_addedImmutableObjects = v20;
}

- (id)identifierForObjectAtopAddedImmutableObject:(id)object
{
  identifiersAtopByIdentifier = self->_identifiersAtopByIdentifier;
  storageIdentifier = [object storageIdentifier];
  v5 = [(NSMapTable *)identifiersAtopByIdentifier objectForKey:storageIdentifier];

  return v5;
}

@end