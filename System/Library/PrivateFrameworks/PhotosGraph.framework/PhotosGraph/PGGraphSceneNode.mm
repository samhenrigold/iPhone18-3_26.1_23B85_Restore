@interface PGGraphSceneNode
+ (MARelation)momentOfReliableScene;
+ (MARelation)momentOfScene;
+ (MARelation)momentOfSceneWithHighConfidenceAssets;
+ (id)filter;
+ (id)filterForSceneName:(id)name;
+ (id)filterForSceneNames:(id)names;
+ (id)filterWithSceneIdentifiers:(id)identifiers;
+ (id)momentOfSceneWithDominantSceneAssets;
+ (id)momentOfSceneWithSearchConfidenceAssets;
+ (id)suggestableSceneNames;
- (BOOL)hasProperties:(id)properties;
- (BOOL)isSuitableForSuggestions;
- (NSString)featureIdentifier;
- (PGGraphSceneNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphSceneNode)initWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (PGGraphSceneNode)initWithSceneName:(id)name sceneIdentifier:(unint64_t)identifier level:(unint64_t)level isIndexed:(BOOL)indexed localizedName:(id)localizedName localizedSynonyms:(id)synonyms;
- (PGGraphSceneNode)initWithSceneTaxonomyNode:(id)node level:(unint64_t)level;
- (PGGraphSceneNodeCollection)collection;
- (id)initForTestingWithSceneName:(id)name;
- (id)momentNodes;
- (id)propertyDictionary;
- (unint64_t)numberOfAssets;
- (unint64_t)numberOfDominantSceneAssets;
- (unint64_t)numberOfHighConfidenceAssets;
- (unint64_t)numberOfSearchConfidenceAssets;
- (unsigned)domain;
@end

@implementation PGGraphSceneNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PGGraphSceneNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, label];

  return v7;
}

- (id)momentNodes
{
  collection = [(PGGraphSceneNode *)self collection];
  momentNodes = [collection momentNodes];
  temporarySet = [momentNodes temporarySet];

  return temporarySet;
}

- (unint64_t)numberOfDominantSceneAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  collection = [(PGGraphSceneNode *)self collection];
  v3 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesToNodes:collection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGGraphSceneNode_numberOfDominantSceneAssets__block_invoke;
  v6[3] = &unk_278881BA0;
  v6[4] = &v7;
  [v3 enumerateEdgesUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __47__PGGraphSceneNode_numberOfDominantSceneAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 numberOfDominantSceneAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)numberOfSearchConfidenceAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  collection = [(PGGraphSceneNode *)self collection];
  v3 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesToNodes:collection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PGGraphSceneNode_numberOfSearchConfidenceAssets__block_invoke;
  v6[3] = &unk_278881BA0;
  v6[4] = &v7;
  [v3 enumerateEdgesUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __50__PGGraphSceneNode_numberOfSearchConfidenceAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 numberOfSearchConfidenceAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)numberOfHighConfidenceAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  collection = [(PGGraphSceneNode *)self collection];
  v3 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesToNodes:collection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PGGraphSceneNode_numberOfHighConfidenceAssets__block_invoke;
  v6[3] = &unk_278881BA0;
  v6[4] = &v7;
  [v3 enumerateEdgesUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __48__PGGraphSceneNode_numberOfHighConfidenceAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 numberOfHighConfidenceAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)numberOfAssets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  collection = [(PGGraphSceneNode *)self collection];
  v3 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesToNodes:collection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PGGraphSceneNode_numberOfAssets__block_invoke;
  v6[3] = &unk_278881BA0;
  v6[4] = &v7;
  [v3 enumerateEdgesUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __34__PGGraphSceneNode_numberOfAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 numberOfAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (BOOL)isSuitableForSuggestions
{
  suggestableSceneNames = [objc_opt_class() suggestableSceneNames];
  label = [(PGGraphSceneNode *)self label];
  v5 = [suggestableSceneNames containsObject:label];

  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__PGGraphSceneNode_isSuitableForSuggestions__block_invoke;
    v8[3] = &unk_278881B78;
    v8[4] = v9;
    v8[5] = &v10;
    [(PGGraphSceneNode *)self enumerateMomentEdgesAndNodesUsingBlock:v8];
    v6 = *(v11 + 24);
    _Block_object_dispose(v9, 8);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *__44__PGGraphSceneNode_isSuitableForSuggestions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isSearchableForEvent];
  if (result)
  {
    if (++*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  return result;
}

- (PGGraphSceneNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphSceneNodeCollection alloc] initWithNode:self];

  return v2;
}

- (unsigned)domain
{
  v2 = objc_opt_class();

  return [v2 domain];
}

- (id)propertyDictionary
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"sceneIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sceneIdentifier];
  v10[0] = v3;
  v9[1] = @"level";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 32)];
  v10[1] = v4;
  v9[2] = @"isIndexed";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isIndexed];
  localizedName = self->_localizedName;
  v10[2] = v5;
  v10[3] = localizedName;
  v9[3] = @"localizedName";
  v9[4] = @"localizedSynonyms";
  v10[4] = self->_localizedSynonyms;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"sceneIdentifier"];
    v7 = v6;
    v12 = 0;
    if (!v6 || [v6 unsignedLongLongValue] == self->_sceneIdentifier)
    {

      v8 = [v5 objectForKeyedSubscript:@"level"];
      v7 = v8;
      if (!v8 || [v8 unsignedIntegerValue] == *(self + 32))
      {

        v9 = [v5 objectForKeyedSubscript:@"isIndexed"];
        v7 = v9;
        if (!v9 || self->_isIndexed == [v9 BOOLValue])
        {

          v10 = [v5 objectForKeyedSubscript:@"localizedName"];
          v7 = v10;
          if (!v10 || [v10 isEqual:self->_localizedName])
          {

            v11 = [v5 objectForKeyedSubscript:@"localizedSynonyms"];
            v7 = v11;
            if (!v11 || [v11 isEqual:self->_localizedSynonyms])
            {
              v12 = 1;
            }
          }
        }
      }
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)initForTestingWithSceneName:(id)name
{
  v4 = MEMORY[0x277CBEB98];
  nameCopy = name;
  v6 = [v4 set];
  v7 = [(PGGraphSceneNode *)self initWithSceneName:nameCopy sceneIdentifier:1 level:1 isIndexed:1 localizedName:nameCopy localizedSynonyms:v6];

  return v7;
}

- (PGGraphSceneNode)initWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  propertiesCopy = properties;
  v11 = [propertiesCopy objectForKeyedSubscript:@"lvl"];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:propertiesCopy];
    v13 = [propertiesCopy objectForKeyedSubscript:@"lvl"];
    [v12 setObject:v13 forKeyedSubscript:@"level"];

    [v12 setObject:0 forKeyedSubscript:@"lvl"];
    propertiesCopy = v12;
  }

  v14 = [(PGGraphSceneNode *)self initWithLabel:labelCopy domain:domainCopy properties:propertiesCopy];

  return v14;
}

- (PGGraphSceneNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  labelCopy = label;
  v9 = [propertiesCopy objectForKeyedSubscript:@"sceneIdentifier"];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

  v11 = [propertiesCopy objectForKeyedSubscript:@"level"];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v13 = [propertiesCopy objectForKeyedSubscript:@"isIndexed"];
  bOOLValue = [v13 BOOLValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"localizedName"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = labelCopy;
  }

  v18 = v17;

  v19 = objc_alloc(MEMORY[0x277CBEB98]);
  v20 = [propertiesCopy objectForKeyedSubscript:@"localizedSynonyms"];

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = &stru_2843F5C58;
  }

  v22 = [(__CFString *)v21 componentsSeparatedByString:@", "];
  v23 = [v19 initWithArray:v22];

  v24 = [(PGGraphSceneNode *)self initWithSceneName:labelCopy sceneIdentifier:unsignedLongLongValue level:unsignedIntegerValue isIndexed:bOOLValue localizedName:v18 localizedSynonyms:v23];
  return v24;
}

- (PGGraphSceneNode)initWithSceneName:(id)name sceneIdentifier:(unint64_t)identifier level:(unint64_t)level isIndexed:(BOOL)indexed localizedName:(id)localizedName localizedSynonyms:(id)synonyms
{
  levelCopy = level;
  v27[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  localizedNameCopy = localizedName;
  synonymsCopy = synonyms;
  v26.receiver = self;
  v26.super_class = PGGraphSceneNode;
  v17 = [(PGGraphNode *)&v26 init];
  if (v17)
  {
    capitalizedString = [nameCopy capitalizedString];
    label = v17->_label;
    v17->_label = capitalizedString;

    v17->_sceneIdentifier = identifier;
    *(v17 + 32) = levelCopy;
    v17->_isIndexed = indexed;
    objc_storeStrong(&v17->_localizedName, localizedName);
    v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
    v27[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v22 = [synonymsCopy sortedArrayUsingDescriptors:v21];
    v23 = [v22 componentsJoinedByString:{@", "}];
    localizedSynonyms = v17->_localizedSynonyms;
    v17->_localizedSynonyms = v23;
  }

  return v17;
}

- (PGGraphSceneNode)initWithSceneTaxonomyNode:(id)node level:(unint64_t)level
{
  nodeCopy = node;
  name = [nodeCopy name];
  localizedName = [nodeCopy localizedName];
  v9 = localizedName;
  if (localizedName)
  {
    capitalizedString = localizedName;
  }

  else
  {
    capitalizedString = [name capitalizedString];
  }

  v11 = capitalizedString;

  localizedSynonyms = [nodeCopy localizedSynonyms];
  v13 = localizedSynonyms;
  if (localizedSynonyms)
  {
    v14 = localizedSynonyms;
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  v15 = v14;

  v16 = -[PGGraphSceneNode initWithSceneName:sceneIdentifier:level:isIndexed:localizedName:localizedSynonyms:](self, "initWithSceneName:sceneIdentifier:level:isIndexed:localizedName:localizedSynonyms:", name, [nodeCopy identifier], level, objc_msgSend(nodeCopy, "isIndexed"), v11, v15);
  return v16;
}

+ (id)momentOfSceneWithDominantSceneAssets
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge dominantSceneAssetsFilter];
  inRelation = [v3 inRelation];
  v10[0] = inRelation;
  v5 = +[PGGraphMomentNode filter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (id)momentOfSceneWithSearchConfidenceAssets
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge searchConfidenceAssetsFilter];
  inRelation = [v3 inRelation];
  v10[0] = inRelation;
  v5 = +[PGGraphMomentNode filter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (MARelation)momentOfSceneWithHighConfidenceAssets
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge highConfidenceAssetsFilter];
  inRelation = [v3 inRelation];
  v10[0] = inRelation;
  v5 = +[PGGraphMomentNode filter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (MARelation)momentOfReliableScene
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge isReliableFilter];
  inRelation = [v3 inRelation];
  v10[0] = inRelation;
  v5 = +[PGGraphMomentNode filter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (MARelation)momentOfScene
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphSceneEdge filter];
  inRelation = [v3 inRelation];
  v10[0] = inRelation;
  v5 = +[PGGraphMomentNode filter];
  relation = [v5 relation];
  v10[1] = relation;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 chain:v7];

  return v8;
}

+ (id)suggestableSceneNames
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PGGraphSceneNode_suggestableSceneNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (suggestableSceneNames_onceToken != -1)
  {
    dispatch_once(&suggestableSceneNames_onceToken, block);
  }

  v2 = suggestableSceneNames_suggestableSceneNames;

  return v2;
}

void __41__PGGraphSceneNode_suggestableSceneNames__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"SuggestableSceneNames" withExtension:@"plist"];

  v3 = MEMORY[0x277CBEB98];
  v10 = 0;
  v4 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v2 error:&v10];
  v5 = v10;
  v6 = [v3 setWithArray:v4];
  v7 = suggestableSceneNames_suggestableSceneNames;
  suggestableSceneNames_suggestableSceneNames = v6;

  if (v5)
  {
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = @"SuggestableSceneNames";
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Couldn't load %@.plist", buf, 0xCu);
    }
  }
}

+ (id)filterWithSceneIdentifiers:(id)identifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  filter = [self filter];
  v9 = @"sceneIdentifier";
  v10[0] = identifiersCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [filter filterBySettingProperties:v6];

  return v7;
}

+ (id)filterForSceneNames:(id)names
{
  v21 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = namesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        capitalizedString = [*(*(&v16 + 1) + 8 * i) capitalizedString];
        [v5 addObject:capitalizedString];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc(MEMORY[0x277D22C78]);
  domain = [self domain];
  v14 = [v12 initWithLabels:v5 domain:domain properties:MEMORY[0x277CBEC10]];

  return v14;
}

+ (id)filterForSceneName:(id)name
{
  capitalizedString = [name capitalizedString];
  v5 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:capitalizedString domain:{objc_msgSend(self, "domain")}];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:{objc_msgSend(self, "domain")}];

  return v2;
}

@end