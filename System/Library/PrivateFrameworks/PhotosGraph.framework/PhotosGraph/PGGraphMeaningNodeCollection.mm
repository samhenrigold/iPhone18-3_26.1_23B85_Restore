@interface PGGraphMeaningNodeCollection
+ (id)meaningNodesWithMeaning:(unint64_t)meaning inGraph:(id)graph;
+ (id)meaningNodesWithMeaningLabels:(id)labels inGraph:(id)graph;
- (PGGraphMeaningEdgeCollection)reliableMeaningEdges;
- (PGGraphMeaningNodeCollection)childMeaningNodes;
- (PGGraphMeaningNodeCollection)parentMeaningNodes;
- (PGGraphMomentNodeCollection)momentNodes;
- (id)distinctMeaningNodesSubset;
- (id)localizedNames;
@end

@implementation PGGraphMeaningNodeCollection

- (id)distinctMeaningNodesSubset
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v18[0] = @"Performance";
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Concert", 0}];
  v19[0] = v4;
  v18[1] = @"SportEvent";
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Concert", 0}];
  v19[1] = v5;
  v18[2] = @"Festival";
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Concert", 0}];
  v19[2] = v6;
  v18[3] = @"NightOut";
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"Concert", @"Festival", @"Theater", @"Dance", 0}];
  v19[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__PGGraphMeaningNodeCollection_distinctMeaningNodesSubset__block_invoke;
  v15[3] = &unk_278882C48;
  v15[4] = self;
  v16 = v8;
  v17 = v3;
  v9 = v3;
  v10 = v8;
  [(MAElementCollection *)self enumerateIdentifiersAsCollectionsWithBlock:v15];
  v11 = [PGGraphMeaningNodeCollection alloc];
  graph = [(MAElementCollection *)self graph];
  v13 = [(MAElementCollection *)v11 initWithGraph:graph elementIdentifiers:v9];

  return v13;
}

void __58__PGGraphMeaningNodeCollection_distinctMeaningNodesSubset__block_invoke(id *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 childMeaningNodes];
  v7 = [v6 intersectsCollection:a1[4]];

  if ((v7 & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [a1[5] allKeys];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = [v5 meaningLabels];
          v15 = [v14 containsObject:v13];

          if (v15)
          {
            v16 = [a1[5] objectForKeyedSubscript:v13];
            v17 = [a1[4] meaningLabels];
            v18 = [v17 intersectsSet:v16];

            if (v18)
            {

              goto LABEL_13;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [a1[6] addIdentifier:a2];
  }

LABEL_13:
}

- (id)localizedNames
{
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[MAElementCollection count](self, "count")}];
  labels = [(MANodeCollection *)self labels];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PGGraphMeaningNodeCollection_localizedNames__block_invoke;
  v7[3] = &unk_278887698;
  v5 = v3;
  v8 = v5;
  [labels enumerateObjectsUsingBlock:v7];

  return v5;
}

void __46__PGGraphMeaningNodeCollection_localizedNames__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [PGGraphMeaningNode _localizedNameForLabel:a2];
  [v2 addObject:v3];
}

- (PGGraphMeaningEdgeCollection)reliableMeaningEdges
{
  v3 = +[PGGraphMeaningEdge reliableFilter];
  v4 = [(MAEdgeCollection *)PGGraphMeaningEdgeCollection edgesToNodes:self matchingFilter:v3];

  return v4;
}

- (PGGraphMomentNodeCollection)momentNodes
{
  v3 = +[PGGraphMeaningNode momentOfMeaning];
  v4 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMeaningNodeCollection)parentMeaningNodes
{
  v3 = +[PGGraphMeaningNode parentMeaningOfMeaning];
  v4 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

- (PGGraphMeaningNodeCollection)childMeaningNodes
{
  v3 = +[PGGraphMeaningNode childMeaningOfMeaning];
  v4 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesRelatedToNodes:self withRelation:v3];

  return v4;
}

+ (id)meaningNodesWithMeaningLabels:(id)labels inGraph:(id)graph
{
  v5 = MEMORY[0x277D22C78];
  graphCopy = graph;
  labelsCopy = labels;
  v8 = [v5 alloc];
  v9 = [MEMORY[0x277CBEB98] setWithArray:labelsCopy];

  v10 = [v8 initWithLabels:v9 domain:700 properties:MEMORY[0x277CBEC10]];
  v11 = [(MANodeCollection *)PGGraphMeaningNodeCollection nodesMatchingFilter:v10 inGraph:graphCopy];

  return v11;
}

+ (id)meaningNodesWithMeaning:(unint64_t)meaning inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [PGGraphMeaningNode filterWithMeaning:meaning];
  if (v7)
  {
    v8 = [self nodesMatchingFilter:v7 inGraph:graphCopy];
  }

  else
  {
    v8 = [(MAElementCollection *)[PGGraphMeaningNodeCollection alloc] initWithGraph:graphCopy];
  }

  v9 = v8;

  return v9;
}

@end