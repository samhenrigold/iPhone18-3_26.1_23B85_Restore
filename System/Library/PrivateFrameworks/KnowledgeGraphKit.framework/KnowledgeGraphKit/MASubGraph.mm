@interface MASubGraph
+ (id)subGraphIntersectionsWithSubGraphs:(id)graphs;
+ (id)subGraphWithGraph:(id)graph;
- (MASubGraph)init;
- (id)allEdges;
- (id)allNamedEdges;
- (id)allNamedNodes;
- (id)allNodes;
- (id)description;
- (id)edgeForIdentifier:(unint64_t)identifier;
- (id)edgesForLabel:(id)label;
- (id)edgesForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgesForName:(id)name;
- (id)edgesLabels;
- (id)edgesNames;
- (id)graphRepresentation;
- (id)nodeForIdentifier:(unint64_t)identifier;
- (id)nodesForLabel:(id)label;
- (id)nodesForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)nodesForName:(id)name;
- (id)nodesForName:(id)name fromNode:(id)node;
- (id)nodesForNames:(id)names;
- (id)nodesLabels;
- (id)nodesNames;
- (unint64_t)edgesCountForLabel:(id)label;
- (unint64_t)edgesCountForName:(id)name;
- (unint64_t)nodesCountForLabel:(id)label;
- (unint64_t)nodesCountForName:(id)name;
- (unint64_t)nodesCountForName:(id)name fromNode:(id)node;
- (void)_addEdge:(id)edge withName:(id)name;
- (void)_addNode:(id)node withName:(id)name;
- (void)_addNode:(id)node withName:(id)name forKeyNode:(id)keyNode;
- (void)addEdges:(id)edges withName:(id)name;
- (void)addNodes:(id)nodes withName:(id)name;
- (void)enumerateEdgesByNameUsingBlock:(id)block;
- (void)enumerateEdgesWithBlock:(id)block;
- (void)enumerateEdgesWithLabel:(id)label domain:(unsigned __int16)domain usingBlock:(id)block;
- (void)enumerateEdgesWithName:(id)name usingBlock:(id)block;
- (void)enumerateNodesByNameUsingBlock:(id)block;
- (void)enumerateNodesWithBlock:(id)block;
- (void)enumerateNodesWithLabel:(id)label domain:(unsigned __int16)domain usingBlock:(id)block;
- (void)enumerateNodesWithName:(id)name fromNode:(id)node usingBlock:(id)block;
- (void)enumerateNodesWithName:(id)name usingBlock:(id)block;
- (void)mergeWithSubGraph:(id)graph;
@end

@implementation MASubGraph

- (id)graphRepresentation
{
  v74 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[MAGraph graph];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  selfCopy = self;
  obj = [(NSMutableDictionary *)self->_nodesByName objectEnumerator];
  v50 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v50)
  {
    v48 = *v67;
    do
    {
      v5 = 0;
      do
      {
        if (*v67 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v5;
        v6 = *(*(&v66 + 1) + 8 * v5);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v62 objects:v72 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v63;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v63 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v62 + 1) + 8 * i);
              label = [v12 label];
              domain = [v12 domain];
              propertyDictionary = [v12 propertyDictionary];
              LODWORD(v16) = 1.0;
              v17 = [v4 addUniqueNodeWithLabel:label domain:domain weight:propertyDictionary properties:0 didCreate:v16];

              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
              [dictionary setObject:v17 forKey:v18];
            }

            v9 = [v7 countByEnumeratingWithState:&v62 objects:v72 count:16];
          }

          while (v9);
        }

        v5 = v52 + 1;
      }

      while (v52 + 1 != v50);
      v50 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v50);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  objectEnumerator = [(NSMutableDictionary *)selfCopy->_edgesByName objectEnumerator];
  obja = [objectEnumerator countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (obja)
  {
    v20 = *v59;
    v45 = *v59;
    v51 = objectEnumerator;
    do
    {
      v21 = 0;
      do
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v49 = v21;
        v22 = *(*(&v58 + 1) + 8 * v21);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v54 objects:v70 count:16];
        if (v24)
        {
          v25 = v24;
          v53 = *v55;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v55 != v53)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v54 + 1) + 8 * j);
              v28 = MEMORY[0x277CCABB0];
              sourceNode = [v27 sourceNode];
              v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(sourceNode, "identifier")}];
              v31 = [dictionary objectForKey:v30];

              v32 = MEMORY[0x277CCABB0];
              targetNode = [v27 targetNode];
              v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(targetNode, "identifier")}];
              v35 = [dictionary objectForKey:v34];

              if (v31)
              {
                v36 = v35 == 0;
              }

              else
              {
                v36 = 1;
              }

              if (v36)
              {
                [MEMORY[0x277CBEAD8] raise:@"MASubGraphInvalidGraph" format:{@"Graph invalid for edge %@", v27}];

                v42 = 0;
                goto LABEL_35;
              }

              label2 = [v27 label];
              domain2 = [v27 domain];
              propertyDictionary2 = [v27 propertyDictionary];
              LODWORD(v40) = 1.0;
              v41 = [v4 addUniqueEdgeWithLabel:label2 sourceNode:v31 targetNode:v35 domain:domain2 weight:propertyDictionary2 properties:v40];
            }

            v25 = [v23 countByEnumeratingWithState:&v54 objects:v70 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v21 = v49 + 1;
        v20 = v45;
        objectEnumerator = v51;
      }

      while ((v49 + 1) != obja);
      obja = [v51 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (obja);
  }

  v42 = v4;
LABEL_35:

  return v42;
}

- (void)enumerateEdgesWithBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v27 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_edgesByLabel objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = 0x277CBE000uLL;
    v18 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = v9;
        v12 = [*(v9 + 2928) orderedSetWithOrderedSet:*(*(&v23 + 1) + 8 * i)];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v20;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(v13);
              }

              blockCopy[2](blockCopy, *(*(&v19 + 1) + 8 * j), &v27);
              if (v27)
              {

                goto LABEL_18;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v9 = v11;
        v8 = v18;
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

LABEL_18:
}

- (void)enumerateEdgesWithName:(id)name usingBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v19 = 0;
  v7 = MEMORY[0x277CBEB70];
  v8 = [(NSMutableDictionary *)self->_edgesByName objectForKey:name];
  v9 = [v7 orderedSetWithOrderedSet:v8];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v16 != v13)
      {
        objc_enumerationMutation(v10);
      }

      blockCopy[2](blockCopy, *(*(&v15 + 1) + 8 * v14), &v19);
      if (v19)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateEdgesWithLabel:(id)label domain:(unsigned __int16)domain usingBlock:(id)block
{
  domainCopy = domain;
  v24 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v22 = 0;
  v9 = MEMORY[0x277CBEB70];
  v10 = [(NSMutableDictionary *)self->_edgesByLabel objectForKey:label];
  v11 = [v9 orderedSetWithOrderedSet:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v19 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v18 + 1) + 8 * v16);
      if (!domainCopy || [*(*(&v18 + 1) + 8 * v16) domain] == domainCopy)
      {
        blockCopy[2](blockCopy, v17, &v22);
        if (v22)
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateEdgesByNameUsingBlock:(id)block
{
  blockCopy = block;
  edgesByName = self->_edgesByName;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__MASubGraph_enumerateEdgesByNameUsingBlock___block_invoke;
  v7[3] = &unk_2797FF1A8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)edgesByName enumerateKeysAndObjectsUsingBlock:v7];
}

void __45__MASubGraph_enumerateEdgesByNameUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 set];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (id)allNamedEdges
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  edgesNames = [(MASubGraph *)selfCopy edgesNames];
  v5 = [edgesNames countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(edgesNames);
        }

        v8 = [(NSMutableDictionary *)selfCopy->_edgesByName objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        [orderedSet unionOrderedSet:v8];
      }

      v5 = [edgesNames countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [orderedSet set];

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)allEdges
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CBEB40];
  allValues = [(NSMutableDictionary *)selfCopy->_edgesByIdentifier allValues];
  v5 = [v3 orderedSetWithArray:allValues];

  v6 = [v5 set];

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)edgesNames
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_edgesByName keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 hasPrefix:@"#"] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v10;
}

- (id)edgesLabels
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_edgesByLabel allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (unint64_t)edgesCountForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_edgesByName objectForKey:name];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)edgesCountForLabel:(id)label
{
  v3 = [(NSMutableDictionary *)self->_edgesByLabel objectForKey:label];
  v4 = [v3 count];

  return v4;
}

- (id)edgesForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  domainCopy = domain;
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v9 = [(NSMutableDictionary *)self->_edgesByLabel objectForKey:label];
  v10 = [MEMORY[0x277CBEB58] set];
  if (propertiesCopy)
  {
    v11 = [propertiesCopy count] == 0;
  }

  else
  {
    v11 = 1;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if ((!domainCopy || [*(*(&v20 + 1) + 8 * i) domain] == domainCopy) && (v11 || objc_msgSend(v17, "hasProperties:", propertiesCopy)))
        {
          [v10 addObject:{v17, v20}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x277CBEB98] setWithSet:v10];

  return v18;
}

- (id)edgesForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_edgesByName objectForKey:name];
  v4 = [v3 set];

  return v4;
}

- (id)edgesForLabel:(id)label
{
  v3 = [(NSMutableDictionary *)self->_edgesByLabel objectForKey:label];
  v4 = [v3 set];

  return v4;
}

- (id)edgeForIdentifier:(unint64_t)identifier
{
  edgesByIdentifier = self->_edgesByIdentifier;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v5 = [(NSMutableDictionary *)edgesByIdentifier objectForKey:v4];

  return v5;
}

- (void)_addEdge:(id)edge withName:(id)name
{
  edgeCopy = edge;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  edgesByIdentifier = selfCopy->_edgesByIdentifier;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(edgeCopy, "identifier")}];
  [(NSMutableDictionary *)edgesByIdentifier setObject:edgeCopy forKey:v9];

  edgesByLabel = selfCopy->_edgesByLabel;
  label = [edgeCopy label];
  orderedSet = [(NSMutableDictionary *)edgesByLabel objectForKey:label];

  if (!orderedSet)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v13 = selfCopy->_edgesByLabel;
    label2 = [edgeCopy label];
    [(NSMutableDictionary *)v13 setObject:orderedSet forKey:label2];
  }

  [orderedSet addObject:edgeCopy];
  orderedSet2 = [(NSMutableDictionary *)selfCopy->_edgesByName objectForKey:nameCopy];
  if (!orderedSet2)
  {
    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    [(NSMutableDictionary *)selfCopy->_edgesByName setObject:orderedSet2 forKey:nameCopy];
  }

  [orderedSet2 addObject:edgeCopy];

  objc_sync_exit(selfCopy);
}

- (void)addEdges:(id)edges withName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  edgesCopy = edges;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = edgesCopy;
  v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(MASubGraph *)selfCopy _addEdge:*(*(&v13 + 1) + 8 * v12++) withName:nameCopy, v13];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
}

- (void)enumerateNodesWithName:(id)name fromNode:(id)node usingBlock:(id)block
{
  if (block)
  {
    nodesByNameGroupByNodes = self->_nodesByNameGroupByNodes;
    blockCopy = block;
    nodeCopy = node;
    v11 = [(NSMutableDictionary *)nodesByNameGroupByNodes objectForKey:name];
    v10 = [v11 objectForKey:nodeCopy];

    [v10 enumerateObjectsUsingBlock:blockCopy];
  }
}

- (void)enumerateNodesWithBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v27 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_nodesByLabel objectEnumerator];
    v6 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      v9 = 0x277CBE000uLL;
      v18 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v11 = v9;
          v12 = [*(v9 + 2928) orderedSetWithOrderedSet:*(*(&v23 + 1) + 8 * i)];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v20;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v20 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                blockCopy[2](blockCopy, *(*(&v19 + 1) + 8 * j), &v27);
                if (v27)
                {

                  goto LABEL_19;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v11;
          v8 = v18;
        }

        v7 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v7);
    }

LABEL_19:
  }
}

- (void)enumerateNodesWithName:(id)name usingBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v19 = 0;
    v7 = MEMORY[0x277CBEB70];
    v8 = [(NSMutableDictionary *)self->_nodesByName objectForKey:name];
    v9 = [v7 orderedSetWithOrderedSet:v8];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        blockCopy[2](blockCopy, *(*(&v15 + 1) + 8 * v14), &v19);
        if (v19)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)enumerateNodesWithLabel:(id)label domain:(unsigned __int16)domain usingBlock:(id)block
{
  domainCopy = domain;
  v24 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v22 = 0;
    v9 = MEMORY[0x277CBEB70];
    v10 = [(NSMutableDictionary *)self->_nodesByLabel objectForKey:label];
    v11 = [v9 orderedSetWithOrderedSet:v10];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (!domainCopy || [*(*(&v18 + 1) + 8 * v16) domain] == domainCopy)
        {
          blockCopy[2](blockCopy, v17, &v22);
          if (v22)
          {
            break;
          }
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)enumerateNodesByNameUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    nodesByName = self->_nodesByName;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__MASubGraph_enumerateNodesByNameUsingBlock___block_invoke;
    v7[3] = &unk_2797FF1A8;
    v8 = blockCopy;
    [(NSMutableDictionary *)nodesByName enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __45__MASubGraph_enumerateNodesByNameUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 set];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (id)allNamedNodes
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  nodesNames = [(MASubGraph *)selfCopy nodesNames];
  v5 = [nodesNames countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(nodesNames);
        }

        v8 = [(NSMutableDictionary *)selfCopy->_nodesByName objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        [orderedSet unionOrderedSet:v8];
      }

      v5 = [nodesNames countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [orderedSet set];

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)allNodes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CBEB40];
  allValues = [(NSMutableDictionary *)selfCopy->_nodesByIdentifier allValues];
  v5 = [v3 orderedSetWithArray:allValues];

  v6 = [v5 set];

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)nodesNames
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_nodesByName keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 hasPrefix:@"#"] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v10;
}

- (id)nodesLabels
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_nodesByLabel allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (id)nodesForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  domainCopy = domain;
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v9 = [(NSMutableDictionary *)self->_nodesByLabel objectForKey:label];
  v10 = [MEMORY[0x277CBEB58] set];
  if (propertiesCopy)
  {
    v11 = [propertiesCopy count] == 0;
  }

  else
  {
    v11 = 1;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if ((!domainCopy || [*(*(&v20 + 1) + 8 * i) domain] == domainCopy) && (v11 || objc_msgSend(v17, "hasProperties:", propertiesCopy)))
        {
          [v10 addObject:{v17, v20}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x277CBEB98] setWithSet:v10];

  return v18;
}

- (unint64_t)nodesCountForName:(id)name fromNode:(id)node
{
  nodesByNameGroupByNodes = self->_nodesByNameGroupByNodes;
  nodeCopy = node;
  v7 = [(NSMutableDictionary *)nodesByNameGroupByNodes objectForKey:name];
  v8 = [v7 objectForKey:nodeCopy];

  v9 = [v8 count];
  return v9;
}

- (unint64_t)nodesCountForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_nodesByName objectForKey:name];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)nodesCountForLabel:(id)label
{
  v3 = [(NSMutableDictionary *)self->_nodesByLabel objectForKey:label];
  v4 = [v3 count];

  return v4;
}

- (id)nodesForName:(id)name fromNode:(id)node
{
  nodesByNameGroupByNodes = self->_nodesByNameGroupByNodes;
  nodeCopy = node;
  v7 = [(NSMutableDictionary *)nodesByNameGroupByNodes objectForKey:name];
  v8 = [v7 objectForKey:nodeCopy];

  v9 = [MEMORY[0x277CBEB98] setWithSet:v8];

  return v9;
}

- (id)nodesForNames:(id)names
{
  v19 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = namesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_nodesByName objectForKey:*(*(&v14 + 1) + 8 * i), v14];
        v12 = [v11 set];
        [v5 unionSet:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)nodesForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_nodesByName objectForKey:name];
  v4 = [v3 set];

  return v4;
}

- (id)nodesForLabel:(id)label
{
  v3 = [(NSMutableDictionary *)self->_nodesByLabel objectForKey:label];
  v4 = [v3 set];

  return v4;
}

- (id)nodeForIdentifier:(unint64_t)identifier
{
  nodesByIdentifier = self->_nodesByIdentifier;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v5 = [(NSMutableDictionary *)nodesByIdentifier objectForKey:v4];

  return v5;
}

- (void)_addNode:(id)node withName:(id)name forKeyNode:(id)keyNode
{
  nodeCopy = node;
  nameCopy = name;
  keyNodeCopy = keyNode;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  strongToStrongObjectsMapTable = [(NSMutableDictionary *)selfCopy->_nodesByNameGroupByNodes objectForKey:nameCopy];
  if (!strongToStrongObjectsMapTable)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    [(NSMutableDictionary *)selfCopy->_nodesByNameGroupByNodes setObject:strongToStrongObjectsMapTable forKey:nameCopy];
  }

  v12 = [strongToStrongObjectsMapTable objectForKey:keyNodeCopy];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    [strongToStrongObjectsMapTable setObject:v12 forKey:keyNodeCopy];
  }

  [v12 addObject:nodeCopy];

  objc_sync_exit(selfCopy);
}

- (void)_addNode:(id)node withName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodesByIdentifier = selfCopy->_nodesByIdentifier;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(nodeCopy, "identifier")}];
  [(NSMutableDictionary *)nodesByIdentifier setObject:nodeCopy forKey:v9];

  nodesByLabel = selfCopy->_nodesByLabel;
  label = [nodeCopy label];
  orderedSet = [(NSMutableDictionary *)nodesByLabel objectForKey:label];

  if (!orderedSet)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v13 = selfCopy->_nodesByLabel;
    label2 = [nodeCopy label];
    [(NSMutableDictionary *)v13 setObject:orderedSet forKey:label2];
  }

  [orderedSet addObject:nodeCopy];
  orderedSet2 = [(NSMutableDictionary *)selfCopy->_nodesByName objectForKey:nameCopy];
  if (!orderedSet2)
  {
    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    [(NSMutableDictionary *)selfCopy->_nodesByName setObject:orderedSet2 forKey:nameCopy];
  }

  [orderedSet2 addObject:nodeCopy];

  objc_sync_exit(selfCopy);
}

- (void)addNodes:(id)nodes withName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = nodesCopy;
  v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(MASubGraph *)selfCopy _addNode:*(*(&v13 + 1) + 8 * v12++) withName:nameCopy, v13];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
}

- (void)mergeWithSubGraph:(id)graph
{
  v40 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = graphCopy;
  objc_sync_enter(v6);
  v26 = v6;
  p_isa = &selfCopy->super.isa;
  graph = [(MASubGraph *)selfCopy graph];
  graph2 = [v6 graph];

  if (graph == graph2)
  {
    context = objc_autoreleasePoolPush();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __32__MASubGraph_mergeWithSubGraph___block_invoke;
    v37[3] = &unk_2797FF180;
    v37[4] = selfCopy;
    [v6 enumerateNodesByNameUsingBlock:v37];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __32__MASubGraph_mergeWithSubGraph___block_invoke_2;
    v36[3] = &unk_2797FF180;
    v36[4] = selfCopy;
    [v6 enumerateEdgesByNameUsingBlock:v36];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    keyEnumerator = [v6[8] keyEnumerator];
    v25 = [keyEnumerator countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v25)
    {
      obj = keyEnumerator;
      v24 = *v33;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [v26[8] objectForKey:v11];
          v13 = [p_isa[8] objectForKey:v11];
          if (v13)
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            keyEnumerator2 = [v12 keyEnumerator];
            v15 = [keyEnumerator2 countByEnumeratingWithState:&v28 objects:v38 count:16];
            if (v15)
            {
              v16 = *v29;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v29 != v16)
                  {
                    objc_enumerationMutation(keyEnumerator2);
                  }

                  v18 = *(*(&v28 + 1) + 8 * j);
                  v19 = [v12 objectForKey:v18];
                  v20 = [v13 objectForKey:v18];
                  v21 = v20;
                  if (v20)
                  {
                    [v20 unionSet:v19];
                  }

                  else
                  {
                    [v13 setObject:v19 forKey:v18];
                  }
                }

                v15 = [keyEnumerator2 countByEnumeratingWithState:&v28 objects:v38 count:16];
              }

              while (v15);
            }
          }

          else
          {
            [p_isa[8] setObject:v12 forKey:v11];
          }
        }

        keyEnumerator = obj;
        v25 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v25);
    }

    v6 = v26;
    objc_autoreleasePoolPop(context);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"MASubGraphInvalidGraph" format:{@"SubGraph invalid for graph %@", selfCopy->_graph}];
  }

  objc_sync_exit(v6);

  objc_sync_exit(p_isa);
}

- (id)description
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  nodesLabels = [(MASubGraph *)self nodesLabels];
  v5 = [nodesLabels countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(nodesLabels);
        }

        [v3 appendFormat:@"[%@](%ld), ", *(*(&v56 + 1) + 8 * i), -[MASubGraph nodesCountForLabel:](self, "nodesCountForLabel:", *(*(&v56 + 1) + 8 * i))];
      }

      v6 = [nodesLabels countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v6);
  }

  nodesLabels2 = [(MASubGraph *)self nodesLabels];
  v10 = [nodesLabels2 count];

  if (v10)
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  edgesLabels = [(MASubGraph *)self edgesLabels];
  v13 = [edgesLabels countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(edgesLabels);
        }

        [v11 appendFormat:@"[%@](%ld), ", *(*(&v52 + 1) + 8 * j), -[MASubGraph edgesCountForLabel:](self, "edgesCountForLabel:", *(*(&v52 + 1) + 8 * j))];
      }

      v14 = [edgesLabels countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v14);
  }

  edgesLabels2 = [(MASubGraph *)self edgesLabels];
  v18 = [edgesLabels2 count];

  if (v18)
  {
    [v11 deleteCharactersInRange:{objc_msgSend(v11, "length") - 2, 2}];
  }

  v43 = v3;
  v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  nodesNames = [(MASubGraph *)self nodesNames];
  v21 = [nodesNames countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v49;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(nodesNames);
        }

        [v19 appendFormat:@"[%@](%ld), ", *(*(&v48 + 1) + 8 * k), -[MASubGraph nodesCountForName:](self, "nodesCountForName:", *(*(&v48 + 1) + 8 * k))];
      }

      v22 = [nodesNames countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v22);
  }

  nodesNames2 = [(MASubGraph *)self nodesNames];
  v26 = [nodesNames2 count];

  if (v26)
  {
    [v19 deleteCharactersInRange:{objc_msgSend(v19, "length") - 2, 2}];
  }

  v27 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  edgesNames = [(MASubGraph *)self edgesNames];
  v29 = [edgesNames countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v45;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(edgesNames);
        }

        [v27 appendFormat:@"[%@](%ld), ", *(*(&v44 + 1) + 8 * m), -[MASubGraph edgesCountForName:](self, "edgesCountForName:", *(*(&v44 + 1) + 8 * m))];
      }

      v30 = [edgesNames countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v30);
  }

  edgesNames2 = [(MASubGraph *)self edgesNames];
  v34 = [edgesNames2 count];

  if (v34)
  {
    [v27 deleteCharactersInRange:{objc_msgSend(v27, "length") - 2, 2}];
  }

  v42 = MEMORY[0x277CCACA8];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  graph = [(MASubGraph *)self graph];
  identifier = [graph identifier];
  uUIDString = [identifier UUIDString];
  v40 = [v42 stringWithFormat:@"[%@] id:[%@] nodesCount:[%ld] edgesCount:[%ld]\n\tnodesLabels:[%@]\n\tedgesLabels:[%@]\n\tnodesNames:[%@]\n\tedgesNames:[%@]", v36, uUIDString, -[MASubGraph nodesCount](self, "nodesCount"), -[MASubGraph edgesCount](self, "edgesCount"), v43, v11, v19, v27];

  return v40;
}

- (MASubGraph)init
{
  v20.receiver = self;
  v20.super_class = MASubGraph;
  v2 = [(MASubGraph *)&v20 init];
  v3 = v2;
  if (v2)
  {
    graph = v2->_graph;
    v2->_graph = 0;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByIdentifier = v3->_nodesByIdentifier;
    v3->_nodesByIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByLabel = v3->_nodesByLabel;
    v3->_nodesByLabel = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByName = v3->_nodesByName;
    v3->_nodesByName = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    edgesByIdentifier = v3->_edgesByIdentifier;
    v3->_edgesByIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    edgesByLabel = v3->_edgesByLabel;
    v3->_edgesByLabel = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    edgesByName = v3->_edgesByName;
    v3->_edgesByName = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByNameGroupByNodes = v3->_nodesByNameGroupByNodes;
    v3->_nodesByNameGroupByNodes = v17;
  }

  return v3;
}

+ (id)subGraphIntersectionsWithSubGraphs:(id)graphs
{
  v98 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  firstObject = [graphsCopy firstObject];
  graph = [firstObject graph];
  v7 = [self subGraphWithGraph:graph];

  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v10 = graphsCopy;
  v54 = [v10 countByEnumeratingWithState:&v89 objects:v97 count:16];
  if (v54)
  {
    v53 = *v90;
    v57 = v7;
    v51 = v10;
    v52 = strongToStrongObjectsMapTable;
    v50 = strongToStrongObjectsMapTable2;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v90 != v53)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v89 + 1) + 8 * v11);
        graph2 = [v7 graph];
        graph3 = [v12 graph];

        if (graph2 != graph3)
        {
          v47 = MEMORY[0x277CBEAD8];
          graph4 = [v7 graph];
          [v47 raise:@"MASubGraphInvalidGraph" format:{@"SubGraph invalid for graph %@", graph4, v84, v87}];

          v46 = 0;
          goto LABEL_48;
        }

        v55 = v11;
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v87[0] = __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke;
        v87[1] = &unk_2797FF180;
        v60 = strongToStrongObjectsMapTable;
        v88 = v60;
        [v12 enumerateNodesByNameUsingBlock:v86];
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v84[0] = __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke_2;
        v84[1] = &unk_2797FF180;
        v85 = strongToStrongObjectsMapTable2;
        [v12 enumerateEdgesByNameUsingBlock:v83];
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = [v12[8] keyEnumerator];
        v61 = [obj countByEnumeratingWithState:&v79 objects:v96 count:16];
        if (v61)
        {
          v58 = *v80;
          v59 = v12;
          do
          {
            v15 = 0;
            do
            {
              if (*v80 != v58)
              {
                objc_enumerationMutation(obj);
              }

              v62 = v15;
              v16 = *(*(&v79 + 1) + 8 * v15);
              v17 = [v60 objectForKey:v16];
              v18 = [v12[8] objectForKey:v16];
              v19 = [v7[8] objectForKey:v16];
              [MEMORY[0x277CBEB58] set];
              v64 = v63 = v19;
              v20 = v19;
              if (!v19)
              {
                v20 = v18;
                [v7[8] setObject:v20 forKey:v16];
              }

              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              keyEnumerator = [v18 keyEnumerator];
              v22 = [keyEnumerator countByEnumeratingWithState:&v75 objects:v95 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v76;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v76 != v24)
                    {
                      objc_enumerationMutation(keyEnumerator);
                    }

                    v26 = *(*(&v75 + 1) + 8 * i);
                    if ([v17 containsObject:v26])
                    {
                      if (v63)
                      {
                        v27 = v18;
                        v28 = [v18 objectForKey:v26];
                        v29 = [v20 objectForKey:v26];
                        v30 = v29;
                        if (v29)
                        {
                          [v29 unionSet:v28];
                        }

                        else
                        {
                          [v20 setObject:v28 forKey:v26];
                        }

                        v18 = v27;
                      }
                    }

                    else
                    {
                      [v64 addObject:v26];
                    }
                  }

                  v23 = [keyEnumerator countByEnumeratingWithState:&v75 objects:v95 count:16];
                }

                while (v23);
              }

              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke_3;
              v73[3] = &unk_2797FF670;
              v74 = v20;
              v31 = v20;
              [v64 enumerateObjectsUsingBlock:v73];

              v15 = v62 + 1;
              v7 = v57;
              v12 = v59;
            }

            while (v62 + 1 != v61);
            v61 = [obj countByEnumeratingWithState:&v79 objects:v96 count:16];
          }

          while (v61);
        }

        v11 = v55 + 1;
        v10 = v51;
        strongToStrongObjectsMapTable = v52;
        strongToStrongObjectsMapTable2 = v50;
      }

      while (v55 + 1 != v54);
      v54 = [v51 countByEnumeratingWithState:&v89 objects:v97 count:16];
      if (v54)
      {
        continue;
      }

      break;
    }
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  keyEnumerator2 = [strongToStrongObjectsMapTable keyEnumerator];
  v33 = [keyEnumerator2 countByEnumeratingWithState:&v69 objects:v94 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v70;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v70 != v35)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v37 = *(*(&v69 + 1) + 8 * j);
        v38 = [strongToStrongObjectsMapTable objectForKey:v37];
        [v7 addNodes:v38 withName:v37];
      }

      v34 = [keyEnumerator2 countByEnumeratingWithState:&v69 objects:v94 count:16];
    }

    while (v34);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  keyEnumerator3 = [strongToStrongObjectsMapTable2 keyEnumerator];
  v40 = [keyEnumerator3 countByEnumeratingWithState:&v65 objects:v93 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v66;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v66 != v42)
        {
          objc_enumerationMutation(keyEnumerator3);
        }

        v44 = *(*(&v65 + 1) + 8 * k);
        v45 = [strongToStrongObjectsMapTable2 objectForKey:v44];
        [v7 addNodes:v45 withName:v44];
      }

      v41 = [keyEnumerator3 countByEnumeratingWithState:&v65 objects:v93 count:16];
    }

    while (v41);
  }

  v46 = v7;
LABEL_48:

  return v46;
}

void __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v9];
  if (v7)
  {
    v8 = v7;
    [v7 intersectSet:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithSet:v6];

    [*(a1 + 32) setObject:v8 forKey:v9];
  }
}

void __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v9];
  if (v7)
  {
    v8 = v7;
    [v7 intersectSet:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithSet:v6];

    [*(a1 + 32) setObject:v8 forKey:v9];
  }
}

void __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, *(a1 + 32));
    ;
  }

  NSEndMapTableEnumeration(&enumerator);
}

+ (id)subGraphWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = graphCopy;

  return v4;
}

@end