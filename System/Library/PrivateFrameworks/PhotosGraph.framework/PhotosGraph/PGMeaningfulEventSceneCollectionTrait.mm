@interface PGMeaningfulEventSceneCollectionTrait
- (PGMeaningfulEventSceneCollectionTrait)initWithNodes:(id)nodes negativeNodes:(id)negativeNodes;
- (id)debugDescriptionWithMomentNode:(id)node;
@end

@implementation PGMeaningfulEventSceneCollectionTrait

- (id)debugDescriptionWithMomentNode:(id)node
{
  nodeCopy = node;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __72__PGMeaningfulEventSceneCollectionTrait_debugDescriptionWithMomentNode___block_invoke;
  v25 = &unk_278887D48;
  v26 = nodeCopy;
  v5 = nodeCopy;
  v6 = _Block_copy(&aBlock);
  nodes = [(PGMeaningfulEventCollectionTrait *)self nodes];
  v8 = [nodes set];
  v9 = v6[2](v6, v8);

  negativeNodes = [(PGMeaningfulEventCollectionTrait *)self negativeNodes];
  v11 = [negativeNodes set];
  v12 = v6[2](v6, v11);

  v13 = [(__CFString *)v12 count];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = v16;
  v18 = @" ";
  v19 = &stru_2843F5C58;
  if (v13)
  {
    v19 = v12;
  }

  else
  {
    v18 = &stru_2843F5C58;
  }

  v20 = [v14 stringWithFormat:@"<%@: %p> %@%@%@", v16, self, v9, v18, v19, aBlock, v23, v24, v25];

  return v20;
}

id __72__PGMeaningfulEventSceneCollectionTrait_debugDescriptionWithMomentNode___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v24 = [*(a1 + 32) collection];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 collection];
        v10 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesFromNodes:v24 toNodes:v9];
        v11 = [v10 anyEdge];

        LODWORD(v9) = [v11 isReliable];
        v12 = [v11 numberOfAssets];
        v13 = [v11 numberOfHighConfidenceAssets];
        v14 = [v11 numberOfSearchConfidenceAssets];
        v15 = MEMORY[0x277CCACA8];
        v16 = [v8 label];
        [v11 confidence];
        v18 = @"NO";
        if (v9)
        {
          v18 = @"YES";
        }

        v19 = [v15 stringWithFormat:@"%@ (confidence %.2f, #assets %lu, #highConf. %lu, #searchConf. %lu, reliable %@)", v16, v17, v12, v13, v14, v18];

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        [v25 setObject:v20 forKeyedSubscript:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  v21 = [v25 keysSortedByValueUsingSelector:sel_compare_];

  return v21;
}

- (PGMeaningfulEventSceneCollectionTrait)initWithNodes:(id)nodes negativeNodes:(id)negativeNodes
{
  v5.receiver = self;
  v5.super_class = PGMeaningfulEventSceneCollectionTrait;
  result = [(PGMeaningfulEventCollectionTrait *)&v5 initWithNodes:nodes negativeNodes:negativeNodes];
  if (result)
  {
    result->_minimumNumberOfHighConfidenceAssets = 1;
    result->_minimumNumberOfNegativeHighConfidenceAssets = 1;
    result->_minimumRatioOfHighConfidenceAssets = 0.0;
  }

  return result;
}

@end