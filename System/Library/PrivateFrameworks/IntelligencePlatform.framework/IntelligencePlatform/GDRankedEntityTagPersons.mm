@interface GDRankedEntityTagPersons
- (GDRankedEntityTagPersons)initWithTag:(int64_t)tag scoredEntities:(id)entities entityRelevanceInferenceEventId:(int64_t)id;
- (NSArray)scoredEntities;
@end

@implementation GDRankedEntityTagPersons

- (NSArray)scoredEntities
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  scoredEntities = [(GDScoreRankedEntityTagPersonsInner *)self->inner scoredEntities];
  v5 = [scoredEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(scoredEntities);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [GDScoredPersonEntity alloc];
        idValue = [v9 idValue];
        [v9 score];
        v12 = [(GDScoredPersonEntity *)v10 initWithIDValue:idValue score:?];
        [v3 addObject:v12];
      }

      v6 = [scoredEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (GDRankedEntityTagPersons)initWithTag:(int64_t)tag scoredEntities:(id)entities entityRelevanceInferenceEventId:(int64_t)id
{
  v31 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  v29.receiver = self;
  v29.super_class = GDRankedEntityTagPersons;
  v9 = [(GDRankedEntityTagPersons *)&v29 init];
  if (v9)
  {
    idCopy = id;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = entitiesCopy;
    v11 = entitiesCopy;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [GDScoredPersonInner alloc];
          idValue = [v16 idValue];
          [v16 score];
          v19 = [(GDScoredPersonInner *)v17 initWithIdValue:idValue score:0 inferenceEventIdValue:?];
          [v10 addObject:v19];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }

    v20 = [[GDScoreRankedEntityTagPersonsInner alloc] initWithGdTag:tag scoredEntities:v10 inferenceEventIdValue:idCopy];
    inner = v9->inner;
    v9->inner = v20;

    entitiesCopy = v24;
  }

  return v9;
}

@end