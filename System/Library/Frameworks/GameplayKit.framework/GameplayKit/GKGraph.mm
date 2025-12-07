@interface GKGraph
+ (GKGraph)graphWithNodes:(NSArray *)nodes;
+ (id)graph;
- (GKGraph)init;
- (GKGraph)initWithCoder:(id)coder;
- (GKGraph)initWithNodes:(NSArray *)nodes;
- (NSArray)findPathFromNode:(GKGraphNode *)startNode toNode:(GKGraphNode *)endNode;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addNodes:(NSArray *)nodes;
- (void)connectNodeToLowestCostNode:(GKGraphNode *)node bidirectional:(BOOL)bidirectional;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeNodes:(NSArray *)nodes;
@end

@implementation GKGraph

+ (id)graph
{
  v2 = objc_alloc_init(GKGraph);

  return v2;
}

- (void)dealloc
{
  cGraph = self->_cGraph;
  if (cGraph)
  {
    (*(*cGraph + 8))(cGraph, a2);
  }

  v4.receiver = self;
  v4.super_class = GKGraph;
  [(GKGraph *)&v4 dealloc];
}

- (GKGraph)init
{
  v7.receiver = self;
  v7.super_class = GKGraph;
  v2 = [(GKGraph *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    nodes = v2->_nodes;
    v2->_nodes = array;

    makeCGraph = [(GKGraph *)v2 makeCGraph];
    v2->_cGraph = makeCGraph;
    objc_storeWeak((makeCGraph + 32), v2);
  }

  return v2;
}

+ (GKGraph)graphWithNodes:(NSArray *)nodes
{
  v3 = nodes;
  v4 = [[GKGraph alloc] initWithNodes:v3];

  return v4;
}

- (GKGraph)initWithNodes:(NSArray *)nodes
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = nodes;
  v5 = [(GKGraph *)self init];
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          GKCGraph::addNode(v5->_cGraph, [*(*(&v11 + 1) + 8 * v9++) cGraphNode]);
        }

        while (v7 != v9);
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (void)connectNodeToLowestCostNode:(GKGraphNode *)node bidirectional:(BOOL)bidirectional
{
  v4 = bidirectional;
  v6 = node;
  GKCGraph::connectNodeToLowestCostNode(self->_cGraph, [(GKGraphNode *)v6 cGraphNode], v4);
}

- (void)removeNodes:(NSArray *)nodes
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = nodes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v4);
        }

        (*(*self->_cGraph + 16))(self->_cGraph, [*(*(&v8 + 1) + 8 * v7++) cGraphNode]);
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)addNodes:(NSArray *)nodes
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = nodes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v4);
        }

        GKCGraph::addNode(self->_cGraph, [*(*(&v8 + 1) + 8 * v7++) cGraphNode]);
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (NSArray)findPathFromNode:(GKGraphNode *)startNode toNode:(GKGraphNode *)endNode
{
  v4 = [(GKGraphNode *)startNode findPathToNode:endNode];

  return v4;
}

- (GKGraph)initWithCoder:(id)coder
{
  v34[6] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(GKGraph *)self initWithNodes:MEMORY[0x277CBEBF8]];
  if (v5)
  {
    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v34[2] = objc_opt_class();
    v34[3] = objc_opt_class();
    v34[4] = objc_opt_class();
    v34[5] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
    [v26 addObjectsFromArray:v6];

    allowedClasses = [coderCopy allowedClasses];
    [v26 unionSet:allowedClasses];

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v32 = 0;
    v11 = [coderCopy decodeTopLevelObjectOfClasses:v10 forKey:@"_nodes" error:&v32];
    v12 = v32;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v11;
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v25, "count")}];
      nodes = v5->_nodes;
      v5->_nodes = v13;

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v25;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v16)
      {
        v17 = *v29;
        do
        {
          v18 = 0;
          do
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v28 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(NSMutableArray *)v5->_nodes addObject:v19];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v16);
      }
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      v15 = v5->_nodes;
      v5->_nodes = array;
    }

    v27 = v12;
    v21 = [coderCopy decodeTopLevelObjectOfClasses:v26 forKey:@"_info" error:&v27];
    v22 = v27;

    info = v5->__info;
    v5->__info = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_nodes forKey:@"_nodes"];
  [coderCopy encodeObject:self->__info forKey:@"_info"];
}

- (id)copy
{
  v3 = MEMORY[0x23EE6C350](self, a2);

  return [(GKGraph *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

@end