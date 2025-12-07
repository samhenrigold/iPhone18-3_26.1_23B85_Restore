@interface PGSearchMetadataComputer
- (PGSearchMetadataComputer)initWithGraph:(id)graph;
- (id)_mePersonUUID;
- (id)_suggestableLocalizedSceneNames;
- (id)searchMetadataWithOptions:(id)options;
@end

@implementation PGSearchMetadataComputer

void __53__PGSearchMetadataComputer__blockedMeaningsByMeaning__block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 localizedName];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__PGSearchMetadataComputer__blockedMeaningsByMeaning__block_invoke_2;
    v18[3] = &unk_2788821F0;
    v6 = v5;
    v19 = v6;
    v20 = a1[4];
    v21 = a1[5];
    [v3 traverseParentMeaningHierarchyUsingBlock:v18];
    if (a1[4])
    {
      v7 = a1[5];
      v8 = [v3 label];
      LODWORD(v7) = [v7 containsObject:v8];

      if (v7)
      {
        [v6 addObject:a1[4]];
      }
    }

    if ([v6 count])
    {
      [a1[6] setObject:v6 forKeyedSubscript:v4];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = [v3 localizedSynonyms];
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [a1[6] setObject:v6 forKeyedSubscript:*(*(&v14 + 1) + 8 * v13++)];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        }

        while (v11);
      }
    }
  }
}

void __53__PGSearchMetadataComputer__blockedMeaningsByMeaning__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 localizedName];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  if (*(a1 + 40))
  {
    v4 = *(a1 + 48);
    v5 = [v6 label];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      [*(a1 + 32) addObject:*(a1 + 40)];
    }
  }
}

- (id)_suggestableLocalizedSceneNames
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = +[PGGraphSceneNode suggestableSceneNames];
  v4 = [PGGraphSceneNodeCollection sceneNodesForSceneNames:v3 inGraph:self->_graph];
  localizedSceneNames = [v4 localizedSceneNames];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [localizedSceneNames sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)_mePersonUUID
{
  meNode = [(PGGraph *)self->_graph meNode];
  v3 = MEMORY[0x277CD9938];
  localIdentifier = [meNode localIdentifier];
  v5 = [v3 uuidFromLocalIdentifier:localIdentifier];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)searchMetadataWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _mePersonUUID = [(PGSearchMetadataComputer *)self _mePersonUUID];
  [dictionary setObject:_mePersonUUID forKeyedSubscript:@"MePersonUUID"];

  _suggestableLocalizedSceneNames = [(PGSearchMetadataComputer *)self _suggestableLocalizedSceneNames];
  [dictionary setObject:_suggestableLocalizedSceneNames forKeyedSubscript:@"SceneWhitelist"];

  _blockedMeaningsByMeaning = [(PGSearchMetadataComputer *)self _blockedMeaningsByMeaning];
  [dictionary setObject:_blockedMeaningsByMeaning forKeyedSubscript:@"BlacklistedMeaningsByMeaning"];

  return dictionary;
}

- (PGSearchMetadataComputer)initWithGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = PGSearchMetadataComputer;
  v6 = [(PGSearchMetadataComputer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
  }

  return v7;
}

@end