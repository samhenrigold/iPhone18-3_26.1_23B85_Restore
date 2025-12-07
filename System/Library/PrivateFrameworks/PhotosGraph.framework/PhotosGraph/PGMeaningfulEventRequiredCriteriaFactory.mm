@interface PGMeaningfulEventRequiredCriteriaFactory
+ (id)_amusementParkCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_anniversaryCriteriaWithGraph:(id)graph;
+ (id)_beachingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_beachingSceneNodesWithGraph:(id)graph;
+ (id)_celebrationCriteriaWithGraph:(id)graph;
+ (id)_climbingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_concertCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph;
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
+ (id)_museumCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph;
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
+ (id)_requiredCriteriaForIdentifiers:(id)identifiers inferenceType:(unint64_t)type graph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)identifiers withGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_socialGroupGatheringCriteriaWithGraph:(id)graph;
+ (id)_specialAmusementParkCriteriaWithGraph:(id)graph;
+ (id)_sportEventCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph;
+ (id)_sportEventCriteriaArrayForMeaningInferenceWithGraph:(id)graph;
+ (id)_sportEventCriteriaArrayForPublicEventInferenceWithGraph:(id)graph;
+ (id)_sportEventScenesTraitWithGraph:(id)graph;
+ (id)_theaterCriteriaWithGraph:(id)graph;
+ (id)_weddingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_weddingSceneNodesWithGraph:(id)graph includeWedding:(BOOL)wedding sceneTaxonomy:(id)taxonomy;
+ (id)_winterSportCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)_winterSportSceneNodesWithGraph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (id)availableMeaningLabels;
+ (id)availablePersonActivityMeaningLabels;
+ (id)locationsTraitNotMatchingFrequentLocationsForGraph:(id)graph;
+ (id)locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:(id)graph;
+ (id)locationsTraitNotMatchingPeopleWorkLocationsForGraph:(id)graph;
+ (id)requiredCriteriaForIdentifiers:(id)identifiers inferenceType:(unint64_t)type graph:(id)graph sceneTaxonomy:(id)taxonomy;
+ (void)_birthdayCriteriaWithGraph:(id)graph strongBirthdayCriteria:(id *)criteria weakBirthdayCriteria:(id *)birthdayCriteria sceneTaxonomy:(id)taxonomy;
@end

@implementation PGMeaningfulEventRequiredCriteriaFactory

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

+ (id)locationsTraitNotMatchingPeopleWorkLocationsForGraph:(id)graph
{
  v3 = [PGGraphHomeWorkNodeCollection workNodesInGraph:graph];
  addressNodes = [v3 addressNodes];

  v5 = [[PGMeaningfulEventLocationCollectionTrait alloc] initWithNodes:0 negativeNodes:addressNodes];
  [(PGMeaningfulEventTrait *)v5 setMinimumScore:1.0];
  [(PGMeaningfulEventLocationCollectionTrait *)v5 setUseStrictNegativeNodesMatching:1];

  return v5;
}

+ (id)locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:(id)graph
{
  v3 = [(PGGraphNodeCollection *)PGGraphHomeWorkNodeCollection nodesInGraph:graph];
  addressNodes = [v3 addressNodes];

  v5 = [[PGMeaningfulEventLocationCollectionTrait alloc] initWithNodes:0 negativeNodes:addressNodes];
  [(PGMeaningfulEventTrait *)v5 setMinimumScore:1.0];
  [(PGMeaningfulEventLocationCollectionTrait *)v5 setUseStrictNegativeNodesMatching:1];

  return v5;
}

+ (id)locationsTraitNotMatchingFrequentLocationsForGraph:(id)graph
{
  graphCopy = graph;
  largeFrequentLocationNodes = [graphCopy largeFrequentLocationNodes];
  v5 = [(MAElementCollection *)[PGGraphFrequentLocationNodeCollection alloc] initWithSet:largeFrequentLocationNodes graph:graphCopy];

  v6 = [PGMeaningfulEventLocationCollectionTrait alloc];
  addressNodes = [(PGGraphFrequentLocationNodeCollection *)v5 addressNodes];
  v8 = [(PGMeaningfulEventLocationCollectionTrait *)v6 initWithNodes:0 negativeNodes:addressNodes];

  [(PGMeaningfulEventTrait *)v8 setMinimumScore:1.0];
  [(PGMeaningfulEventLocationCollectionTrait *)v8 setUseStrictNegativeNodesMatching:1];

  return v8;
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
  graphCopy = graph;
  v7 = [self _museumSceneNodesInGraph:graphCopy];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v10 = [self _negativeMuseumSceneNodesInGraph:graphCopy];
    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7 negativeNodes:v10];
    [(PGMeaningfulEventTrait *)v11 setMinimumScore:1.0 / v9];
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfHighConfidenceAssets:assets];
    v12 = vcvtas_u32_f32(vcvts_n_f32_u64(assets, 1uLL));
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfNegativeHighConfidenceAssets:v13];
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setAccumulateHighConfidenceAssetCounts:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
  v16[2] = __101__PGMeaningfulEventRequiredCriteriaFactory__weddingSceneNodesWithGraph_includeWedding_sceneTaxonomy___block_invoke;
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
    v11[2] = __90__PGMeaningfulEventRequiredCriteriaFactory__winterSportSceneNodesWithGraph_sceneTaxonomy___block_invoke;
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
  graphCopy = graph;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"sumo", @"badminton", @"softball", @"soccer", @"cricket_sport", @"rugby", @"scoreboard", @"tennis", @"cheerleading", @"polo", @"hockey", @"football", @"grand_prix", @"jockey_horse", @"wrestling", @"baseball", @"motorsport", @"basketball", @"rink", @"arena", @"motocross", @"stadium", @"ballgames", 0}];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"amusement_park", @"graduation", 0}];
    v7 = [graphCopy sceneNodesForSceneNames:v6];

    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5 negativeNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v8, "setMinimumScore:", 1.0 / [v5 count]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v54[2] = __83__PGMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke;
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
      v45[2] = __83__PGMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3;
      v45[3] = &unk_278881638;
      v45[4] = &v50;
      v15 = v34;
      [MEMORY[0x277D27688] calculateStandardDeviationForItems:v34 valueBlock:&__block_literal_global_564 result:v45];
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

void __83__PGMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 numberOfMemberNodes] >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

double __83__PGMeaningfulEventRequiredCriteriaFactory__socialGroupGatheringCriteriaWithGraph___block_invoke_3(uint64_t a1, double a2, double a3)
{
  result = a2 + a3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)_specialAmusementParkCriteriaWithGraph:(id)graph
{
  v11[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v11[0] = @"AmusementPark";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [PGGraphPOINodeCollection poiNodesForLabels:v5 inGraph:graphCopy];

  if ([v6 count])
  {
    v7 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"AmusementPark" minimumScore:graphCopy graph:0.4];
    v8 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v6];
    [(PGMeaningfulEventTrait *)v8 setMinimumScore:0.7];
    [(PGMeaningfulEventCollectionTrait *)v8 setAdditionalMatchingBlock:&__block_literal_global_557];
    [(PGMeaningfulEventCriteria *)v7 setPoisTrait:v8];
    v9 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v7 setLocationsTrait:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __83__PGMeaningfulEventRequiredCriteriaFactory__specialAmusementParkCriteriaWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v25[2] = __95__PGMeaningfulEventRequiredCriteriaFactory__amusementParkCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
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
    v17 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v13];
    -[PGMeaningfulEventTrait setMinimumScore:](v17, "setMinimumScore:", 1.0 / [v13 count]);
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v17];
    v24 = v12;
    v18 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v15];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v16 setPoisTrait:v18];
    [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    v19 = v11;
    v20 = v10;
    v22 = v21 = array;
    [(PGMeaningfulEventCriteria *)v16 setLocationsTrait:v22];
    [v21 addObject:v16];

    array = v21;
    v10 = v20;
    v11 = v19;

    v12 = v24;
  }

  return array;
}

+ (id)_entertainmentCriteriaWithGraph:(id)graph
{
  v14[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  entertainmentSceneTaxonomyNames = [self entertainmentSceneTaxonomyNames];
  v6 = [graphCopy sceneNodesForSceneNames:entertainmentSceneTaxonomyNames];
  v14[0] = @"Entertainment";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [PGGraphPOINodeCollection poiNodesForLabels:v7 inGraph:graphCopy];

  if ([v6 count] && objc_msgSend(v8, "count"))
  {
    v9 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Entertainment" minimumScore:graphCopy graph:0.4];
    v10 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v6];
    -[PGMeaningfulEventTrait setMinimumScore:](v10, "setMinimumScore:", 1.0 / [v6 count]);
    [(PGMeaningfulEventCriteria *)v9 setScenesTrait:v10];
    v11 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v11 setMinimumScore:0.7];
    [(PGMeaningfulEventCriteria *)v9 setPoisTrait:v11];
    v12 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v9 setLocationsTrait:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_beachingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v21[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [self _beachingSceneNodesWithGraph:graphCopy];
  v21[0] = @"Beach";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v10 = [PGGraphROINodeCollection roiNodesForLabels:v9 inGraph:graphCopy];

  if ([v8 count] && objc_msgSend(v10, "count"))
  {
    v11 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v12 = [self _negativeHikingSceneNodesWithGraph:graphCopy];
    v13 = [v11 collectionByFormingUnionWith:v12];

    v14 = [self _negativeSceneNodesForBeachingWithGraph:graphCopy];
    v15 = [v13 collectionByFormingUnionWith:v14];

    v16 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Beaching" minimumScore:graphCopy graph:0.4];
    v17 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v15];
    -[PGMeaningfulEventTrait setMinimumScore:](v17, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfHighConfidenceAssets:2];
    [(PGMeaningfulEventSceneCollectionTrait *)v17 setMinimumNumberOfNegativeHighConfidenceAssets:4];
    [(PGMeaningfulEventCriteria *)v16 setScenesTrait:v17];
    v18 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v16 setRoisTrait:v18];
    v19 = [self locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v16 setLocationsTrait:v19];
    [(PGMeaningfulEventRequiredCriteria *)v16 setMustBeInteresting:1];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_climbingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v21[4] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [MEMORY[0x277CBEB98] setWithObject:@"rock_climbing"];
  v9 = [graphCopy sceneNodesForSceneNames:v8];

  v21[0] = @"Mountain";
  v21[1] = @"Nature";
  v21[2] = @"Beach";
  v21[3] = @"Water";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v11 = [PGGraphROINodeCollection roiNodesForLabels:v10 inGraph:graphCopy];

  if ([v9 count] && objc_msgSend(v11, "count"))
  {
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Climbing" minimumScore:graphCopy graph:0.4];
    v13 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v11];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v12 setRoisTrait:v13];
    v20 = [self locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v12 setLocationsTrait:v20];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:1.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v12 setNumberOfPeopleTrait:v14];
    v15 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v16 = [self _divingSceneNodesWithGraph:graphCopy];
    v17 = [v15 collectionByFormingUnionWith:v16];

    v18 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v9 negativeNodes:v17];
    [(PGMeaningfulEventSceneCollectionTrait *)v18 setMinimumNumberOfHighConfidenceAssets:4];
    [(PGMeaningfulEventTrait *)v18 setMinimumScore:1.0];
    [(PGMeaningfulEventSceneCollectionTrait *)v18 setMinimumRatioOfHighConfidenceAssets:0.5];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v18];
    [(PGMeaningfulEventRequiredCriteria *)v12 setMustBeInteresting:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_hikingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v35[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [self _hikingSceneNodesWithGraph:graphCopy];
  v35[0] = @"Hiking";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  v34[0] = @"Mountain";
  v34[1] = @"Nature";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v12 = [PGGraphROINodeCollection roiNodesForLabels:v11 inGraph:graphCopy];

  if ([v8 count] && (objc_msgSend(v10, "count") || objc_msgSend(v12, "count")))
  {
    v29 = [MEMORY[0x277CBEB98] setWithObjects:{@"gown", @"suit", @"necktie", @"vineyard", @"cycling", @"bicycle", @"golf", @"skydiving", @"sport", 0}];
    v13 = [graphCopy sceneNodesForSceneNames:v29];
    v14 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v13 collectionByFormingUnionWith:v14];
    v15 = v32 = v10;

    v16 = [self _beachingSceneNodesWithGraph:graphCopy];
    v17 = [v15 collectionByFormingUnionWith:v16];

    v18 = [self _divingSceneNodesWithGraph:graphCopy];
    v28 = [v17 collectionByFormingUnionWith:v18];

    v31 = taxonomyCopy;
    v19 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:graphCopy graph:0.4];
    v20 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8 negativeNodes:v28];
    -[PGMeaningfulEventTrait setMinimumScore:](v20, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventCriteria *)v19 setScenesTrait:v20];
    v21 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v12];
    [(PGMeaningfulEventTrait *)v21 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v19 setRoisTrait:v21];
    v22 = [[PGMeaningfulEventLocationMobilityTrait alloc] initWithMobility:1];
    [(PGMeaningfulEventTrait *)v22 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v19 setLocationMobilityTrait:v22];
    v23 = [self locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v19 setLocationsTrait:v23];
    [(PGMeaningfulEventRequiredCriteria *)v19 setMustBeInteresting:1];
    v30 = v12;
    v24 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Hiking" minimumScore:graphCopy graph:0.4];
    -[PGMeaningfulEventTrait setMinimumScore:](v20, "setMinimumScore:", 1.0 / [v8 count]);
    [(PGMeaningfulEventCriteria *)v24 setScenesTrait:v20];
    v25 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v32];
    [(PGMeaningfulEventTrait *)v25 setMinimumScore:0.5];
    [(PGMeaningfulEventCriteria *)v24 setPoisTrait:v25];
    [(PGMeaningfulEventTrait *)v22 setMinimumScore:0.9];
    [(PGMeaningfulEventCriteria *)v24 setLocationMobilityTrait:v22];
    [(PGMeaningfulEventCriteria *)v24 setLocationsTrait:v23];
    [(PGMeaningfulEventRequiredCriteria *)v24 setMustBeInteresting:1];
    v33[0] = v19;
    v33[1] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];

    taxonomyCopy = v31;
    v12 = v30;

    v10 = v32;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)_restaurantCriteriaByCriteriaForIdentifiers:(id)identifiers withGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v109[2] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  v9 = [taxonomy nodeForName:@"tableware"];
  v10 = [MEMORY[0x277CBEB58] setWithObjects:{@"restaurant", @"food", 0}];
  v11 = [MEMORY[0x277CBEB58] setWithObjects:{@"wine_bottle", @"wine", 0}];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __112__PGMeaningfulEventRequiredCriteriaFactory__restaurantCriteriaByCriteriaForIdentifiers_withGraph_sceneTaxonomy___block_invoke;
  v90[3] = &unk_2788884F0;
  v12 = v11;
  v91 = v12;
  v66 = v9;
  [v9 traverseChildrenUsingNameBlock:v90];
  v65 = v10;
  v13 = [graphCopy sceneNodesForSceneNames:v10];
  v14 = [graphCopy sceneNodesForSceneNames:v12];
  v75 = v13;
  v15 = [v13 collectionByFormingUnionWith:v14];
  v64 = [MEMORY[0x277CBEB98] setWithObjects:{@"aquarium", @"underwater", 0}];
  v70 = [graphCopy sceneNodesForSceneNames:?];
  v109[0] = @"Nightlife";
  v109[1] = @"Restaurant";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
  v17 = [PGGraphPOINodeCollection poiNodesForLabels:v16 inGraph:graphCopy];

  v108 = @"Museum";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
  v76 = graphCopy;
  v67 = [PGGraphPOINodeCollection poiNodesForLabels:v18 inGraph:graphCopy];

  v74 = v15;
  if ([v15 count] && objc_msgSend(v17, "count"))
  {
    v69 = v17;
    v62 = v14;
    v63 = v12;
    v68 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    v105[0] = @"label";
    v105[1] = @"significantPartsOfDay";
    v106[0] = @"Lunch";
    v106[1] = &unk_284482FE8;
    v73 = identifiersCopy;
    v105[2] = @"forbiddenPartOfDay";
    v105[3] = @"minimumNumberOfHighConfidenceScenes";
    v106[2] = &unk_284483000;
    v106[3] = &unk_284482FA0;
    v19 = MEMORY[0x277CBEC38];
    v105[4] = @"usePOIs";
    v105[5] = @"useNegativePOIs";
    v106[4] = MEMORY[0x277CBEC38];
    v106[5] = MEMORY[0x277CBEC38];
    v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:6];
    v107[0] = v84;
    v103[0] = @"label";
    v103[1] = @"significantPartsOfDay";
    v104[0] = @"Lunch";
    v104[1] = &unk_284482FE8;
    v103[2] = @"forbiddenPartOfDay";
    v103[3] = @"minimumNumberOfHighConfidenceScenes";
    v104[2] = &unk_284483000;
    v104[3] = &unk_284483018;
    v103[4] = @"usePOIs";
    v103[5] = @"useNegativePOIs";
    v20 = MEMORY[0x277CBEC28];
    v104[4] = v19;
    v104[5] = MEMORY[0x277CBEC28];
    v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:6];
    v107[1] = v81;
    v101[0] = @"label";
    v101[1] = @"significantPartsOfDay";
    v102[0] = @"Dinner";
    v102[1] = &unk_284483000;
    v101[2] = @"forbiddenPartOfDay";
    v101[3] = @"allPartsOfDay";
    v102[2] = &unk_284483030;
    v102[3] = &unk_284483048;
    v101[4] = @"minimumDuration";
    v101[5] = @"minimumNumberOfHighConfidenceScenes";
    v102[4] = &unk_284487128;
    v102[5] = &unk_284482FA0;
    v101[6] = @"usePOIs";
    v101[7] = @"useNegativePOIs";
    v102[6] = v19;
    v102[7] = v20;
    obja = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:8];
    v107[2] = obja;
    v99[0] = @"label";
    v99[1] = @"significantPartsOfDay";
    v100[0] = @"Dinner";
    v100[1] = &unk_284483000;
    v99[2] = @"forbiddenPartOfDay";
    v99[3] = @"allPartsOfDay";
    v100[2] = &unk_284483030;
    v100[3] = &unk_284483048;
    v99[4] = @"minimumDuration";
    v99[5] = @"minimumNumberOfHighConfidenceScenes";
    v100[4] = &unk_284487138;
    v100[5] = &unk_284483018;
    v99[6] = @"usePOIs";
    v99[7] = @"useNegativePOIs";
    v100[6] = v19;
    v100[7] = v20;
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:8];
    v107[3] = v77;
    v97[0] = @"label";
    v97[1] = @"significantPartsOfDay";
    v98[0] = @"Dinner";
    v98[1] = &unk_284483000;
    v97[2] = @"forbiddenPartOfDay";
    v97[3] = @"allPartsOfDay";
    v98[2] = &unk_284483030;
    v98[3] = &unk_284483048;
    v97[4] = @"minimumDuration";
    v97[5] = @"minimumNumberOfHighConfidenceScenes";
    v98[4] = &unk_284487148;
    v98[5] = &unk_284483018;
    v97[6] = @"usePOIs";
    v97[7] = @"useNegativePOIs";
    v98[6] = v20;
    v98[7] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:8];
    v107[4] = v21;
    v95[0] = @"label";
    v95[1] = @"forbiddenPartOfDay";
    v96[0] = @"Breakfast";
    v96[1] = &unk_284483060;
    v95[2] = @"significantPartsOfDay";
    v95[3] = @"minimumNumberOfHighConfidenceScenes";
    v96[2] = &unk_284483078;
    v96[3] = &unk_284482FA0;
    v95[4] = @"usePOIs";
    v95[5] = @"useNegativePOIs";
    v22 = MEMORY[0x277CBEC38];
    v96[4] = MEMORY[0x277CBEC38];
    v96[5] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:6];
    v107[5] = v23;
    v93[0] = @"label";
    v93[1] = @"forbiddenPartOfDay";
    v94[0] = @"Breakfast";
    v94[1] = &unk_284483060;
    v93[2] = @"significantPartsOfDay";
    v93[3] = @"minimumNumberOfHighConfidenceScenes";
    v94[2] = &unk_284483078;
    v94[3] = &unk_284483018;
    v93[4] = @"usePOIs";
    v93[5] = @"useNegativePOIs";
    v94[4] = v22;
    v94[5] = MEMORY[0x277CBEC28];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:6];
    v107[6] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:7];

    identifiersCopy = v73;
    v71 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v73, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v87;
      v72 = *v87;
      do
      {
        v29 = 0;
        v78 = v27;
        do
        {
          if (*v87 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v86 + 1) + 8 * v29);
          v31 = [v30 objectForKeyedSubscript:@"label"];
          if ([identifiersCopy containsObject:v31])
          {
            v85 = [v30 objectForKeyedSubscript:@"significantPartsOfDay"];
            v82 = [v30 objectForKeyedSubscript:@"forbiddenPartOfDay"];
            v32 = [v30 objectForKeyedSubscript:@"allPartsOfDay"];
            v33 = [v30 objectForKeyedSubscript:@"minimumDuration"];
            v34 = [v30 objectForKeyedSubscript:@"minimumNumberOfHighConfidenceScenes"];
            unsignedIntegerValue = [v34 unsignedIntegerValue];

            if (unsignedIntegerValue <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = unsignedIntegerValue;
            }

            v37 = [v30 objectForKeyedSubscript:@"usePOIs"];
            bOOLValue = [v37 BOOLValue];

            v39 = [v30 objectForKeyedSubscript:@"useNegativePOIs"];
            bOOLValue2 = [v39 BOOLValue];

            v41 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:v31 minimumScore:v76 graph:0.6];
            v42 = v75;
            if (!bOOLValue)
            {
              v42 = v74;
            }

            v43 = v42;
            v44 = [v43 count];
            if (v44)
            {
              v45 = v44;
              if (bOOLValue)
              {
                v46 = [PGMeaningfulEventCollectionTrait alloc];
                if (bOOLValue2)
                {
                  v47 = [(PGMeaningfulEventCollectionTrait *)v46 initWithNodes:v69 negativeNodes:v67];
                }

                else
                {
                  v47 = [(PGMeaningfulEventCollectionTrait *)v46 initWithNodes:v69];
                }

                v50 = v47;
                v49 = off_27887B000;
                [(PGMeaningfulEventTrait *)v47 setMinimumScore:0.7];
                [(PGMeaningfulEventCriteria *)v41 setPoisTrait:v50];
                v48 = 1.0 / v45;
              }

              else
              {
                [(PGMeaningfulEventCriteria *)v41 setLocationsTrait:v68];
                v48 = 2.0 / v45;
                [(PGMeaningfulEventRequiredCriteria *)v41 setMustBeInteresting:1];
                v49 = off_27887B000;
              }

              v51 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v43 negativeNodes:v70];
              [(PGMeaningfulEventTrait *)v51 setMinimumScore:v48];
              [(PGMeaningfulEventSceneCollectionTrait *)v51 setMinimumNumberOfHighConfidenceAssets:v36];
              [(PGMeaningfulEventSceneCollectionTrait *)v51 setAccumulateHighConfidenceAssetCounts:1];
              [(PGMeaningfulEventCriteria *)v41 setScenesTrait:v51];
              unsignedIntegerValue2 = [v85 unsignedIntegerValue];
              if (v82)
              {
                unsignedIntegerValue3 = [v82 unsignedIntegerValue];
              }

              else
              {
                unsignedIntegerValue3 = 1;
              }

              v54 = [objc_alloc(v49[260]) initWithPartOfDay:unsignedIntegerValue2 forbiddenPartOfDay:unsignedIntegerValue3];
              [v54 setMinimumScore:0.75];
              [(PGMeaningfulEventCriteria *)v41 setSignificantPartsOfDayTrait:v54];
              if (v32)
              {
                v55 = [objc_alloc(v49[260]) initWithPartOfDay:objc_msgSend(v32 forbiddenPartOfDay:{"unsignedIntegerValue"), 1}];
                [v55 setMinimumScore:0.75];
                [(PGMeaningfulEventCriteria *)v41 setAllPartsOfDayTrait:v55];
              }

              if (v33)
              {
                v56 = [PGMeaningfulEventNumberTrait alloc];
                [v33 doubleValue];
                v57 = [(PGMeaningfulEventNumberTrait *)v56 initWithNumberValue:?];
                [(PGMeaningfulEventTrait *)v57 setMinimumScore:1.0];
                [(PGMeaningfulEventCriteria *)v41 setMinimumDurationTrait:v57];
              }

              array = [v71 objectForKeyedSubscript:v31];
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
                [v71 setObject:array forKeyedSubscript:v31];
              }

              [array addObject:v41];
            }

            v28 = v72;
            identifiersCopy = v73;
            v27 = v78;
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v27);
    }

    v60 = v65;
    v59 = v66;
    v14 = v62;
    v12 = v63;
    v17 = v69;
  }

  else
  {
    v71 = MEMORY[0x277CBEC10];
    v60 = v65;
    v59 = v66;
  }

  return v71;
}

+ (id)_anniversaryCriteriaWithGraph:(id)graph
{
  v27[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
  if ([v4 count])
  {
    anyNode = [v4 anyNode];
    anniversaryDateComponents = [anyNode anniversaryDateComponents];
    if (anniversaryDateComponents)
    {
      v7 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:graphCopy];
      if ([v7 count])
      {
        v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:0 comparator:&__block_literal_global_19793];
        v27[0] = v8;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
        v20 = [v7 sortedArrayUsingDescriptors:v9];

        firstObject = [v20 firstObject];
        collection = [firstObject collection];
        personNodes = [collection personNodes];

        array = [MEMORY[0x277CBEB18] array];
        year = [anniversaryDateComponents year];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __74__PGMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke_2;
        v21[3] = &unk_2788814E0;
        v26 = year;
        v22 = anniversaryDateComponents;
        v23 = graphCopy;
        v24 = personNodes;
        v15 = array;
        v25 = v15;
        v16 = personNodes;
        [v23 enumerateNodesWithLabel:@"Year" domain:400 usingBlock:v21];
        v17 = v25;
        v18 = v15;
      }

      else
      {
        v18 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  return v18;
}

void __74__PGMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke_2(id *a1, void *a2)
{
  v3 = [a2 calendarUnitValue];
  if (a1[8] != v3)
  {
    [a1[4] setYear:v3];
    v13 = [MEMORY[0x277D27690] dateFromComponents:a1[4] inTimeZone:0];
    v4 = [a1[5] dateNodeForLocalDate:?];
    if (v4)
    {
      v5 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Anniversary" minimumScore:a1[5] graph:0.5];
      v6 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:a1[6]];
      [(PGMeaningfulEventCriteria *)v5 setPeopleTrait:v6];

      v7 = 1.0 / [a1[6] count];
      v8 = [(PGMeaningfulEventCriteria *)v5 peopleTrait];
      [v8 setMinimumScore:v7];

      v9 = [PGMeaningfulEventCollectionTrait alloc];
      v10 = [v4 collection];
      v11 = [(PGMeaningfulEventCollectionTrait *)v9 initWithNodes:v10];
      [(PGMeaningfulEventCriteria *)v5 setDatesTrait:v11];

      v12 = [(PGMeaningfulEventCriteria *)v5 datesTrait];
      [v12 setMinimumScore:1.0];

      [a1[7] addObject:v5];
    }
  }
}

uint64_t __74__PGMeaningfulEventRequiredCriteriaFactory__anniversaryCriteriaWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 numberOfMomentNodes];
  v6 = [v4 numberOfMomentNodes];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v9 = [v7 compare:v8];

  return v9;
}

+ (id)_nightOutCriteriaArrayWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v73 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:32];
  [(PGMeaningfulEventTrait *)v9 setMinimumScore:0.6];
  nightLife = [MEMORY[0x277D27780] nightLife];
  selfCopy = self;
  v52 = graphCopy;
  v11 = [self _publicEventCriteriaForCategoryWithName:nightLife inGraph:graphCopy];

  if (v11)
  {
    [v11 setSignificantPartsOfDayTrait:v9];
    [array addObject:v11];
  }

  v43 = v11;
  v44 = v9;
  v51 = array;
  v50 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48 forbiddenPartOfDay:12];
  [(PGMeaningfulEventTrait *)v50 setMinimumScore:0.3];
  v12 = [MEMORY[0x277CBEB58] setWithArray:&unk_284485910];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v13 = [&unk_2844858F8 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v60;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(&unk_2844858F8);
        }

        v17 = [taxonomyCopy nodeForName:*(*(&v59 + 1) + 8 * i)];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __90__PGMeaningfulEventRequiredCriteriaFactory__nightOutCriteriaArrayWithGraph_sceneTaxonomy___block_invoke;
        v57[3] = &unk_2788884F0;
        v58 = v12;
        [v17 traverseChildrenUsingNameBlock:v57];
      }

      v14 = [&unk_2844858F8 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v14);
  }

  v18 = [v52 sceneNodesForSceneNames:v12];
  v71[0] = @"Nightlife";
  v71[1] = @"Restaurant";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v20 = [PGGraphPOINodeCollection poiNodesForLabels:v19 inGraph:v52];

  if ([v18 count] && objc_msgSend(v20, "count"))
  {
    v45 = v20;
    v68[0] = @"minimumDuration";
    v68[1] = @"minimumNumberOfHighConfidenceScenes";
    v69[1] = &unk_284482FA0;
    v68[2] = @"usePOIs";
    v69[0] = &unk_284487108;
    v69[2] = MEMORY[0x277CBEC38];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
    v70[0] = v21;
    v66[0] = @"minimumDuration";
    v66[1] = @"minimumNumberOfHighConfidenceScenes";
    v67[0] = &unk_284487108;
    v67[1] = &unk_284482FB8;
    v66[2] = @"usePOIs";
    v67[2] = MEMORY[0x277CBEC28];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
    v70[1] = v22;
    v64[0] = @"minimumDuration";
    v64[1] = @"minimumNumberOfHighConfidenceScenes";
    v65[0] = &unk_284487118;
    v65[1] = &unk_284482FD0;
    v64[2] = @"usePOIs";
    v65[2] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
    v70[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];

    v49 = [selfCopy locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:v52];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v25)
    {
      v26 = v25;
      v47 = *v54;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v53 + 1) + 8 * j);
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

          v37 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"NightOut" minimumScore:v52 graph:0.6];
          [(PGMeaningfulEventCriteria *)v37 setLocationsTrait:v49];
          v38 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3.0];
          [(PGMeaningfulEventCriteria *)v37 setNumberOfPeopleTrait:v38];

          v39 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v18];
          -[PGMeaningfulEventTrait setMinimumScore:](v39, "setMinimumScore:", 1.0 / [v18 count]);
          [(PGMeaningfulEventSceneCollectionTrait *)v39 setMinimumNumberOfHighConfidenceAssets:v34];
          [(PGMeaningfulEventCriteria *)v37 setScenesTrait:v39];
          if (bOOLValue)
          {
            v40 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v45];
            [(PGMeaningfulEventTrait *)v40 setMinimumScore:0.4];
            [(PGMeaningfulEventCriteria *)v37 setPoisTrait:v40];
          }

          [(PGMeaningfulEventRequiredCriteria *)v37 setMustBeInteresting:1];
          v41 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:v31];
          [(PGMeaningfulEventTrait *)v41 setMinimumScore:1.0];
          [(PGMeaningfulEventCriteria *)v37 setMinimumDurationTrait:v41];
          [(PGMeaningfulEventCriteria *)v37 setSignificantPartsOfDayTrait:v50];
          [v51 addObject:v37];
        }

        v26 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v26);
    }

    v20 = v45;
  }

  return v51;
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

  v8 = [self _museumSceneTraitInGraph:graphCopy minimumNumberOfHighConfidenceAssets:12];
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
    v13 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:14];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.2];
    [(PGMeaningfulEventCriteria *)v11 setSignificantPartsOfDayTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3600.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
    v15 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
    [array addObject:v11];
  }

  return array;
}

+ (id)_museumCriteriaArrayForPublicEventInferenceWithGraph:(id)graph
{
  v10[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = [self _museumSceneTraitInGraph:graphCopy minimumNumberOfHighConfidenceAssets:8];
  if (v5)
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Museum" minimumScore:graphCopy graph:0.4];
    [(PGMeaningfulEventCriteria *)v6 setScenesTrait:v5];
    v7 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:14];
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

+ (id)_museumCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph
{
  graphCopy = graph;
  if (type == 1)
  {
    v7 = [self _museumCriteriaArrayForPublicEventInferenceWithGraph:graphCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v7 = [self _museumCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  return v9;
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
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:10];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:57600.0];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v11 setMinimumDurationTrait:v14];
    v15 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
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
    [(PGMeaningfulEventSceneCollectionTrait *)v13 setMinimumNumberOfHighConfidenceAssets:7];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v13];
    v14 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:48];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.4];
    [(PGMeaningfulEventCriteria *)v12 setSignificantPartsOfDayTrait:v14];
    [array addObject:v12];
  }

  return array;
}

+ (id)_concertCriteriaArrayForMeaningInferenceWithGraph:(id)graph
{
  v20[5] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  musicConcerts = [MEMORY[0x277D27780] musicConcerts];
  v7 = [self _publicEventCriteriaForCategoryWithName:musicConcerts inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _concertSceneNodesInGraph:graphCopy];
  v20[0] = @"Nightlife";
  v20[1] = @"Culture";
  v20[2] = @"Entertainment";
  v20[3] = @"Stadium";
  v20[4] = @"Performance";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  v11 = [v8 count];
  if (v11)
  {
    v12 = v11;
    if ([v10 count])
    {
      v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Concert" minimumScore:graphCopy graph:0.4];
      v14 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
      [(PGMeaningfulEventCriteria *)v13 setNumberOfPeopleTrait:v14];

      v15 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
      [(PGMeaningfulEventTrait *)v15 setMinimumScore:0.1];
      [(PGMeaningfulEventCriteria *)v13 setPoisTrait:v15];
      v16 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v8];
      [(PGMeaningfulEventTrait *)v16 setMinimumScore:1.0 / v12];
      [(PGMeaningfulEventSceneCollectionTrait *)v16 setMinimumNumberOfHighConfidenceAssets:2];
      [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v16];
      v17 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:300.0];
      [(PGMeaningfulEventTrait *)v17 setMinimumScore:1.0];
      [(PGMeaningfulEventCriteria *)v13 setMinimumDurationTrait:v17];
      v18 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
      [(PGMeaningfulEventCriteria *)v13 setLocationsTrait:v18];
      [array addObject:v13];
    }
  }

  return array;
}

+ (id)_concertCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph
{
  graphCopy = graph;
  if (type == 1)
  {
    v7 = [self _concertCriteriaArrayForPublicEventInferenceWithGraph:graphCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v7 = [self _concertCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  return v9;
}

+ (id)_performanceCriteriaWithGraph:(id)graph
{
  v17[4] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"performance", @"clown", @"ballet_dancer", @"acrobat", @"ballet", @"breakdancing", @"bellydance", @"magic", @"circus", @"orchestra", 0}];
  v6 = [graphCopy sceneNodesForSceneNames:v5];
  v17[0] = @"Nightlife";
  v17[1] = @"Culture";
  v17[2] = @"Entertainment";
  v17[3] = @"Performance";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v8 = [PGGraphPOINodeCollection poiNodesForLabels:v7 inGraph:graphCopy];

  if ([v6 count] && objc_msgSend(v8, "count"))
  {
    v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"toy", 0}];
    v10 = [graphCopy sceneNodesForSceneNames:v9];

    v11 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Performance" minimumScore:graphCopy graph:0.4];
    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventCriteria *)v11 setNumberOfPeopleTrait:v12];

    v13 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v8];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v11 setPoisTrait:v13];
    v14 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v6 negativeNodes:v10];
    -[PGMeaningfulEventTrait setMinimumScore:](v14, "setMinimumScore:", 1.0 / [v6 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v14 setMinimumNumberOfHighConfidenceAssets:4];
    [(PGMeaningfulEventCriteria *)v11 setScenesTrait:v14];
    v15 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v11 setLocationsTrait:v15];
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
  v18[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = [self _winterSportSceneNodesWithGraph:graphCopy sceneTaxonomy:taxonomy];
  v18[0] = @"Mountain";
  v18[1] = @"Nature";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v9 = [PGGraphROINodeCollection roiNodesForLabels:v8 inGraph:graphCopy];

  if ([v7 count] && objc_msgSend(v9, "count"))
  {
    v10 = [self _beachingSceneNodesWithGraph:graphCopy];
    v11 = [self _negativeHikingSceneNodesWithGraph:graphCopy];
    v12 = [v10 collectionByFormingUnionWith:v11];

    v13 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"WinterSport" minimumScore:graphCopy graph:0.6];
    v14 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7 negativeNodes:v12];
    -[PGMeaningfulEventTrait setMinimumScore:](v14, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventCriteria *)v13 setScenesTrait:v14];
    v15 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v9];
    [(PGMeaningfulEventTrait *)v15 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v13 setRoisTrait:v15];
    [(PGMeaningfulEventRequiredCriteria *)v13 setMustBeInteresting:1];
    v16 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v13 setLocationsTrait:v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_divingCriteriaWithGraph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v22[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  v8 = [self _divingSceneNodesWithGraph:graphCopy];
  v22[0] = @"Water";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
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
    [(PGMeaningfulEventRequiredCriteria *)v17 setMustBeInteresting:1];
    v20 = [self locationsTraitNotMatchingFrequentLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v17 setLocationsTrait:v20];
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
  v24[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  sports = [MEMORY[0x277D27780] sports];
  v7 = [self _publicEventCriteriaForCategoryWithName:sports inGraph:graphCopy];

  if (v7)
  {
    [array addObject:v7];
  }

  v8 = [self _sportEventScenesTraitWithGraph:graphCopy];
  v24[0] = @"Entertainment";
  v24[1] = @"Stadium";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v10 = [PGGraphPOINodeCollection poiNodesForLabels:v9 inGraph:graphCopy];

  v11 = [graphCopy anyNodeForLabel:@"Park" domain:501 properties:0];
  if (v8 && [v10 count])
  {
    v12 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"SportEvent" minimumScore:graphCopy graph:0.4];
    [(PGMeaningfulEventCriteria *)v12 setScenesTrait:v8];
    v13 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:2.0];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v12 setNumberOfPeopleTrait:v13];
    v14 = [[PGMeaningfulEventCollectionTrait alloc] initWithNodes:v10];
    [(PGMeaningfulEventTrait *)v14 setMinimumScore:0.25];
    [(PGMeaningfulEventCriteria *)v12 setPoisTrait:v14];
    v15 = [self locationsTraitNotMatchingPeopleHomeWorkLocationsForGraph:graphCopy];
    [(PGMeaningfulEventCriteria *)v12 setLocationsTrait:v15];
    if (v11)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke;
      v22[3] = &unk_2788815A8;
      v23 = v11;
      [(PGMeaningfulEventCriteria *)v12 poisTrait];
      v21 = v11;
      v16 = v7;
      v17 = v13;
      v19 = v18 = array;
      [v19 setAdditionalMatchingBlock:v22];

      array = v18;
      v13 = v17;
      v7 = v16;
      v11 = v21;
    }

    [array addObject:v12];
  }

  return array;
}

BOOL __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v11[2] = __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2;
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

void __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 collection];
  v6 = [v5 areaNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3;
  v9[3] = &unk_278881558;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a3;
  [v6 enumerateNodesUsingBlock:v9];
}

void __97__PGMeaningfulEventRequiredCriteriaFactory__sportEventCriteriaArrayForMeaningInferenceWithGraph___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
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

+ (id)_sportEventCriteriaArrayForInferenceType:(unint64_t)type graph:(id)graph
{
  graphCopy = graph;
  if (type == 1)
  {
    v7 = [self _sportEventCriteriaArrayForPublicEventInferenceWithGraph:graphCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v7 = [self _sportEventCriteriaArrayForMeaningInferenceWithGraph:graphCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)_celebrationCriteriaWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"graduation", @"disco_ball", @"ceremony", @"wedding", 0}];
  v5 = [graphCopy sceneNodesForSceneNames:v4];
  if ([v5 count])
  {
    v6 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Celebration" minimumScore:graphCopy graph:0.4];
    v7 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:4.0];
    [(PGMeaningfulEventTrait *)v7 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v6 setNumberOfPeopleTrait:v7];
    v8 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v5];
    -[PGMeaningfulEventTrait setMinimumScore:](v8, "setMinimumScore:", 1.0 / [v5 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v8 setMinimumNumberOfHighConfidenceAssets:10];
    [(PGMeaningfulEventCriteria *)v6 setScenesTrait:v8];
    v9 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:10800.0];
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
  v20[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = [self _weddingSceneNodesWithGraph:graphCopy includeWedding:1 sceneTaxonomy:taxonomy];
  if ([v7 count])
  {
    v8 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:graphCopy graph:0.4];
    v9 = [self locationsTraitNotMatchingPeopleWorkLocationsForGraph:graphCopy];
    [v9 setSkipNegativeRequirementForMissingLocation:1];
    [(PGMeaningfulEventCriteria *)v8 setLocationsTrait:v9];
    v10 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:10.0];
    [(PGMeaningfulEventTrait *)v10 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v8 setNumberOfPeopleTrait:v10];
    v11 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];
    -[PGMeaningfulEventTrait setMinimumScore:](v11, "setMinimumScore:", 2.0 / [v7 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v11 setMinimumNumberOfHighConfidenceAssets:5];
    [(PGMeaningfulEventCriteria *)v8 setScenesTrait:v11];
    v12 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:12600.0];
    [(PGMeaningfulEventTrait *)v12 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v8 setMinimumDurationTrait:v12];
    v13 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:28];
    [(PGMeaningfulEventTrait *)v13 setMinimumScore:0.1];
    [(PGMeaningfulEventCriteria *)v8 setAllPartsOfDayTrait:v13];
    [(PGMeaningfulEventRequiredCriteria *)v8 setMustBeInteresting:1];
    v14 = [[PGMeaningfulEventRequiredCriteria alloc] initWithIdentifier:@"Wedding" minimumScore:graphCopy graph:0.4];
    v15 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:30.0];

    [(PGMeaningfulEventTrait *)v15 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v14 setNumberOfPeopleTrait:v15];
    v16 = [[PGMeaningfulEventSceneCollectionTrait alloc] initWithNodes:v7];

    -[PGMeaningfulEventTrait setMinimumScore:](v16, "setMinimumScore:", 1.0 / [v7 count]);
    [(PGMeaningfulEventSceneCollectionTrait *)v16 setMinimumNumberOfHighConfidenceAssets:18];
    [(PGMeaningfulEventCriteria *)v14 setScenesTrait:v16];
    v17 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:3600.0];

    [(PGMeaningfulEventTrait *)v17 setMinimumScore:1.0];
    [(PGMeaningfulEventCriteria *)v14 setMinimumDurationTrait:v17];
    [(PGMeaningfulEventCriteria *)v14 setAllPartsOfDayTrait:v13];
    [(PGMeaningfulEventRequiredCriteria *)v14 setMustBeInteresting:1];
    [(PGMeaningfulEventCriteria *)v14 setLocationsTrait:v9];
    v20[0] = v8;
    v20[1] = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  return v18;
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
  aBlock[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke;
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
  v34[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_5;
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

void __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke(id *a1, void *a2)
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
    v26[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2;
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
    aBlock[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4;
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

void __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 calendarUnitValue];
  v6 = *(a1 + 64);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v5 > v6)
  {
    [*(a1 + 32) setYear:v5];
    v8 = [MEMORY[0x277D27690] dateFromComponents:*(a1 + 32) inTimeZone:0];
    v9 = [*(a1 + 40) dateNodeForLocalDate:v8];
    if (v9)
    {
      [*(a1 + 48) addObject:v9];
    }

    if (([MEMORY[0x277D276A8] isWeekendDate:v8] & 1) == 0)
    {
      v24 = 0;
      v25 = 0.0;
      v10 = [MEMORY[0x277D276A8] nextWeekendLocalStartDate:&v24 interval:&v25 options:0 afterDate:v8];
      v11 = v24;
      v12 = v11;
      if (v10)
      {
        v13 = [v11 dateByAddingTimeInterval:v25];
        v18 = v12;
        v14 = v12;
        if ([v14 compare:v13] == 1)
        {
          v15 = v14;
        }

        else
        {
          do
          {
            v16 = [*(a1 + 40) dateNodeForLocalDate:{v14, v18}];
            v17 = v16;
            if (v16 && (!v9 || ([v16 isSameNodeAsNode:v9] & 1) == 0))
            {
              v20 = 0;
              v21 = &v20;
              v22 = 0x2020000000;
              v23 = 0;
              v19[0] = MEMORY[0x277D85DD0];
              v19[1] = 3221225472;
              v19[2] = __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3;
              v19[3] = &unk_278885C70;
              v19[4] = &v20;
              [v17 enumerateHolidayNodesUsingBlock:v19];
              if ((v21[3] & 1) == 0)
              {
                [*(a1 + 56) addObject:v17];
              }

              _Block_object_dispose(&v20, 8);
            }

            v15 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v14];

            v14 = v15;
          }

          while ([v15 compare:v13] != 1);
        }

        v12 = v18;
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

PGMeaningfulEventRequiredCriteria *__129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_4(uint64_t a1, int a2, void *a3, int a4)
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

    v31 = [[PGMeaningfulEventPartOfDayTrait alloc] initWithPartOfDay:56];
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
    [(PGMeaningfulEventSceneCollectionTrait *)v27 setMinimumNumberOfHighConfidenceAssets:2];
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

unint64_t __129__PGMeaningfulEventRequiredCriteriaFactory__birthdayCriteriaWithGraph_strongBirthdayCriteria_weakBirthdayCriteria_sceneTaxonomy___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 category];
  if (result <= 4 && ((1 << result) & 0x16) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (id)availablePersonActivityMeaningLabels
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"PersonBeachWater";
  v4[1] = @"PersonToys";
  v4[2] = @"PersonPlayground";
  v4[3] = @"PersonActionSwimming";
  v4[4] = @"PersonActionPlayingOnASwing";
  v4[5] = @"PersonActionPlayingOnASlide";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];

  return v2;
}

+ (id)availableMeaningLabels
{
  v4[25] = *MEMORY[0x277D85DE8];
  v4[0] = @"Wedding";
  v4[1] = @"Birthday";
  v4[2] = @"Anniversary";
  v4[3] = @"Celebration";
  v4[4] = @"Concert";
  v4[5] = @"Festival";
  v4[6] = @"Theater";
  v4[7] = @"Dance";
  v4[8] = @"Museum";
  v4[9] = @"AmusementPark";
  v4[10] = @"Performance";
  v4[11] = @"Hiking";
  v4[12] = @"Climbing";
  v4[13] = @"Beaching";
  v4[14] = @"SportEvent";
  v4[15] = @"WinterSport";
  v4[16] = @"Diving";
  v4[17] = @"Activity";
  v4[18] = @"Lunch";
  v4[19] = @"Dinner";
  v4[20] = @"Restaurant";
  v4[21] = @"NightOut";
  v4[22] = @"Entertainment";
  v4[23] = @"HolidayEvent";
  v4[24] = @"Gathering";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:25];

  return v2;
}

+ (id)_requiredCriteriaForIdentifiers:(id)identifiers inferenceType:(unint64_t)type graph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v55[3] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  taxonomyCopy = taxonomy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__PGMeaningfulEventRequiredCriteriaFactory__requiredCriteriaForIdentifiers_inferenceType_graph_sceneTaxonomy___block_invoke;
  aBlock[3] = &unk_2788814B8;
  v14 = dictionary;
  v54 = v14;
  v15 = _Block_copy(aBlock);
  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"Wedding"])
    {
      v16 = [self _weddingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
      [v14 setObject:v16 forKeyedSubscript:@"Wedding"];
    }

    if (([identifiersCopy containsObject:@"Birthday"] & 1) == 0 && (objc_msgSend(identifiersCopy, "containsObject:", @"WeakBirthday") & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = [self _weddingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v14 setObject:v17 forKeyedSubscript:@"Wedding"];
  }

  v51 = 0;
  v52 = 0;
  [self _birthdayCriteriaWithGraph:graphCopy strongBirthdayCriteria:&v52 weakBirthdayCriteria:&v51 sceneTaxonomy:taxonomyCopy];
  v18 = v52;
  v19 = v51;
  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"Birthday"])
    {
      [v14 setObject:v18 forKeyedSubscript:@"Birthday"];
    }

    if (([identifiersCopy containsObject:@"WeakBirthday"] & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
    [v14 setObject:v18 forKeyedSubscript:@"Birthday"];
  }

  [v14 setObject:v19 forKeyedSubscript:@"WeakBirthday"];

  if (!identifiersCopy)
  {
    v21 = [self _anniversaryCriteriaWithGraph:graphCopy];
    [v14 setObject:v21 forKeyedSubscript:@"Anniversary"];

    goto LABEL_20;
  }

LABEL_15:
  if ([identifiersCopy containsObject:@"Anniversary"])
  {
    v20 = [self _anniversaryCriteriaWithGraph:graphCopy];
    [v14 setObject:v20 forKeyedSubscript:@"Anniversary"];
  }

  if (([identifiersCopy containsObject:@"Celebration"] & 1) == 0)
  {
LABEL_21:
    if ([identifiersCopy containsObject:@"Performance"])
    {
      v23 = [self _performanceCriteriaWithGraph:graphCopy];
      v15[2](v15, @"Performance", v23);
    }

    if (([identifiersCopy containsObject:@"Concert"] & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_20:
  v22 = [self _celebrationCriteriaWithGraph:graphCopy];
  v15[2](v15, @"Celebration", v22);

  if (identifiersCopy)
  {
    goto LABEL_21;
  }

  v24 = [self _performanceCriteriaWithGraph:graphCopy];
  v15[2](v15, @"Performance", v24);

LABEL_26:
  v25 = [self _concertCriteriaArrayForInferenceType:type graph:graphCopy];
  [v14 setObject:v25 forKeyedSubscript:@"Concert"];

  if (!identifiersCopy)
  {
    v27 = [self _festivalCriteriaArrayWithGraph:graphCopy];
    [v14 setObject:v27 forKeyedSubscript:@"Festival"];

    goto LABEL_32;
  }

LABEL_27:
  if ([identifiersCopy containsObject:@"Festival"])
  {
    v26 = [self _festivalCriteriaArrayWithGraph:graphCopy];
    [v14 setObject:v26 forKeyedSubscript:@"Festival"];
  }

  if (([identifiersCopy containsObject:@"Theater"] & 1) == 0)
  {
LABEL_33:
    if ([identifiersCopy containsObject:@"Dance"])
    {
      v29 = [self _danceCriteriaWithGraph:graphCopy];
      v15[2](v15, @"Dance", v29);
    }

    if (([identifiersCopy containsObject:@"Hiking"] & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_32:
  v28 = [self _theaterCriteriaWithGraph:graphCopy];
  v15[2](v15, @"Theater", v28);

  if (identifiersCopy)
  {
    goto LABEL_33;
  }

  v30 = [self _danceCriteriaWithGraph:graphCopy];
  v15[2](v15, @"Dance", v30);

LABEL_38:
  v31 = [self _hikingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  [v14 setObject:v31 forKeyedSubscript:@"Hiking"];

  if (!identifiersCopy)
  {
    v33 = [self _climbingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v15[2](v15, @"Climbing", v33);

    goto LABEL_44;
  }

LABEL_39:
  if ([identifiersCopy containsObject:@"Climbing"])
  {
    v32 = [self _climbingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v15[2](v15, @"Climbing", v32);
  }

  if (([identifiersCopy containsObject:@"Beaching"] & 1) == 0)
  {
LABEL_45:
    if ([identifiersCopy containsObject:@"SportEvent"])
    {
      v35 = [self _sportEventCriteriaArrayForInferenceType:type graph:graphCopy];
      [v14 setObject:v35 forKeyedSubscript:@"SportEvent"];
    }

    if (([identifiersCopy containsObject:@"WinterSport"] & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_44:
  v34 = [self _beachingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  v15[2](v15, @"Beaching", v34);

  if (identifiersCopy)
  {
    goto LABEL_45;
  }

  v36 = [self _sportEventCriteriaArrayForInferenceType:type graph:graphCopy];
  [v14 setObject:v36 forKeyedSubscript:@"SportEvent"];

LABEL_50:
  v37 = [self _winterSportCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  v15[2](v15, @"WinterSport", v37);

  if (!identifiersCopy)
  {
    v40 = [self _divingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v15[2](v15, @"Diving", v40);

    v55[0] = @"Lunch";
    v55[1] = @"Dinner";
    v55[2] = @"Breakfast";
    array = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
    goto LABEL_60;
  }

LABEL_51:
  if ([identifiersCopy containsObject:@"Diving"])
  {
    v38 = [self _divingCriteriaWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    v15[2](v15, @"Diving", v38);
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

LABEL_60:
  if ([array count])
  {
    v41 = [self _restaurantCriteriaByCriteriaForIdentifiers:array withGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v14 addEntriesFromDictionary:v41];
  }

  if (identifiersCopy)
  {
    if ([identifiersCopy containsObject:@"NightOut"])
    {
      v42 = [self _nightOutCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
      [v14 setObject:v42 forKeyedSubscript:@"NightOut"];
    }

    if (([identifiersCopy containsObject:@"Entertainment"] & 1) == 0)
    {
LABEL_69:
      if ([identifiersCopy containsObject:@"AmusementPark"])
      {
        v45 = [self _amusementParkCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
        [v14 setObject:v45 forKeyedSubscript:@"AmusementPark"];
      }

      if (([identifiersCopy containsObject:@"Museum"] & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  else
  {
    v43 = [self _nightOutCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
    [v14 setObject:v43 forKeyedSubscript:@"NightOut"];
  }

  v44 = [self _entertainmentCriteriaWithGraph:graphCopy];
  v15[2](v15, @"Entertainment", v44);

  if (identifiersCopy)
  {
    goto LABEL_69;
  }

  v46 = [self _amusementParkCriteriaArrayWithGraph:graphCopy sceneTaxonomy:taxonomyCopy];
  [v14 setObject:v46 forKeyedSubscript:@"AmusementPark"];

LABEL_74:
  v47 = [self _museumCriteriaArrayForInferenceType:type graph:graphCopy];
  [v14 setObject:v47 forKeyedSubscript:@"Museum"];

  if (!identifiersCopy)
  {
LABEL_76:
    v48 = [self _socialGroupGatheringCriteriaWithGraph:graphCopy];
    [v14 setObject:v48 forKeyedSubscript:@"Gathering"];

    goto LABEL_77;
  }

LABEL_75:
  if ([identifiersCopy containsObject:@"Gathering"])
  {
    goto LABEL_76;
  }

LABEL_77:
  v49 = v14;

  return v14;
}

void __110__PGMeaningfulEventRequiredCriteriaFactory__requiredCriteriaForIdentifiers_inferenceType_graph_sceneTaxonomy___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)requiredCriteriaForIdentifiers:(id)identifiers inferenceType:(unint64_t)type graph:(id)graph sceneTaxonomy:(id)taxonomy
{
  v10 = MEMORY[0x277CBEB98];
  taxonomyCopy = taxonomy;
  graphCopy = graph;
  v13 = [v10 setWithArray:identifiers];
  v14 = [self _requiredCriteriaForIdentifiers:v13 inferenceType:type graph:graphCopy sceneTaxonomy:taxonomyCopy];

  return v14;
}

@end