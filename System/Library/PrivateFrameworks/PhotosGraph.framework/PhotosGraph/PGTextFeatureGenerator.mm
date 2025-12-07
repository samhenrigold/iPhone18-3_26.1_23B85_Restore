@interface PGTextFeatureGenerator
+ (id)_knowledgeOptionsByDomain;
+ (id)_naturalLanguageOptionsByDomain;
- (PGTextFeatureGenerator)initWithMomentNodes:(id)nodes graph:(id)graph;
- (id)_sortedTextFeaturesUsingWeightAndTypeFromTextFeatures:(id)features;
- (id)_textFeaturesForNode:(id)node type:(unint64_t)type weight:(double)weight;
- (id)_textFeaturesForNodes:(id)nodes type:(unint64_t)type;
- (id)_textFeaturesForPersonNodes:(id)nodes;
- (id)bestTextFeaturesFromTextFeatures:(id)features;
- (id)generateTextFeatures;
- (id)knowledgeFeatures;
- (id)naturalLanguageFeatures;
- (void)_resetProperties;
- (void)analyzeMomentNodes;
@end

@implementation PGTextFeatureGenerator

- (id)_sortedTextFeaturesUsingWeightAndTypeFromTextFeatures:(id)features
{
  v35 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277CBEB98];
  v7 = +[PGTextFeature vipTextFeatureTypes];
  v27 = [v6 setWithArray:v7];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = featuresCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if ([v13 origin] != 1 || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v13, "type")), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v27, "containsObject:", v14), v14, v16 = array, (v15 & 1) == 0))
        {
          v16 = array2;
        }

        [v16 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"weight" ascending:0];
  v33[0] = v17;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"string" ascending:1];
  v33[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v20 = [array sortedArrayUsingDescriptors:v19];

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"weight" ascending:0];
  v32[0] = v21;
  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"string" ascending:1];
  v32[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v24 = [array2 sortedArrayUsingDescriptors:v23];

  v25 = [v20 arrayByAddingObjectsFromArray:v24];

  return v25;
}

- (id)_textFeaturesForPersonNodes:(id)nodes
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_personNodes;
  v6 = [(NSCountedSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSCountedSet *)self->_personNodes countForObject:v10, v16]/ self->_numberOfMoments;
        v12 = [(PGTextFeatureGenerator *)self _textFeaturesForNode:v10 type:3 weight:v11];
        [v4 unionSet:v12];
        localIdentifier = [v10 localIdentifier];
        if ([localIdentifier length])
        {
          v14 = [PGTextFeature textFeaturesFromString:localIdentifier type:3 weight:0 options:v11];
          [v4 unionSet:v14];
        }
      }

      v7 = [(NSCountedSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_textFeaturesForNode:(id)node type:(unint64_t)type weight:(double)weight
{
  optionsByDomain = self->_optionsByDomain;
  v9 = MEMORY[0x277CCABB0];
  nodeCopy = node;
  v11 = [v9 numberWithUnsignedInteger:type];
  v12 = [(NSDictionary *)optionsByDomain objectForKeyedSubscript:v11];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  v14 = [PGTextFeature textFeaturesFromNode:nodeCopy type:type weight:unsignedIntegerValue options:self->_locationHelper locationHelper:weight];

  return v14;
}

- (id)_textFeaturesForNodes:(id)nodes type:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v7 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = nodesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = -[PGTextFeatureGenerator _textFeaturesForNode:type:weight:](self, "_textFeaturesForNode:type:weight:", *(*(&v15 + 1) + 8 * i), type, ([v8 countForObject:{*(*(&v15 + 1) + 8 * i), v15}] / self->_numberOfMoments));
        [v7 unionSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)bestTextFeaturesFromTextFeatures:(id)features
{
  v55 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB58] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = featuresCopy;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        string = [v11 string];
        v13 = [dictionary objectForKeyedSubscript:string];
        if (v13)
        {
          v14 = v13;
          [v5 addObject:string];
          [v14 addObject:v11];
        }

        else
        {
          v14 = [MEMORY[0x277CBEB58] setWithObject:v11];
          [dictionary setObject:v14 forKeyedSubscript:string];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v8);
  }

  v15 = [MEMORY[0x277CBEB58] setWithSet:v6];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [dictionary objectForKeyedSubscript:*(*(&v43 + 1) + 8 * j)];
        v22 = [PGTextFeature mergedTextFeatureFromTextFeatures:v21];
        [v15 minusSet:v21];
        if (v22)
        {
          [v15 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  v23 = [v15 count];
  maximumNumberOfTextFeaturesPerEvent = [(PGTextFeatureGenerator *)self maximumNumberOfTextFeaturesPerEvent];
  boundTextFeaturesPerEvent = [(PGTextFeatureGenerator *)self boundTextFeaturesPerEvent];
  v42 = maximumNumberOfTextFeaturesPerEvent;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:maximumNumberOfTextFeaturesPerEvent];
  v26 = [(PGTextFeatureGenerator *)self _sortedTextFeaturesUsingWeightAndTypeFromTextFeatures:v15];
  if (v23)
  {
    v28 = v23;
    v29 = 0;
    *&v27 = 138412290;
    v38 = v27;
    v40 = v25;
    while (1)
    {
      v30 = [v26 objectAtIndexedSubscript:{v29, v38}];
      v31 = v30;
      if (v29 < v42)
      {
        break;
      }

      if (!boundTextFeaturesPerEvent)
      {
        [v30 markAsStrippedOut];
        v32 = [MEMORY[0x277CD99F0] pg_textFeatureForFeature:v31];
        if (v32)
        {
LABEL_28:
          v35 = v32;
          [v25 addObject:v32];
LABEL_31:

          goto LABEL_32;
        }

        v36 = +[PGLogging sharedLogging];
        loggingConnection = [v36 loggingConnection];

        if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
LABEL_30:

          v35 = 0;
          v25 = v40;
          goto LABEL_31;
        }

LABEL_34:
        *buf = v38;
        v52 = v31;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failure generating PHTextFeature from PGTextFeature %@", buf, 0xCu);
        goto LABEL_30;
      }

LABEL_32:

      if (v28 == ++v29)
      {
        goto LABEL_35;
      }
    }

    v32 = [MEMORY[0x277CD99F0] pg_textFeatureForFeature:v30];
    if (v32)
    {
      goto LABEL_28;
    }

    v33 = +[PGLogging sharedLogging];
    loggingConnection = [v33 loggingConnection];

    if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

LABEL_35:

  return v25;
}

- (id)generateTextFeatures
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  if (self->_numberOfAssets)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v4 = self->_numberOfAssetsBySceneNode;
    v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v72;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v72 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v71 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_numberOfAssetsBySceneNode objectForKey:v9];
          v11 = -[PGTextFeatureGenerator _textFeaturesForNode:type:weight:](self, "_textFeaturesForNode:type:weight:", v9, 18, [v10 unsignedIntegerValue] / self->_numberOfAssets);
          [v3 unionSet:v11];
        }

        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v6);
    }

    v62 = [(PGTextFeatureGenerator *)self _textFeaturesForPersonNodes:self->_personNodes];
    [v3 unionSet:?];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v12 = self->_roiNodes;
    v13 = [(NSCountedSet *)v12 countByEnumeratingWithState:&v67 objects:v78 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v68;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v68 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v67 + 1) + 8 * j);
          label = [v17 label];
          v19 = [label isEqualToString:@"Urban"];

          if ((v19 & 1) == 0)
          {
            v20 = [(PGTextFeatureGenerator *)self _textFeaturesForNode:v17 type:9 weight:([(NSCountedSet *)self->_roiNodes countForObject:v17]/ self->_numberOfMoments)];
            [v3 unionSet:v20];
          }
        }

        v14 = [(NSCountedSet *)v12 countByEnumeratingWithState:&v67 objects:v78 count:16];
      }

      while (v14);
    }

    v61 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_poiNodes type:10];
    [v3 unionSet:?];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v21 = self->_meaningNodes;
    v22 = [(NSCountedSet *)v21 countByEnumeratingWithState:&v63 objects:v77 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v64;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v64 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v63 + 1) + 8 * k);
          v27 = [(NSCountedSet *)self->_meaningNodes countForObject:v26];
          isVeryMeaningful = [v26 isVeryMeaningful];
          v29 = 1.0;
          if ((isVeryMeaningful & 1) == 0)
          {
            v29 = (v27 / self->_numberOfMoments);
          }

          v30 = [(PGTextFeatureGenerator *)self _textFeaturesForNode:v26 type:13 weight:v29];
          [v3 unionSet:v30];
        }

        v23 = [(NSCountedSet *)v21 countByEnumeratingWithState:&v63 objects:v77 count:16];
      }

      while (v23);
    }

    v31 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_districtNodes type:19];
    [v3 unionSet:v31];
    v32 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_cityNodes type:4];
    [v3 unionSet:v32];
    v33 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_stateNodes type:5];
    [v3 unionSet:v33];
    v34 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_countryNodes type:6];
    [v3 unionSet:v34];
    v35 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_areaNodes type:20];
    [v3 unionSet:v35];
    v60 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_businessNodes type:17];
    [v3 unionSet:?];
    if ([(NSCountedSet *)self->_businessCategoryNodes count]> 3)
    {
      v39 = +[PGLogging sharedLogging];
      loggingConnection = [v39 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        businessCategoryNodes = self->_businessCategoryNodes;
        *buf = 138412290;
        v76 = businessCategoryNodes;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "PHSuggestion text features generation: ignoring business categories (too many) : %@", buf, 0xCu);
      }
    }

    else
    {
      loggingConnection = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_businessCategoryNodes type:24];
      [v3 unionSet:loggingConnection];
    }

    v41 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_holidayNodes type:15];
    [v3 unionSet:v41];
    v42 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_publicEventNodes type:21];
    [v3 unionSet:v42];
    v59 = v41;
    if ([(NSCountedSet *)self->_publicEventPerformerNodes count]> 3)
    {
      v44 = v34;
      v45 = v33;
      v46 = v32;
      v47 = v31;
      v48 = +[PGLogging sharedLogging];
      loggingConnection2 = [v48 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        publicEventPerformerNodes = self->_publicEventPerformerNodes;
        *buf = 138412290;
        v76 = publicEventPerformerNodes;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "PHSuggestion text features generation: ignoring performers (too many) : %@", buf, 0xCu);
      }

      v31 = v47;
      v32 = v46;
      v33 = v45;
      v34 = v44;
      v41 = v59;
    }

    else
    {
      loggingConnection2 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_publicEventPerformerNodes type:26];
      [v3 unionSet:loggingConnection2];
    }

    if ([(NSCountedSet *)self->_publicEventCategoryNodes count]> 3)
    {
      v51 = v35;
      v52 = v34;
      v53 = v33;
      v54 = v32;
      v55 = v31;
      v56 = +[PGLogging sharedLogging];
      loggingConnection3 = [v56 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        publicEventCategoryNodes = self->_publicEventCategoryNodes;
        *buf = 138412290;
        v76 = publicEventCategoryNodes;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "PHSuggestion text features generation: ignoring public event categories (too many) : %@", buf, 0xCu);
      }

      v31 = v55;
      v32 = v54;
      v33 = v53;
      v34 = v52;
      v35 = v51;
      v41 = v59;
    }

    else
    {
      loggingConnection3 = [(PGTextFeatureGenerator *)self _textFeaturesForNodes:self->_publicEventCategoryNodes type:25];
      [v3 unionSet:loggingConnection3];
    }

    loggingConnection4 = v62;
  }

  else
  {
    v37 = +[PGLogging sharedLogging];
    loggingConnection4 = [v37 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "Can't generate text features from no assets", buf, 2u);
    }
  }

  return v3;
}

- (void)analyzeMomentNodes
{
  v51 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_momentNodes;
  v27 = [(NSSet *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v27)
  {
    v26 = *v47;
    do
    {
      v3 = 0;
      do
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v46 + 1) + 8 * v3);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke;
        v45[3] = &unk_278888D88;
        v45[4] = self;
        [v4 enumerateSceneEdgesAndNodesUsingBlock:v45];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_2;
        v44[3] = &unk_278889240;
        v44[4] = self;
        [v4 enumeratePersonNodesUsingBlock:v44];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_3;
        v43[3] = &unk_2788875F8;
        v43[4] = self;
        [v4 enumerateROINodesUsingBlock:v43];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_4;
        v42[3] = &unk_2788875D0;
        v42[4] = self;
        [v4 enumeratePOINodesUsingBlock:v42];
        v5 = [MEMORY[0x277CBEB58] set];
        v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"Entertainment", @"Activity", 0}];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_5;
        v39[3] = &unk_278883BA8;
        v40 = v6;
        v41 = v5;
        v28 = v5;
        v29 = v6;
        [v4 enumerateReliableMeaningNodesUsingBlock:v39];
        meaningNodes = [(PGTextFeatureGenerator *)self meaningNodes];
        [meaningNodes unionSet:v28];

        v8 = [MEMORY[0x277CBEB58] set];
        v9 = [MEMORY[0x277CBEB58] set];
        v10 = [MEMORY[0x277CBEB58] set];
        v11 = [MEMORY[0x277CBEB58] set];
        v12 = [MEMORY[0x277CBEB58] set];
        collection = [v4 collection];
        addressNodes = [collection addressNodes];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_6;
        v33[3] = &unk_278882468;
        v34 = v8;
        v35 = v9;
        v36 = v10;
        v37 = v11;
        v38 = v12;
        v15 = v12;
        v16 = v11;
        v17 = v10;
        v18 = v9;
        v19 = v8;
        [addressNodes enumerateIdentifiersAsCollectionsWithBlock:v33];

        districtNodes = [(PGTextFeatureGenerator *)self districtNodes];
        [districtNodes unionSet:v19];

        cityNodes = [(PGTextFeatureGenerator *)self cityNodes];
        [cityNodes unionSet:v18];

        stateNodes = [(PGTextFeatureGenerator *)self stateNodes];
        [stateNodes unionSet:v17];

        countryNodes = [(PGTextFeatureGenerator *)self countryNodes];
        [countryNodes unionSet:v16];

        areaNodes = [(PGTextFeatureGenerator *)self areaNodes];
        [areaNodes unionSet:v15];

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_7;
        v32[3] = &unk_278887620;
        v32[4] = self;
        [v4 enumerateBusinessNodesUsingBlock:v32];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_9;
        v31[3] = &unk_2788875A8;
        v31[4] = self;
        [v4 enumerateDateNodesUsingBlock:v31];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_11;
        v30[3] = &unk_278887648;
        v30[4] = self;
        [v4 enumeratePublicEventNodesUsingBlock:v30];

        ++v3;
      }

      while (v27 != v3);
      v27 = [(NSSet *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v27);
  }
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v5 isIndexed] && objc_msgSend(v5, "isSuitableForSuggestions") && objc_msgSend(v12, "isReliable"))
  {
    v6 = [v12 numberOfAssets];
    v7 = [*(a1 + 32) numberOfAssetsBySceneNode];
    v8 = [v7 objectForKey:v5];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "unsignedIntegerValue") + v6}];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    }

    v10 = [*(a1 + 32) numberOfAssetsBySceneNode];
    [v10 setObject:v9 forKey:v5];

    v11 = [*(a1 + 32) sceneNodes];
    [v11 addObject:v5];
  }
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 isMeNode] & 1) == 0)
  {
    v3 = [v6 name];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [*(a1 + 32) personNodes];
      [v5 addObject:v6];
    }
  }
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 roiNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 poiNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 label];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v10];
  }

  v6 = [v10 parentMeaningNode];
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = [v6 label];
    LOBYTE(v8) = [v8 containsObject:v9];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) addObject:v7];
    }
  }
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_6(id *a1, uint64_t a2, void *a3)
{
  v14 = a3;
  v4 = [v14 districtNodes];
  v5 = [v4 anyNode];

  if (v5)
  {
    [a1[4] addObject:v5];
  }

  v6 = [v14 cityNodes];
  v7 = [v6 anyNode];

  if (v7)
  {
    [a1[5] addObject:v7];
  }

  v8 = [v14 stateNodes];
  v9 = [v8 anyNode];

  if (v9)
  {
    [a1[6] addObject:v9];
  }

  v10 = [v14 countryNodes];
  v11 = [v10 anyNode];

  if (v11)
  {
    [a1[7] addObject:v11];
  }

  v12 = [v14 areaNodes];
  v13 = [v12 temporarySet];

  [a1[8] unionSet:v13];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 businessNodes];
  [v5 addObject:v4];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_8;
  v6[3] = &unk_2788840D8;
  v6[4] = *(a1 + 32);
  [v4 enumerateBusinessCategoryNodesUsingBlock:v6];
}

uint64_t __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_9(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_10;
  v3[3] = &unk_278888D00;
  v3[4] = *(a1 + 32);
  return [a2 enumerateHolidayNodesUsingBlock:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 publicEventNodes];
  [v5 addObject:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_12;
  v7[3] = &unk_278887118;
  v7[4] = *(a1 + 32);
  [v4 enumeratePublicEventCategoryNodesUsingBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_13;
  v6[3] = &unk_278882490;
  v6[4] = *(a1 + 32);
  [v4 enumeratePerformerNodesUsingBlock:v6];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 publicEventCategoryNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 publicEventPerformerNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 holidayNodes];
  [v4 addObject:v3];
}

void __44__PGTextFeatureGenerator_analyzeMomentNodes__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 businessCategoryNodes];
  [v4 addObject:v3];
}

- (id)naturalLanguageFeatures
{
  v23 = *MEMORY[0x277D85DE8];
  _naturalLanguageOptionsByDomain = [objc_opt_class() _naturalLanguageOptionsByDomain];
  [(PGTextFeatureGenerator *)self setOptionsByDomain:_naturalLanguageOptionsByDomain];

  if (!self->_numberOfMoments)
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot generate natural language features with no moment nodes", &v17, 2u);
    }

    goto LABEL_11;
  }

  [(PGTextFeatureGenerator *)self analyzeMomentNodes];
  loggingConnection = [(PGTextFeatureGenerator *)self generateTextFeatures];
  v5 = [loggingConnection count];
  if (!v5)
  {
    v13 = +[PGLogging sharedLogging];
    loggingConnection2 = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      momentNodes = self->_momentNodes;
      v17 = 138477827;
      v18 = momentNodes;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "No text features were generated from moments %{private}@", &v17, 0xCu);
    }

LABEL_11:
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [(PGTextFeatureGenerator *)self bestTextFeaturesFromTextFeatures:loggingConnection];
  v8 = +[PGLogging sharedLogging];
  loggingConnection3 = [v8 loggingConnection];

  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 count];
    v11 = self->_momentNodes;
    v17 = 134218498;
    v18 = v10;
    v19 = 2048;
    v20 = v6;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "%lu out of %lu text teatures are saved for moments %@", &v17, 0x20u);
  }

  [(PGTextFeatureGenerator *)self _resetProperties];
LABEL_12:

  return v7;
}

- (id)knowledgeFeatures
{
  v23 = *MEMORY[0x277D85DE8];
  _knowledgeOptionsByDomain = [objc_opt_class() _knowledgeOptionsByDomain];
  [(PGTextFeatureGenerator *)self setOptionsByDomain:_knowledgeOptionsByDomain];

  if (!self->_numberOfMoments)
  {
    v11 = +[PGLogging sharedLogging];
    loggingConnection = [v11 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot generate text features with no moment nodes", buf, 2u);
    }

    goto LABEL_18;
  }

  [(PGTextFeatureGenerator *)self analyzeMomentNodes];
  loggingConnection = [(PGTextFeatureGenerator *)self generateTextFeatures];
  if (![loggingConnection count])
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection2 = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      momentNodes = self->_momentNodes;
      *buf = 138477827;
      v22 = momentNodes;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "No text features were generated from moments %{private}@", buf, 0xCu);
    }

LABEL_18:
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  loggingConnection = loggingConnection;
  v6 = [loggingConnection countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(loggingConnection);
        }

        v10 = [MEMORY[0x277CD99F0] pg_textFeatureForFeature:{*(*(&v16 + 1) + 8 * i), v16}];
        if (v10)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [loggingConnection countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(PGTextFeatureGenerator *)self _resetProperties];
LABEL_19:

  return v5;
}

- (void)_resetProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB00]);
  numberOfAssetsBySceneNode = self->_numberOfAssetsBySceneNode;
  self->_numberOfAssetsBySceneNode = v3;

  v5 = [MEMORY[0x277CCA940] set];
  sceneNodes = self->_sceneNodes;
  self->_sceneNodes = v5;

  v7 = [MEMORY[0x277CCA940] set];
  personNodes = self->_personNodes;
  self->_personNodes = v7;

  v9 = [MEMORY[0x277CCA940] set];
  roiNodes = self->_roiNodes;
  self->_roiNodes = v9;

  v11 = [MEMORY[0x277CCA940] set];
  poiNodes = self->_poiNodes;
  self->_poiNodes = v11;

  v13 = [MEMORY[0x277CCA940] set];
  meaningNodes = self->_meaningNodes;
  self->_meaningNodes = v13;

  v15 = [MEMORY[0x277CCA940] set];
  districtNodes = self->_districtNodes;
  self->_districtNodes = v15;

  v17 = [MEMORY[0x277CCA940] set];
  cityNodes = self->_cityNodes;
  self->_cityNodes = v17;

  v19 = [MEMORY[0x277CCA940] set];
  stateNodes = self->_stateNodes;
  self->_stateNodes = v19;

  v21 = [MEMORY[0x277CCA940] set];
  countryNodes = self->_countryNodes;
  self->_countryNodes = v21;

  v23 = [MEMORY[0x277CCA940] set];
  areaNodes = self->_areaNodes;
  self->_areaNodes = v23;

  v25 = [MEMORY[0x277CCA940] set];
  businessNodes = self->_businessNodes;
  self->_businessNodes = v25;

  v27 = [MEMORY[0x277CCA940] set];
  businessCategoryNodes = self->_businessCategoryNodes;
  self->_businessCategoryNodes = v27;

  v29 = [MEMORY[0x277CCA940] set];
  holidayNodes = self->_holidayNodes;
  self->_holidayNodes = v29;

  v31 = [MEMORY[0x277CCA940] set];
  publicEventNodes = self->_publicEventNodes;
  self->_publicEventNodes = v31;

  v33 = [MEMORY[0x277CCA940] set];
  publicEventPerformerNodes = self->_publicEventPerformerNodes;
  self->_publicEventPerformerNodes = v33;

  v35 = [MEMORY[0x277CCA940] set];
  publicEventCategoryNodes = self->_publicEventCategoryNodes;
  self->_publicEventCategoryNodes = v35;
}

- (PGTextFeatureGenerator)initWithMomentNodes:(id)nodes graph:(id)graph
{
  v31 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  v29.receiver = self;
  v29.super_class = PGTextFeatureGenerator;
  v9 = [(PGTextFeatureGenerator *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_momentNodes, nodes);
    v11 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
    locationHelper = v10->_locationHelper;
    v10->_locationHelper = v11;

    v13 = [nodesCopy count];
    v10->_numberOfMoments = v13;
    v14 = [MEMORY[0x277CBEB58] setWithCapacity:v13];
    momentIdentifiers = v10->_momentIdentifiers;
    v10->_momentIdentifiers = v14;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = nodesCopy;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          v10->_numberOfAssets += [v21 numberOfAssets];
          v22 = v10->_momentIdentifiers;
          localIdentifier = [v21 localIdentifier];
          [(NSMutableSet *)v22 addObject:localIdentifier];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }

    [(PGTextFeatureGenerator *)v10 _resetProperties];
  }

  return v10;
}

+ (id)_knowledgeOptionsByDomain
{
  v5[16] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284483510;
  v4[1] = &unk_284483540;
  v5[0] = &unk_2844836C0;
  v5[1] = &unk_2844836C0;
  v4[2] = &unk_284483570;
  v4[3] = &unk_284483588;
  v5[2] = &unk_2844836C0;
  v5[3] = &unk_2844836C0;
  v4[4] = &unk_2844835A0;
  v4[5] = &unk_2844835B8;
  v5[4] = &unk_2844836C0;
  v5[5] = &unk_2844836C0;
  v4[6] = &unk_284483558;
  v4[7] = &unk_2844835E8;
  v5[6] = &unk_2844836C0;
  v5[7] = &unk_2844836C0;
  v4[8] = &unk_284483600;
  v4[9] = &unk_284483618;
  v5[8] = &unk_2844836C0;
  v5[9] = &unk_2844836C0;
  v4[10] = &unk_284483630;
  v4[11] = &unk_284483648;
  v5[10] = &unk_2844836C0;
  v5[11] = &unk_2844836C0;
  v4[12] = &unk_284483660;
  v4[13] = &unk_284483678;
  v5[12] = &unk_2844836C0;
  v5[13] = &unk_2844836C0;
  v4[14] = &unk_284483690;
  v4[15] = &unk_2844836A8;
  v5[14] = &unk_2844836C0;
  v5[15] = &unk_2844836C0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:16];

  return v2;
}

+ (id)_naturalLanguageOptionsByDomain
{
  v5[16] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284483510;
  v4[1] = &unk_284483540;
  v5[0] = &unk_284483528;
  v5[1] = &unk_284483558;
  v4[2] = &unk_284483570;
  v4[3] = &unk_284483588;
  v5[2] = &unk_284483528;
  v5[3] = &unk_284483528;
  v4[4] = &unk_2844835A0;
  v4[5] = &unk_2844835B8;
  v5[4] = &unk_284483528;
  v5[5] = &unk_2844835D0;
  v4[6] = &unk_284483558;
  v4[7] = &unk_2844835E8;
  v5[6] = &unk_2844835D0;
  v5[7] = &unk_2844835D0;
  v4[8] = &unk_284483600;
  v4[9] = &unk_284483618;
  v5[8] = &unk_2844835D0;
  v5[9] = &unk_2844835D0;
  v4[10] = &unk_284483630;
  v4[11] = &unk_284483648;
  v5[10] = &unk_2844835D0;
  v5[11] = &unk_284483648;
  v4[12] = &unk_284483660;
  v4[13] = &unk_284483678;
  v5[12] = &unk_2844835D0;
  v5[13] = &unk_2844835D0;
  v4[14] = &unk_284483690;
  v4[15] = &unk_2844836A8;
  v5[14] = &unk_2844835D0;
  v5[15] = &unk_284483648;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:16];

  return v2;
}

@end