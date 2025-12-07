@interface GKObstacleGraph
+ (GKObstacleGraph)graphWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius;
+ (GKObstacleGraph)graphWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius nodeClass:(Class)nodeClass;
- (BOOL)isConnectionLockedFromNode:(id)startNode toNode:(id)endNode;
- (GKObstacleGraph)initWithCoder:(id)coder;
- (GKObstacleGraph)initWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius;
- (GKObstacleGraph)initWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius nodeClass:(Class)nodeClass;
- (NSArray)nodesForObstacle:(GKPolygonObstacle *)obstacle;
- (void)addObstacles:(NSArray *)obstacles;
- (void)connectNodeUsingObstacles:(id)node;
- (void)connectNodeUsingObstacles:(id)node ignoringBufferRadiusOfObstacles:(NSArray *)obstaclesBufferRadiusToIgnore;
- (void)connectNodeUsingObstacles:(id)node ignoringObstacles:(NSArray *)obstaclesToIgnore;
- (void)encodeWithCoder:(id)coder;
- (void)lockConnectionFromNode:(id)startNode toNode:(id)endNode;
- (void)removeObstacles:(NSArray *)obstacles;
- (void)unlockConnectionFromNode:(id)startNode toNode:(id)endNode;
@end

@implementation GKObstacleGraph

+ (GKObstacleGraph)graphWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius
{
  v5 = obstacles;
  v6 = [GKObstacleGraph alloc];
  *&v7 = bufferRadius;
  v8 = [(GKObstacleGraph *)v6 initWithObstacles:v5 bufferRadius:v7];

  return v8;
}

- (GKObstacleGraph)initWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius
{
  v6 = obstacles;
  v7 = objc_opt_class();
  *&v8 = bufferRadius;
  v9 = [(GKObstacleGraph *)self initWithObstacles:v6 bufferRadius:v7 nodeClass:v8];

  return v9;
}

+ (GKObstacleGraph)graphWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius nodeClass:(Class)nodeClass
{
  v7 = obstacles;
  v8 = [GKObstacleGraph alloc];
  *&v9 = bufferRadius;
  v10 = [(GKObstacleGraph *)v8 initWithObstacles:v7 bufferRadius:nodeClass nodeClass:v9];

  return v10;
}

- (GKObstacleGraph)initWithObstacles:(NSArray *)obstacles bufferRadius:(float)bufferRadius nodeClass:(Class)nodeClass
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = obstacles;
  if (([(objc_class *)nodeClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"initWithObstacles: nodeClass does not descend from GKGraphNode2D"];
  }

  v22.receiver = self;
  v22.super_class = GKObstacleGraph;
  v9 = [(GKGraph *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_nodeClass = nodeClass;
    array = [MEMORY[0x277CBEB18] array];
    sourceObstacles = v10->_sourceObstacles;
    v10->_sourceObstacles = array;

    *(v10->_cObstacleGraph + 28) = fmaxf(bufferRadius, 0.0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v8;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v14)
    {
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v13);
          }

          GKCObstacleGraph::addObstacle(v10->_cObstacleGraph, [*(*(&v18 + 1) + 8 * v16++) cPolygonObstacle], 1);
        }

        while (v14 != v16);
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v14);
    }
  }

  return v10;
}

- (void)connectNodeUsingObstacles:(id)node
{
  v4 = node;
  GKCObstacleGraph::connectNodeUsingObstacles(self->_cObstacleGraph, [v4 cGraphNode2D]);
}

- (void)connectNodeUsingObstacles:(id)node ignoringObstacles:(NSArray *)obstaclesToIgnore
{
  v7 = node;
  v6 = obstaclesToIgnore;
  GKCObstacleGraph::connectNodeUsingObstaclesIgnoringObstacles(self->_cObstacleGraph, [v7 cGraphNode2D], v6);
}

- (void)connectNodeUsingObstacles:(id)node ignoringBufferRadiusOfObstacles:(NSArray *)obstaclesBufferRadiusToIgnore
{
  v7 = node;
  v6 = obstaclesBufferRadiusToIgnore;
  GKCObstacleGraph::connectNodeUsingObstaclesIgnoringBufferRadiusOfObstacles(self->_cObstacleGraph, [v7 cGraphNode2D], v6);
}

- (void)addObstacles:(NSArray *)obstacles
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = obstacles;
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

        GKCObstacleGraph::addObstacle(self->_cObstacleGraph, [*(*(&v8 + 1) + 8 * v7++) cPolygonObstacle]);
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)removeObstacles:(NSArray *)obstacles
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = obstacles;
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

        GKCObstacleGraph::removeObstacle(self->_cObstacleGraph, [*(*(&v8 + 1) + 8 * v7++) cPolygonObstacle]);
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (NSArray)nodesForObstacle:(GKPolygonObstacle *)obstacle
{
  v4 = obstacle;
  v5 = GKCObstacleGraph::nodesForObstacle(self->_cObstacleGraph, [(GKPolygonObstacle *)v4 cPolygonObstacle]);

  return v5;
}

- (void)lockConnectionFromNode:(id)startNode toNode:(id)endNode
{
  v7 = startNode;
  v6 = endNode;
  GKCObstacleGraph::lockConnectionFromNode(self->_cObstacleGraph, [v7 cGraphNode2D], objc_msgSend(v6, "cGraphNode2D"));
}

- (void)unlockConnectionFromNode:(id)startNode toNode:(id)endNode
{
  v7 = startNode;
  v6 = endNode;
  GKCObstacleGraph::unlockConnectionFromNode(self->_cObstacleGraph, [v7 cGraphNode2D], objc_msgSend(v6, "cGraphNode2D"));
}

- (BOOL)isConnectionLockedFromNode:(id)startNode toNode:(id)endNode
{
  v6 = startNode;
  v7 = endNode;
  LOBYTE(self) = GKCObstacleGraph::isConnectedLockedFromNode(self->_cObstacleGraph, [v6 cGraphNode2D], objc_msgSend(v7, "cGraphNode2D"));

  return self;
}

- (GKObstacleGraph)initWithCoder:(id)coder
{
  v48[11] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = GKObstacleGraph;
  coderCopy = coder;
  v3 = [(GKGraph *)&v46 initWithCoder:?];
  if (v3)
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v48[2] = objc_opt_class();
    v48[3] = objc_opt_class();
    v48[4] = objc_opt_class();
    v48[5] = objc_opt_class();
    v48[6] = objc_opt_class();
    v48[7] = objc_opt_class();
    v48[8] = objc_opt_class();
    v48[9] = objc_opt_class();
    v48[10] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:11];
    [v34 addObjectsFromArray:v4];

    allowedClasses = [coderCopy allowedClasses];
    [v34 unionSet:allowedClasses];

    obj = [coderCopy decodeObjectOfClasses:v34 forKey:@"_sourceObstacles"];
    v33 = [coderCopy decodeObjectOfClasses:v34 forKey:@"extrudedObstacles"];
    [coderCopy decodeFloatForKey:@"bufferRadius"];
    *(v3->_cObstacleGraph + 28) = v6;
    objc_storeStrong(&v3->_sourceObstacles, obj);
    std::vector<GKPolygonObstacle * {__strong}>::reserve(v3->_cObstacleGraph + 11, [v33 count]);
    cObstacleGraph = v3->_cObstacleGraph;
    v8 = [v33 count];
    if (v8 > (cObstacleGraph[10] - cObstacleGraph[8]) >> 3)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = v33;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v10)
    {
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v45 = v13;
          v14 = v3->_cObstacleGraph;
          v15 = *(v14 + 12);
          if (v15 >= *(v14 + 13))
          {
            v16 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(v14 + 11, &v45);
          }

          else
          {
            *v15 = v13;
            v16 = v15 + 1;
          }

          *(v14 + 12) = v16;
          v17 = v3->_cObstacleGraph;
          cPolygonObstacle = [v45 cPolygonObstacle];
          std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](v17 + 64, &cPolygonObstacle);
        }

        v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v10);
    }

    v18 = [obj count];
    if (v18 >= 1)
    {
      v19 = 0;
      v36 = v18 & 0x7FFFFFFF;
      do
      {
        v39 = [obj objectAtIndexedSubscript:v19];
        v38 = [v9 objectAtIndexedSubscript:v19];
        cPolygonObstacle2 = [v38 cPolygonObstacle];
        v21 = v3->_cObstacleGraph;
        cPolygonObstacle3 = [v39 cPolygonObstacle];
        v23 = v21[19];
        if (!v23)
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v24 = v23;
            v25 = v23[4];
            if (cPolygonObstacle3 >= v25)
            {
              break;
            }

            v23 = *v24;
            if (!*v24)
            {
              goto LABEL_23;
            }
          }

          if (v25 >= cPolygonObstacle3)
          {
            break;
          }

          v23 = v24[1];
          if (!v23)
          {
            goto LABEL_23;
          }
        }

        v24[5] = cPolygonObstacle2;
        cPolygonObstacle4 = [v39 cPolygonObstacle];
        v27 = v3->_cObstacleGraph;
        cPolygonObstacle5 = [v38 cPolygonObstacle];
        v29 = v27[22];
        if (!v29)
        {
LABEL_30:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v30 = v29;
            v31 = v29[4];
            if (cPolygonObstacle5 >= v31)
            {
              break;
            }

            v29 = *v30;
            if (!*v30)
            {
              goto LABEL_30;
            }
          }

          if (v31 >= cPolygonObstacle5)
          {
            break;
          }

          v29 = v30[1];
          if (!v29)
          {
            goto LABEL_30;
          }
        }

        v30[5] = cPolygonObstacle4;

        ++v19;
      }

      while (v19 != v36);
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = GKObstacleGraph;
  [(GKGraph *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sourceObstacles forKey:@"_sourceObstacles"];
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:? count:?];
  [coderCopy encodeObject:v5 forKey:@"extrudedObstacles"];
  [(GKObstacleGraph *)self bufferRadius];
  [coderCopy encodeFloat:@"bufferRadius" forKey:?];
}

@end