@interface PGMoodSourceScene
- (unint64_t)_sourceInputCount;
- (void)_combineMoodVectorsWithGraph:(id)graph;
@end

@implementation PGMoodSourceScene

- (void)_combineMoodVectorsWithGraph:(id)graph
{
  v43 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v27 = objc_opt_new();
  v5 = objc_opt_new();
  options = [(PGMoodSource *)self options];
  sceneIdentifiersByMomentNodeIdentifier = [options sceneIdentifiersByMomentNodeIdentifier];

  if (!sceneIdentifiersByMomentNodeIdentifier)
  {
    enrichedMemory = [(PGMoodSource *)self enrichedMemory];

    if (enrichedMemory)
    {
      enrichedMemory2 = [(PGMoodSource *)self enrichedMemory];
      memoryMomentNodes = [enrichedMemory2 memoryMomentNodes];
      [PGMoodUtilities moodSceneIdentifiersByMomentForMomentNodes:memoryMomentNodes];
    }

    else
    {
      enrichedMemory2 = [(PGMoodSource *)self assetCollection];
      memoryMomentNodes = [(PGMoodSource *)self options];
      [PGMoodUtilities moodSceneIdentifiersByMomentForAssetCollection:enrichedMemory2 withGraph:graphCopy moodOptions:memoryMomentNodes];
    }
    sceneIdentifiersByMomentNodeIdentifier = ;

    options2 = [(PGMoodSource *)self options];
    [options2 setSceneIdentifiersByMomentNodeIdentifier:sceneIdentifiersByMomentNodeIdentifier];
  }

  v23 = sceneIdentifiersByMomentNodeIdentifier;
  v24 = graphCopy;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [sceneIdentifiersByMomentNodeIdentifier objectEnumerator];
  v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v28)
  {
    v26 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v12;
        v13 = *(*(&v37 + 1) + 8 * v12);
        v14 = objc_opt_new();
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              if ([objc_opt_class() shouldUseSceneIdentifier:v20])
              {
                moodIdentifier = [v20 moodIdentifier];
                v22 = [(PGMoodSource *)self _moodVectorForMoodIdentifier:moodIdentifier];

                if (v22)
                {
                  v30[0] = MEMORY[0x277D85DD0];
                  v30[1] = 3221225472;
                  v30[2] = __50__PGMoodSourceScene__combineMoodVectorsWithGraph___block_invoke;
                  v30[3] = &unk_278886530;
                  v31 = v14;
                  v32 = v5;
                  [v22 enumerateWithBlock:v30];
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v17);
        }

        [v14 normalize];
        [v27 addMoodVector:v14];

        v12 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v28);
  }

  [v27 multiplyByWeight:{1.0 / -[PGMoodSourceScene _sourceInputCount](self, "_sourceInputCount")}];
  [(PGMoodSource *)self setPositiveVector:v27];
  [(PGMoodSource *)self setNegativeVector:v5];
}

id *__50__PGMoodSourceScene__combineMoodVectorsWithGraph___block_invoke(id *result, uint64_t a2, double a3)
{
  if (a3 == 1.0)
  {
    return [result[4] addValue:a2 forMood:1.0];
  }

  if (a3 == -1.0)
  {
    return [result[5] setValue:a2 forMood:1.0];
  }

  return result;
}

- (unint64_t)_sourceInputCount
{
  options = [(PGMoodSource *)self options];
  momentIDs = [options momentIDs];
  v5 = [momentIDs count];

  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = PGMoodSourceScene;
    return [(PGMoodSource *)&v7 _sourceInputCount];
  }

  return v5;
}

@end