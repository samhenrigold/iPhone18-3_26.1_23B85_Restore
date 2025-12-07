@interface GVGraph
- (BOOL)hasEdgeBetween:(id)between :(id)a4;
- (BOOL)hasEdgeFrom:(id)from to:(id)to reversed:(BOOL)reversed;
- (BOOL)render:(id)render;
- (CGRect)bounds;
- (GVGraph)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)findEdgeBetween:(id)between and:(id)and;
- (id)findEdgeFrom:(id)from to:(id)to;
- (id)inNodesOf:(id)of;
- (id)outNodesOf:(id)of;
- (int64_t)minimumSlack;
- (int64_t)slackOfEdge:(id)edge;
- (unint64_t)inDegreeOf:(id)of;
- (unint64_t)inEdgeCountOf:(id)of;
- (unint64_t)outDegreeOf:(id)of;
- (unint64_t)outEdgeCountOf:(id)of;
- (void)addEdgeFrom:(id)from to:(id)to reversed:(BOOL)reversed;
- (void)addNode:(id)node;
- (void)addNodeGroup:(id)group identifier:(id)identifier margins:(id)margins;
- (void)dealloc;
- (void)removeEdge:(id)edge;
- (void)removeEdgeFrom:(id)from to:(id)to;
- (void)removeNode:(id)node;
- (void)reverseEdge:(id)edge;
- (void)traverseEdgesFromStart:(id)start callback:(id)callback;
- (void)traverseNodesFromStart:(id)start direction:(int)direction randomize:(BOOL)randomize callback:(id)callback;
@end

@implementation GVGraph

- (GVGraph)init
{
  v4.receiver = self;
  v4.super_class = GVGraph;
  v2 = [(GVGraph *)&v4 init];
  if (v2)
  {
    v2->_nodes = objc_alloc_init(MEMORY[0x277CBEB40]);
    v2->_sourceNodes = objc_alloc_init(MEMORY[0x277CBEB40]);
    v2->_sinkNodes = objc_alloc_init(MEMORY[0x277CBEB40]);
    v2->_edges = objc_alloc_init(MEMORY[0x277CBEB40]);
    v2->_groups = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(GVGraph *)v2 setAllowRedundantEdges:0];
    [(GVGraph *)v2 setMinimizeEdgeLengths:1];
    [(GVGraph *)v2 setMinimizeEdgeCrossings:1];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GVGraph;
  [(GVGraph *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    nodes = self->_nodes;
    v6 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(nodes);
          }

          [v4 addNode:*(*(&v20 + 1) + 8 * i)];
        }

        v7 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    edges = self->_edges;
    v11 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(edges);
          }

          [v4 addEdgeFrom:objc_msgSend(*(*(&v16 + 1) + 8 * j) to:"from") reversed:{objc_msgSend(*(*(&v16 + 1) + 8 * j), "to"), objc_msgSend(*(*(&v16 + 1) + 8 * j), "reversed")}];
        }

        v12 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v12);
    }
  }

  return v4;
}

- (void)addNode:(id)node
{
  if (([(NSMutableOrderedSet *)self->_nodes containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_nodes addObject:node];
    [(NSMutableOrderedSet *)self->_sourceNodes addObject:node];
    sinkNodes = self->_sinkNodes;

    [(NSMutableOrderedSet *)sinkNodes addObject:node];
  }
}

- (void)removeNode:(id)node
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(NSMutableOrderedSet *)self->_nodes containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_nodes removeObject:node];
    [(NSMutableOrderedSet *)self->_sourceNodes removeObject:node];
    [(NSMutableOrderedSet *)self->_sinkNodes removeObject:node];
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    edges = self->_edges;
    v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(edges);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if ([v11 to] == node)
          {
            [array addObject:v11];
          }

          if ([v11 from] == node)
          {
            [array addObject:v11];
          }
        }

        v8 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = [array countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(array);
          }

          [(NSMutableOrderedSet *)self->_edges removeObject:*(*(&v16 + 1) + 8 * j)];
        }

        v13 = [array countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (id)inNodesOf:(id)of
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  edges = self->_edges;
  v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(edges);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 to] == of)
        {
          [v5 addObject:{objc_msgSend(v11, "from")}];
        }
      }

      v8 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)outNodesOf:(id)of
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  edges = self->_edges;
  v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(edges);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 from] == of)
        {
          [v5 addObject:{objc_msgSend(v11, "to")}];
        }
      }

      v8 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (unint64_t)inEdgeCountOf:(id)of
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  edges = self->_edges;
  v5 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v12;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(edges);
      }

      if ([*(*(&v11 + 1) + 8 * i) to] == of)
      {
        ++v7;
      }
    }

    v6 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v6);
  return v7;
}

- (unint64_t)outEdgeCountOf:(id)of
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  edges = self->_edges;
  v5 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v12;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(edges);
      }

      if ([*(*(&v11 + 1) + 8 * i) from] == of)
      {
        ++v7;
      }
    }

    v6 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v6);
  return v7;
}

- (unint64_t)inDegreeOf:(id)of
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[GVGraph inNodesOf:](self inNodesOf:{of), "count"}];
  objc_autoreleasePoolPop(v5);
  return v6;
}

- (unint64_t)outDegreeOf:(id)of
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[GVGraph outNodesOf:](self outNodesOf:{of), "count"}];
  objc_autoreleasePoolPop(v5);
  return v6;
}

- (void)traverseEdgesFromStart:(id)start callback:(id)callback
{
  v7 = [MEMORY[0x277CBEB58] set];

  _traverse_edges(self, 0, 0, start, 2, 0, v7, callback);
}

- (void)traverseNodesFromStart:(id)start direction:(int)direction randomize:(BOOL)randomize callback:(id)callback
{
  randomizeCopy = randomize;
  if ([(NSMutableOrderedSet *)self->_nodes containsObject:?]&& (*(callback + 2))(callback, start) != 1)
  {
    v11 = [MEMORY[0x277CBEB58] set];
    if (randomizeCopy)
    {
      p_randomSeed = &self->randomSeed;
    }

    else
    {
      p_randomSeed = 0;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__GVGraph_traverseNodesFromStart_direction_randomize_callback___block_invoke;
    v13[3] = &unk_27969D6A0;
    v13[4] = callback;
    _traverse_edges(self, 0, 0, start, direction, p_randomSeed, v11, v13);
  }
}

- (id)findEdgeFrom:(id)from to:(id)to
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  edges = self->_edges;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__GVGraph_findEdgeFrom_to___block_invoke;
  v7[3] = &unk_27969D6C8;
  v7[4] = from;
  v7[5] = to;
  v7[6] = &v8;
  [(NSMutableOrderedSet *)edges enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void *__27__GVGraph_findEdgeFrom_to___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 from];
  if (result == a1[4])
  {
    result = [a2 to];
    if (result == a1[5])
    {
      *(*(a1[6] + 8) + 40) = a2;
      *a4 = 1;
    }
  }

  return result;
}

- (id)findEdgeBetween:(id)between and:(id)and
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  edges = self->_edges;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__GVGraph_findEdgeBetween_and___block_invoke;
  v7[3] = &unk_27969D6C8;
  v7[4] = between;
  v7[5] = and;
  v7[6] = &v8;
  [(NSMutableOrderedSet *)edges enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void *__31__GVGraph_findEdgeBetween_and___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 from] == *(a1 + 32) && (result = objc_msgSend(a2, "to"), result == *(a1 + 40)) || (result = objc_msgSend(a2, "from"), result == *(a1 + 40)) && (result = objc_msgSend(a2, "to"), result == *(a1 + 32)))
  {
    *(*(*(a1 + 48) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (BOOL)hasEdgeFrom:(id)from to:(id)to reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v21 = *MEMORY[0x277D85DE8];
  LODWORD(v9) = [(NSMutableOrderedSet *)self->_nodes containsObject:?];
  if (v9)
  {
    LODWORD(v9) = [(NSMutableOrderedSet *)self->_nodes containsObject:to];
    if (v9)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      edges = self->_edges;
      v9 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = *v17;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(edges);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            if ([v14 from] == from && objc_msgSend(v14, "to") == to && objc_msgSend(v14, "reversed") == reversedCopy)
            {
              LOBYTE(v9) = 1;
              return v9;
            }

            ++v13;
          }

          while (v11 != v13);
          v9 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v16 objects:v20 count:16];
          v11 = v9;
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return v9;
}

- (BOOL)hasEdgeBetween:(id)between :(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  edges = self->_edges;
  v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(edges);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([v11 from] == between && objc_msgSend(v11, "to") == a4 || objc_msgSend(v11, "from") == a4 && objc_msgSend(v11, "to") == between)
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v13 objects:v17 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

- (void)removeEdge:(id)edge
{
  if ([(NSMutableOrderedSet *)self->_edges containsObject:?])
  {
    edges = self->_edges;

    [(NSMutableOrderedSet *)edges removeObject:edge];
  }
}

- (void)reverseEdge:(id)edge
{
  v20 = *MEMORY[0x277D85DE8];
  [edge reverse];
  -[NSMutableOrderedSet removeObject:](self->_sourceNodes, "removeObject:", [edge to]);
  -[NSMutableOrderedSet removeObject:](self->_sinkNodes, "removeObject:", [edge from]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  edges = self->_edges;
  v6 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(edges);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [edge to];
        v8 |= v13 == [v12 from];
        from = [edge from];
        v9 |= from == [v12 to];
      }

      v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
    if (v8)
    {
      -[NSMutableOrderedSet removeObject:](self->_sinkNodes, "removeObject:", [edge to]);
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
  }

  if ((-[NSMutableOrderedSet containsObject:](self->_sinkNodes, "containsObject:", [edge to]) & 1) == 0)
  {
    -[NSMutableOrderedSet addObject:](self->_sinkNodes, "addObject:", [edge to]);
  }

LABEL_13:
  if (v9)
  {
    -[NSMutableOrderedSet removeObject:](self->_sourceNodes, "removeObject:", [edge from]);
  }

  else if ((-[NSMutableOrderedSet containsObject:](self->_sourceNodes, "containsObject:", [edge from]) & 1) == 0)
  {
    -[NSMutableOrderedSet addObject:](self->_sourceNodes, "addObject:", [edge from]);
  }
}

- (void)removeEdgeFrom:(id)from to:(id)to
{
  v5 = [(GVGraph *)self findEdgeFrom:from to:to];

  [(GVGraph *)self removeEdge:v5];
}

- (void)addEdgeFrom:(id)from to:(id)to reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v32 = *MEMORY[0x277D85DE8];
  [(GVGraph *)self addNode:?];
  [(GVGraph *)self addNode:to];
  if ([from isEqual:to])
  {
    if (gvgraph_logger_onceToken != -1)
    {
      [GVGraph addEdgeFrom:to:reversed:];
    }

    v9 = gvgraph_logger_logger;
    if (os_log_type_enabled(gvgraph_logger_logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      fromCopy2 = from;
      v10 = "[GVGraph addEdgeFrom:to:] Edge from GVNode %p to itself is not currently supported.";
      v11 = v9;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_2507D1000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else if ([(GVGraph *)self allowRedundantEdges]|| ![(GVGraph *)self hasEdgeFrom:from to:to reversed:reversedCopy])
  {
    v14 = [(GVGraph *)self findEdgeBetween:from and:to];
    if (v14)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      edges = self->_edges;
      v16 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(edges);
            }

            v20 = *(*(&v23 + 1) + 8 * i);
            if ([v20 from] == from && objc_msgSend(v20, "to") == to || objc_msgSend(v20, "from") == to && objc_msgSend(v20, "to") == from)
            {
              [v20 setRedundancyMax:{objc_msgSend(v20, "redundancyMax") + 1}];
            }
          }

          v17 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }
    }

    v21 = [[GVEdge alloc] initWithFromNode:from to:to];
    [(GVEdge *)v21 setReversed:reversedCopy];
    [(NSMutableOrderedSet *)self->_edges addObject:v21];
    [(NSMutableOrderedSet *)self->_sourceNodes removeObject:to];
    [(NSMutableOrderedSet *)self->_sinkNodes removeObject:from];
    if (v14)
    {
      redundancyMax = [v14 redundancyMax];
      [(GVEdge *)v21 setRedundancyMax:redundancyMax];
      [(GVEdge *)v21 setRedundancy:redundancyMax];
    }
  }

  else
  {
    if (gvgraph_logger_onceToken != -1)
    {
      [GVGraph addEdgeFrom:to:reversed:];
    }

    v13 = gvgraph_logger_logger;
    if (os_log_type_enabled(gvgraph_logger_logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      fromCopy2 = from;
      v30 = 2048;
      toCopy = to;
      v10 = "[GVGraph addEdgeFrom:to:] Edge from GVNode %p to GVNode %p already exists.";
      v11 = v13;
      v12 = 22;
      goto LABEL_6;
    }
  }
}

- (int64_t)slackOfEdge:(id)edge
{
  v4 = [objc_msgSend(edge "from")];
  v5 = [objc_msgSend(edge "to")];
  v6 = v4 - v5;
  if (v4 - v5 < 0)
  {
    v6 = v5 - v4;
  }

  return v6 - 1;
}

- (int64_t)minimumSlack
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  edges = self->_edges;
  result = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    v7 = 0x7FFFFFFFLL;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(edges);
      }

      result = [(GVGraph *)self slackOfEdge:*(*(&v10 + 1) + 8 * v8)];
      if (result == -1)
      {
        break;
      }

      if (v7 >= result)
      {
        v9 = result;
      }

      else
      {
        v9 = v7;
      }

      if (result > 0)
      {
        v7 = v9;
      }

      if (v5 == ++v8)
      {
        v5 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        if (v7 == 0x7FFFFFFF)
        {
          return 0;
        }

        else
        {
          return v7;
        }
      }
    }
  }

  return result;
}

- (CGRect)bounds
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  nodes = self->_nodes;
  v3 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    v6 = 1.79769313e308;
    v7 = -1.79769313e308;
    v8 = -1.79769313e308;
    v9 = 1.79769313e308;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(nodes);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        [v11 x];
        if (v9 >= v12)
        {
          v9 = v12;
        }

        [v11 x];
        v14 = v13;
        [v11 w];
        v16 = v14 + v15;
        if (v8 < v16)
        {
          v8 = v16;
        }

        [v11 y];
        if (v6 >= v17)
        {
          v6 = v17;
        }

        [v11 y];
        v19 = v18;
        [v11 h];
        v21 = v19 + v20;
        if (v7 < v21)
        {
          v7 = v21;
        }
      }

      v4 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1.79769313e308;
    v7 = -1.79769313e308;
    v8 = -1.79769313e308;
    v9 = 1.79769313e308;
  }

  v22 = v8 - v9;
  v23 = v7 - v6;
  v24 = v9;
  v25 = v6;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)addNodeGroup:(id)group identifier:(id)identifier margins:(id)margins
{
  v26 = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    [(NSMutableDictionary *)self->_groups removeObjectForKey:identifier, margins.var0, margins.var1, margins.var2, margins.var3];
    if (![group count])
    {
      return;
    }

    memset(v21, 0, sizeof(v21));
    if (!-[NSMutableDictionary countByEnumeratingWithState:objects:count:](self->_groups, "countByEnumeratingWithState:objects:count:", v21, v23, 16) || (v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_groups, "objectForKeyedSubscript:", **(&v21[0] + 1)), ![v8 intersectsSet:group]) || (objc_msgSend(v8, "isSubsetOfSet:", group) & 1) != 0 || (objc_msgSend(group, "isSubsetOfSet:", v8) & 1) != 0)
    {
      [(NSMutableDictionary *)self->_groups setObject:group forKey:identifier];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [group countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(group);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            if (([(NSMutableOrderedSet *)self->_nodes containsObject:v13]& 1) == 0)
            {
              [(NSMutableOrderedSet *)self->_nodes addObject:v13];
            }
          }

          v10 = [group countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v10);
      }

      return;
    }

    if ([group isEqualToSet:v8])
    {
      if (gvgraph_logger_onceToken != -1)
      {
        [GVGraph addNodeGroup:identifier:margins:];
      }

      v14 = gvgraph_logger_logger;
      if (os_log_type_enabled(gvgraph_logger_logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v25 = "[GVGraph addNodeGroup:identifier:margins:]";
        v15 = "%{public}s Adding a GVNodeGroup with the same contents as an existing group has no effect.";
        goto LABEL_21;
      }
    }

    else
    {
      if (gvgraph_logger_onceToken != -1)
      {
        [GVGraph addNodeGroup:identifier:margins:];
      }

      v16 = gvgraph_logger_logger;
      if (os_log_type_enabled(gvgraph_logger_logger, OS_LOG_TYPE_ERROR))
      {
        [GVGraph addNodeGroup:v16 identifier:? margins:?];
      }
    }
  }

  else
  {
    if (gvgraph_logger_onceToken != -1)
    {
      [GVGraph addEdgeFrom:to:reversed:];
    }

    v14 = gvgraph_logger_logger;
    if (os_log_type_enabled(gvgraph_logger_logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v25 = "[GVGraph addNodeGroup:identifier:margins:]";
      v15 = "%{public}s A unique identifier is required when adding a GVNodeGroup.";
LABEL_21:
      _os_log_impl(&dword_2507D1000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }
  }
}

- (BOOL)render:(id)render
{
  v5 = objc_autoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    direction = [render direction];
  }

  else
  {
    direction = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [render separation];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v10 = 50.0;
    v8 = 50.0;
  }

  v11 = objc_alloc_init(GVLayout);
  [(GVLayout *)v11 doLayout:self direction:direction separation:v8, v10];
  if ([render setCanvasWidth:v12 height:v13])
  {
    [(GVLayout *)v11 render:render];
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = GVGraph;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ nodeCount=%lu edgeCount=%lu", -[GVGraph description](&v3, sel_description), -[NSMutableOrderedSet count](self->_nodes, "count"), -[NSMutableOrderedSet count](self->_edges, "count")];
}

- (id)debugDescription
{
  v60 = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = GVGraph;
  v3 = [(GVGraph *)&v55 description];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  nodes = self->_nodes;
  v5 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v52;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(nodes);
        }

        rank = [*(*(&v51 + 1) + 8 * i) rank];
        if (v7 <= rank)
        {
          v7 = rank;
        }
      }

      v6 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v6);
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = self->_nodes;
  v13 = [(NSMutableOrderedSet *)v12 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v48;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v12);
        }

        index = [*(*(&v47 + 1) + 8 * j) index];
        if (v15 <= index)
        {
          v15 = index;
        }
      }

      v14 = [(NSMutableOrderedSet *)v12 countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v14);
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = [v3 stringByAppendingString:@"\n  Nodes:\n\n"];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_nodes;
  v21 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v43 + 1) + 8 * k);
        v26 = [objc_msgSend(v20 stringByAppendingString:{@"  ", "stringByAppendingString:", objc_msgSend(v25, "description")}];
        if (!v11)
        {
          v26 = [v26 stringByAppendingString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @" rank=%lu", objc_msgSend(v25, "rank"))}];
        }

        if (!v19)
        {
          v26 = [v26 stringByAppendingString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @" index=%lu", objc_msgSend(v25, "index"))}];
        }

        if ([(NSMutableOrderedSet *)self->_sourceNodes containsObject:v25]&& (v27 = [(NSMutableOrderedSet *)self->_sinkNodes containsObject:v25], v28 = @" Solo", (v27 & 1) != 0) || (v29 = [(NSMutableOrderedSet *)self->_sourceNodes containsObject:v25], v28 = @" Source", (v29 & 1) != 0) || (v30 = [(NSMutableOrderedSet *)self->_sinkNodes containsObject:v25], v28 = @" Sink", v30))
        {
          v26 = [v26 stringByAppendingString:v28];
        }

        v20 = [v26 stringByAppendingString:@"\n"];
      }

      v22 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v43 objects:v57 count:16];
    }

    while (v22);
  }

  v31 = [v20 stringByAppendingString:@"\n  Edges:\n\n"];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  edges = self->_edges;
  v33 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v39 objects:v56 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v40;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(edges);
        }

        v31 = [objc_msgSend(objc_msgSend(v31 stringByAppendingString:{@"  ", "stringByAppendingString:", objc_msgSend(*(*(&v39 + 1) + 8 * m), "description")), "stringByAppendingString:", @"\n"}];
      }

      v34 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v39 objects:v56 count:16];
    }

    while (v34);
  }

  return v31;
}

- (void)addNodeGroup:(os_log_t)log identifier:margins:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "[GVGraph addNodeGroup:identifier:margins:]";
  _os_log_error_impl(&dword_2507D1000, log, OS_LOG_TYPE_ERROR, "%{public}s Adding a GVNodeGroup with contents that overlap with an existing group is unsupported.", &v1, 0xCu);
}

@end