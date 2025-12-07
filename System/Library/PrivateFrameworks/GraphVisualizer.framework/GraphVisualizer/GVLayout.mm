@interface GVLayout
+ (CGSize)layoutGraph:(id)graph withDirection:(int)direction separation:(CGSize)separation;
- (CGSize)doLayout:(id)layout direction:(int)direction separation:(CGSize)separation;
- (CGSize)separation;
- (unint64_t)crossings;
- (unint64_t)medianValueOf:(id)of withRespectTo:(id)to;
- (void)_locateCycles:(id)cycles visistedNodes:(id)nodes nodesInStack:(id)stack reverseList:(id)list;
- (void)assignCoordinates;
- (void)assignNodeCoordinates;
- (void)assignNodePriorities;
- (void)assignRankCoordinates;
- (void)assignRanks;
- (void)balanceRanks;
- (void)buildRankObjectArray;
- (void)clearNodeState;
- (void)commitOrder;
- (void)dealloc;
- (void)drawAllEdges:(id)edges of:(id)of;
- (void)drawAllGroups:(id)groups of:(id)of;
- (void)drawAllNodes:(id)nodes of:(id)of;
- (void)initializeNodeCoordinates;
- (void)initializeOrder;
- (void)initializeRanks;
- (void)insertDummiesBetweenRanks;
- (void)makeFeasibleTree;
- (void)medianPosition:(unint64_t)position;
- (void)medianSort:(id)sort withRespectTo:(id)to;
- (void)orderVertices;
- (void)packCut:(unint64_t)cut;
- (void)removeCycles;
- (void)render:(id)render;
- (void)restoreOrder;
- (void)saveOrder;
- (void)straighten;
- (void)transpose;
- (void)undoRemoveCycles;
- (void)weightedMedian:(unint64_t)median;
@end

@implementation GVLayout

- (void)dealloc
{
  savedOrder = self->savedOrder;
  if (savedOrder)
  {
    free(savedOrder);
  }

  [(GVLayout *)self setRanks:0];
  [(GVLayout *)self setGraphOrig:0];
  [(GVLayout *)self setGraphParts:0];
  [(GVLayout *)self setGraphPart:0];
  v4.receiver = self;
  v4.super_class = GVLayout;
  [(GVLayout *)&v4 dealloc];
}

+ (CGSize)layoutGraph:(id)graph withDirection:(int)direction separation:(CGSize)separation
{
  height = separation.height;
  width = separation.width;
  v7 = *&direction;
  v9 = objc_alloc_init(GVLayout);
  [(GVLayout *)v9 doLayout:graph direction:v7 separation:width, height];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)clearNodeState
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  nodes = [(GVGraph *)self->graphOrig nodes];
  v3 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(nodes);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setRank:0];
        [v7 setIndex:0];
        [v7 setCx:0.0];
        [v7 setCy:0.0];
        [v7 setInPriority:0];
        [v7 setOutPriority:0];
      }

      v4 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (CGSize)doLayout:(id)layout direction:(int)direction separation:(CGSize)separation
{
  height = separation.height;
  width = separation.width;
  v63 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  [(GVLayout *)self setGraphOrig:layout];
  -[GVLayout setGraphParts:](self, "setGraphParts:", [MEMORY[0x277CBEB18] array]);
  v10 = [objc_msgSend(layout "allNodes")];
  while ([v10 count])
  {
    firstObject = [v10 firstObject];
    v12 = objc_opt_new();
    [v12 setAllowRedundantEdges:{-[GVGraph allowRedundantEdges](self->graphOrig, "allowRedundantEdges")}];
    [v12 setMinimizeEdgeLengths:{-[GVGraph minimizeEdgeLengths](self->graphOrig, "minimizeEdgeLengths")}];
    [v12 setMinimizeEdgeCrossings:{-[GVGraph minimizeEdgeCrossings](self->graphOrig, "minimizeEdgeCrossings")}];
    [v12 addNode:firstObject];
    [v10 removeObject:firstObject];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __42__GVLayout_doLayout_direction_separation___block_invoke;
    v61[3] = &unk_27969D6F0;
    v61[4] = v12;
    v61[5] = v10;
    [layout traverseEdgesFromStart:firstObject callback:v61];
    [v12 setRandomSeed:{objc_msgSend(objc_msgSend(v12, "edges"), "count") + objc_msgSend(objc_msgSend(v12, "nodes"), "count")}];
    [(NSMutableArray *)self->graphParts addObject:v12];
  }

  v13 = malloc_type_calloc([(NSMutableArray *)self->graphParts count], 0x20uLL, 0x1000040E0EAB150uLL);
  [(GVLayout *)self clearNodeState];
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if ([(NSMutableArray *)self->graphParts count])
  {
    v17 = 0;
    do
    {
      [(GVLayout *)self setGraphPart:[(NSMutableArray *)self->graphParts objectAtIndexedSubscript:v17]];
      self->direction = direction;
      self->separation.width = width;
      self->separation.height = height;
      [(NSMutableArray *)[(GVLayout *)self ranks] removeAllObjects];
      [(GVLayout *)self removeCycles];
      [(GVLayout *)self assignRanks];
      [(GVLayout *)self insertDummiesBetweenRanks];
      [(GVLayout *)self orderVertices];
      [(GVLayout *)self assignCoordinates];
      [(GVLayout *)self undoRemoveCycles];
      savedOrder = self->savedOrder;
      if (savedOrder)
      {
        free(savedOrder);
      }

      self->savedOrder = 0;
      [(GVGraph *)[(GVLayout *)self graphPart] bounds];
      v15 = fmax(v15, v19);
      v16 = fmax(v16, v20);
      [(GVLayout *)self setRanks:0];
      ++v17;
    }

    while (v17 < [(NSMutableArray *)self->graphParts count]);
  }

  v21 = 0.0;
  if ([(NSMutableArray *)self->graphParts count])
  {
    v22 = 0;
    v14 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v53 = width;
    v54 = height;
    do
    {
      v55 = v21;
      v56 = v14;
      v25 = [(NSMutableArray *)self->graphParts objectAtIndexedSubscript:v22];
      [v25 bounds];
      v28 = v26;
      v29 = v27;
      v31 = v23 - v30;
      v33 = v24 - v32;
      if (direction)
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 + v16 - v27;
      }

      if (direction == 3)
      {
        v35 = v31 + v15 - v26;
      }

      else
      {
        v35 = v31;
      }

      v36 = fabs(v34);
      if (fabs(v35) > 2.22044605e-16 || v36 > 2.22044605e-16)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        nodes = [v25 nodes];
        v39 = [nodes countByEnumeratingWithState:&v57 objects:v62 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v58;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v58 != v41)
              {
                objc_enumerationMutation(nodes);
              }

              v43 = *(*(&v57 + 1) + 8 * i);
              [v43 x];
              [v43 setX:v35 + v44];
              [v43 y];
              [v43 setY:v34 + v45];
            }

            v40 = [nodes countByEnumeratingWithState:&v57 objects:v62 count:16];
          }

          while (v40);
        }
      }

      v46 = v24 + v29;
      v47 = fmax(v55, v28);
      v48 = v23 + v28;
      v49 = fmax(v56, v29);
      if (direction <= 1)
      {
        v23 = v23 + v53 + v28;
        v14 = v49;
      }

      else
      {
        v24 = v24 + v54 + v29;
        v14 = v46;
      }

      if (direction <= 1)
      {
        v21 = v48;
      }

      else
      {
        v21 = v47;
      }

      ++v22;
    }

    while (v22 < [(NSMutableArray *)self->graphParts count]);
  }

  free(v13);
  objc_autoreleasePoolPop(context);
  v50 = v21;
  v51 = v14;
  result.height = v51;
  result.width = v50;
  return result;
}

uint64_t __42__GVLayout_doLayout_direction_separation___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) addEdgeFrom:objc_msgSend(a2 to:{"from", a3), objc_msgSend(a2, "to")}];
  [*(a1 + 40) removeObject:a4];
  return 0;
}

- (void)_locateCycles:(id)cycles visistedNodes:(id)nodes nodesInStack:(id)stack reverseList:(id)list
{
  v22 = *MEMORY[0x277D85DE8];
  if (([nodes containsObject:?] & 1) == 0)
  {
    [nodes addObject:cycles];
    [stack addObject:cycles];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    edges = [(GVGraph *)self->graphPart edges];
    v12 = [(NSOrderedSet *)edges countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(edges);
          }

          v16 = *(*(&v17 + 1) + 8 * i);
          if (([list containsObject:v16] & 1) == 0 && objc_msgSend(v16, "from") == cycles)
          {
            if ([stack containsObject:{objc_msgSend(v16, "to")}])
            {
              [list addObject:v16];
            }

            else if (([nodes containsObject:{objc_msgSend(v16, "to")}] & 1) == 0)
            {
              -[GVLayout _locateCycles:visistedNodes:nodesInStack:reverseList:](self, "_locateCycles:visistedNodes:nodesInStack:reverseList:", [v16 to], nodes, stack, list);
            }
          }
        }

        v13 = [(NSOrderedSet *)edges countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    [stack removeObject:cycles];
  }
}

- (void)removeCycles
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(GVGraph *)self->graphPart edgeCount]>= 2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    allNodes = [(GVGraph *)self->graphPart allNodes];
    v8 = [allNodes countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        v11 = 0;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(allNodes);
          }

          [v6 setInteger:-[GVGraph inEdgeCountOf:](self->graphPart forKey:{"inEdgeCountOf:", *(*(&v31 + 1) + 8 * v11)), *(*(&v31 + 1) + 8 * v11)}];
          ++v11;
        }

        while (v9 != v11);
        v9 = [allNodes countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v9);
    }

    allNodes2 = [(GVGraph *)self->graphPart allNodes];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __24__GVLayout_removeCycles__block_invoke;
    v30[3] = &unk_27969D718;
    v30[4] = v6;
    v13 = [allNodes2 sortedArrayUsingComparator:v30];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        v17 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(GVLayout *)self _locateCycles:*(*(&v26 + 1) + 8 * v17++) visistedNodes:v3 nodesInStack:v4 reverseList:v5];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v15);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = [v5 countByEnumeratingWithState:&v22 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        v21 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v5);
          }

          [(GVGraph *)self->graphPart reverseEdge:*(*(&v22 + 1) + 8 * v21++)];
        }

        while (v19 != v21);
        v19 = [v5 countByEnumeratingWithState:&v22 objects:v35 count:16];
      }

      while (v19);
    }
  }
}

uint64_t __24__GVLayout_removeCycles__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) integerForKey:a2];
  v6 = [*(a1 + 32) integerForKey:a3];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)undoRemoveCycles
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  edges = [(GVGraph *)self->graphPart edges];
  v3 = [(NSOrderedSet *)edges countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(edges);
        }

        [*(*(&v7 + 1) + 8 * v6++) unreverse];
      }

      while (v4 != v6);
      v4 = [(NSOrderedSet *)edges countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)assignRanks
{
  [(GVLayout *)self makeFeasibleTree];
  [(GVLayout *)self minimizeCutValues];
  [(GVLayout *)self balanceRanks];

  [(GVLayout *)self buildRankObjectArray];
}

- (void)insertDummiesBetweenRanks
{
  v40 = *MEMORY[0x277D85DE8];
  obj = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  edges = [(GVGraph *)self->graphPart edges];
  v4 = [(NSOrderedSet *)edges countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(edges);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [objc_msgSend(v8 "to")];
        if (v9 - [objc_msgSend(v8 "from")] >= 2)
        {
          [obj addObject:v8];
        }
      }

      v5 = [(NSOrderedSet *)edges countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * j);
        v12 = [objc_msgSend(v11 "from")];
        v13 = [objc_msgSend(v11 "to")];
        from = [v11 from];
        v15 = v12 + 1;
        if (v15 < v13)
        {
          do
          {
            v16 = objc_alloc_init(GVDummyNode);
            v17 = [(NSMutableArray *)self->ranks objectAtIndexedSubscript:v15];
            [v17 sizeForDummy];
            [(GVNode *)v16 setSize:?];
            -[GVGraph addEdgeFrom:to:reversed:](self->graphPart, "addEdgeFrom:to:reversed:", from, v16, [v11 reversed]);

            [v17 addNode:v16];
            [(GVNode *)v16 setRank:v15++];
            from = v16;
          }

          while (v13 != v15);
        }

        -[GVGraph addEdgeFrom:to:reversed:](self->graphPart, "addEdgeFrom:to:reversed:", from, [v11 to], objc_msgSend(v11, "reversed"));
      }

      v23 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v23);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        [(GVGraph *)self->graphPart removeEdge:*(*(&v25 + 1) + 8 * k)];
      }

      v19 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v19);
  }
}

- (void)initializeRanks
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  v5 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  nodes = [(GVGraph *)self->graphPart nodes];
  v7 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(nodes);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        [v11 setRank:0];
        v12 = [(GVGraph *)self->graphPart inDegreeOf:v11];
        [v5 setInteger:v12 forKey:v11];
        if (!v12)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v8);
  }

  while ([v4 count])
  {
    firstObject = [v4 firstObject];
    [v4 removeObjectAtIndex:0];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [(GVGraph *)self->graphPart inNodesOf:firstObject];
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * j);
          rank = [firstObject rank];
          rank2 = [v19 rank];
          if (rank <= rank2 + 1)
          {
            v22 = rank2 + 1;
          }

          else
          {
            v22 = rank;
          }

          [firstObject setRank:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v16);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = [(GVGraph *)self->graphPart outNodesOf:firstObject, 0];
    v24 = [v23 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v30;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v29 + 1) + 8 * k);
          if (![v5 decrementValueForKey:v28])
          {
            [v4 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v25);
    }
  }
}

- (void)makeFeasibleTree
{
  v30 = *MEMORY[0x277D85DE8];
  [(GVLayout *)self initializeRanks];
  if ([(GVGraph *)self->graphPart minimizeEdgeLengths])
  {
    if ([(GVGraph *)self->graphPart minimumSlack]>= 1)
    {
      v3 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v26 = __28__GVLayout_makeFeasibleTree__block_invoke;
      v27 = &unk_27969D768;
      selfCopy = self;
      firstObject = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] firstObject];
      if (v3)
      {
        v5 = firstObject;
        for (i = 0; i < v3; i += [v7 count])
        {
          v23 = 0;
          v24 = 0;
          v7 = v26(v25, v5, &v24, &v23);
          if ([v7 count] < v3)
          {
            if (v24)
            {
              v8 = v23 == 0;
            }

            else
            {
              v8 = 1;
            }

            if (v8)
            {
              [GVLayout makeFeasibleTree];
            }

            rank = [v23 rank];
            rank2 = [v24 rank];
            if (rank - rank2 >= 0)
            {
              v11 = rank - rank2;
            }

            else
            {
              v11 = rank2 - rank;
            }

            v12 = v11 - 1;
            rank3 = [v23 rank];
            rank4 = [v24 rank];
            v19 = 0u;
            v20 = 0u;
            if (rank3 < rank4)
            {
              v12 = 1 - v11;
            }

            v21 = 0uLL;
            v22 = 0uLL;
            v15 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v20;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v20 != v17)
                  {
                    objc_enumerationMutation(v7);
                  }

                  [*(*(&v19 + 1) + 8 * j) setRank:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "rank", v19) + v12}];
                }

                v16 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
              }

              while (v16);
            }

            v5 = v23;
          }
        }
      }
    }
  }
}

void *__28__GVLayout_makeFeasibleTree__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CBEB58] set];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0xFFFFFFFFLL;
  [v8 addObject:a2];
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__GVLayout_makeFeasibleTree__block_invoke_2;
  v12[3] = &unk_27969D740;
  v12[4] = v9;
  v12[5] = v8;
  v12[6] = v13;
  v12[7] = a3;
  v12[8] = a4;
  [v10 traverseEdgesFromStart:a2 callback:v12];
  _Block_object_dispose(v13, 8);
  return v8;
}

uint64_t __28__GVLayout_makeFeasibleTree__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(*(a1 + 32) + 48) slackOfEdge:a2];
  if (v7)
  {
    v8 = *(*(a1 + 48) + 8);
    if (v7 < *(v8 + 24))
    {
      *(v8 + 24) = v7;
      **(a1 + 56) = a3;
      **(a1 + 64) = a4;
    }

    return 1;
  }

  else
  {
    [*(a1 + 40) addObject:a4];
    return 0;
  }
}

- (void)balanceRanks
{
  selfCopy = self;
  v97 = *MEMORY[0x277D85DE8];
  if ([(GVGraph *)self->graphPart minimizeEdgeLengths]&& [(GVGraph *)selfCopy->graphPart minimumSlack]>= 1)
  {
    v3 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    nodes = [(GVGraph *)selfCopy->graphPart nodes];
    v5 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v87;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v87 != v7)
          {
            objc_enumerationMutation(nodes);
          }

          [v3 incrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(*(*(&v86 + 1) + 8 * i), "rank"))}];
        }

        v6 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v86 objects:v96 count:16];
      }

      while (v6);
    }

    v55 = v3;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = [(GVGraph *)selfCopy->graphPart nodes];
    v60 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v82 objects:v95 count:16];
    if (v60)
    {
      v58 = *v83;
      do
      {
        v9 = 0;
        do
        {
          if (*v83 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v82 + 1) + 8 * v9);
          v11 = [(GVGraph *)selfCopy->graphPart inNodesOf:v10];
          v12 = [(GVGraph *)selfCopy->graphPart outNodesOf:v10];
          v13 = [v11 count];
          if (v13 == [v12 count])
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v14 = [v11 countByEnumeratingWithState:&v78 objects:v94 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v79;
              rank5 = -2147483647;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v79 != v16)
                  {
                    objc_enumerationMutation(v11);
                  }

                  rank = [*(*(&v78 + 1) + 8 * j) rank];
                  if (rank + 1 > rank5)
                  {
                    rank5 = rank + 1;
                  }
                }

                v15 = [v11 countByEnumeratingWithState:&v78 objects:v94 count:16];
              }

              while (v15);
              if (v13)
              {
LABEL_26:
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v20 = [v12 countByEnumeratingWithState:&v74 objects:v93 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v75;
                  rank3 = 0x7FFFFFFFLL;
                  do
                  {
                    for (k = 0; k != v21; ++k)
                    {
                      if (*v75 != v22)
                      {
                        objc_enumerationMutation(v12);
                      }

                      rank2 = [*(*(&v74 + 1) + 8 * k) rank];
                      if (rank2 - 1 < rank3)
                      {
                        rank3 = rank2 - 1;
                      }
                    }

                    v21 = [v12 countByEnumeratingWithState:&v74 objects:v93 count:16];
                  }

                  while (v21);
                  if (v13)
                  {
                    goto LABEL_36;
                  }

LABEL_49:
                  rank3 = [v10 rank];
                }

                else
                {
                  rank3 = 0x7FFFFFFFLL;
                  if (!v13)
                  {
                    goto LABEL_49;
                  }
                }

LABEL_36:
                if (rank5 != rank3)
                {
                  rank4 = [v10 rank];
                  v27 = [v55 integerForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", rank4)}];
                  if (rank5 <= rank3)
                  {
                    v28 = v27 - 1;
                    do
                    {
                      v29 = [v55 integerForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", rank5)}];
                      if (v29 < v28)
                      {
                        v28 = v29;
                        rank4 = rank5;
                      }

                      ++rank5;
                    }

                    while (rank3 + 1 != rank5);
                  }

                  if (rank4 != [v10 rank])
                  {
                    [v55 decrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "index"))}];
                    [v10 setRank:rank4];
                    [v55 incrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "index"))}];
                  }
                }

                goto LABEL_44;
              }
            }

            else
            {
              rank5 = -2147483647;
              if (v13)
              {
                goto LABEL_26;
              }
            }

            rank5 = [v10 rank];
            goto LABEL_26;
          }

LABEL_44:
          ++v9;
        }

        while (v9 != v60);
        v30 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v82 objects:v95 count:16];
        v60 = v30;
      }

      while (v30);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obja = [(GVGraph *)selfCopy->graphPart nodes];
    v61 = [(NSOrderedSet *)obja countByEnumeratingWithState:&v70 objects:v92 count:16];
    if (!v61)
    {
      goto LABEL_93;
    }

    v59 = *v71;
    v54 = selfCopy;
LABEL_53:
    v31 = 0;
    while (1)
    {
      if (*v71 != v59)
      {
        objc_enumerationMutation(obja);
      }

      v32 = *(*(&v70 + 1) + 8 * v31);
      v33 = [(GVGraph *)selfCopy->graphPart inNodesOf:v32];
      v34 = [(GVGraph *)selfCopy->graphPart outNodesOf:v32];
      v35 = [v33 count];
      v36 = [v34 count];
      if (v35 == v36)
      {
        goto LABEL_86;
      }

      v37 = v36;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v38 = [v33 countByEnumeratingWithState:&v66 objects:v91 count:16];
      if (!v38)
      {
        break;
      }

      v39 = v38;
      v40 = *v67;
      rank10 = -2147483647;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v67 != v40)
          {
            objc_enumerationMutation(v33);
          }

          rank6 = [*(*(&v66 + 1) + 8 * m) rank];
          if (rank6 + 1 > rank10)
          {
            rank10 = rank6 + 1;
          }
        }

        v39 = [v33 countByEnumeratingWithState:&v66 objects:v91 count:16];
      }

      while (v39);
      if (!v35)
      {
        goto LABEL_89;
      }

LABEL_67:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v44 = [v34 countByEnumeratingWithState:&v62 objects:v90 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v63;
        rank8 = 0x7FFFFFFFLL;
        do
        {
          for (n = 0; n != v45; ++n)
          {
            if (*v63 != v46)
            {
              objc_enumerationMutation(v34);
            }

            rank7 = [*(*(&v62 + 1) + 8 * n) rank];
            if (rank7 - 1 < rank8)
            {
              rank8 = rank7 - 1;
            }
          }

          v45 = [v34 countByEnumeratingWithState:&v62 objects:v90 count:16];
        }

        while (v45);
        if (v37)
        {
          goto LABEL_77;
        }
      }

      else
      {
        rank8 = 0x7FFFFFFFLL;
        if (v37)
        {
          goto LABEL_77;
        }
      }

      rank8 = [v32 rank];
LABEL_77:
      selfCopy = v54;
      if (rank10 != rank8)
      {
        rank9 = [v32 rank];
        if (v35 >= v37)
        {
          v51 = rank9;
        }

        else
        {
          v51 = rank8;
        }

        if (v35 <= v37)
        {
          v52 = v51;
        }

        else
        {
          v52 = rank10;
        }

        if (v52 != [v32 rank])
        {
          [v55 decrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v32, "index"))}];
          [v32 setRank:v52];
          [v55 incrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v32, "index"))}];
        }
      }

LABEL_86:
      if (++v31 == v61)
      {
        v53 = [(NSOrderedSet *)obja countByEnumeratingWithState:&v70 objects:v92 count:16];
        v61 = v53;
        if (!v53)
        {
LABEL_93:

          return;
        }

        goto LABEL_53;
      }
    }

    rank10 = -2147483647;
    if (v35)
    {
      goto LABEL_67;
    }

LABEL_89:
    rank10 = [v32 rank];
    goto LABEL_67;
  }
}

- (void)buildRankObjectArray
{
  v53 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  nodes = [(GVGraph *)self->graphPart nodes];
  v4 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (!v4)
  {
    rank = -2147483647;
    rank2 = 0x7FFFFFFFLL;
LABEL_15:
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    nodes2 = [(GVGraph *)self->graphPart nodes];
    v12 = [(NSOrderedSet *)nodes2 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(nodes2);
          }

          [*(*(&v41 + 1) + 8 * i) setRank:{objc_msgSend(*(*(&v41 + 1) + 8 * i), "rank") - rank2}];
        }

        v13 = [(NSOrderedSet *)nodes2 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v13);
    }

    rank -= rank2;
    goto LABEL_23;
  }

  v5 = v4;
  v6 = *v46;
  rank = -2147483647;
  rank2 = 0x7FFFFFFFLL;
  do
  {
    for (j = 0; j != v5; ++j)
    {
      if (*v46 != v6)
      {
        objc_enumerationMutation(nodes);
      }

      v10 = *(*(&v45 + 1) + 8 * j);
      if ([v10 rank] > rank)
      {
        rank = [v10 rank];
      }

      if ([v10 rank] < rank2)
      {
        rank2 = [v10 rank];
      }
    }

    v5 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v45 objects:v52 count:16];
  }

  while (v5);
  if (rank2)
  {
    goto LABEL_15;
  }

LABEL_23:
  v16 = rank + 1;
  self->ranks = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v16];
  v17 = objc_opt_class();
  if (self->direction <= 1u)
  {
    v17 = objc_opt_class();
  }

  v18 = v17;
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      v20 = [[v18 alloc] initWithRank:k separation:self->graphPart graph:{self->separation.width, self->separation.height}];
      [(NSMutableArray *)self->ranks addObject:v20];
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  ranks = self->ranks;
  v22 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v38;
    do
    {
      v26 = 0;
      v27 = v24;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(ranks);
        }

        v24 = *(*(&v37 + 1) + 8 * v26);
        [v27 setNextRank:v24];
        [v24 setPrevRank:v27];
        ++v26;
        v27 = v24;
      }

      while (v23 != v26);
      v23 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  [v24 setNextRank:0];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  nodes3 = [(GVGraph *)self->graphPart nodes];
  v29 = [(NSOrderedSet *)nodes3 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v34;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(nodes3);
        }

        [-[NSMutableArray objectAtIndexedSubscript:](self->ranks objectAtIndexedSubscript:{objc_msgSend(*(*(&v33 + 1) + 8 * m), "rank")), "addNode:", *(*(&v33 + 1) + 8 * m)}];
      }

      v30 = [(NSOrderedSet *)nodes3 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v30);
  }
}

- (void)orderVertices
{
  v20 = *MEMORY[0x277D85DE8];
  [(GVLayout *)self initializeOrder];
  v3 = &v15 - ((8 * [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]+ 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count])
  {
    v4 = 0;
    do
    {
      *&v3[8 * v4] = [-[NSOrderedSet objectAtIndexedSubscript:](-[GVGraph nodes](self->graphPart "nodes")];
      ++v4;
    }

    while (v4 < [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]);
  }

  if ([(GVGraph *)self->graphPart minimizeEdgeCrossings]&& self->currentCrossings)
  {
    for (i = 0; i != 24; ++i)
    {
      [(GVLayout *)self weightedMedian:i];
      [(GVLayout *)self transpose];
    }

    [(GVLayout *)self commitOrder];
    crossings = [(GVLayout *)self crossings];
    if (crossings < self->currentCrossings)
    {
      self->currentCrossings = crossings;
      [(GVLayout *)self saveOrder];
    }

    if ([(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count])
    {
      v7 = 0;
      do
      {
        [-[NSOrderedSet objectAtIndexedSubscript:](-[GVGraph nodes](self->graphPart "nodes")];
        ++v7;
      }

      while (v7 < [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]);
    }

    for (j = 1; j != 25; ++j)
    {
      [(GVLayout *)self weightedMedian:j];
      [(GVLayout *)self transpose];
    }

    [(GVLayout *)self commitOrder];
    crossings2 = [(GVLayout *)self crossings];
    if (crossings2 >= self->currentCrossings)
    {
      [(GVLayout *)self restoreOrder];
    }

    else
    {
      self->currentCrossings = crossings2;
    }

    [(GVLayout *)self commitOrder];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  ranks = self->ranks;
  v11 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(ranks);
        }

        [*(*(&v15 + 1) + 8 * v14++) buildNodeIterators];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (unint64_t)crossings
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  ranks = self->ranks;
  v3 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(ranks);
      }

      v5 += [*(*(&v9 + 1) + 8 * i) inCrossings];
    }

    v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (void)saveOrder
{
  if (!self->savedOrder)
  {
    self->savedOrder = malloc_type_malloc(8 * [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count], 0x100004000313F17uLL);
  }

  if ([(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count])
  {
    v3 = 0;
    do
    {
      self->savedOrder[v3] = [-[NSOrderedSet objectAtIndexedSubscript:](-[GVGraph nodes](self->graphPart "nodes")];
      ++v3;
    }

    while (v3 < [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]);
  }
}

- (void)restoreOrder
{
  if (self->savedOrder && [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count])
  {
    v3 = 0;
    do
    {
      [-[NSOrderedSet objectAtIndexedSubscript:](-[GVGraph nodes](self->graphPart "nodes")];
      ++v3;
    }

    while (v3 < [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]);
  }
}

- (void)commitOrder
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  ranks = self->ranks;
  v3 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(ranks);
        }

        [*(*(&v7 + 1) + 8 * i) sortByIndex];
      }

      v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)initializeOrder
{
  v52 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->ranks count])
  {
    if ([(GVGraph *)self->graphPart minimizeEdgeCrossings])
    {
      v3 = &v31 - ((8 * [(NSMutableArray *)self->ranks count]+ 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v3, 8 * [(NSMutableArray *)self->ranks count]);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __27__GVLayout_initializeOrder__block_invoke;
      v47[3] = &__block_descriptor_40_e16_q16__0__GVNode_8l;
      v47[4] = v3;
      crossings = [(GVLayout *)self crossings];
      self->currentCrossings = crossings;
      if (crossings)
      {
        v5 = 0;
        while (1)
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          nodes = [(GVGraph *)self->graphPart nodes];
          v7 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v44;
            do
            {
              v10 = 0;
              do
              {
                if (*v44 != v9)
                {
                  objc_enumerationMutation(nodes);
                }

                [*(*(&v43 + 1) + 8 * v10++) setIndex:-1];
              }

              while (v8 != v10);
              v8 = [(NSOrderedSet *)nodes countByEnumeratingWithState:&v43 objects:v51 count:16];
            }

            while (v8);
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          sourceNodes = [(GVGraph *)self->graphPart sourceNodes];
          v12 = [(NSOrderedSet *)sourceNodes countByEnumeratingWithState:&v39 objects:v50 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v40;
            do
            {
              v15 = 0;
              do
              {
                if (*v40 != v14)
                {
                  objc_enumerationMutation(sourceNodes);
                }

                [(GVGraph *)self->graphPart traverseNodesFromStart:*(*(&v39 + 1) + 8 * v15++) direction:0 randomize:1 callback:v47];
              }

              while (v13 != v15);
              v13 = [(NSOrderedSet *)sourceNodes countByEnumeratingWithState:&v39 objects:v50 count:16];
            }

            while (v13);
          }

          [(GVLayout *)self commitOrder];
          crossings2 = [(GVLayout *)self crossings];
          if (crossings2 < self->currentCrossings)
          {
            v17 = crossings2;
            [(GVLayout *)self saveOrder];
            self->currentCrossings = v17;
            if (!v17)
            {
              break;
            }
          }

          if (++v5 == 10)
          {
            for (i = 0; ; ++i)
            {
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              nodes2 = [(GVGraph *)self->graphPart nodes];
              v20 = [(NSOrderedSet *)nodes2 countByEnumeratingWithState:&v35 objects:v49 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v36;
                do
                {
                  v23 = 0;
                  do
                  {
                    if (*v36 != v22)
                    {
                      objc_enumerationMutation(nodes2);
                    }

                    [*(*(&v35 + 1) + 8 * v23++) setIndex:-1];
                  }

                  while (v21 != v23);
                  v21 = [(NSOrderedSet *)nodes2 countByEnumeratingWithState:&v35 objects:v49 count:16];
                }

                while (v21);
              }

              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              sinkNodes = [(GVGraph *)self->graphPart sinkNodes];
              v25 = [(NSOrderedSet *)sinkNodes countByEnumeratingWithState:&v31 objects:v48 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v32;
                do
                {
                  v28 = 0;
                  do
                  {
                    if (*v32 != v27)
                    {
                      objc_enumerationMutation(sinkNodes);
                    }

                    [(GVGraph *)self->graphPart traverseNodesFromStart:*(*(&v31 + 1) + 8 * v28++) direction:1 randomize:1 callback:v47];
                  }

                  while (v26 != v28);
                  v26 = [(NSOrderedSet *)sinkNodes countByEnumeratingWithState:&v31 objects:v48 count:16];
                }

                while (v26);
              }

              [(GVLayout *)self commitOrder];
              crossings3 = [(GVLayout *)self crossings];
              if (crossings3 >= self->currentCrossings)
              {
                if (i > 8)
                {
                  return;
                }
              }

              else
              {
                v30 = crossings3;
                [(GVLayout *)self saveOrder];
                self->currentCrossings = v30;
                if (!v30 || i >= 9)
                {
                  return;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __27__GVLayout_initializeOrder__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 index] != -1)
  {
    return 1;
  }

  [a2 setIndex:{*(*(a1 + 32) + 8 * objc_msgSend(a2, "rank"))}];
  v5 = *(a1 + 32);
  v6 = [a2 rank];
  result = 0;
  ++*(v5 + 8 * v6);
  return result;
}

- (unint64_t)medianValueOf:(id)of withRespectTo:(id)to
{
  v4 = [to neighborsOfNode:of];
  v5 = [v4 count];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = v5 >> 1;
  if (v5)
  {
    v10 = [v4 objectAtIndexedSubscript:v7];

    return [v10 index];
  }

  else if (v5 == 2)
  {
    v8 = [objc_msgSend(v4 objectAtIndexedSubscript:{0), "index"}];
    return ([objc_msgSend(v4 objectAtIndexedSubscript:{1), "index"}] + v8) / 2;
  }

  else
  {
    v11 = [objc_msgSend(v4 objectAtIndexedSubscript:{v7 - 1), "index"}];
    v12 = v11 - [objc_msgSend(v4 objectAtIndexedSubscript:{0), "index"}];
    v13 = [objc_msgSend(v4 objectAtIndexedSubscript:{v6 - 1), "index"}];
    v14 = v13 - [objc_msgSend(v4 objectAtIndexedSubscript:{v7), "index"}];
    v15 = [objc_msgSend(v4 objectAtIndexedSubscript:{v7 - 1), "index"}] * v14;
    return (v15 + [objc_msgSend(v4 objectAtIndexedSubscript:{v7), "index"}] * v12) / (v14 + v12);
  }
}

- (void)medianSort:(id)sort withRespectTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  if ([sort count] >= 2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [sort countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(sort);
          }

          [*(*(&v16 + 1) + 8 * v10) setIndex:{-[GVLayout medianValueOf:withRespectTo:](self, "medianValueOf:withRespectTo:", *(*(&v16 + 1) + 8 * v10), to)}];
          ++v10;
        }

        while (v8 != v10);
        v8 = [sort countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v11 = [objc_msgSend(sort "nodes")];
    [v11 sortUsingComparator:&__block_literal_global_2];
    v12 = v11;
    v13 = -1;
    do
    {
      ++v13;
    }

    while ([objc_msgSend(v12 objectAtIndexedSubscript:{v13), "index"}] < 0);
    if ([sort count])
    {
      v14 = 0;
      do
      {
        if (([objc_msgSend(sort objectAtIndexedSubscript:{v14), "index"}] & 0x8000000000000000) == 0)
        {
          [objc_msgSend(sort "nodes")];
        }

        ++v14;
      }

      while (v14 < [sort count]);
    }

    if ([sort count])
    {
      v15 = 0;
      do
      {
        [objc_msgSend(sort objectAtIndexedSubscript:{v15), "setIndex:", v15}];
        ++v15;
      }

      while (v15 < [sort count]);
    }
  }
}

- (void)weightedMedian:(unint64_t)median
{
  v24 = *MEMORY[0x277D85DE8];
  if (median)
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    reverseObjectEnumerator = [(NSMutableArray *)self->ranks reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          -[GVLayout medianSort:withRespectTo:](self, "medianSort:withRespectTo:", [*(*(&v14 + 1) + 8 * i) prevRank], *(*(&v14 + 1) + 8 * i));
        }

        v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    ranks = self->ranks;
    v5 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(ranks);
          }

          -[GVLayout medianSort:withRespectTo:](self, "medianSort:withRespectTo:", [*(*(&v18 + 1) + 8 * j) nextRank], *(*(&v18 + 1) + 8 * j));
        }

        v6 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v6);
    }
  }
}

- (void)transpose
{
  v21 = *MEMORY[0x277D85DE8];
  do
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    ranks = self->ranks;
    v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v4)
    {
      break;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(ranks);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 count] != 1)
        {
          v10 = 0;
          do
          {
            inCrossings = [v9 inCrossings];
            v12 = [v9 outCrossings] + inCrossings;
            v13 = v10 + 1;
            [v9 exchangeNodeAtIndex:v10 withNodeAtIndex:v10 + 1];
            inCrossings2 = [v9 inCrossings];
            v15 = [v9 outCrossings] + inCrossings2;
            v6 = v12 > v15;
            if (v12 <= v15)
            {
              [v9 exchangeNodeAtIndex:v10 + 1 withNodeAtIndex:v10];
            }

            ++v10;
          }

          while (v13 < [v9 count] - 1);
        }
      }

      v5 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  while (v6);
}

- (void)assignCoordinates
{
  [(GVLayout *)self assignNodePriorities];
  [(GVLayout *)self assignNodeCoordinates];

  [(GVLayout *)self assignRankCoordinates];
}

- (void)assignNodePriorities
{
  v61 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [(GVGraph *)self->graphPart nodes];
  v33 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v33)
  {
    v31 = *v53;
    do
    {
      v2 = 0;
      do
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v52 + 1) + 8 * v2);
        v4 = [(GVGraph *)self->graphPart inNodesOf:v3];
        v5 = [(GVGraph *)self->graphPart outNodesOf:v3];
        v34 = v3;
        v35 = v2;
        if ([v3 isMemberOfClass:objc_opt_class()])
        {
          v50 = 0uLL;
          v51 = 0uLL;
          v48 = 0uLL;
          v49 = 0uLL;
          v6 = [v4 countByEnumeratingWithState:&v48 objects:v59 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = 0;
            v9 = *v49;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v49 != v9)
                {
                  objc_enumerationMutation(v4);
                }

                v11 = [*(*(&v48 + 1) + 8 * i) isMemberOfClass:objc_opt_class()];
                v12 = 2;
                if (v11)
                {
                  v12 = 8;
                }

                v8 += v12;
              }

              v7 = [v4 countByEnumeratingWithState:&v48 objects:v59 count:16];
            }

            while (v7);
          }

          else
          {
            v8 = 0;
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v18 = [v5 countByEnumeratingWithState:&v44 objects:v58 count:16];
          if (!v18)
          {
            goto LABEL_51;
          }

          v19 = v18;
          v20 = 0;
          v21 = *v45;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v45 != v21)
              {
                objc_enumerationMutation(v5);
              }

              v23 = [*(*(&v44 + 1) + 8 * j) isMemberOfClass:objc_opt_class()];
              v24 = 2;
              if (v23)
              {
                v24 = 8;
              }

              v20 += v24;
            }

            v19 = [v5 countByEnumeratingWithState:&v44 objects:v58 count:16];
          }

          while (v19);
        }

        else
        {
          v42 = 0uLL;
          v43 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          v13 = [v4 countByEnumeratingWithState:&v40 objects:v57 count:16];
          if (v13)
          {
            v14 = v13;
            v8 = 0;
            v15 = *v41;
            do
            {
              for (k = 0; k != v14; ++k)
              {
                if (*v41 != v15)
                {
                  objc_enumerationMutation(v4);
                }

                if ([*(*(&v40 + 1) + 8 * k) isMemberOfClass:objc_opt_class()])
                {
                  v17 = 2;
                }

                else
                {
                  v17 = 1;
                }

                v8 += v17;
              }

              v14 = [v4 countByEnumeratingWithState:&v40 objects:v57 count:16];
            }

            while (v14);
          }

          else
          {
            v8 = 0;
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v25 = [v5 countByEnumeratingWithState:&v36 objects:v56 count:16];
          if (!v25)
          {
LABEL_51:
            v20 = 0;
            goto LABEL_52;
          }

          v26 = v25;
          v20 = 0;
          v27 = *v37;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v37 != v27)
              {
                objc_enumerationMutation(v5);
              }

              if ([*(*(&v36 + 1) + 8 * m) isMemberOfClass:objc_opt_class()])
              {
                v29 = 2;
              }

              else
              {
                v29 = 1;
              }

              v20 += v29;
            }

            v26 = [v5 countByEnumeratingWithState:&v36 objects:v56 count:16];
          }

          while (v26);
        }

LABEL_52:
        [v34 setInPriority:v8];
        [v34 setOutPriority:v20];
        v2 = v35 + 1;
      }

      while (v35 + 1 != v33);
      v33 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v33);
  }
}

- (void)initializeNodeCoordinates
{
  v49 = *MEMORY[0x277D85DE8];
  if (self->direction > 1u)
  {
    v35 = 0uLL;
    v36 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    ranks = self->ranks;
    v17 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v33 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(ranks);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v22 = [v21 countByEnumeratingWithState:&v29 objects:v45 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v30;
            v25 = 0.0;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v30 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v27 = *(*(&v29 + 1) + 8 * j);
                [v27 setY:v25];
                [v27 h];
                v25 = v25 + v28 + self->separation.height;
              }

              v23 = [v21 countByEnumeratingWithState:&v29 objects:v45 count:16];
            }

            while (v23);
          }
        }

        v18 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v33 objects:v46 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v3 = self->ranks;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v42;
      do
      {
        for (k = 0; k != v5; ++k)
        {
          if (*v42 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v41 + 1) + 8 * k);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v38;
            v12 = 0.0;
            do
            {
              for (m = 0; m != v10; ++m)
              {
                if (*v38 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v14 = *(*(&v37 + 1) + 8 * m);
                [v14 setX:v12];
                [v14 w];
                v12 = v12 + v15 + self->separation.width;
              }

              v10 = [v8 countByEnumeratingWithState:&v37 objects:v47 count:16];
            }

            while (v10);
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v5);
    }
  }
}

- (void)medianPosition:(unint64_t)position
{
  v23 = *MEMORY[0x277D85DE8];
  if (position)
  {
    v15 = 0uLL;
    v16 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    reverseObjectEnumerator = [(NSMutableArray *)self->ranks reverseObjectEnumerator];
    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [objc_msgSend(*(*(&v13 + 1) + 8 * i) "prevRank")];
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    ranks = self->ranks;
    v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (j = 0; j != v5; ++j)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(ranks);
          }

          [objc_msgSend(*(*(&v17 + 1) + 8 * j) "nextRank")];
        }

        v5 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

- (void)packCut:(unint64_t)cut
{
  v59 = *MEMORY[0x277D85DE8];
  ranks = self->ranks;
  if (cut)
  {
    v22 = [-[NSMutableArray firstObject](ranks "firstObject")];
    if (v22)
    {
      nextRank = v22;
      do
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        reverseObjectEnumerator = [nextRank reverseObjectEnumerator];
        v25 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v58 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v52;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v52 != v27)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v29 = *(*(&v51 + 1) + 8 * i);
              v30 = [objc_msgSend(nextRank "prevRank")];
              if ([v30 count])
              {
                medianPt(v30);
                [nextRank centerNode:v29 at:?];
              }
            }

            v26 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v58 count:16];
          }

          while (v26);
        }

        nextRank = [nextRank nextRank];
      }

      while (nextRank);
    }

    v31 = [-[NSMutableArray firstObject](self->ranks "firstObject")];
    if (v31)
    {
      nextRank2 = v31;
      do
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v33 = [nextRank2 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v48;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v48 != v35)
              {
                objc_enumerationMutation(nextRank2);
              }

              v37 = *(*(&v47 + 1) + 8 * j);
              v38 = [objc_msgSend(nextRank2 "prevRank")];
              if ([v38 count])
              {
                medianPt(v38);
                [nextRank2 centerNode:v37 at:?];
              }
            }

            v34 = [nextRank2 countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v34);
        }

        nextRank2 = [nextRank2 nextRank];
      }

      while (nextRank2);
    }
  }

  else
  {
    v5 = [-[NSMutableArray lastObject](ranks "lastObject")];
    if (v5)
    {
      prevRank = v5;
      do
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        reverseObjectEnumerator2 = [prevRank reverseObjectEnumerator];
        v8 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v43 objects:v56 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v44;
          do
          {
            for (k = 0; k != v9; ++k)
            {
              if (*v44 != v10)
              {
                objc_enumerationMutation(reverseObjectEnumerator2);
              }

              v12 = *(*(&v43 + 1) + 8 * k);
              v13 = [objc_msgSend(prevRank "nextRank")];
              if ([v13 count])
              {
                medianPt(v13);
                [prevRank centerNode:v12 at:?];
              }
            }

            v9 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v43 objects:v56 count:16];
          }

          while (v9);
        }

        prevRank = [prevRank prevRank];
      }

      while (prevRank);
    }

    v14 = [-[NSMutableArray lastObject](self->ranks "lastObject")];
    if (v14)
    {
      prevRank2 = v14;
      do
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v16 = [prevRank2 countByEnumeratingWithState:&v39 objects:v55 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v40;
          do
          {
            for (m = 0; m != v17; ++m)
            {
              if (*v40 != v18)
              {
                objc_enumerationMutation(prevRank2);
              }

              v20 = *(*(&v39 + 1) + 8 * m);
              v21 = [objc_msgSend(prevRank2 "nextRank")];
              if ([v21 count])
              {
                medianPt(v21);
                [prevRank2 centerNode:v20 at:?];
              }
            }

            v17 = [prevRank2 countByEnumeratingWithState:&v39 objects:v55 count:16];
          }

          while (v17);
        }

        prevRank2 = [prevRank2 prevRank];
      }

      while (prevRank2);
    }
  }
}

- (void)straighten
{
  v69 = *MEMORY[0x277D85DE8];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  ranks = self->ranks;
  v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v61;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v61 != v7)
        {
          objc_enumerationMutation(ranks);
        }

        v10 = *(*(&v60 + 1) + 8 * i);
        [v10 breadth];
        if (v11 >= v8)
        {
          v8 = v11;
          v6 = v10;
        }
      }

      v5 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] set];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __22__GVLayout_straighten__block_invoke;
  v59[3] = &unk_27969D7B0;
  v59[4] = self;
  v13 = [(NSSet *)v12 objectsPassingTest:v59];
  v14 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] set];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __22__GVLayout_straighten__block_invoke_2;
  v58[3] = &unk_27969D7B0;
  v58[4] = self;
  v15 = [(NSSet *)v14 objectsPassingTest:v58];
  nextRank = [v6 nextRank];
  if (nextRank)
  {
    nextRank2 = nextRank;
    do
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v18 = [nextRank2 countByEnumeratingWithState:&v54 objects:v67 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v55;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v55 != v20)
            {
              objc_enumerationMutation(nextRank2);
            }

            v22 = *(*(&v54 + 1) + 8 * j);
            if ([(NSSet *)v13 containsObject:v22])
            {
              [objc_msgSend(-[GVGraph inNodesOf:](self->graphPart inNodesOf:{v22), "objectAtIndexedSubscript:", 0), "center"}];
              [nextRank2 centerNode:v22 at:?];
            }
          }

          v19 = [nextRank2 countByEnumeratingWithState:&v54 objects:v67 count:16];
        }

        while (v19);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      reverseObjectEnumerator = [nextRank2 reverseObjectEnumerator];
      v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v66 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v51;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v51 != v26)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v28 = *(*(&v50 + 1) + 8 * k);
            if ([(NSSet *)v13 containsObject:v28])
            {
              [objc_msgSend(-[GVGraph inNodesOf:](self->graphPart inNodesOf:{v28), "objectAtIndexedSubscript:", 0), "center"}];
              [nextRank2 centerNode:v28 at:?];
            }
          }

          v25 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v66 count:16];
        }

        while (v25);
      }

      nextRank2 = [nextRank2 nextRank];
    }

    while (nextRank2);
  }

  prevRank = [v6 prevRank];
  if (prevRank)
  {
    prevRank2 = prevRank;
    do
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v31 = [prevRank2 countByEnumeratingWithState:&v46 objects:v65 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v47;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v47 != v33)
            {
              objc_enumerationMutation(prevRank2);
            }

            v35 = *(*(&v46 + 1) + 8 * m);
            if ([(NSSet *)v15 containsObject:v35])
            {
              [objc_msgSend(-[GVGraph outNodesOf:](self->graphPart outNodesOf:{v35), "objectAtIndexedSubscript:", 0), "center"}];
              [prevRank2 centerNode:v35 at:?];
            }
          }

          v32 = [prevRank2 countByEnumeratingWithState:&v46 objects:v65 count:16];
        }

        while (v32);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      reverseObjectEnumerator2 = [prevRank2 reverseObjectEnumerator];
      v37 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v42 objects:v64 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v43;
        do
        {
          for (n = 0; n != v38; ++n)
          {
            if (*v43 != v39)
            {
              objc_enumerationMutation(reverseObjectEnumerator2);
            }

            v41 = *(*(&v42 + 1) + 8 * n);
            if ([(NSSet *)v15 containsObject:v41])
            {
              [objc_msgSend(-[GVGraph outNodesOf:](self->graphPart outNodesOf:{v41), "objectAtIndexedSubscript:", 0), "center"}];
              [prevRank2 centerNode:v41 at:?];
            }
          }

          v38 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v42 objects:v64 count:16];
        }

        while (v38);
      }

      prevRank2 = [prevRank2 prevRank];
    }

    while (prevRank2);
  }
}

- (void)assignNodeCoordinates
{
  [(GVLayout *)self initializeNodeCoordinates];
  for (i = 0; i != 8; ++i)
  {
    [(GVLayout *)self medianPosition:i];
    [(GVLayout *)self packCut:i];
    [(GVLayout *)self straighten];
  }
}

- (void)assignRankCoordinates
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = self->direction - 1;
  ranks = self->ranks;
  if (v3 > 1)
  {
    reverseObjectEnumerator = [(NSMutableArray *)ranks reverseObjectEnumerator];
  }

  else
  {
    reverseObjectEnumerator = [(NSMutableArray *)ranks objectEnumerator];
  }

  v6 = reverseObjectEnumerator;
  if (self->direction > 1u)
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      v22 = 0.0;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v6);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          [v24 length];
          v26 = v25;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v27 = [v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v32;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v32 != v29)
                {
                  objc_enumerationMutation(v24);
                }

                [*(*(&v31 + 1) + 8 * j) setCx:v22 + v26 * 0.5];
              }

              v28 = [v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
            }

            while (v28);
          }

          v22 = v22 + v26 + self->separation.width;
        }

        v20 = [v6 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v45 = 0uLL;
    v46 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
      v10 = 0.0;
      do
      {
        for (k = 0; k != v8; ++k)
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v43 + 1) + 8 * k);
          [v12 length];
          v14 = v13;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v15 = [v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v40;
            do
            {
              for (m = 0; m != v16; ++m)
              {
                if (*v40 != v17)
                {
                  objc_enumerationMutation(v12);
                }

                [*(*(&v39 + 1) + 8 * m) setCy:v10 + v14 * 0.5];
              }

              v16 = [v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
            }

            while (v16);
          }

          v10 = v10 + v14 + self->separation.height;
        }

        v8 = [v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v8);
    }
  }
}

- (void)drawAllNodes:(id)nodes of:(id)of
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  nodes = [of nodes];
  v6 = [nodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(nodes);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (([v10 isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          [nodes drawNode:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [nodes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)drawAllGroups:(id)groups of:(id)of
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [of groups];
  v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v9 = *MEMORY[0x277CBF398];
    v10 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v12 = *(MEMORY[0x277CBF398] + 24);
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        v15 = [objc_msgSend(of "groups")];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
        height = v12;
        width = v11;
        y = v10;
        x = v9;
        if (v16)
        {
          v21 = v16;
          v22 = *v31;
          height = v12;
          width = v11;
          y = v10;
          x = v9;
          do
          {
            v23 = 0;
            do
            {
              if (*v31 != v22)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v30 + 1) + 8 * v23) frame];
              v46.origin.x = v24;
              v46.origin.y = v25;
              v46.size.width = v26;
              v46.size.height = v27;
              v41.origin.x = x;
              v41.origin.y = y;
              v41.size.width = width;
              v41.size.height = height;
              v42 = CGRectUnion(v41, v46);
              x = v42.origin.x;
              y = v42.origin.y;
              width = v42.size.width;
              height = v42.size.height;
              ++v23;
            }

            while (v21 != v23);
            v21 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v21);
        }

        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        if (!CGRectIsEmpty(v43))
        {
          v44.origin.x = x;
          v44.origin.y = y;
          v44.size.width = width;
          v44.size.height = height;
          v45 = CGRectInset(v44, self->separation.width / -3.0, self->separation.height / -3.0);
          [groups drawGroup:v14 frame:{v45.origin.x, v45.origin.y, v45.size.width, v45.size.height}];
        }

        ++v13;
      }

      while (v13 != v7);
      v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }
}

- (void)drawAllEdges:(id)edges of:(id)of
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  ofCopy = of;
  obj = [of edges];
  v7 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    v43 = *v49;
    edgesCopy = edges;
    do
    {
      v10 = 0;
      v45 = v8;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        [(GVEdge *)v11 from];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          from = [(GVEdge *)v11 from];
          v13 = [(GVEdge *)v11 to];
          [v6 removeAllObjects];
          if (objc_opt_respondsToSelector())
          {
            direction = [edges direction];
          }

          else
          {
            direction = 0;
          }

          v15 = 0.0;
          if (![(GVEdge *)v11 redundancyMax])
          {
            goto LABEL_14;
          }

          if (direction - 2 < 2)
          {
            redundancy = [(GVEdge *)v11 redundancy];
            v17 = self->separation.height * 0.25 * (redundancy / [(GVEdge *)v11 redundancyMax]+ -0.5);
          }

          else
          {
            if (direction <= 1)
            {
              redundancy2 = [(GVEdge *)v11 redundancy];
              v15 = self->separation.width * 0.25 * (redundancy2 / [(GVEdge *)v11 redundancyMax]+ -0.5);
            }

LABEL_14:
            v17 = 0.0;
          }

          [(GVNode *)from center];
          v20 = v15 + v19;
          [(GVNode *)from center];
          v52 = v20;
          v53 = v17 + v21;
          [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithBytes:objCType:", &v52, "{CGPoint=dd}")}];
          objc_opt_class();
          while ((objc_opt_isKindOfClass() & 1) != 0)
          {
            v22 = 0.0;
            if (direction - 2 < 2)
            {
              [(GVNode *)v13 w];
              v29 = v28 * 0.5;
              [(GVNode *)from cx];
              v31 = v30;
              [(GVNode *)v13 cx];
              if (v31 > v32)
              {
                v27 = -v29;
              }

              else
              {
                v27 = v29;
              }
            }

            else
            {
              if (direction <= 1)
              {
                [(GVNode *)v13 h];
                v22 = v23 * 0.5;
                [(GVNode *)from cy];
                v25 = v24;
                [(GVNode *)v13 cy];
                if (v25 > v26)
                {
                  v22 = -v22;
                }
              }

              v27 = 0.0;
            }

            [(GVNode *)v13 cx];
            v34 = v15 + v33 - v27;
            [(GVNode *)v13 cy];
            v52 = v34;
            v53 = v17 + v35 - v22;
            [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithBytes:objCType:", &v52, "{CGPoint=dd}")}];
            [(GVNode *)v13 cx];
            v37 = v27 + v15 + v36;
            [(GVNode *)v13 cy];
            v52 = v37;
            v53 = v22 + v17 + v38;
            [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithBytes:objCType:", &v52, "{CGPoint=dd}")}];
            v13 = [objc_msgSend(ofCopy outNodesOf:{v13), "objectAtIndexedSubscript:", 0}];
            v11 = [[GVEdge alloc] initWithFromNode:from to:v13 reversed:[(GVEdge *)v11 reversed]];
            objc_opt_class();
          }

          [(GVNode *)v13 center];
          v40 = v15 + v39;
          [(GVNode *)v13 center];
          v52 = v40;
          v53 = v17 + v41;
          [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithBytes:objCType:", &v52, "{CGPoint=dd}")}];
          edges = edgesCopy;
          [edgesCopy drawEdge:v11 withPath:v6];
          v9 = v43;
          v8 = v45;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }
}

- (void)render:(id)render
{
  v18 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    drawEdgesFirst = [render drawEdgesFirst];
  }

  else
  {
    drawEdgesFirst = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [(GVLayout *)self drawAllGroups:render of:self->graphOrig];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  graphParts = [(GVLayout *)self graphParts];
  v7 = [(NSMutableArray *)graphParts countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(graphParts);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if (drawEdgesFirst)
        {
          [(GVLayout *)self drawAllEdges:render of:v11];
          [(GVLayout *)self drawAllNodes:render of:v11];
        }

        else
        {
          [(GVLayout *)self drawAllNodes:render of:v11];
          [(GVLayout *)self drawAllEdges:render of:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [(NSMutableArray *)graphParts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (CGSize)separation
{
  width = self->separation.width;
  height = self->separation.height;
  result.height = height;
  result.width = width;
  return result;
}

@end