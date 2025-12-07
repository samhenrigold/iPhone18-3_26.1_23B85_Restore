@interface KGEdgeCollection
- (id)allObjects;
- (void)enumerateEdgesSortedByFloatPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateEdgesSortedByIntegerPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateEdgesSortedByStringPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateElementsWithBatchSize:(unint64_t)size usingBlock:(id)block;
- (void)enumerateOrderedEdges:(id)edges withBatchSize:(unint64_t)size usingBlock:(id)block;
- (void)enumeratePropertyValuesForKey:(id)key withBlock:(id)block;
@end

@implementation KGEdgeCollection

- (void)enumeratePropertyValuesForKey:(id)key withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  implementation = [(KGGraph *)self->super._graph implementation];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__KGEdgeCollection_enumeratePropertyValuesForKey_withBlock___block_invoke;
  v12[3] = &unk_2797FF310;
  v13 = implementation;
  v14 = keyCopy;
  v15 = blockCopy;
  v9 = blockCopy;
  v10 = keyCopy;
  v11 = implementation;
  [(KGElementCollection *)self enumerateElementIdentifierBatchesWithBatchSize:256 usingBlock:v12];
}

void __60__KGEdgeCollection_enumeratePropertyValuesForKey_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) propertiesForEdgesWithIdentifiers:a2 propertyName:*(a1 + 40) error:0];
  [v3 enumerateUsingBlock:*(a1 + 48)];
}

- (void)enumerateEdgesSortedByFloatPropertyForName:(id)name usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graph = self->super._graph;
  nameCopy = name;
  implementation = [(KGGraph *)graph implementation];
  identifiers = [(KGElementCollection *)self identifiers];
  v14 = 0;
  v11 = [implementation edgeIdentifiers:identifiers sortedByFloatPropertyForName:nameCopy ascending:1 limit:-1 error:&v14];

  v12 = v14;
  if (v11)
  {
    [(KGEdgeCollection *)self enumerateOrderedEdges:v11 withBatchSize:256 usingBlock:blockCopy];
  }

  else
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed loading ordered edge identifiers: %@", buf, 0xCu);
    }
  }
}

- (void)enumerateEdgesSortedByIntegerPropertyForName:(id)name usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graph = self->super._graph;
  nameCopy = name;
  implementation = [(KGGraph *)graph implementation];
  identifiers = [(KGElementCollection *)self identifiers];
  v14 = 0;
  v11 = [implementation edgeIdentifiers:identifiers sortedByIntegerPropertyForName:nameCopy ascending:1 limit:-1 error:&v14];

  v12 = v14;
  if (v11)
  {
    [(KGEdgeCollection *)self enumerateOrderedEdges:v11 withBatchSize:256 usingBlock:blockCopy];
  }

  else
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed loading ordered edge identifiers: %@", buf, 0xCu);
    }
  }
}

- (void)enumerateEdgesSortedByStringPropertyForName:(id)name usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graph = self->super._graph;
  nameCopy = name;
  implementation = [(KGGraph *)graph implementation];
  identifiers = [(KGElementCollection *)self identifiers];
  v14 = 0;
  v11 = [implementation edgeIdentifiers:identifiers sortedByStringPropertyForName:nameCopy ascending:1 limit:-1 error:&v14];

  v12 = v14;
  if (v11)
  {
    [(KGEdgeCollection *)self enumerateOrderedEdges:v11 withBatchSize:256 usingBlock:blockCopy];
  }

  else
  {
    v13 = KGLoggingConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed loading ordered edge identifiers: %@", buf, 0xCu);
    }
  }
}

- (void)enumerateOrderedEdges:(id)edges withBatchSize:(unint64_t)size usingBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  edgesCopy = edges;
  blockCopy = block;
  v33 = 0;
  implementation = [(KGGraph *)self->super._graph implementation];
  entityFactory = [(KGGraph *)self->super._graph entityFactory];
  if ([edgesCopy count])
  {
    v12 = 0;
    v13 = 0;
    v25 = edgesCopy;
    v26 = implementation;
    v24 = entityFactory;
    while (1)
    {
      v14 = v13;
      context = objc_autoreleasePoolPush();
      sizeCopy = size;
      v16 = [edgesCopy subarrayWithRange:{v12, size}];
      v32 = v13;
      v17 = [implementation orderedArrayOfEdgesWithIdentifiers:v16 entityFactory:entityFactory error:&v32];
      v13 = v32;

      if (!v17)
      {
        break;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            blockCopy[2](blockCopy, *(*(&v28 + 1) + 8 * i), &v33);
            if (v33)
            {
              v23 = v18;
              entityFactory = v24;
              edgesCopy = v25;
              goto LABEL_15;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v28 objects:v34 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v12 += sizeCopy;
      size = sizeCopy;
      objc_autoreleasePoolPop(context);
      edgesCopy = v25;
      implementation = v26;
      entityFactory = v24;
      if (v12 >= [v25 count])
      {
        goto LABEL_16;
      }
    }

    v18 = KGLoggingConnection();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v13;
      _os_log_error_impl(&dword_255870000, v18, OS_LOG_TYPE_ERROR, "failed loading ordered edges: %@", buf, 0xCu);
    }

    v23 = 0;
    edgesCopy = v25;
LABEL_15:

    objc_autoreleasePoolPop(context);
    implementation = v26;
LABEL_16:
  }
}

- (void)enumerateElementsWithBatchSize:(unint64_t)size usingBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  identifiers = [(KGElementCollection *)self identifiers];
  v8 = [identifiers mutableCopy];

  v24 = 0;
  implementation = [(KGGraph *)self->super._graph implementation];
  entityFactory = [(KGGraph *)self->super._graph entityFactory];
  if (([v8 isEmpty] & 1) == 0)
  {
    sizeCopy = size;
    do
    {
      context = objc_autoreleasePoolPush();
      v11 = [v8 prefix:size];
      [v8 subtractIdentifierSet:v11];
      v12 = [implementation arrayOfEdgesWithIdentifiers:v11 entityFactory:entityFactory error:0];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v13);
            }

            blockCopy[2](blockCopy, *(*(&v20 + 1) + 8 * i), &v24);
            if (v24)
            {

              objc_autoreleasePoolPop(context);
              goto LABEL_14;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      objc_autoreleasePoolPop(context);
      size = sizeCopy;
    }

    while (([v8 isEmpty] & 1) == 0);
  }

LABEL_14:
}

- (id)allObjects
{
  implementation = [(KGGraph *)self->super._graph implementation];
  identifiers = [(KGElementCollection *)self identifiers];
  entityFactory = [(KGGraph *)self->super._graph entityFactory];
  v6 = [implementation arrayOfEdgesWithIdentifiers:identifiers entityFactory:entityFactory error:0];

  return v6;
}

@end