@interface PGMeaningfulEventLooseRequiredCriteriaFactory
+ (id)_amusementParkCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_anniversaryCriteriaWithGraph:(id)graph;
+ (id)_beachingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_beachingSceneNodesWithGraph:(id)graph;
+ (id)_celebrationCriteriaWithGraph:(id)graph;
+ (id)_climbingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_concertCriteriaArrayForMeaningInferenceWithGraph:(id)graph;
+ (id)_concertCriteriaArrayForPublicEventInferenceWithGraph:(id)graph;
+ (id)_concertSceneNodesInGraph:(id)graph;
+ (id)_danceCriteriaWithGraph:(id)graph;
+ (id)_divingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_divingSceneNodesWithGraph:(id)graph;
+ (id)_entertainmentCriteriaWithGraph:(id)graph;
+ (id)_festivalCriteriaArrayWithGraph:(id)graph;
+ (id)_hikingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_hikingSceneNodesWithGraph:(id)graph;
+ (id)_museumCriteriaArrayForMeaningInferenceWithGraph:(id)graph;
+ (id)_museumCriteriaArrayForPublicEventInferenceWithGraph:(id)graph;
+ (id)_museumSceneNodesInGraph:(id)graph;
+ (id)_museumSceneTraitInGraph:(id)graph minimumNumberOfHighConfidenceAssets:(unint64_t)assets;
+ (id)_negativeHikingSceneNodesWithGraph:(id)graph;
+ (id)_negativeMuseumSceneNodesInGraph:(id)graph;
+ (id)_negativeSceneNodesForBeachingWithGraph:(id)graph;
+ (id)_nightOutCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_performanceCriteriaWithGraph:(id)graph;
+ (id)_publicEventCriteriaForCategoryWithName:(id)name inGraph:(id)graph;
+ (id)_requiredCriteriaForIdentifiers:(id)identifiers graph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)identifiers withGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_socialGroupGatheringCriteriaWithGraph:(id)graph;
+ (id)_specialAmusementParkCriteriaWithGraph:(id)graph;
+ (id)_sportEventCriteriaArrayForMeaningInferenceWithGraph:(id)graph;
+ (id)_sportEventCriteriaArrayForPublicEventInferenceWithGraph:(id)graph;
+ (id)_sportEventScenesTraitWithGraph:(id)graph;
+ (id)_theaterCriteriaWithGraph:(id)graph;
+ (id)_weddingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_weddingSceneNodesWithGraph:(id)graph includeWedding:(BOOL)wedding sceneTaxonomy:(id)taxonomy;
+ (id)_winterSportCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_winterSportSceneNodesWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)requiredCriteriaForIdentifiers:(id)identifiers graph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (void)_birthdayCriteriaWithGraph:(id)graph strongBirthdayCriteria:(id *)criteria weakBirthdayCriteria:(id *)birthdayCriteria sceneTaxonomy:(id)taxonomy;
@end

@implementation PGMeaningfulEventLooseRequiredCriteriaFactory

+ (id)_publicEventCriteriaForCategoryWithName:(id)name inGraph:(id)graph
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  graphCopy = graph;
  v7 = [graphCopy anyNodeForLabel:nameCopy domain:901];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_19;
  }

  artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
  v9 = [nameCopy isEqualToString:artsAndMuseums];

  v10 = 0.4;
  if (v9)
  {
    v11 = kPGGraphNodeMeaningMuseum;
  }

  else
  {
    dance = [MEMORY[0x277D27780] dance];
    v14 = [nameCopy isEqualToString:dance];

    if (v14)
    {
      v11 = kPGGraphNodeMeaningDance;
    }

    else
    {
      festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
      v16 = [nameCopy isEqualToString:festivalsAndFairs];

      if (v16)
      {
        v11 = kPGGraphNodeMeaningFestival;
      }

      else
      {
        musicConcerts = [MEMORY[0x277D27780] musicConcerts];
        v18 = [nameCopy isEqualToString:musicConcerts];

        if (v18)
        {
          v11 = kPGGraphNodeMeaningConcert;
        }

        else
        {
          nightLife = [MEMORY[0x277D27780] nightLife];
          v20 = [nameCopy isEqualToString:nightLife];

          if (v20)
          {
            v11 = kPGGraphNodeMeaningNightOut;
            v10 = 0.6;
          }

          else
          {
            sports = [MEMORY[0x277D27780] sports];
            v22 = [nameCopy isEqualToString:sports];

            if (v22)
            {
              v11 = kPGGraphNodeMeaningSportEvent;
            }

            else
            {
              theater = [MEMORY[0x277D27780] theater];
              v24 = [nameCopy isEqualToString:theater];

              if ((v24 & 1) == 0)
              {
                v30 = +[PGLogging sharedLogging];
                loggingConnection = [v30 loggingConnection];

                if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
                {
                  v31 = 138412290;
                  v32 = nameCopy;
                  _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Not handling category with name %@", &v31, 0xCu);
                }

                v12 = 0;
                goto LABEL_18;
              }

              v11 = kPGGraphNodeMeaningTheater;
            }
          }
        }
      }
    }
  }

  loggingConnection = *v11;
  v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:loggingConnection minimumScore:graphCopy graph:v10];
  v26 = [PGMeaningfulEventCollectionTrait alloc];
  collection = [v7 collection];
  v28 = [(PGMeaningfulEventCollectionTrait *)v26 initWithNodes:collection];

  [(PGMeaningfulEventTrait *)v28 setMinimumScore:1.0];
  [(PGMeaningfulEventCriteria *)v12 setPublicEventCategoriesTrait:v28];

LABEL_18:
LABEL_19:

  return v12;
}

+ (id)_negativeMuseumSceneNodesInGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"food", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_museumSceneNodesInGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"illustrations", @"painting", @"museum", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_museumSceneTraitInGraph:(id)graph minimumNumberOfHighConfidenceAssets:(unint64_t)assets
{
  v5 = [self _museumSceneNodesInGraph:graph];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    [(PGMeaningfulEventTrait *)v8 setMinimumScore:1.0 / v7];
    [(PGMeaningfulEventSceneCollectionTrait *)v8 setMinimumNumberOfHighConfidenceAssets:assets];
    v9 = vcvtas_u32_f32(vcvts_n_f32_u64(assets, 1uLL));
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    [(PGMeaningfulEventSceneCollectionTrait *)v8 setMinimumNumberOfNegativeHighConfidenceAssets:v10];
    [(PGMeaningfulEventSceneCollectionTrait *)v8 setAccumulateHighConfidenceAssetCounts:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_concertSceneNodesInGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"concert", @"singer", @"deejay", @"orchestra", @"musical_instrument", @"speakers_music", @"microphone", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_weddingSceneNodesWithGraph:(id)graph includeWedding:(BOOL)wedding sceneTaxonomy:(id)taxonomy
{
  weddingCopy = wedding;
  taxonomyCopy = taxonomy;
  v8 = MEMORY[0x277CBEB58];
  graphCopy = graph;
  v10 = [v8 set];
  v11 = v10;
  if (weddingCopy)
  {
    [v10 addObject:@"wedding"];
  }

  v12 = [taxonomyCopy nodeForName:@"wedding"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__PGMeaningfulEventLooseRequiredCriteriaFactory__weddingSceneNodesWithGraph_includeWedding_sceneTaxonomy___block_invoke;
  v16[3] = &unk_2788884F0;
  v17 = v11;
  v13 = v11;
  [v12 visitChildrenUsingNameBlock:v16];
  v14 = [graphCopy sceneNodesForSceneNames:v13];

  return v14;
}

+ (id)_negativeHikingSceneNodesWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"hiking", @"canyon", @"volcano", @"cliff", @"waterfall", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_hikingSceneNodesWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"hiking", @"mountain", @"canyon", @"volcano", @"glacier", @"cliff", @"waterfall", @"forest", @"desert", @"hill", @"trail", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_divingSceneNodesWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"diving", @"underwater", @"submarine_water", @"scuba", @"wetsuit", @"coral_reef", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_negativeSceneNodesForBeachingWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"snow", @"blizzard", @"snowball", @"snowman", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_beachingSceneNodesWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"beach", @"surfing", @"surfboard", @"mollusk", @"shore", @"folding_chair", @"jetski", @"windsurfing", @"barnacle", @"sand", @"skating", @"lighthouse", @"swimsuit", @"sandcastle", @"sunbathing", @"watersport", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  return v6;
}

+ (id)_winterSportSceneNodesWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  graphCopy = graph;
  v6 = [taxonomy nodeForName:@"winter_sport"];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] setWithObjects:{@"winter_sport", @"ski_boot", @"snowshoe", @"ski_equipment", @"snowboard", @"snowmobile", 0}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __95__PGMeaningfulEventLooseRequiredCriteriaFactory__winterSportSceneNodesWithGraph_sceneTaxonomy___block_invoke;
    v11[3] = &unk_2788884F0;
    v12 = v7;
    v8 = v7;
    [v6 traverseChildrenUsingNameBlock:v11];
    v9 = [graphCopy sceneNodesForSceneNames:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_sportEventScenesTraitWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v5 = [v3 setWithObjects:{@"sumo", @"badminton", @"softball", @"soccer", @"cricket_sport", @"rugby", @"scoreboard", @"tennis", @"cheerleading", @"polo", @"hockey", @"football", @"grand_prix", @"jockey_horse", @"wrestling", @"baseball", @"motorsport", @"basketball", @"rink", @"arena", @"motocross", @"stadium", @"ballgames", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];

  if ([v6 count])
  {
    v7 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v6];
    -[PGMeaningfulEventTrait setMinimumScore:](v7, "setMinimumScore:", 1.0 / [v6 count]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_socialGroupGatheringCriteriaWithGraph:(id)graph
{
  v60 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  meNode = [graphCopy meNode];
  v32 = meNode;
  if (meNode)
  {
    localIdentifier = [meNode localIdentifier];
    if ([localIdentifier length])
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 3;
  }

  array = [MEMORY[0x277CBEB18] array];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __88__PGMeaningfulEventLooseRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke;
  v54[3] = &unk_2788815F0;
  v56 = v5;
  v34 = array;
  v55 = v34;
  [graphCopy enumerateNodesWithLabel:@"SocialGroup" domain:302 usingBlock:v54];
  v7 = [v34 count];
  if (v7 >= 2)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    if (v7 > 3)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __88__PGMeaningfulEventLooseRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3;
      v45[3] = &unk_278881638;
      v45[4] = &v50;
      v15 = v34;
      [MEMORY[0x277D27688] calculateStandardDeviationForItems:v34 valueBlock:&__block_literal_global_526 result:v45];
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v9 = v34;
      v10 = [v9 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v10)
      {
        v11 = 0;
        v12 = *v47;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v47 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v11 += [*(*(&v46 + 1) + 8 * i) numberOfMomentNodes];
          }

          v10 = [v9 countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v10);
        v14 = v11 * 0.65;
      }

      else
      {
        v14 = 0.0;
      }

      v51[3] = ceil(v14);
      v15 = v34;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = [v15 copy];
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v58 count:16];
    if (v17)
    {
      v18 = *v42;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v41 + 1) + 8 * j);
          numberOfMomentNodes = [v20 numberOfMomentNodes];
          if (v51[3] <= numberOfMomentNodes)
          {
            [v34 removeObject:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v41 objects:v58 count:16];
      }

      while (v17);
    }

    _Block_object_dispose(&v50, 8);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v34, "count")}];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v34;
    v22 = [obj countByEnumeratingWithState:&v37 objects:v57 count:16];
    if (v22)
    {
      v23 = *v38;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v37 + 1) + 8 * k);
          v26 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Gathering" minimumScore:graphCopy graph:0.01];
          v27 = [PGMeaningfulEventCollectionTrait alloc];
          collection = [v25 collection];
          v29 = [(PGMeaningfulEventCollectionTrait *)v27 initWithNodes:collection];
          [(PGMeaningfulEventCriteria *)v26 setSocialGroupsTrait:v29];

          socialGroupsTrait = [(PGMeaningfulEventCriteria *)v26 socialGroupsTrait];
          [socialGroupsTrait setMinimumScore:1.0];

          [(PGMeaningfulEventRequiredCriteria *)v26 setMustBeInteresting:1];
          [v8 addObject:v26];
        }

        v22 = [obj countByEnumeratingWithState:&v37 objects:v57 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

void __88__PGMeaningfulEventLooseRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfMemberNodes] >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

double __88__PGMeaningfulEventLooseRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3(uint64_t a1, double a2, double a3)
{
  result = a2 + a3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)_specialAmusementParkCriteriaWithGraph:(id)graph
{
  v10[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v10[0] = @"AmusementPark";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [PGGraphPOINodeCollection poiNodesForLabels:v4 inGraph:graphCopy];

  if ([v5 count])
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"AmusementPark" minimumScore:graphCopy graph:0.4];
    v7 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v5];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:0.7];
    [(PGMeaningfulEventCollectionTrait *)v7 setAdditionalMatchingBlock:&__block_literal_global_17892];
    [(PGMeaningfulEventCriteria *)v6 setPoisTrait:v7];
    v8 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v6 setLocationsTrait:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __88__PGMeaningfulEventLooseRequiredCriteriaFactory__specialAmusementParkCriteriaWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 collection];
  v6 = +[PGGraphPOIEdge filterSpecial];
  v7 = [(MAEdgeCollection *)PGGraphPOIEdgeCollection edgesFromNodes:v5 toNodes:v4 matchingFilter:v6];

  v8 = [v7 count] != 0;
  return v8;
}

+ (id)_amusementParkCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v27[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = MEMORY[0x277CBEB18];
  taxonomyCopy = taxonomy;
  array = [v7 array];
  v10 = [self _specialAmusementParkCriteriaWithGraph:graphCopy];
  if (v10)
  {
    [array addObject:v10];
  }

  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [taxonomyCopy nodeForName:@"amusement_park"];

  if (v12)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __100__PGMeaningfulEventLooseRequiredCriteriaFactory__amusementParkCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
    v25[3] = &unk_2788884F0;
    v26 = v11;
    [v12 traverseChildrenUsingNameBlock:v25];
  }

  v13 = [graphCopy sceneNodesForSceneNames:v11];
  v27[0] = @"AmusementPark";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v15 = [PGGraphPOINodeCollection poiNodesForLabels:v14 inGraph:graphCopy];

  if ([v13 count] && objc_msgSend(v15, "count"))
  {
    v16 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"AmusementPark" minimumScore:graphCopy graph:0.4];
    v24 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v13];
    -[PGMeaningfulEventTrait setMinimumScore:](v24, "setMinimumScore:", 1.0 / [v13 count]);
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v24];
    v17 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v15];
    [(PGMeaningfulEventTrait *)v17 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v16 setPoisTrait:v17];
    [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    v18 = v12;
    v19 = v11;
    v20 = v10;
    v22 = v21 = array;
    [(PGMeaningfulEventCriteria *)v16 setLocationsTrait:v22];
    [v21 addObject:v16];

    array = v21;
    v10 = v20;
    v11 = v19;
    v12 = v18;
  }

  return array;
}

+ (id)_entertainmentCriteriaWithGraph:(id)graph
{
  v12[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = +[PGMeaningfulEventRequiredCriteriaFactory entertainmentSceneTaxonomyNames];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  v12[0] = @"Entertainment";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [PGGraphPOINodeCollection poiNodesForLabels:v6 inGraph:graphCopy];

  if ([v7 count])
  {
    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Entertainment" minimumScore:graphCopy graph:0.4];
    if ([v5 count])
    {
      v9 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
      -[PGMeaningfulEventTrait setMinimumScore:](v9, "setMinimumScore:", 1.0 / [v5 count]);
      [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v9];
    }

    v10 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v7];
    [(PGMeaningfulEventTrait *)v10 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v8 setPoisTrait:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_beachingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v20[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [self _beachingSceneNodesWithGraph:graphCopy];
  if ([v8 count])
  {
    v20[0] = @"Beach";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:graphCopy];

    v11 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v12 = [self _negativeHikingSceneNodesWithGraph:graphCopy];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [self _negativeSceneNodesForBeachingWithGraph:graphCopy];
    v15 = [v13 collectionByFormingUnionWith:v14];

    v16 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Beaching" minimumScore:graphCopy graph:0.4];
    v17 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v15];
    -[PGMeaningfulEventTrait setMinimumScore:](v17, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfNegativeHighConfidenceAssets:4];
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v17];
    if ([v10 count])
    {
      v18 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
      [(PGMeaningfulEventTrait *)v18 setMinimumScore:1.0];
      [(PGMeaningfulEventCriteria *)v16 setRoisTrait:v18];
    }

    [(PGMeaningfulEventRequiredCriteria *)v16 setMustBeInteresting:0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_climbingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v16[4] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"rock_climbing"];
  v7 = [graphCopy sceneNodesForSceneNames:v6];

  if ([v7 count])
  {
    v16[0] = @"Mountain";
    v16[1] = @"Nature";
    v16[2] = @"Beach";
    v16[3] = @"Water";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
    v9 = [PGGraphROINodeCollection roiNodesForLabels:v8 inGraph:graphCopy];

    v10 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Climbing" minimumScore:graphCopy graph:0.4];
    if ([v9 count])
    {
      v11 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v9];
      [(PGMeaningfulEventTrait *)v11 setMinimumScore:0.25];
      [(PGMeaningfulEventCriteria *)v10 setRoisTrait:v11];
    }

    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v10 setNumberOfPeopleTrait:v12];
    v13 = [self _divingSceneNodesWithGraph:graphCopy];
    v14 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7 negativeNodes:v13];
    [(PGMeaningfulEventSceneCollectionTrait *)v14 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventSceneCollectionTrait *)v14 setMinimumRatioOfHighConfidenceAssets:0.5];
    [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v14];
    [(PGMeaningfulEventRequiredCriteria *)v10 setMustBeInteresting:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_hikingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v30[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v6 = [self _hikingSceneNodesWithGraph:graphCopy];
  v30[0] = @"Hiking";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v8 = [PGGraphPOINodeCollection poiNodesForLabels:v7 inGraph:graphCopy];

  v29[0] = @"Mountain";
  v29[1] = @"Nature";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:graphCopy];

  if ([v6 count] && (objc_msgSend(v8, "count") || objc_msgSend(v10, "count")))
  {
    v25 = [MEMORY[0x277CBEB98] setWithObjects:{@"gown", @"suit", @"necktie", @"vineyard", @"cycling", @"bicycle", @"golf", @"skydiving", @"sport", 0}];
    v11 = [graphCopy sceneNodesForSceneNames:v25];
    v12 = [self _beachingSceneNodesWithGraph:graphCopy];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [self _divingSceneNodesWithGraph:graphCopy];
    v24 = [v13 collectionByFormingUnionWith:v14];

    v27 = v8;
    v15 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:graphCopy graph:0.4];
    v16 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v6 negativeNodes:v24];
    -[PGMeaningfulEventTrait setMinimumScore:](v16, "setMinimumScore:", 1.0 / [v6 count]);
    [(PGMeaningfulEventCriteria *)v15 setScenesTrait:v16];
    v26 = v10;
    v17 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v17 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v15 setRoisTrait:v17];
    v18 = [[PGMeaningfulEventLocationMobilityTrait alloc] initWithMobility:1];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v15 setLocationMobilityTrait:v18];
    v19 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v15 setLocationsTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v15 setMustBeInteresting:1];
    v20 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:graphCopy graph:0.4];
    -[PGMeaningfulEventTrait setMinimumScore:](v16, "setMinimumScore:", 1.0 / [v6 count]);
    [(PGMeaningfulEventCriteria *)v20 setScenesTrait:v16];
    v21 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v21 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v20 setPoisTrait:v21];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v20 setLocationMobilityTrait:v18];
    [(PGMeaningfulEventCriteria *)v20 setLocationsTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v20 setMustBeInteresting:1];
    v28[0] = v15;
    v28[1] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

    v8 = v27;
    v10 = v26;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)identifiers withGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v102[2] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  v9 = [taxonomy nodeForName:@"tableware"];
  v10 = [MEMORY[0x277CBEB58] setWithObjects:{@"restaurant", @"food", 0}];
  v11 = [MEMORY[0x277CBEB58] setWithObjects:{@"wine_bottle", @"wine", 0}];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __117__PGMeaningfulEventLooseRequiredCriteriaFactory__restaurantCriteriaByCriteriaForIdentifiers_withGraph_sceneTaxonomy___block_invoke;
  v85[3] = &unk_2788884F0;
  v12 = v11;
  v86 = v12;
  v64 = v9;
  [v9 traverseChildrenUsingNameBlock:v85];
  v63 = v10;
  v13 = [graphCopy sceneNodesForSceneNames:v10];
  v14 = [graphCopy sceneNodesForSceneNames:v12];
  v72 = v13;
  v15 = [v13 collectionByFormingUnionWith:v14];
  v62 = [MEMORY[0x277CBEB98] setWithObjects:{@"aquarium", @"underwater", 0}];
  v67 = [graphCopy sceneNodesForSceneNames:?];
  v102[0] = @"Nightlife";
  v102[1] = @"Restaurant";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
  v17 = [PGGraphPOINodeCollection poiNodesForLabels:v16 inGraph:graphCopy];

  v101 = @"Museum";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
  v73 = graphCopy;
  v65 = [PGGraphPOINodeCollection poiNodesForLabels:v18 inGraph:graphCopy];

  v71 = v15;
  if ([v15 count] && objc_msgSend(v17, "count"))
  {
    v66 = v17;
    v60 = v14;
    v61 = v12;
    v98[0] = @"label";
    v98[1] = @"significantPartsOfDay";
    v70 = identifiersCopy;
    v99[0] = @"Lunch";
    v99[1] = &unk_284482EC8;
    v98[2] = @"forbiddenPartOfDay";
    v98[3] = @"minimumNumberOfHighConfidenceScenes";
    v99[2] = &unk_284482EE0;
    v99[3] = &unk_284482E98;
    v19 = MEMORY[0x277CBEC28];
    v98[4] = @"usePOIs";
    v98[5] = @"useNegativePOIs";
    v99[4] = MEMORY[0x277CBEC28];
    v99[5] = MEMORY[0x277CBEC28];
    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:6];
    v100[0] = v79;
    v96[0] = @"label";
    v96[1] = @"significantPartsOfDay";
    v97[0] = @"Lunch";
    v97[1] = &unk_284482EC8;
    v96[2] = @"forbiddenPartOfDay";
    v96[3] = @"minimumNumberOfHighConfidenceScenes";
    v97[2] = &unk_284482EE0;
    v97[3] = &unk_284482EF8;
    v96[4] = @"usePOIs";
    v96[5] = @"useNegativePOIs";
    v97[4] = MEMORY[0x277CBEC38];
    v20 = MEMORY[0x277CBEC38];
    v97[5] = v19;
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:6];
    v100[1] = v77;
    v94[0] = @"label";
    v94[1] = @"significantPartsOfDay";
    v95[0] = @"Dinner";
    v95[1] = &unk_284482EE0;
    v94[2] = @"forbiddenPartOfDay";
    v94[3] = @"allPartsOfDay";
    v95[2] = &unk_284482F10;
    v95[3] = &unk_284482F28;
    v94[4] = @"minimumDuration";
    v94[5] = @"minimumNumberOfHighConfidenceScenes";
    v95[4] = &unk_2844870F8;
    v95[5] = &unk_284482E98;
    v94[6] = @"usePOIs";
    v94[7] = @"useNegativePOIs";
    v95[6] = v20;
    v95[7] = v19;
    obja = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:8];
    v100[2] = obja;
    v92[0] = @"label";
    v92[1] = @"significantPartsOfDay";
    v93[0] = @"Dinner";
    v93[1] = &unk_284482EE0;
    v92[2] = @"forbiddenPartOfDay";
    v92[3] = @"allPartsOfDay";
    v93[2] = &unk_284482F10;
    v93[3] = &unk_284482F28;
    v92[4] = @"minimumDuration";
    v92[5] = @"minimumNumberOfHighConfidenceScenes";
    v93[4] = &unk_2844870F8;
    v93[5] = &unk_284482E98;
    v92[6] = @"usePOIs";
    v92[7] = @"useNegativePOIs";
    v93[6] = v19;
    v93[7] = v19;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:8];
    v100[3] = v21;
    v90[0] = @"label";
    v90[1] = @"forbiddenPartOfDay";
    v91[0] = @"Breakfast";
    v91[1] = &unk_284482F40;
    v90[2] = @"significantPartsOfDay";
    v90[3] = @"minimumNumberOfHighConfidenceScenes";
    v91[2] = &unk_284482F58;
    v91[3] = &unk_284482EF8;
    v90[4] = @"usePOIs";
    v90[5] = @"useNegativePOIs";
    v91[4] = MEMORY[0x277CBEC38];
    v91[5] = v19;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:6];
    v100[4] = v22;
    v88[0] = @"label";
    v88[1] = @"forbiddenPartOfDay";
    v89[0] = @"Breakfast";
    v89[1] = &unk_284482F40;
    v88[2] = @"significantPartsOfDay";
    v88[3] = @"minimumNumberOfHighConfidenceScenes";
    v89[2] = &unk_284482F58;
    v89[3] = &unk_284482E98;
    v88[4] = @"usePOIs";
    v88[5] = @"useNegativePOIs";
    v89[4] = v19;
    v89[5] = v19;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:6];
    v100[5] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:6];

    identifiersCopy = v70;
    v68 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v70, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v82;
      v69 = *v82;
      do
      {
        v28 = 0;
        v74 = v26;
        do
        {
          if (*v82 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v81 + 1) + 8 * v28);
          v30 = [v29 objectForKeyedSubscript:@"label"];
          if ([identifiersCopy containsObject:v30])
          {
            v80 = [v29 objectForKeyedSubscript:@"significantPartsOfDay"];
            v78 = [v29 objectForKeyedSubscript:@"forbiddenPartOfDay"];
            v31 = [v29 objectForKeyedSubscript:@"allPartsOfDay"];
            v32 = [v29 objectForKeyedSubscript:@"minimumDuration"];
            v33 = [v29 objectForKeyedSubscript:@"minimumNumberOfHighConfidenceScenes"];
            unsignedIntegerValue = [v33 unsignedIntegerValue];

            if (unsignedIntegerValue <= 1)
            {
              v35 = 1;
            }

            else
            {
              v35 = unsignedIntegerValue;
            }

            v36 = [v29 objectForKeyedSubscript:@"usePOIs"];
            bOOLValue = [v36 BOOLValue];

            v38 = [v29 objectForKeyedSubscript:@"useNegativePOIs"];
            bOOLValue2 = [v38 BOOLValue];

            v40 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v30 minimumScore:v73 graph:0.6];
            v41 = v72;
            if (!bOOLValue)
            {
              v41 = v71;
            }

            v42 = v41;
            v43 = [v42 count];
            if (v43)
            {
              v44 = v43;
              if (bOOLValue)
              {
                v45 = [PGMeaningfulEventCollectionTrait alloc];
                if (bOOLValue2)
                {
                  v46 = [(PGMeaningfulEventCollectionTrait *)v45 initWithNodes:v66 negativeNodes:v65];
                }

                else
                {
                  v46 = [(PGMeaningfulEventCollectionTrait *)v45 initWithNodes:v66];
                }

                v47 = v46;
                [(PGMeaningfulEventTrait *)v46 setMinimumScore:0.7];
                [(PGMeaningfulEventCriteria *)v40 setPoisTrait:v47];
              }

              v48 = 1.0 / v44;
              v49 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v42 negativeNodes:v67];
              [(PGMeaningfulEventTrait *)v49 setMinimumScore:v48];
              [(PGMeaningfulEventSceneCollectionTrait *)v49 setMinimumNumberOfHighConfidenceAssets:v35];
              [(PGMeaningfulEventSceneCollectionTrait *)v49 setAccumulateHighConfidenceAssetCounts:1];
              [(PGMeaningfulEventCriteria *)v40 setScenesTrait:v49];
              unsignedIntegerValue2 = [v80 unsignedIntegerValue];
              if (v78)
              {
                unsignedIntegerValue3 = [v78 unsignedIntegerValue];
              }

              else
              {
                unsignedIntegerValue3 = 1;
              }

              v52 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:unsignedIntegerValue2 forbiddenPartOfDay:unsignedIntegerValue3];
              [(PGMeaningfulEventTrait *)v52 setMinimumScore:0.75];
              [(PGMeaningfulEventCriteria *)v40 setSignificantPartsOfDayTrait:v52];
              if (v31)
              {
                v53 = -[PGMeaningfulEventPartOfDayTrait initWithPartOfDay:forbiddenPartOfDay:]([PGMeaningfulEventPartOfDayTrait alloc], "initWithPartOfDay:forbiddenPartOfDay:", [v31 unsignedIntegerValue], 1);
                [(PGMeaningfulEventTrait *)v53 setMinimumScore:0.75];
                [(PGMeaningfulEventCriteria *)v40 setAllPartsOfDayTrait:v53];
              }

              if (v32)
              {
                v54 = [PGMeaningfulEventNumberTrait alloc];
                [v32 doubleValue];
                v55 = [(PGMeaningfulEventNumberTrait *)v54 initWithNumberValue:?];
                [(PGMeaningfulEventTrait *)v55 setMinimumScore:1.0];
                [(PGMeaningfulEventCriteria *)v40 setMinimumDurationTrait:v55];
              }

              array = [v68 objectForKeyedSubscript:v30];
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
                [v68 setObject:array forKeyedSubscript:v30];
              }

              [array addObject:v40];
            }

            v27 = v69;
            identifiersCopy = v70;
            v26 = v74;
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v26);
    }

    v58 = v63;
    v57 = v64;
    v14 = v60;
    v12 = v61;
    v17 = v66;
  }

  else
  {
    v68 = MEMORY[0x277CBEC10];
    v58 = v10;
    v57 = v64;
  }

  return v68;
}

+ (id)_anniversaryCriteriaWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
  if ([v4 count])
  {
    anyNode = [v4 anyNode];
    anniversaryDateComponents = [anyNode anniversaryDateComponents];
    if (anniversaryDateComponents)
    {
      array = [MEMORY[0x277CBEB18] array];
      year = [anniversaryDateComponents year];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __79__PGMeaningfulEventLooseRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke;
      v13[3] = &unk_278880E08;
      v17 = year;
      v14 = anniversaryDateComponents;
      v15 = graphCopy;
      v9 = array;
      v16 = v9;
      [v15 enumerateNodesWithLabel:@"Year" domain:400 usingBlock:v13];
      v10 = v16;
      v11 = v9;
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

void __79__PGMeaningfulEventLooseRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke(id *a1, void *a2)
{
  v3 = [a2 calendarUnitValue];
  if (a1[7] != v3)
  {
    [a1[4] setYear:v3];
    v10 = [MEMORY[0x277D27690] dateFromComponents:a1[4] inTimeZone:0];
    v4 = [a1[5] dateNodeForLocalDate:?];
    if (v4)
    {
      v5 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Anniversary" minimumScore:a1[5] graph:0.5];
      v6 = [PGMeaningfulEventCollectionTrait alloc];
      v7 = [v4 collection];
      v8 = [(PGMeaningfulEventCollectionTrait *)v6 initWithNodes:v7];
      [(PGMeaningfulEventCriteria *)v5 setDatesTrait:v8];

      v9 = [(PGMeaningfulEventCriteria *)v5 datesTrait];
      [v9 setMinimumScore:1.0];

      [a1[6] addObject:v5];
    }
  }
}

+ (id)_nightOutCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v72 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48];
  [(PGMeaningfulEventTrait *)v9 setMinimumScore:0.6];
  nightLife = [MEMORY[0x277D27780] nightLife];
  v11 = [self _publicEventCriteriaForCategoryWithName:nightLife inGraph:graphCopy];

  if (v11)
  {
    [v11 setSignificantPartsOfDayTrait:v9];
    [array addObject:v11];
  }

  v43 = v11;
  v44 = v9;
  v50 = array;
  v49 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48 forbiddenPartOfDay:12];
  [(PGMeaningfulEventTrait *)v49 setMinimumScore:0.3];
  v51 = [MEMORY[0x277CBEB58] setWithArray:&unk_2844858C8];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = [&unk_2844858B0 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v59;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v59 != v14)
        {
          objc_enumerationMutation(&unk_2844858B0);
        }

        v16 = [taxonomyCopy nodeForName:*(*(&v58 + 1) + 8 * i)];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __95__PGMeaningfulEventLooseRequiredCriteriaFactory__nightOutCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
        v56[3] = &unk_2788884F0;
        v57 = v51;
        [v16 traverseChildrenUsingNameBlock:v56];
      }

      v13 = [&unk_2844858B0 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v13);
  }

  v45 = taxonomyCopy;
  v17 = [graphCopy sceneNodesForSceneNames:v51];
  v70[0] = @"Nightlife";
  v70[1] = @"Restaurant";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v19 = [PGGraphPOINodeCollection poiNodesForLabels:v18 inGraph:graphCopy];

  if ([v17 count])
  {
    v67[0] = @"minimumDuration";
    v67[1] = @"minimumNumberOfHighConfidenceScenes";
    v68[1] = &unk_284482E98;
    v67[2] = @"usePOIs";
    v68[0] = &unk_2844870D8;
    v68[2] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
    v69[0] = v20;
    v65[0] = @"minimumDuration";
    v65[1] = @"minimumNumberOfHighConfidenceScenes";
    v66[0] = &unk_2844870D8;
    v66[1] = &unk_284482EB0;
    v65[2] = @"usePOIs";
    v66[2] = MEMORY[0x277CBEC28];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
    v69[1] = v21;
    v63[0] = @"minimumDuration";
    v63[1] = @"minimumNumberOfHighConfidenceScenes";
    v64[0] = &unk_2844870E8;
    v64[1] = &unk_284482EB0;
    v63[2] = @"usePOIs";
    v64[2] = MEMORY[0x277CBEC38];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];
    v69[2] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];

    v48 = graphCopy;
    v47 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v53 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v52 + 1) + 8 * j);
          v29 = [v28 objectForKeyedSubscript:@"minimumDuration"];
          [v29 doubleValue];
          v31 = v30;

          v32 = [v28 objectForKeyedSubscript:@"minimumNumberOfHighConfidenceScenes"];
          unsignedIntegerValue = [v32 unsignedIntegerValue];

          if (unsignedIntegerValue <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = unsignedIntegerValue;
          }

          v35 = [v28 objectForKeyedSubscript:@"usePOIs"];
          bOOLValue = [v35 BOOLValue];

          v37 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"NightOut" minimumScore:v48 graph:0.6];
          [(PGMeaningfulEventCriteria *)v37 setLocationsTrait:v47];
          v38 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3.0];
          [(PGMeaningfulEventCriteria *)v37 setNumberOfPeopleTrait:v38];

          v39 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v17];
          -[PGMeaningfulEventTrait setMinimumScore:](v39, "setMinimumScore:", 1.0 / [v17 count]);
          [(PGMeaningfulEventSceneCollectionTrait *)v39 setMinimumNumberOfHighConfidenceAssets:v34];
          [(PGMeaningfulEventCriteria *)v37 setScenesTrait:v39];
          if ([v19 count] && bOOLValue)
          {
            v40 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v19];
            [(PGMeaningfulEventTrait *)v40 setMinimumScore:0.4];
            [(PGMeaningfulEventCriteria *)v37 setPoisTrait:v40];
          }

          [(PGMeaningfulEventRequiredCriteria *)v37 setMustBeInteresting:0];
          v41 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:v31];
          [(PGMeaningfulEventTrait *)v41 setMinimumScore:1.0];
          [(PGMeaningfulEventCriteria *)v37 setMinimumDurationTrait:v41];
          [(PGMeaningfulEventCriteria *)v37 setSignificantPartsOfDayTrait:v49];
          [v50 addObject:v37];
        }

        v25 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v25);
    }

    graphCopy = v48;
  }

  return v50;
}

+ (id)_museumCriteriaArrayForMeaningInferenceWithGraph:(id)graph
{
  v17[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
  v7 = [self _publicEventCriteriaForCategoryWithName:artsAndMuseums inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _museumSceneTraitInGraph:graphCopy minimumNumberOfHighConfidenceAssets:6];
  v17[0] = @"Museum";
  v17[1] = @"Culture";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  if (v8 && [v10 count])
  {
    v11 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Museum" minimumScore:graphCopy graph:0.4];
    v12 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v11 setPoisTrait:v12];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v8];
    v13 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:62];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.2];
    [(PGMeaningfulEventCriteria *)v11 setSignificantPartsOfDayTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1800.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
    v15 = [PGMeaningfulEventRequiredCriteriaFactory locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
    [array addObject:v11];
  }

  return array;
}

+ (id)_museumCriteriaArrayForPublicEventInferenceWithGraph:(id)graph
{
  v10[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = [self _museumSceneTraitInGraph:graphCopy minimumNumberOfHighConfidenceAssets:3];
  if (v5)
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Museum" minimumScore:graphCopy graph:0.4];
    [(PGMeaningfulEventCriteria *)v6 setScenesTrait:v5];
    v7 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:62];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:0.2];
    [(PGMeaningfulEventCriteria *)v6 setSignificantPartsOfDayTrait:v7];
    v10[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

+ (id)_festivalCriteriaArrayWithGraph:(id)graph
{
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
  v7 = [self _publicEventCriteriaForCategoryWithName:festivalsAndFairs inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _concertSceneNodesInGraph:graphCopy];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Festival" minimumScore:graphCopy graph:0.4];
    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:5.0];
    [(PGMeaningfulEventCriteria *)v11 setNumberOfPeopleTrait:v12];

    v13 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0 / v10];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:5];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:10800.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
    [array addObject:v11];
  }

  return array;
}

+ (id)_concertCriteriaArrayForPublicEventInferenceWithGraph:(id)graph
{
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [self _concertSceneNodesInGraph:graphCopy];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"performance", @"nightclub", 0}];
  v8 = [graphCopy sceneNodesForSceneNames:v7];
  v9 = [v6 collectionByFormingUnionWith:v8];

  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Concert" minimumScore:graphCopy graph:0.4];
    v13 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v9];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0 / v11];
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:60];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.4];
    [(PGMeaningfulEventCriteria *)v12 setSignificantPartsOfDayTrait:v14];
    [array addObject:v12];
  }

  return array;
}

+ (id)_concertCriteriaArrayForMeaningInferenceWithGraph:(id)graph
{
  v19[5] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  musicConcerts = [MEMORY[0x277D27780] musicConcerts];
  v7 = [self _publicEventCriteriaForCategoryWithName:musicConcerts inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _concertSceneNodesInGraph:graphCopy];
  v19[0] = @"Nightlife";
  v19[1] = @"Culture";
  v19[2] = @"Entertainment";
  v19[3] = @"Stadium";
  v19[4] = @"Performance";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  v11 = [v8 count];
  if (v11)
  {
    v12 = v11;
    v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Concert" minimumScore:graphCopy graph:0.4];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventCriteria *)v13 setNumberOfPeopleTrait:v14];

    if ([v10 count])
    {
      v15 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
      [(PGMeaningfulEventTrait *)v15 setMinimumScore:0.1];
      [(PGMeaningfulEventCriteria *)v13 setPoisTrait:v15];
    }

    v16 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v16 setMinimumScore:1.0 / v12];
    [(PGMeaningfulEventSceneCollectionTrait *)v16 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v16];
    v17 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:300.0];
    [(PGMeaningfulEventTrait *)v17 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v13 setMinimumDurationTrait:v17];
    [array addObject:v13];
  }

  return array;
}

+ (id)_performanceCriteriaWithGraph:(id)graph
{
  v13[4] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"entertainer", @"ballet_dancer", @"acrobat", @"clown", @"deejay", @"singer", @"rodeo", @"dancing", @"swing_dancing", @"hula", @"bellydance", @"breakdancing", @"samba", @"karaoke", @"airshow", @"concert", @"orchestra", @"juggling", @"magic", @"circus", @"ballet", @"parade", @"performance", 0}];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v13[0] = @"Nightlife";
    v13[1] = @"Culture";
    v13[2] = @"Entertainment";
    v13[3] = @"Performance";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    v7 = [PGGraphPOINodeCollection poiNodesForLabels:v6 inGraph:graphCopy];

    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Performance" minimumScore:graphCopy graph:0.4];
    v9 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventCriteria *)v8 setNumberOfPeopleTrait:v9];

    if ([v7 count])
    {
      v10 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v7];
      [(PGMeaningfulEventTrait *)v10 setMinimumScore:0.1];
      [(PGMeaningfulEventCriteria *)v8 setPoisTrait:v10];
    }

    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    -[PGMeaningfulEventTrait setMinimumScore:](v11, "setMinimumScore:", 1.0 / [v5 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_danceCriteriaWithGraph:(id)graph
{
  v4 = MEMORY[0x277D27780];
  graphCopy = graph;
  dance = [v4 dance];
  v7 = [self _publicEventCriteriaForCategoryWithName:dance inGraph:graphCopy];

  return v7;
}

+ (id)_theaterCriteriaWithGraph:(id)graph
{
  v4 = MEMORY[0x277D27780];
  graphCopy = graph;
  theater = [v4 theater];
  v7 = [self _publicEventCriteriaForCategoryWithName:theater inGraph:graphCopy];

  return v7;
}

+ (id)_winterSportCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v14[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomy];
  if ([v7 count])
  {
    v14[0] = @"Mountain";
    v14[1] = @"Nature";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v9 = [PGGraphROINodeCollection roiNodesForLabels:v8 inGraph:graphCopy];

    v10 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"WinterSport" minimumScore:graphCopy graph:0.6];
    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v11, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v11];
    if ([v9 count])
    {
      v12 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v9];
      [(PGMeaningfulEventTrait *)v12 setMinimumScore:0.25];
      [(PGMeaningfulEventCriteria *)v10 setRoisTrait:v12];
    }

    [(PGMeaningfulEventRequiredCriteria *)v10 setMustBeInteresting:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_divingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v21[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [self _divingSceneNodesWithGraph:graphCopy];
  v21[0] = @"Water";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:graphCopy];

  if ([v8 count] && objc_msgSend(v10, "count"))
  {
    v11 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v12 = [self _negativeHikingSceneNodesWithGraph:graphCopy];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{@"surfing", @"surfboard", @"watersport", @"jetski", @"kiteboarding", @"wakeboarding", 0}];
    v15 = [graphCopy sceneNodesForSceneNames:v14];
    v16 = [v13 collectionByFormingUnionWith:v15];

    v17 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Diving" minimumScore:graphCopy graph:0.7];
    v18 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v16];
    -[PGMeaningfulEventTrait setMinimumScore:](v18, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventCriteria *)v17 setScenesTrait:v18];
    v19 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v19 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v17 setRoisTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v17 setMustBeInteresting:0];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_sportEventCriteriaArrayForPublicEventInferenceWithGraph:(id)graph
{
  v12[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = [self _sportEventScenesTraitWithGraph:graphCopy];
  v6 = v5;
  if (v5)
  {
    [v5 setMinimumNumberOfHighConfidenceAssets:2];
    v7 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:graphCopy graph:0.4];
    [(PGMeaningfulEventCriteria *)v7 setScenesTrait:v6];
    v8 = [self _sportEventScenesTraitWithGraph:graphCopy];
    [v8 setMinimumNumberOfHighConfidenceAssets:7];
    v9 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:graphCopy graph:0.4];
    [(PGMeaningfulEventCriteria *)v9 setScenesTrait:v8];
    v12[0] = v7;
    v12[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

+ (id)_sportEventCriteriaArrayForMeaningInferenceWithGraph:(id)graph
{
  v19[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  sports = [MEMORY[0x277D27780] sports];
  v7 = [self _publicEventCriteriaForCategoryWithName:sports inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _sportEventScenesTraitWithGraph:graphCopy];
  v19[0] = @"Entertainment";
  v19[1] = @"Stadium";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  v11 = [graphCopy anyNodeForLabel:@"Park" domain:501 properties:0];
  if (v8 && [v10 count])
  {
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:graphCopy graph:0.4];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v8];
    v13 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v12 setNumberOfPeopleTrait:v13];
    v14 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v12 setPoisTrait:v14];
    if (v11)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = v11;
      v15 = [(PGMeaningfulEventCriteria *)v12 poisTrait:v17];
      [v15 setAdditionalMatchingBlock:&v17];
    }

    [array addObject:v12];
  }

  return array;
}

BOOL __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if ([v5 containsNode:*(a1 + 32)])
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2;
    v11[3] = &unk_278881580;
    v8 = v7;
    v12 = v8;
    v13 = &v14;
    [v6 enumeratePreciseAddressNodesUsingBlock:v11];
  }

  v9 = *(v15 + 24) == 0;
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 collection];
  v6 = [v5 areaNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3;
  v9[3] = &unk_278881558;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a3;
  [v6 enumerateNodesUsingBlock:v9];
}

void __102__PGMeaningfulEventLooseRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) containsObject:v7];
    v5 = [v7 diameterIsLargerThanDiameter:4000.0];
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v5;
    *v6 = *(*(*(a1 + 40) + 8) + 24);
    *a3 = *(*(*(a1 + 40) + 8) + 24);
  }
}

+ (id)_celebrationCriteriaWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"graduation", @"disco_ball", @"ceremony", @"wedding", 0}];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Celebration" minimumScore:graphCopy graph:0.4];
    v7 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v6 setNumberOfPeopleTrait:v7];
    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    -[PGMeaningfulEventTrait setMinimumScore:](v8, "setMinimumScore:", 1.0 / [v5 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v8 setMinimumNumberOfHighConfidenceAssets:5];
    [(PGMeaningfulEventCriteria *)v6 setScenesTrait:v8];
    v9 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:5400.0];
    [(PGMeaningfulEventTrait *)v9 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v6 setMinimumDurationTrait:v9];
    [(PGMeaningfulEventRequiredCriteria *)v6 setMustBeInteresting:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_weddingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v19[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = [self _weddingSceneNodesWithGraph:graphCopy includeWedding:1 sceneTaxonomy:taxonomy];
  if ([v7 count])
  {
    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:graphCopy graph:0.4];
    v9 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventTrait *)v9 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v8 setNumberOfPeopleTrait:v9];
    v10 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v10, "setMinimumScore:", 2.0 / [v7 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v10 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v10];
    v11 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3600.0];
    [(PGMeaningfulEventTrait *)v11 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v8 setMinimumDurationTrait:v11];
    v12 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:28];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v8 setAllPartsOfDayTrait:v12];
    [(PGMeaningfulEventRequiredCriteria *)v8 setMustBeInteresting:0];
    v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:graphCopy graph:0.4];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:10.0];

    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v13 setNumberOfPeopleTrait:v14];
    v15 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];

    -[PGMeaningfulEventTrait setMinimumScore:](v15, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v15 setMinimumNumberOfHighConfidenceAssets:9];
    [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v15];
    v16 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1800.0];

    [(PGMeaningfulEventTrait *)v16 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v13 setMinimumDurationTrait:v16];
    [(PGMeaningfulEventCriteria *)v13 setAllPartsOfDayTrait:v12];
    [(PGMeaningfulEventRequiredCriteria *)v13 setMustBeInteresting:0];
    v19[0] = v8;
    v19[1] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

+ (void)_birthdayCriteriaWithGraph:(id)graph strongBirthdayCriteria:(id *)criteria weakBirthdayCriteria:(id *)birthdayCriteria sceneTaxonomy:(id)taxonomy
{
  graphCopy = graph;
  v10 = MEMORY[0x277CBEB98];
  taxonomyCopy = taxonomy;
  v33 = [v10 setWithObjects:{@"celebration", @"birthday_cake", @"sparkling_wine", @"cake", @"pinata", 0}];
  v12 = [graphCopy sceneNodesForSceneNames:?];
  v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"restaurant", @"bar", 0}];
  v14 = [graphCopy sceneNodesForSceneNames:v13];

  v15 = [v14 collectionByFormingUnionWith:v12];

  v16 = [self _weddingSceneNodesWithGraph:graphCopy includeWedding:1 sceneTaxonomy:taxonomyCopy];

  v17 = [MEMORY[0x277CBEB98] setWithObjects:{@"grave", 0}];
  v18 = [graphCopy sceneNodesForSceneNames:v17];
  v19 = [v18 collectionByFormingUnionWith:v16];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke;
  aBlock[3] = &unk_278881530;
  v22 = graphCopy;
  v37 = v22;
  v38 = v15;
  v39 = v19;
  v40 = v12;
  v23 = array;
  v41 = v23;
  v24 = array2;
  v42 = v24;
  v25 = v12;
  v26 = v19;
  v27 = v15;
  v28 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_5;
  v34[3] = &unk_278885D38;
  v35 = v28;
  v29 = v28;
  [v22 enumeratePersonNodesIncludingMe:1 withBlock:v34];
  if (criteria)
  {
    v30 = v23;
    *criteria = v23;
  }

  if (birthdayCriteria)
  {
    v31 = v24;
    *birthdayCriteria = v24;
  }
}

void __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 birthdayDateComponents];
  v5 = [v3 potentialBirthdayDateComponents];
  v6 = v5;
  if (v4 | v5)
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
    v9 = [v8 year];
    v10 = [MEMORY[0x277CBEB58] set];
    v11 = [MEMORY[0x277CBEB58] set];
    v12 = a1[4];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2;
    v26[3] = &unk_2788814E0;
    v31 = v9;
    v13 = v8;
    v27 = v13;
    v28 = a1[4];
    v14 = v10;
    v29 = v14;
    v15 = v11;
    v30 = v15;
    [v12 enumerateNodesWithLabel:@"Year" domain:400 usingBlock:v26];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4;
    aBlock[3] = &unk_278881508;
    v21 = a1[4];
    v22 = v3;
    v23 = a1[5];
    v24 = a1[6];
    v25 = a1[7];
    v16 = _Block_copy(aBlock);
    if ([v14 count])
    {
      v17 = v16[2](v16, v4 != 0, v14, 0);
      if (v17)
      {
        [a1[8] addObject:v17];
      }

      v18 = v16[2](v16, v4 != 0, v14, 1);

      if (v18)
      {
        [a1[9] addObject:v18];
      }
    }

    if ([v15 count])
    {
      v19 = v16[2](v16, 0, v15, 0);
      if (v19)
      {
        [a1[8] addObject:v19];
      }
    }
  }
}

void __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 calendarUnitValue];
  if (v5 > *(a1 + 64))
  {
    [*(a1 + 32) setYear:v5];
    v6 = [MEMORY[0x277D27690] dateFromComponents:*(a1 + 32) inTimeZone:0];
    v7 = [*(a1 + 40) dateNodeForLocalDate:v6];
    if (v7)
    {
      [*(a1 + 48) addObject:v7];
    }

    if (([MEMORY[0x277D276A8] isWeekendDate:v6] & 1) == 0)
    {
      v22 = 0;
      v23 = 0.0;
      v8 = [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v22 interval:&v23 options:0 afterDate:v6];
      v9 = v22;
      v10 = v9;
      if (v8)
      {
        v11 = [v9 dateByAddingTimeInterval:v23];
        v16 = v10;
        v12 = v10;
        if ([v12 compare:v11] == 1)
        {
          v13 = v12;
        }

        else
        {
          do
          {
            v14 = [*(a1 + 40) dateNodeForLocalDate:{v12, v16}];
            v15 = v14;
            if (v14 && (!v7 || ([v14 isSameNodeAsNode:v7] & 1) == 0))
            {
              v18 = 0;
              v19 = &v18;
              v20 = 0x2020000000;
              v21 = 0;
              v17[0] = MEMORY[0x277D85DD0];
              v17[1] = 3221225472;
              v17[2] = __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3;
              v17[3] = &unk_278885C70;
              v17[4] = &v18;
              [v15 enumerateHolidayNodesUsingBlock:v17];
              if ((v19[3] & 1) == 0)
              {
                [*(a1 + 56) addObject:v15];
              }

              _Block_object_dispose(&v18, 8);
            }

            v13 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v12];

            v12 = v13;
          }

          while ([v13 compare:v11] != 1);
        }

        v10 = v16;
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

PGMeaningfulEventRequiredCriteria *__134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4(uint64_t a1, int a2, void *a3, int a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = @"Birthday";
  if (a4)
  {
    v8 = @"WeakBirthday";
  }

  v9 = v8;
  v10 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v9 minimumScore:*(a1 + 32) graph:0.4];
  v11 = [PGMeaningfulEventCollectionTrait alloc];
  v12 = [*(a1 + 40) collection];
  v13 = [(PGMeaningfulEventCollectionTrait *)v11 initWithNodes:v12];
  [(PGMeaningfulEventCriteria *)v10 setPeopleTrait:v13];

  v14 = [PGMeaningfulEventCollectionTrait alloc];
  v15 = [(MAElementCollection *)[PGGraphDateNodeCollection alloc] initWithSet:v7 graph:*(a1 + 32)];
  v16 = [(PGMeaningfulEventCollectionTrait *)v14 initWithNodes:v15];
  [(PGMeaningfulEventCriteria *)v10 setDatesTrait:v16];

  v17 = [(PGMeaningfulEventCriteria *)v10 peopleTrait];
  [v17 setMinimumScore:1.0];

  v18 = [(PGMeaningfulEventCriteria *)v10 datesTrait];
  [v18 setMinimumScore:1.0];

  if (a2)
  {
    v34 = v9;
    [(PGMeaningfulEventRequiredCriteria *)v10 setAdditionalInfoForKey:@"birthday.isOnDate" value:MEMORY[0x277CBEC38]];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
LABEL_6:
      v23 = 0;
      while (1)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v35 + 1) + 8 * v23) localDate];
        v25 = [MEMORY[0x277D276A8] isWeekendDate:v24];

        if (v25)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v21)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v9 = v34;
      if (a4)
      {
        goto LABEL_20;
      }

      v29 = [*(a1 + 48) count];
      v30 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:*(a1 + 48) negativeNodes:*(a1 + 56)];
      -[PGMeaningfulEventTrait setMinimumScore:](v30, "setMinimumScore:", 1.0 / [*(a1 + 48) count]);
      [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v30];

      if (v29)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_12:

    if (a4)
    {
      v26 = 0;
      v9 = v34;
      goto LABEL_23;
    }

    v31 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:58];
    [(PGMeaningfulEventTrait *)v31 setMinimumScore:0.2];
    [(PGMeaningfulEventCriteria *)v10 setSignificantPartsOfDayTrait:v31];

    v9 = v34;
  }

  else
  {
    if (![*(a1 + 64) count])
    {
LABEL_18:
      v26 = 0;
      goto LABEL_23;
    }

    v27 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:*(a1 + 64) negativeNodes:*(a1 + 56)];
    -[PGMeaningfulEventTrait setMinimumScore:](v27, "setMinimumScore:", 1.0 / [*(a1 + 64) count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v27 setMinimumNumberOfHighConfidenceAssets:1];
    [(PGMeaningfulEventCriteria *)v10 setScenesTrait:v27];
    v28 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:5.0];
    [(PGMeaningfulEventTrait *)v28 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v10 setNumberOfPeopleTrait:v28];
  }

LABEL_20:
  v32 = [*(a1 + 40) localIdentifier];
  if ([v32 length])
  {
    [(PGMeaningfulEventRequiredCriteria *)v10 setAdditionalInfoForKey:@"personLocalIdentifier" value:v32];
  }

  v26 = v10;

LABEL_23:

  return v26;
}

unint64_t __134__PGMeaningfulEventLooseRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 category];
  if (result <= 4 && ((1 << result) & 0x16) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (id)_requiredCriteriaForIdentifiers:(id)identifiers graph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v62[3] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PGMeaningfulEventLooseRequiredCriteriaFactory__requiredCriteriaForIdentifiers_graph_sceneTaxonomy___block_invoke;
  aBlock[3] = &unk_2788814B8;
  v12 = dictionary;
  v61 = v12;
  v13 = _Block_copy(aBlock);
  v14 = MEMORY[0x277CBEBF8];
  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"Wedding"])
    {
      v15 = [self _weddingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
      [v12 setObject:v15 forKeyedSubscript:@"Wedding"];
    }

    if (([identifiersCopy containsObject:@"Birthday"] & 1) == 0 && (objc_msgSend(identifiersCopy, "containsObject:", @"WeakBirthday") & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = [self _weddingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v12 setObject:v16 forKeyedSubscript:@"Wedding"];
  }

  v58 = 0;
  v59 = 0;
  [self _birthdayCriteriaWithGraph:graphCopy strongBirthdayCriteria:&v59 weakBirthdayCriteria:&v58 sceneTaxonomy:taxonomyCopy];
  v17 = v59;
  v18 = v58;
  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"Birthday"])
    {
      [v12 setObject:v17 forKeyedSubscript:@"Birthday"];
    }

    if (([identifiersCopy containsObject:@"WeakBirthday"] & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
    [v12 setObject:v17 forKeyedSubscript:@"Birthday"];
  }

  [v12 setObject:v18 forKeyedSubscript:@"WeakBirthday"];

  if (!identifiersCopy)
  {
    v20 = [self _anniversaryCriteriaWithGraph:graphCopy];
    [v12 setObject:v20 forKeyedSubscript:@"Anniversary"];

    goto LABEL_20;
  }

LABEL_15:
  if ([identifiersCopy containsObject:@"Anniversary"])
  {
    v19 = [self _anniversaryCriteriaWithGraph:graphCopy];
    [v12 setObject:v19 forKeyedSubscript:@"Anniversary"];
  }

  if (([identifiersCopy containsObject:@"Celebration"] & 1) == 0)
  {
LABEL_21:
    if ([identifiersCopy containsObject:@"Performance"])
    {
      v22 = [self _performanceCriteriaWithGraph:graphCopy];
      v13[2](v13, @"Performance", v22);
    }

    if (([identifiersCopy containsObject:@"Concert"] & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_20:
  v21 = [self _celebrationCriteriaWithGraph:graphCopy];
  v13[2](v13, @"Celebration", v21);

  if (identifiersCopy)
  {
    goto LABEL_21;
  }

  v23 = [self _performanceCriteriaWithGraph:graphCopy];
  v13[2](v13, @"Performance", v23);

LABEL_26:
  v24 = [self _concertCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v14;
  }

  [v12 setObject:v26 forKeyedSubscript:@"Concert"];

  if (!identifiersCopy)
  {
    v28 = [self _festivalCriteriaArrayWithGraph:graphCopy];
    [v12 setObject:v28 forKeyedSubscript:@"Festival"];

    goto LABEL_35;
  }

LABEL_30:
  if ([identifiersCopy containsObject:@"Festival"])
  {
    v27 = [self _festivalCriteriaArrayWithGraph:graphCopy];
    [v12 setObject:v27 forKeyedSubscript:@"Festival"];
  }

  if (([identifiersCopy containsObject:@"Theater"] & 1) == 0)
  {
LABEL_36:
    if ([identifiersCopy containsObject:@"Dance"])
    {
      v30 = [self _danceCriteriaWithGraph:graphCopy];
      v13[2](v13, @"Dance", v30);
    }

    if (([identifiersCopy containsObject:@"Hiking"] & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_35:
  v29 = [self _theaterCriteriaWithGraph:graphCopy];
  v13[2](v13, @"Theater", v29);

  if (identifiersCopy)
  {
    goto LABEL_36;
  }

  v31 = [self _danceCriteriaWithGraph:graphCopy];
  v13[2](v13, @"Dance", v31);

LABEL_41:
  v32 = [self _hikingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  [v12 setObject:v32 forKeyedSubscript:@"Hiking"];

  if (!identifiersCopy)
  {
    v34 = [self _climbingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v13[2](v13, @"Climbing", v34);

    goto LABEL_47;
  }

LABEL_42:
  if ([identifiersCopy containsObject:@"Climbing"])
  {
    v33 = [self _climbingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v13[2](v13, @"Climbing", v33);
  }

  if (([identifiersCopy containsObject:@"Beaching"] & 1) == 0)
  {
LABEL_48:
    if ([identifiersCopy containsObject:@"SportEvent"])
    {
      v36 = [self _sportEventCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = v14;
      }

      [v12 setObject:v38 forKeyedSubscript:@"SportEvent"];
    }

    if (([identifiersCopy containsObject:@"WinterSport"] & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_47:
  v35 = [self _beachingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  v13[2](v13, @"Beaching", v35);

  if (identifiersCopy)
  {
    goto LABEL_48;
  }

  v39 = [self _sportEventCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v14;
  }

  [v12 setObject:v41 forKeyedSubscript:@"SportEvent"];

LABEL_59:
  v42 = [self _winterSportCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  v13[2](v13, @"WinterSport", v42);

  if (!identifiersCopy)
  {
    v45 = [self _divingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v13[2](v13, @"Diving", v45);

    v62[0] = @"Lunch";
    v62[1] = @"Dinner";
    v62[2] = @"Breakfast";
    array = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
    goto LABEL_69;
  }

LABEL_60:
  if ([identifiersCopy containsObject:@"Diving"])
  {
    v43 = [self _divingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v13[2](v13, @"Diving", v43);
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([identifiersCopy containsObject:@"Lunch"])
  {
    [array addObject:@"Lunch"];
  }

  if ([identifiersCopy containsObject:@"Dinner"])
  {
    [array addObject:@"Dinner"];
  }

  if ([identifiersCopy containsObject:@"Breakfast"])
  {
    [array addObject:@"Breakfast"];
  }

LABEL_69:
  if ([array count])
  {
    v46 = [self _restaurantCriteriaByCriteriaForIdentifiers:array withGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v12 addEntriesFromDictionary:v46];
  }

  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"NightOut"])
    {
      v47 = [self _nightOutCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
      [v12 setObject:v47 forKeyedSubscript:@"NightOut"];
    }

    if (([identifiersCopy containsObject:@"Entertainment"] & 1) == 0)
    {
LABEL_78:
      if ([identifiersCopy containsObject:@"AmusementPark"])
      {
        v50 = [self _amusementParkCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
        [v12 setObject:v50 forKeyedSubscript:@"AmusementPark"];
      }

      if (([identifiersCopy containsObject:@"Museum"] & 1) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_83;
    }
  }

  else
  {
    v48 = [self _nightOutCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v12 setObject:v48 forKeyedSubscript:@"NightOut"];
  }

  v49 = [self _entertainmentCriteriaWithGraph:graphCopy];
  v13[2](v13, @"Entertainment", v49);

  if (identifiersCopy)
  {
    goto LABEL_78;
  }

  v51 = [self _amusementParkCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  [v12 setObject:v51 forKeyedSubscript:@"AmusementPark"];

LABEL_83:
  v52 = [self _museumCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = v14;
  }

  [v12 setObject:v54 forKeyedSubscript:@"Museum"];

  if (!identifiersCopy)
  {
    goto LABEL_88;
  }

LABEL_87:
  if ([identifiersCopy containsObject:@"Gathering"])
  {
LABEL_88:
    v55 = [self _socialGroupGatheringCriteriaWithGraph:graphCopy];
    [v12 setObject:v55 forKeyedSubscript:@"Gathering"];
  }

  v56 = v12;

  return v12;
}

void __101__PGMeaningfulEventLooseRequiredCriteriaFactory__requiredCriteriaForIdentifiers_graph_sceneTaxonomy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = a3;
    v5 = MEMORY[0x277CBEA60];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:&v9 count:1];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:{v7, v9, v10}];
  }
}

+ (id)requiredCriteriaForIdentifiers:(id)identifiers graph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v8 = MEMORY[0x277CBEB98];
  taxonomyCopy = taxonomy;
  graphCopy = graph;
  v11 = [v8 setWithArray:identifiers];
  v12 = [self _requiredCriteriaForIdentifiers:v11 graph:graphCopy sceneTaxonomy:taxonomyCopy];

  return v12;
}

@end