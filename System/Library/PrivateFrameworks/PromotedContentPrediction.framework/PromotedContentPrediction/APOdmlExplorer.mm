@interface APOdmlExplorer
- (APOdmlExplorer)initWithRankableObjects:(id)objects pttrArray:(id)array assetManager:(id)manager;
- (id)cumulativeEpsilonGreedyProbabilityDistribution;
- (id)epsilonGreedyProbabilityDistribution;
- (id)explore;
- (id)greedy;
- (id)randomizedResponse;
- (id)rankableObjectsFromSortable;
- (id)sortableArray:(id)array pttrArray:(id)pttrArray;
@end

@implementation APOdmlExplorer

- (APOdmlExplorer)initWithRankableObjects:(id)objects pttrArray:(id)array assetManager:(id)manager
{
  objectsCopy = objects;
  arrayCopy = array;
  managerCopy = manager;
  v25.receiver = self;
  v25.super_class = APOdmlExplorer;
  v11 = [(APOdmlExplorer *)&v25 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(APOdmlExplorer *)v11 sortableArray:objectsCopy pttrArray:arrayCopy];
    sortableObjects = v12->_sortableObjects;
    v12->_sortableObjects = v13;

    v15 = [managerCopy doubleValueForFactor:@"EpsilonDP"];
    epsilon = v12->_epsilon;
    v12->_epsilon = v15;

    v17 = [managerCopy stringValueForFactor:@"ExploreMode"];
    mode = v12->_mode;
    v12->_mode = v17;

    v19 = [managerCopy stringValueForFactor:@"ExploreNoiseType"];
    noise_type = v12->_noise_type;
    v12->_noise_type = v19;

    v21 = [managerCopy doubleValueForFactor:@"ExploreClippingBound"];
    clipping_bound = v12->_clipping_bound;
    v12->_clipping_bound = v21;

    v23 = time(0);
    srand48(v23);
  }

  return v12;
}

- (id)sortableArray:(id)array pttrArray:(id)pttrArray
{
  arrayCopy = array;
  pttrArrayCopy = pttrArray;
  array = [MEMORY[0x277CBEB18] array];
  if ([pttrArrayCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [APOdmlSortableObject alloc];
      v10 = [arrayCopy objectAtIndexedSubscript:v8];
      v11 = [pttrArrayCopy objectAtIndexedSubscript:v8];
      v12 = [(APOdmlSortableObject *)v9 initWithRankable:v10 andPTTR:v11];

      [array addObject:v12];
      ++v8;
    }

    while (v8 < [pttrArrayCopy count]);
  }

  return array;
}

- (id)explore
{
  v13 = *MEMORY[0x277D85DE8];
  mode = [(APOdmlExplorer *)self mode];
  v4 = [mode isEqualToString:@"greedy"];

  if (v4)
  {
    greedy = [(APOdmlExplorer *)self greedy];
  }

  else
  {
    mode2 = [(APOdmlExplorer *)self mode];
    v7 = [mode2 isEqualToString:@"randomized-response"];

    if (v7)
    {
      greedy = [(APOdmlExplorer *)self randomizedResponse];
    }

    else
    {
      v8 = OdmlLogForCategory(5uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = objc_opt_class();
        v9 = v12;
        _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Exploration error: exploration type not found.", &v11, 0xCu);
      }

      greedy = [(APOdmlExplorer *)self rankableObjectsFromSortable];
    }
  }

  return greedy;
}

- (id)randomizedResponse
{
  cumulativeEpsilonGreedyProbabilityDistribution = [(APOdmlExplorer *)self cumulativeEpsilonGreedyProbabilityDistribution];
  v4 = drand48();
  if ([cumulativeEpsilonGreedyProbabilityDistribution count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [cumulativeEpsilonGreedyProbabilityDistribution objectAtIndexedSubscript:v5];
      [v6 doubleValue];
      v8 = v7;

      if (v4 < v8)
      {
        break;
      }

      if (++v5 >= [cumulativeEpsilonGreedyProbabilityDistribution count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  v9 = MEMORY[0x277CBEB18];
  sortableObjects = [(APOdmlExplorer *)self sortableObjects];
  v11 = [v9 arrayWithArray:sortableObjects];

  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v11 objectAtIndexedSubscript:v5];
  [v11 setObject:v13 atIndexedSubscript:0];

  [v11 setObject:v12 atIndexedSubscript:v5];
  [(APOdmlExplorer *)self setSortableObjects:v11];
  rankableObjectsFromSortable = [(APOdmlExplorer *)self rankableObjectsFromSortable];

  return rankableObjectsFromSortable;
}

- (id)cumulativeEpsilonGreedyProbabilityDistribution
{
  epsilonGreedyProbabilityDistribution = [(APOdmlExplorer *)self epsilonGreedyProbabilityDistribution];
  if ([epsilonGreedyProbabilityDistribution count] >= 2)
  {
    v3 = 1;
    do
    {
      v4 = [epsilonGreedyProbabilityDistribution objectAtIndexedSubscript:v3];
      [v4 doubleValue];
      v6 = v5;
      v7 = [epsilonGreedyProbabilityDistribution objectAtIndexedSubscript:v3 - 1];
      [v7 doubleValue];
      v9 = v6 + v8;

      v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      [epsilonGreedyProbabilityDistribution setObject:v10 atIndexedSubscript:v3];

      ++v3;
    }

    while (v3 < [epsilonGreedyProbabilityDistribution count]);
  }

  v11 = [epsilonGreedyProbabilityDistribution copy];

  return v11;
}

- (id)epsilonGreedyProbabilityDistribution
{
  sortableObjects = [(APOdmlExplorer *)self sortableObjects];
  v4 = [sortableObjects count];

  sortableObjects2 = [(APOdmlExplorer *)self sortableObjects];
  [sortableObjects2 shuffle];

  sortableObjects3 = [(APOdmlExplorer *)self sortableObjects];
  v7 = [sortableObjects3 objectAtIndexedSubscript:0];
  pTTR = [v7 pTTR];

  sortableObjects4 = [(APOdmlExplorer *)self sortableObjects];
  v10 = [sortableObjects4 count];

  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      sortableObjects5 = [(APOdmlExplorer *)self sortableObjects];
      v14 = [sortableObjects5 objectAtIndexedSubscript:v12];
      pTTR2 = [v14 pTTR];

      [pTTR2 doubleValue];
      v17 = v16;
      [pTTR doubleValue];
      if (v17 > v18)
      {
        v19 = pTTR2;

        pTTR = v19;
        v11 = v12;
      }

      ++v12;
      sortableObjects6 = [(APOdmlExplorer *)self sortableObjects];
      v21 = [sortableObjects6 count];
    }

    while (v12 < v21);
    v22 = v11;
  }

  else
  {
    v22 = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  epsilon = [(APOdmlExplorer *)self epsilon];
  [epsilon doubleValue];
  v26 = exp(v25);

  sortableObjects7 = [(APOdmlExplorer *)self sortableObjects];
  v28 = [sortableObjects7 count];

  if (v28)
  {
    v29 = 0;
    v30 = v26 + (v4 - 1);
    do
    {
      v31 = 1.0;
      if (v22 == v29)
      {
        epsilon2 = [(APOdmlExplorer *)self epsilon];
        [epsilon2 doubleValue];
        v31 = exp(v33);
      }

      v34 = [MEMORY[0x277CCABB0] numberWithDouble:v31 / v30];
      [array addObject:v34];

      ++v29;
      sortableObjects8 = [(APOdmlExplorer *)self sortableObjects];
      v36 = [sortableObjects8 count];
    }

    while (v29 < v36);
  }

  return array;
}

- (id)greedy
{
  v8[1] = *MEMORY[0x277D85DE8];
  sortableObjects = [(APOdmlExplorer *)self sortableObjects];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"pTTR" ascending:0];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [sortableObjects sortUsingDescriptors:v5];

  rankableObjectsFromSortable = [(APOdmlExplorer *)self rankableObjectsFromSortable];

  return rankableObjectsFromSortable;
}

- (id)rankableObjectsFromSortable
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  sortableObjects = [(APOdmlExplorer *)self sortableObjects];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(sortableObjects, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sortableObjects2 = [(APOdmlExplorer *)self sortableObjects];
  v7 = [sortableObjects2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sortableObjects2);
        }

        rankable = [*(*(&v14 + 1) + 8 * i) rankable];
        [v5 addObject:rankable];
      }

      v8 = [sortableObjects2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

@end