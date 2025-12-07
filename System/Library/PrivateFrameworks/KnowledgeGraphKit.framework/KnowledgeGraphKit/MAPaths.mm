@interface MAPaths
+ (id)paths;
+ (id)pathsWithPaths:(id)paths;
- (MAPaths)init;
- (id)description;
- (id)graphRepresentationWithStrictNodes:(BOOL)nodes strictEdges:(BOOL)edges;
- (id)pathAtIndex:(unint64_t)index;
- (id)uniqueEdgesForLabel:(id)label;
- (id)uniqueNodesForLabel:(id)label;
- (void)addPath:(id)path;
- (void)enumerateWithBlock:(id)block;
- (void)removeAllPaths;
- (void)setPaths:(id)paths;
@end

@implementation MAPaths

- (id)uniqueEdgesForLabel:(id)label
{
  v18 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v5 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_paths;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v11 = [*(*(&v13 + 1) + 8 * i) edgesForLabel:{labelCopy, v13}];
        [v5 addObject:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)uniqueNodesForLabel:(id)label
{
  v18 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v5 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_paths;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v11 = [*(*(&v13 + 1) + 8 * i) nodesForLabel:{labelCopy, v13}];
        [v5 addObject:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)enumerateWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_paths;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)graphRepresentationWithStrictNodes:(BOOL)nodes strictEdges:(BOOL)edges
{
  edgesCopy = edges;
  nodesCopy = nodes;
  v24 = *MEMORY[0x277D85DE8];
  v7 = +[MAGraph graph];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_paths;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        graphRepresentation = [v13 graphRepresentation];
        if (!graphRepresentation)
        {
          [MEMORY[0x277CBEAD8] raise:@"MAPathsInvalidGraph" format:{@"Graph invalid for path %@", v13}];

          v17 = 0;
          goto LABEL_11;
        }

        v15 = graphRepresentation;
        v16 = [v7 mergeWithGraph:graphRepresentation strictNodes:nodesCopy strictEdges:edgesCopy];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;
LABEL_11:

  return v17;
}

- (void)removeAllPaths
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_paths removeAllObjects];
  objc_sync_exit(obj);
}

- (void)setPaths:(id)paths
{
  v15 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_paths removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(MAPaths *)selfCopy addPath:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)addPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_paths addObject:pathCopy];
  objc_sync_exit(selfCopy);
}

- (id)pathAtIndex:(unint64_t)index
{
  if ([(MAPaths *)self count]<= index)
  {
    [MEMORY[0x277CBEAD8] raise:@"MAPathsInvalidIndex" format:{@"Out of bounds result path index %ld", index}];
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_paths objectAtIndex:index];
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"["];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __22__MAPaths_description__block_invoke;
  v6[3] = &unk_2797FF928;
  v4 = string;
  v7 = v4;
  [(MAPaths *)self enumerateWithBlock:v6];
  if ([v4 length] >= 2)
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 2, 2}];
  }

  [v4 appendString:@"]"];

  return v4;
}

void __22__MAPaths_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 appendFormat:@"%@, ", v3];
}

- (MAPaths)init
{
  v6.receiver = self;
  v6.super_class = MAPaths;
  v2 = [(MAPaths *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    paths = v2->_paths;
    v2->_paths = v3;
  }

  return v2;
}

+ (id)pathsWithPaths:(id)paths
{
  pathsCopy = paths;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setPaths:pathsCopy];

  return v4;
}

+ (id)paths
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

@end