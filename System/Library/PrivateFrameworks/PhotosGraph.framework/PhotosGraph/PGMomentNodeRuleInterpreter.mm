@interface PGMomentNodeRuleInterpreter
- (PGMomentNodeRuleInterpreter)initWithGraph:(id)graph;
- (id)evaluateMomentNodes:(id)nodes forDateRangeCondition:(id)condition;
- (id)evaluateMomentNodes:(id)nodes forPersonCondition:(id)condition;
- (id)evaluateObjects:(id)objects forCondition:(id)condition;
@end

@implementation PGMomentNodeRuleInterpreter

- (id)evaluateMomentNodes:(id)nodes forPersonCondition:(id)condition
{
  v39 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  personUUIDs = [condition personUUIDs];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(personUUIDs, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = personUUIDs;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x277CD9938] localIdentifierWithUUID:*(*(&v33 + 1) + 8 * i)];
        [v8 addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  v14 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:v8 inGraph:self->_graph];
  v15 = [v14 set];

  if ([v15 count])
  {
    v16 = [MEMORY[0x277CBEB58] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = nodesCopy;
    v27 = nodesCopy;
    v17 = [v27 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v19 = *v30;
    while (1)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v27);
        }

        v21 = *(*(&v29 + 1) + 8 * j);
        consolidatedPersonNodesPresentInAssets = [v21 consolidatedPersonNodesPresentInAssets];
        if ([consolidatedPersonNodesPresentInAssets intersectsSet:v15])
        {
        }

        else
        {
          personNodesInProximity = [v21 personNodesInProximity];
          v24 = [personNodesInProximity intersectsSet:v15];

          if (!v24)
          {
            continue;
          }
        }

        [v16 addObject:v21];
      }

      v18 = [v27 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (!v18)
      {
LABEL_20:

        nodesCopy = v26;
        goto LABEL_22;
      }
    }
  }

  v16 = [MEMORY[0x277CBEB98] set];
LABEL_22:

  return v16;
}

- (id)evaluateMomentNodes:(id)nodes forDateRangeCondition:(id)condition
{
  v5 = MEMORY[0x277CCAC30];
  conditionCopy = condition;
  nodesCopy = nodes;
  startDate = [conditionCopy startDate];
  endDate = [conditionCopy endDate];

  v10 = [v5 predicateWithFormat:@"localStartDate >= %@ && localEndDate <= %@", startDate, endDate];
  v11 = [nodesCopy filteredSetUsingPredicate:v10];

  return v11;
}

- (id)evaluateObjects:(id)objects forCondition:(id)condition
{
  objectsCopy = objects;
  conditionCopy = condition;
  type = [conditionCopy type];
  if (type == 2)
  {
    v9 = [(PGMomentNodeRuleInterpreter *)self evaluateMomentNodes:objectsCopy forPersonCondition:conditionCopy];
  }

  else
  {
    if (type == 1)
    {
      [(PGMomentNodeRuleInterpreter *)self evaluateMomentNodes:objectsCopy forDateRangeCondition:conditionCopy];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

- (PGMomentNodeRuleInterpreter)initWithGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = PGMomentNodeRuleInterpreter;
  v6 = [(PGMomentNodeRuleInterpreter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
  }

  return v7;
}

@end