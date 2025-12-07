@interface MAChainRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MAChainRelation)initWithSteps:(id)steps;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)inverse;
- (id)visualString;
- (unint64_t)hash;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MAChainRelation

- (unint64_t)hash
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_steps;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + [*(*(&v9 + 1) + 8 * i) hash];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      steps = self->_steps;
      steps = [(MAChainRelation *)equalCopy steps];
      v7 = [(NSArray *)steps isEqual:steps];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)visualString
{
  v16 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_steps;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        visualString = [*(*(&v11 + 1) + 8 * i) visualString];
        [string appendString:visualString];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return string;
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  v20 = *MEMORY[0x277D85DE8];
  adjacencyCopy = adjacency;
  graphCopy = graph;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_steps;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      v13 = adjacencyCopy;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        adjacencyCopy = [*(*(&v15 + 1) + 8 * v12) adjacencyByJoiningWithAdjacency:v13 graph:{graphCopy, v15}];

        ++v12;
        v13 = adjacencyCopy;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return adjacencyCopy;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_steps;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v9)
  {

LABEL_14:
    v11 = [KGDirectedBinaryAdjacency identityWith:identifiersCopy, v17];
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v18;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v17 + 1) + 8 * i);
      if (v11)
      {
        v15 = [v14 adjacencyByJoiningWithAdjacency:v11 graph:graphCopy];

        v11 = v15;
      }

      else
      {
        v11 = [v14 adjacencyWithStartNodeIdentifiers:identifiersCopy graph:{graphCopy, v17}];
      }
    }

    v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v10);

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v11;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  nodeIdentifiersCopy = nodeIdentifiers;
  graphCopy = graph;
  v10 = identifiersCopy;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = self->_steps;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v20 = v10;
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      v16 = v10;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v10 = objc_alloc_init(KGMutableElementIdentifierSet);
        [v17 unionAdjacencySetFromSourceNodeIdentifiers:v16 toTargetNodeIdentifiers:v10 graph:graphCopy];

        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v10;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [nodeIdentifiersCopy unionWithIdentifierSet:v10];
}

- (id)inverse
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reverseObjectEnumerator = [(NSArray *)self->_steps reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        inverse = [*(*(&v12 + 1) + 8 * i) inverse];
        [v3 addObject:inverse];
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [[MAChainRelation alloc] initWithSteps:v3];

  return v10;
}

- (MAChainRelation)initWithSteps:(id)steps
{
  stepsCopy = steps;
  v9.receiver = self;
  v9.super_class = MAChainRelation;
  initForSubclassing = [(MARelation *)&v9 initForSubclassing];
  v7 = initForSubclassing;
  if (initForSubclassing)
  {
    objc_storeStrong(initForSubclassing + 1, steps);
  }

  return v7;
}

+ (id)scanRelationWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MARelation _scanNonChainRelationWithScanner:scannerCopy];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v4 addObject:v6];
      v7 = [MARelation _scanNonChainRelationWithScanner:scannerCopy];

      v6 = v7;
    }

    while (v7);
  }

  v8 = [v4 count];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = [v4 objectAtIndexedSubscript:0];
    }

    else
    {
      v9 = [[MAChainRelation alloc] initWithSteps:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end