@interface GKGridGraph
+ (GKGridGraph)graphFromGridStartingAt:(vector_int2)position width:(int)width height:(int)height diagonalsAllowed:(BOOL)diagonalsAllowed;
+ (GKGridGraph)graphFromGridStartingAt:(vector_int2)position width:(int)width height:(int)height diagonalsAllowed:(BOOL)diagonalsAllowed nodeClass:(Class)nodeClass;
- (GKGridGraph)initFromGridStartingAt:(vector_int2)position width:(int)width height:(int)height diagonalsAllowed:(BOOL)diagonalsAllowed nodeClass:(Class)nodeClass;
- (GKGridGraph)initWithCoder:(id)coder;
- (id)nodeAtGridPosition:(vector_int2)position;
- (id)nodeAtGridPositionNoNilCheck:(GKGridGraph *)self;
- (void)connectNodeToAdjacentNodes:(GKGridGraphNode *)node;
- (void)encodeWithCoder:(id)coder;
- (void)removeNodes:(id)nodes;
@end

@implementation GKGridGraph

+ (GKGridGraph)graphFromGridStartingAt:(vector_int2)position width:(int)width height:(int)height diagonalsAllowed:(BOOL)diagonalsAllowed
{
  v6 = [[GKGridGraph alloc] initFromGridStartingAt:*&width width:*&height height:diagonalsAllowed diagonalsAllowed:*&position];

  return v6;
}

+ (GKGridGraph)graphFromGridStartingAt:(vector_int2)position width:(int)width height:(int)height diagonalsAllowed:(BOOL)diagonalsAllowed nodeClass:(Class)nodeClass
{
  v7 = [[GKGridGraph alloc] initFromGridStartingAt:*&width width:*&height height:diagonalsAllowed diagonalsAllowed:nodeClass nodeClass:*&position];

  return v7;
}

- (GKGridGraph)initFromGridStartingAt:(vector_int2)position width:(int)width height:(int)height diagonalsAllowed:(BOOL)diagonalsAllowed nodeClass:(Class)nodeClass
{
  if (([(objc_class *)nodeClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"initFromGridStartingAt: nodeClass does not descend from GKGridGraph"];
  }

  v15.receiver = self;
  v15.super_class = GKGridGraph;
  result = [(GKGraph *)&v15 init];
  if (result)
  {
    v14 = result;
    GKCGridGraph::init(result->_cGridGraph, width, height, diagonalsAllowed, nodeClass, *&position);
    return v14;
  }

  return result;
}

- (id)nodeAtGridPosition:(vector_int2)position
{
  WeakRetained = GKCGridGraph::nodeAtGridPosition(self->_cGridGraph, *&position);
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 9);
  }

  return WeakRetained;
}

- (id)nodeAtGridPositionNoNilCheck:(GKGridGraph *)self
{
  v3 = GKCGridGraph::nodeAtGridPositionNoNullCheck(self->_cGridGraph, v2);
  WeakRetained = objc_loadWeakRetained((v3 + 72));

  return WeakRetained;
}

- (void)connectNodeToAdjacentNodes:(GKGridGraphNode *)node
{
  v4 = node;
  GKCGridGraph::connectNodeToAdjacentNodes(self->_cGridGraph, [(GKGridGraphNode *)v4 cGridGraphNode]);
}

- (void)removeNodes:(id)nodes
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  nodesCopy = nodes;
  v5 = [nodesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(nodesCopy);
        }

        (*(*self->_cGridGraph + 16))(self->_cGridGraph, [*(*(&v8 + 1) + 8 * v7++) cGraphNode]);
      }

      while (v5 != v7);
      v5 = [nodesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (GKGridGraph)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = GKGridGraph;
  v5 = [(GKGraph *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeIntForKey:@"gridOriginX"];
    v7 = [coderCopy decodeIntForKey:@"gridOriginY"];
    v8 = [coderCopy decodeIntForKey:@"gridWidth"];
    v9 = [coderCopy decodeIntForKey:@"gridHeight"];
    v22 = [coderCopy decodeBoolForKey:@"diagonalsAllowed"];
    v10 = *(v5 + 4);
    v11 = objc_opt_class();
    GKCGridGraph::initDontConstructNodes(v10, v8, v9, v22, v11, COERCE_DOUBLE(__PAIR64__(v7, v6)));
    array = [MEMORY[0x277CBEB18] array];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    nodes = [v5 nodes];
    v20 = v9;
    v21 = v8;
    v14 = [nodes countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(nodes);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if ((GKCGridGraph::addNodeToGridNodes(*(v5 + 4), [v17 cGridGraphNode]) & 1) == 0)
          {
            [array addObject:v17];
          }
        }

        v14 = [nodes countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    v23.receiver = v5;
    v23.super_class = GKGridGraph;
    [(GKGraph *)&v23 removeNodes:array];
    v18 = *(v5 + 4);
    *(v18 + 48) = v21;
    *(v18 + 52) = v20;
    *(v18 + 56) = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = GKGridGraph;
  [(GKGraph *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:*(self->_cGridGraph + 5) forKey:@"gridOriginX"];
  [coderCopy encodeInt:*(self->_cGridGraph + 11) forKey:@"gridOriginY"];
  [coderCopy encodeInt:*(self->_cGridGraph + 12) forKey:@"gridWidth"];
  [coderCopy encodeInt:*(self->_cGridGraph + 13) forKey:@"gridHeight"];
  [coderCopy encodeBool:*(self->_cGridGraph + 56) forKey:@"diagonalsAllowed"];
}

@end