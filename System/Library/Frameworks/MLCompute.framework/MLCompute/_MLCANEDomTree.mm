@interface _MLCANEDomTree
+ (id)computeDominationForGraph:(id)graph;
+ (id)computeDominationForGraphImpl:(id)impl;
+ (void)computeDominationForLayer:(id)layer dominationTree:(id)tree;
- (BOOL)doesLayer:(id)layer dominates:(id)dominates;
- (BOOL)doesLayer:(id)layer dominatesSubgraph:(id)subgraph;
- (BOOL)doesSubgraph:(id)subgraph dominatesLayer:(id)layer;
- (BOOL)doesSubgraph:(id)subgraph dominatesSubgraph:(id)dominatesSubgraph;
- (id)getDominanceFrontierForSubgraph:(id)subgraph;
- (id)getPostDominanceFrontierForSubgraph:(id)subgraph;
- (id)initDomTree:(id)tree;
@end

@implementation _MLCANEDomTree

+ (id)computeDominationForGraph:(id)graph
{
  v4 = [_MLCANEDomTree computeDominationForGraphImpl:graph];
  v5 = [[self alloc] initDomTree:v4];

  return v5;
}

- (BOOL)doesLayer:(id)layer dominates:(id)dominates
{
  layerCopy = layer;
  if (layerCopy == dominates)
  {
    v11 = 1;
  }

  else
  {
    dominatesCopy = dominates;
    dominationTree = [(_MLCANEDomTree *)self dominationTree];
    v9 = [dominatesCopy key];

    v10 = [dominationTree objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 containsObject:layerCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)doesLayer:(id)layer dominatesSubgraph:(id)subgraph
{
  v19 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subgraphCopy = subgraph;
  v8 = [subgraphCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(subgraphCopy);
        }

        if ([(_MLCANEDomTree *)self doesLayer:layerCopy dominates:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [subgraphCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)doesSubgraph:(id)subgraph dominatesLayer:(id)layer
{
  v20 = *MEMORY[0x277D85DE8];
  subgraphCopy = subgraph;
  layerCopy = layer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = subgraphCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([(_MLCANEDomTree *)self doesLayer:*(*(&v15 + 1) + 8 * i) dominates:layerCopy, v15])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)doesSubgraph:(id)subgraph dominatesSubgraph:(id)dominatesSubgraph
{
  v45 = *MEMORY[0x277D85DE8];
  subgraphCopy = subgraph;
  dominatesSubgraphCopy = dominatesSubgraph;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = subgraphCopy;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = *v39;
    v25 = *v39;
    do
    {
      v11 = 0;
      v26 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        resultTensors = [v12 resultTensors];
        v28 = [resultTensors countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v28)
        {
          v14 = *v35;
          v29 = resultTensors;
          v27 = *v35;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v35 != v14)
              {
                objc_enumerationMutation(resultTensors);
              }

              v16 = *(*(&v34 + 1) + 8 * i);
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              childLayers = [v16 childLayers];
              v18 = [childLayers countByEnumeratingWithState:&v30 objects:v42 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v31;
                while (2)
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v31 != v20)
                    {
                      objc_enumerationMutation(childLayers);
                    }

                    v22 = *(*(&v30 + 1) + 8 * j);
                    if (([v8 containsObject:v22] & 1) == 0 && -[_MLCANEDomTree doesLayer:dominatesSubgraph:](self, "doesLayer:dominatesSubgraph:", v22, dominatesSubgraphCopy))
                    {

                      v23 = 1;
                      goto LABEL_27;
                    }
                  }

                  v19 = [childLayers countByEnumeratingWithState:&v30 objects:v42 count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }
              }

              resultTensors = v29;
              v14 = v27;
            }

            v10 = v25;
            v28 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v28);
        }

        ++v11;
      }

      while (v11 != v26);
      v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
      v23 = 0;
    }

    while (v9);
  }

  else
  {
    v23 = 0;
  }

LABEL_27:

  return v23;
}

- (id)getDominanceFrontierForSubgraph:(id)subgraph
{
  v39 = *MEMORY[0x277D85DE8];
  subgraphCopy = subgraph;
  v4 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = subgraphCopy;
  v21 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v21)
  {
    v20 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v5);
        }

        v22 = v6;
        v7 = *(*(&v32 + 1) + 8 * v6);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = [v7 sourceTensors];
        v8 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v29;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v28 + 1) + 8 * i);
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              parentLayers = [v12 parentLayers];
              v14 = [parentLayers countByEnumeratingWithState:&v24 objects:v36 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v25;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v25 != v16)
                    {
                      objc_enumerationMutation(parentLayers);
                    }

                    v18 = *(*(&v24 + 1) + 8 * j);
                    if (([v5 containsObject:v18] & 1) == 0)
                    {
                      [v4 addObject:v18];
                    }
                  }

                  v15 = [parentLayers countByEnumeratingWithState:&v24 objects:v36 count:16];
                }

                while (v15);
              }
            }

            v9 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v9);
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v21);
  }

  return v4;
}

- (id)getPostDominanceFrontierForSubgraph:(id)subgraph
{
  v39 = *MEMORY[0x277D85DE8];
  subgraphCopy = subgraph;
  v4 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = subgraphCopy;
  v21 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v21)
  {
    v20 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v5);
        }

        v22 = v6;
        v7 = *(*(&v32 + 1) + 8 * v6);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = [v7 resultTensors];
        v8 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v29;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v28 + 1) + 8 * i);
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              childLayers = [v12 childLayers];
              v14 = [childLayers countByEnumeratingWithState:&v24 objects:v36 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v25;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v25 != v16)
                    {
                      objc_enumerationMutation(childLayers);
                    }

                    v18 = *(*(&v24 + 1) + 8 * j);
                    if (([v5 containsObject:v18] & 1) == 0)
                    {
                      [v4 addObject:v18];
                    }
                  }

                  v15 = [childLayers countByEnumeratingWithState:&v24 objects:v36 count:16];
                }

                while (v15);
              }
            }

            v9 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v9);
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v21);
  }

  return v4;
}

+ (void)computeDominationForLayer:(id)layer dominationTree:(id)tree
{
  v38 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  treeCopy = tree;
  v8 = [layerCopy key];
  v9 = [treeCopy objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    sourceTensors = [layerCopy sourceTensors];
    v25 = [sourceTensors countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v25)
    {
      v12 = *v33;
      v27 = sourceTensors;
      v24 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(sourceTensors);
          }

          v26 = v13;
          v14 = *(*(&v32 + 1) + 8 * v13);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          parentLayers = [v14 parentLayers];
          v16 = [parentLayers countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v29;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(parentLayers);
                }

                v20 = *(*(&v28 + 1) + 8 * i);
                [v10 addObject:v20];
                [self computeDominationForLayer:v20 dominationTree:treeCopy];
                v21 = [v20 key];
                v22 = [treeCopy objectForKeyedSubscript:v21];

                if (!v22)
                {

                  v23 = v27;
                  goto LABEL_19;
                }

                [v10 unionSet:v22];
              }

              v17 = [parentLayers countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v13 = v26 + 1;
          sourceTensors = v27;
          v12 = v24;
        }

        while (v26 + 1 != v25);
        v25 = [v27 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v25);
    }

    v23 = [layerCopy key];
    [treeCopy setObject:v10 forKeyedSubscript:v23];
LABEL_19:
  }
}

+ (id)computeDominationForGraphImpl:(id)impl
{
  v18 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = implCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isLastLayer])
        {
          [self computeDominationForLayer:v11 dominationTree:v5];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)initDomTree:(id)tree
{
  treeCopy = tree;
  v9.receiver = self;
  v9.super_class = _MLCANEDomTree;
  v6 = [(_MLCANEDomTree *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dominationTree, tree);
  }

  return v7;
}

@end