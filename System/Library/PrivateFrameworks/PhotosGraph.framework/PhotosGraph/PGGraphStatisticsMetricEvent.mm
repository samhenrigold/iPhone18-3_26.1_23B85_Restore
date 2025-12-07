@interface PGGraphStatisticsMetricEvent
- (PGGraphStatisticsMetricEvent)initWithGraphManager:(id)manager;
- (id)payload;
- (void)_fillBusinessStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillFrequentLocationsStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillGenericStatisticsWithGraph:(id)graph;
- (void)_fillHolidaysStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillHomeWorkStatisticsWithGraph:(id)graph;
- (void)_fillMeaningfulEventsStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillMomentStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillPeopleStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillPetStatisticsWithGraph:(id)graph;
- (void)_fillPublicEventStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillTripStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_saveKey:(id)key BOOLValue:(BOOL)value payload:(id)payload;
- (void)_saveKey:(id)key doubleValue:(double)value payload:(id)payload;
- (void)_saveKey:(id)key integerValue:(unint64_t)value payload:(id)payload;
- (void)gatherMetricsWithProgressBlock:(id)block;
@end

@implementation PGGraphStatisticsMetricEvent

- (void)_saveKey:(id)key integerValue:(unint64_t)value payload:(id)payload
{
  if (PGMetricsUnavailableIntegerValue != value)
  {
    v8 = MEMORY[0x277CCABB0];
    payloadCopy = payload;
    keyCopy = key;
    v11 = [v8 numberWithUnsignedInteger:value];
    [payloadCopy setObject:v11 forKeyedSubscript:keyCopy];
  }
}

- (void)_saveKey:(id)key BOOLValue:(BOOL)value payload:(id)payload
{
  valueCopy = value;
  v7 = MEMORY[0x277CCABB0];
  payloadCopy = payload;
  keyCopy = key;
  v10 = [v7 numberWithBool:valueCopy];
  [payloadCopy setObject:v10 forKeyedSubscript:keyCopy];
}

- (void)_saveKey:(id)key doubleValue:(double)value payload:(id)payload
{
  if (*&PGMetricsUnavailableDoubleValue != value)
  {
    v7 = MEMORY[0x277CCABB0];
    payloadCopy = payload;
    keyCopy = key;
    v10 = [v7 numberWithDouble:value];
    [payloadCopy setObject:v10 forKeyedSubscript:keyCopy];
  }
}

- (id)payload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"librarySize" integerValue:self->_librarySize payload:dictionary];
  v4 = [PGCuratedLibraryIntelligenceMetricEvent librarySizeRangeDescriptionForLibrarySizeRange:self->_librarySizeRange];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"librarySizeRange" stringValue:v4 payload:dictionary];

  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfSelfies" integerValue:self->_numberOfSelfies payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfSelfies" doubleValue:dictionary payload:self->_ratioOfSelfies];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMoments" integerValue:self->_numberOfMoments payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfBusinessNodes" integerValue:self->_numberOfBusinessNodes payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsLinkedToABusinessNode" integerValue:self->_numberOfMomentsLinkedToABusinessNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsLinkedToABusinessNode" doubleValue:dictionary payload:self->_ratioOfMomentsLinkedToABusinessNode];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMoments" integerValue:self->_numberOfMeaningfulMoments payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMeaningfulMoments" doubleValue:dictionary payload:self->_ratioOfMeaningfulMoments];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsGathering" integerValue:self->_numberOfMeaningfulMomentsGathering payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivity" integerValue:self->_numberOfMeaningfulMomentsActivity payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityBeach" integerValue:self->_numberOfMeaningfulMomentsActivityBeach payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityDiving" integerValue:self->_numberOfMeaningfulMomentsActivityDiving payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityHiking" integerValue:self->_numberOfMeaningfulMomentsActivityHiking payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityClimbing" integerValue:self->_numberOfMeaningfulMomentsActivityClimbing payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsActivityWinterSport" integerValue:self->_numberOfMeaningfulMomentsActivityWinterSport payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainment" integerValue:self->_numberOfMeaningfulMomentsEntertainment payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentAmusementPark" integerValue:self->_numberOfMeaningfulMomentsEntertainmentAmusementPark payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentNightOut" integerValue:self->_numberOfMeaningfulMomentsEntertainmentNightOut payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentPerformance" integerValue:self->_numberOfMeaningfulMomentsEntertainmentPerformance payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentConcert" integerValue:self->_numberOfMeaningfulMomentsEntertainmentConcert payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentFestival" integerValue:self->_numberOfMeaningfulMomentsEntertainmentFestival payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentTheater" integerValue:self->_numberOfMeaningfulMomentsEntertainmentTheater payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentDance" integerValue:self->_numberOfMeaningfulMomentsEntertainmentDance payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentMuseum" integerValue:self->_numberOfMeaningfulMomentsEntertainmentMuseum payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsEntertainmentSportEvent" integerValue:self->_numberOfMeaningfulMomentsEntertainmentSportEvent payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebration" integerValue:self->_numberOfMeaningfulMomentsCelebration payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebrationAnniversary" integerValue:self->_numberOfMeaningfulMomentsCelebrationAnniversary payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebrationBirthday" integerValue:self->_numberOfMeaningfulMomentsCelebrationBirthday payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebrationHolidayEvent" integerValue:self->_numberOfMeaningfulMomentsCelebrationHolidayEvent payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsCelebrationWedding" integerValue:self->_numberOfMeaningfulMomentsCelebrationWedding payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsRestaurant" integerValue:self->_numberOfMeaningfulMomentsRestaurant payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsRestaurantBreakfast" integerValue:self->_numberOfMeaningfulMomentsRestaurantBreakfast payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsRestaurantLunch" integerValue:self->_numberOfMeaningfulMomentsRestaurantLunch payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMeaningfulMomentsRestaurantDinner" integerValue:self->_numberOfMeaningfulMomentsRestaurantDinner payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEvents" integerValue:self->_numberOfPublicEvents payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryMusicConcerts" integerValue:self->_numberOfPublicEventsCategoryMusicConcerts payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryNightLife" integerValue:self->_numberOfPublicEventsCategoryNightLife payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryTheater" integerValue:self->_numberOfPublicEventsCategoryTheater payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryDance" integerValue:self->_numberOfPublicEventsCategoryDance payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryFestivalsAndFairs" integerValue:self->_numberOfPublicEventsCategoryFestivalsAndFairs payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryArtsAndMuseums" integerValue:self->_numberOfPublicEventsCategoryArtsAndMuseums payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategorySports" integerValue:self->_numberOfPublicEventsCategorySports payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryBusinessAndTechnology" integerValue:self->_numberOfPublicEventsCategoryBusinessAndTechnology payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryCommunity" integerValue:self->_numberOfPublicEventsCategoryCommunity payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryEducational" integerValue:self->_numberOfPublicEventsCategoryEducational payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryFamilyEvents" integerValue:self->_numberOfPublicEventsCategoryFamilyEvents payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryTours" integerValue:self->_numberOfPublicEventsCategoryTours payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPublicEventsCategoryAppleEvents" integerValue:self->_numberOfPublicEventsCategoryAppleEvents payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsLinkedToAPublicEvent" integerValue:self->_numberOfMomentsLinkedToAPublicEvent payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsLinkedToAPublicEvent" doubleValue:dictionary payload:self->_ratioOfMomentsLinkedToAPublicEvent];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasMeNode" BOOLValue:self->_hasMeNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasNamedMeNode" BOOLValue:self->_hasNamedMeNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPeople" integerValue:self->_numberOfPeople payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleLinkedToContact" doubleValue:dictionary payload:self->_ratioOfPeopleLinkedToContact];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleNotLinkedToContact" doubleValue:dictionary payload:self->_ratioOfPeopleNotLinkedToContact];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleNotLinkedToContactWithHighConfidenceContactSuggestion" doubleValue:dictionary payload:self->_ratioOfPeopleNotLinkedToContactWithHighConfidenceContactSuggestion];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfFavoritedPeople" doubleValue:dictionary payload:self->_ratioOfFavoritedPeople];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleWithExplicitBirthdayDate" doubleValue:dictionary payload:self->_ratioOfPeopleWithExplicitBirthdayDate];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeopleWithInferredBirthdayDate" doubleValue:dictionary payload:self->_ratioOfPeopleWithInferredBirthdayDate];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfSocialGroups" integerValue:self->_numberOfSocialGroups payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfPeoplePartOfASocialGroup" doubleValue:dictionary payload:self->_ratioOfPeoplePartOfASocialGroup];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfTwoPeopleSocialGroup" doubleValue:dictionary payload:self->_ratioOfTwoPeopleSocialGroup];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"averageSocialGroupSize" doubleValue:dictionary payload:self->_averageSocialGroupSize];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"maximumSocialGroupSize" integerValue:self->_maximumSocialGroupSize payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasMusicData" BOOLValue:self->_hasMusicData payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMusicSessions" integerValue:self->_numberOfMusicSessions payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"maximumMusicSessionSize" integerValue:self->_maximumMusicSessionSize payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"averageMusicSessionSize" doubleValue:dictionary payload:self->_averageMusicSessionSize];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasMeHomeNode" BOOLValue:self->_hasMeHomeNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"hasMeWorkNode" BOOLValue:self->_hasMeWorkNode payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsAtMyHome" integerValue:self->_numberOfMomentsAtMyHome payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsAtMyWork" integerValue:self->_numberOfMomentsAtMyWork payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsAtMyHome" doubleValue:dictionary payload:self->_ratioOfMomentsAtMyHome];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsAtMyWork" doubleValue:dictionary payload:self->_ratioOfMomentsAtMyWork];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsAtAFrequentLocation" doubleValue:dictionary payload:self->_ratioOfMomentsAtAFrequentLocation];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfFrequentLocations" integerValue:self->_numberOfFrequentLocations payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfFrequentLocationsCities" integerValue:self->_numberOfFrequentLocationsCities payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfFrequentLocationsCountries" integerValue:self->_numberOfFrequentLocationsCountries payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfPetNodes" integerValue:self->_numberOfPetNodes payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfCelebratedHolidays" integerValue:self->_numberOfCelebratedHolidays payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsCelebratingAHoliday" integerValue:self->_numberOfMomentsCelebratingAHoliday payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsCelebratingAHoliday" doubleValue:dictionary payload:self->_ratioOfMomentsCelebratingAHoliday];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfShortTrips" integerValue:self->_numberOfShortTrips payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfLongTrips" integerValue:self->_numberOfLongTrips payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"numberOfMomentsInTrip" integerValue:self->_numberOfMomentsInTrip payload:dictionary];
  [(PGGraphStatisticsMetricEvent *)self _saveKey:@"ratioOfMomentsInTrip" doubleValue:dictionary payload:self->_ratioOfMomentsInTrip];

  return dictionary;
}

- (void)_fillTripStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v15 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = 67109378;
      v12 = 584;
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v8 = MEMORY[0x277D86220];
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v11, 0x12u);
    }
  }

  else
  {
    longTripNodes = [graphCopy longTripNodes];
    self->_numberOfLongTrips = [longTripNodes count];

    if ([reporterCopy isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = 67109378;
        v12 = 587;
        v13 = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    else
    {
      shortTripNodes = [graphCopy shortTripNodes];
      self->_numberOfShortTrips = [shortTripNodes count];

      if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = 67109378;
        v12 = 589;
        v13 = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }
  }
}

- (void)_fillFrequentLocationsStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v16 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 67109378;
      v13 = 572;
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v8 = MEMORY[0x277D86220];
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v12, 0x12u);
    }
  }

  else
  {
    supersets = [graphCopy supersets];
    self->_numberOfFrequentLocations = [supersets count];

    if ([reporterCopy isCancelledWithProgress:0.3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = 67109378;
        v13 = 575;
        v14 = 2080;
        v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v8 = MEMORY[0x277D86220];
        goto LABEL_13;
      }
    }

    else
    {
      supersetCityNodes = [graphCopy supersetCityNodes];
      self->_numberOfFrequentLocationsCities = [supersetCityNodes count];

      if ([reporterCopy isCancelledWithProgress:0.6])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = 67109378;
          v13 = 577;
          v14 = 2080;
          v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
          v8 = MEMORY[0x277D86220];
          goto LABEL_13;
        }
      }

      else
      {
        supersetCountryNodes = [graphCopy supersetCountryNodes];
        self->_numberOfFrequentLocationsCountries = [supersetCountryNodes count];

        if ([reporterCopy isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = 67109378;
          v13 = 579;
          v14 = 2080;
          v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
          v8 = MEMORY[0x277D86220];
          goto LABEL_13;
        }
      }
    }
  }
}

- (void)_fillHomeWorkStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  meNodeCollection = [graphCopy meNodeCollection];
  homeNodes = [meNodeCollection homeNodes];
  self->_hasMeHomeNode = [homeNodes count] != 0;

  meNodeCollection2 = [graphCopy meNodeCollection];

  workNodes = [meNodeCollection2 workNodes];
  self->_hasMeWorkNode = [workNodes count] != 0;
}

- (void)_fillPetStatisticsWithGraph:(id)graph
{
  v4 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:graph];
  self->_numberOfPetNodes = [v4 count];
}

- (void)_fillHolidaysStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v41 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v10 = [v9 isCancelledWithProgress:0.0];
  *(v33 + 24) = v10;
  if (!v10)
  {
    celebratedHolidayNodes = [graphCopy celebratedHolidayNodes];
    self->_numberOfCelebratedHolidays = [celebratedHolidayNodes count];
    v23 = [MEMORY[0x277CBEB58] set];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = celebratedHolidayNodes;
    v12 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __82__PGGraphStatisticsMetricEvent__fillHolidaysStatisticsWithGraph_progressReporter___block_invoke;
          v24[3] = &unk_27888B3B8;
          v25 = v23;
          v27 = &v32;
          v16 = v9;
          v26 = v16;
          [v15 enumerateCelebratingMomentNodesUsingBlock:v24];
          if (*(v33 + 24) == 1)
          {
            *(v33 + 24) = 1;
LABEL_16:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v38 = 550;
              v39 = 2080;
              v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_19;
          }

          v17 = [v16 isCancelledWithProgress:0.5];
          *(v33 + 24) = v17;
          if (v17)
          {
            goto LABEL_16;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = [v23 count];
    self->_numberOfMomentsCelebratingAHoliday = v18;
    numberOfMoments = self->_numberOfMoments;
    if (numberOfMoments)
    {
      v20 = v18 / numberOfMoments;
    }

    else
    {
      v20 = *&PGMetricsUnavailableDoubleValue;
    }

    self->_ratioOfMomentsCelebratingAHoliday = v20;
    if (v33[3])
    {
      *(v33 + 24) = 1;
    }

    else
    {
      v21 = [v9 isCancelledWithProgress:1.0];
      *(v33 + 24) = v21;
      if ((v21 & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v38 = 555;
      v39 = 2080;
      v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v38 = 538;
    v39 = 2080;
    v40 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_20:
  _Block_object_dispose(&v32, 8);

  objc_autoreleasePoolPop(v8);
}

uint64_t __82__PGGraphStatisticsMetricEvent__fillHolidaysStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 40) isCancelledWithProgress:0.5];
    v3 = *(*(a1 + 48) + 8);
  }

  *(v3 + 24) = result;
  return result;
}

- (void)_fillPeopleStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v83 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  context = objc_autoreleasePoolPush();
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v60 = reporterCopy;
  v7 = [v60 isCancelledWithProgress:0.0];
  *(v75 + 24) = v7;
  if (!v7)
  {
    selfCopy = self;
    meNode = [graphCopy meNode];
    self->_hasMeNode = meNode != 0;
    contactIdentifier = [meNode contactIdentifier];
    self->_hasNamedMeNode = [contactIdentifier length] != 0;

    v9 = [graphCopy personNodesIncludingMe:0];
    v51 = 456;
    self->_numberOfPeople = [v9 count];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v9;
    v10 = 0;
    v11 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
    if (v11)
    {
      v12 = 0;
      v57 = 0;
      v13 = 0;
      v14 = 0;
      v59 = *v71;
      v54 = v66;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v71 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v70 + 1) + 8 * i);
          isFavorite = [v16 isFavorite];
          contactIdentifier2 = [v16 contactIdentifier];
          v19 = [contactIdentifier2 length] == 0;

          if (v19)
          {
            *buf = 0;
            *&v80 = buf;
            *(&v80 + 1) = 0x2020000000;
            v81 = 0;
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v66[0] = __80__PGGraphStatisticsMetricEvent__fillPeopleStatisticsWithGraph_progressReporter___block_invoke;
            v66[1] = &unk_27888B458;
            v68 = buf;
            v69 = &v74;
            v67 = v60;
            [v16 enumerateContactSuggestionsSortedByConfidenceMatchingQuery:1 usingBlock:v65];
            v23 = *(v80 + 24);

            v57 += v23;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            birthdayDate = [v16 birthdayDate];

            potentialBirthdayDate = [v16 potentialBirthdayDate];
            if (birthdayDate)
            {
              ++v12;
            }

            v22 = potentialBirthdayDate != 0;

            ++v13;
            v10 += v22;
          }

          if (v75[3])
          {
            *(v75 + 24) = 1;
LABEL_36:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 466;
              LOWORD(v80) = 2080;
              *(&v80 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_39;
          }

          v24 = [v60 isCancelledWithProgress:0.5];
          *(v75 + 24) = v24;
          if (v24)
          {
            goto LABEL_36;
          }

          v14 += isFavorite;
        }

        v11 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v25 = v14;
      v26 = v12;
      v27 = v57;
    }

    else
    {
      v13 = 0;
      v26 = 0.0;
      v27 = 0.0;
      v25 = 0.0;
    }

    v28 = [obj count];
    *(&selfCopy->super.super.isa + v51) = v28;
    if (v28)
    {
      v29 = v13 / v28;
      selfCopy->_ratioOfPeopleLinkedToContact = v29;
      selfCopy->_ratioOfPeopleNotLinkedToContact = 1.0 - v29;
      selfCopy->_ratioOfFavoritedPeople = v25 / v28;
      selfCopy->_ratioOfPeopleWithExplicitBirthdayDate = v26 / v28;
      selfCopy->_ratioOfPeopleWithInferredBirthdayDate = (v10 / v28);
      selfCopy->_ratioOfPeopleNotLinkedToContactWithHighConfidenceContactSuggestion = v27 / (v28 - v13);
      socialGroupNodesSortedByImportance = [graphCopy socialGroupNodesSortedByImportance];
      selfCopy->_numberOfSocialGroups = [socialGroupNodesSortedByImportance count];
      v31 = [MEMORY[0x277CBEB58] set];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v32 = socialGroupNodesSortedByImportance;
      v33 = [v32 countByEnumeratingWithState:&v61 objects:v78 count:16];
      if (v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = *v62;
        v37 = 0.0;
        while (2)
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v62 != v36)
            {
              objc_enumerationMutation(v32);
            }

            personNodes = [*(*(&v61 + 1) + 8 * j) personNodes];
            [v31 unionSet:personNodes];
            v40 = [personNodes count];
            v41 = v40;
            if (v40 == 1)
            {
              ++v34;
            }

            if (v40 > v35)
            {
              v35 = v40;
            }

            if (*(v75 + 24) == 1)
            {
              *(v75 + 24) = 1;
LABEL_46:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = 500;
                LOWORD(v80) = 2080;
                *(&v80 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_39;
            }

            v42 = [v60 isCancelledWithProgress:0.8];
            *(v75 + 24) = v42;
            if (v42)
            {
              goto LABEL_46;
            }

            v37 = v37 + v41;
          }

          v33 = [v32 countByEnumeratingWithState:&v61 objects:v78 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

        v43 = v34;
      }

      else
      {
        v35 = 0;
        v43 = 0.0;
        v37 = 0.0;
      }

      selfCopy->_ratioOfPeoplePartOfASocialGroup = [v31 count] / *(&selfCopy->super.super.isa + v51);
      numberOfSocialGroups = selfCopy->_numberOfSocialGroups;
      if (numberOfSocialGroups)
      {
        selfCopy->_ratioOfTwoPeopleSocialGroup = v43 / numberOfSocialGroups;
        selfCopy->_averageSocialGroupSize = v37 / numberOfSocialGroups;
      }

      else
      {
        v49 = PGMetricsUnavailableDoubleValue;
        *&selfCopy->_ratioOfTwoPeopleSocialGroup = PGMetricsUnavailableDoubleValue;
        *&selfCopy->_averageSocialGroupSize = v49;
        v35 = PGMetricsUnavailableIntegerValue;
      }

      selfCopy->_maximumSocialGroupSize = v35;
    }

    else
    {
      v44 = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleLinkedToContact = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleNotLinkedToContact = v44;
      v45 = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfFavoritedPeople = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleWithExplicitBirthdayDate = v45;
      v46 = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleWithInferredBirthdayDate = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeopleNotLinkedToContactWithHighConfidenceContactSuggestion = v46;
      v47 = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfPeoplePartOfASocialGroup = PGMetricsUnavailableDoubleValue;
      *&selfCopy->_ratioOfTwoPeopleSocialGroup = v47;
      *&selfCopy->_averageSocialGroupSize = PGMetricsUnavailableDoubleValue;
      selfCopy->_maximumSocialGroupSize = PGMetricsUnavailableIntegerValue;
    }

    if (v75[3])
    {
      *(v75 + 24) = 1;
    }

    else
    {
      v50 = [v60 isCancelledWithProgress:1.0];
      *(v75 + 24) = v50;
      if ((v50 & 1) == 0)
      {
LABEL_39:

        goto LABEL_40;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 531;
      LOWORD(v80) = 2080;
      *(&v80 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 417;
    LOWORD(v80) = 2080;
    *(&v80 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_40:
  _Block_object_dispose(&v74, 8);

  objc_autoreleasePoolPop(context);
}

uint64_t __80__PGGraphStatisticsMetricEvent__fillPeopleStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = *(*(a1 + 40) + 8);
  result = 1;
  *(v6 + 24) = 1;
  *a5 = 1;
  v8 = *(*(a1 + 48) + 8);
  if ((*(v8 + 24) & 1) == 0)
  {
    result = [*(a1 + 32) isCancelledWithProgress:{a3, a4, 0.5}];
    v8 = *(*(a1 + 48) + 8);
  }

  *(v8 + 24) = result;
  return result;
}

- (void)_fillPublicEventStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v50 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v10 = [v9 isCancelledWithProgress:0.0];
  *(v40 + 24) = v10;
  if (!v10)
  {
    *buf = 0;
    *&v48 = buf;
    *(&v48 + 1) = 0x2020000000;
    v49 = 0;
    v11 = [MEMORY[0x277CBEB58] set];
    v12 = objc_alloc_init(MEMORY[0x277CCA940]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke;
    v33[3] = &unk_27888B430;
    v37 = buf;
    v13 = v12;
    v34 = v13;
    v38 = &v39;
    v14 = v9;
    v35 = v14;
    v15 = v11;
    v36 = v15;
    [graphCopy enumeratePublicEventNodesUsingBlock:v33];
    self->_numberOfPublicEvents = *(v48 + 24);
    v16 = [v15 count];
    self->_numberOfMomentsLinkedToAPublicEvent = v16;
    numberOfMoments = self->_numberOfMoments;
    if (numberOfMoments)
    {
      v18 = v16 / numberOfMoments;
    }

    else
    {
      v18 = *&PGMetricsUnavailableDoubleValue;
    }

    self->_ratioOfMomentsLinkedToAPublicEvent = v18;
    musicConcerts = [MEMORY[0x277D27780] musicConcerts];
    self->_numberOfPublicEventsCategoryMusicConcerts = [v13 countForObject:musicConcerts];

    nightLife = [MEMORY[0x277D27780] nightLife];
    self->_numberOfPublicEventsCategoryNightLife = [v13 countForObject:nightLife];

    theater = [MEMORY[0x277D27780] theater];
    self->_numberOfPublicEventsCategoryTheater = [v13 countForObject:theater];

    dance = [MEMORY[0x277D27780] dance];
    self->_numberOfPublicEventsCategoryDance = [v13 countForObject:dance];

    festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
    self->_numberOfPublicEventsCategoryFestivalsAndFairs = [v13 countForObject:festivalsAndFairs];

    artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
    self->_numberOfPublicEventsCategoryArtsAndMuseums = [v13 countForObject:artsAndMuseums];

    sports = [MEMORY[0x277D27780] sports];
    self->_numberOfPublicEventsCategorySports = [v13 countForObject:sports];

    businessAndTechnology = [MEMORY[0x277D27780] businessAndTechnology];
    self->_numberOfPublicEventsCategoryBusinessAndTechnology = [v13 countForObject:businessAndTechnology];

    community = [MEMORY[0x277D27780] community];
    self->_numberOfPublicEventsCategoryCommunity = [v13 countForObject:community];

    educational = [MEMORY[0x277D27780] educational];
    self->_numberOfPublicEventsCategoryEducational = [v13 countForObject:educational];

    familyEvents = [MEMORY[0x277D27780] familyEvents];
    self->_numberOfPublicEventsCategoryFamilyEvents = [v13 countForObject:familyEvents];

    tours = [MEMORY[0x277D27780] tours];
    self->_numberOfPublicEventsCategoryTours = [v13 countForObject:tours];

    appleEvents = [MEMORY[0x277D27780] appleEvents];
    self->_numberOfPublicEventsCategoryAppleEvents = [v13 countForObject:appleEvents];

    if (v40[3])
    {
      *(v40 + 24) = 1;
    }

    else
    {
      v32 = [v14 isCancelledWithProgress:1.0];
      *(v40 + 24) = v32;
      if ((v32 & 1) == 0)
      {
LABEL_12:

        _Block_object_dispose(buf, 8);
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v43 = 67109378;
      v44 = 410;
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v43, 0x12u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 367;
    LOWORD(v48) = 2080;
    *(&v48 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_13:
  _Block_object_dispose(&v39, 8);

  objc_autoreleasePoolPop(v8);
}

void __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 56) + 8) + 24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke_2;
  v20[3] = &unk_27888B408;
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v21 = v4;
  v23 = v5;
  v22 = *(a1 + 40);
  v6 = a2;
  [v6 enumeratePublicEventCategoryNodesUsingBlock:v20];
  v7 = [v6 collection];

  v8 = [v7 momentNodes];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke_3;
  v16 = &unk_27888B3B8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v17 = v9;
  v19 = v10;
  v18 = *(a1 + 40);
  [v8 enumerateNodesUsingBlock:&v13];

  v11 = *(*(a1 + 64) + 8);
  if (*(v11 + 24))
  {
    v12 = 1;
  }

  else
  {
    v12 = [*(a1 + 40) isCancelledWithProgress:{0.5, v13, v14, v15, v16, v17}];
    v11 = *(*(a1 + 64) + 8);
  }

  *(v11 + 24) = v12;
}

uint64_t __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 label];
  [v3 addObject:v4];

  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 40) isCancelledWithProgress:0.5];
    v5 = *(*(a1 + 48) + 8);
  }

  *(v5 + 24) = result;
  return result;
}

uint64_t __85__PGGraphStatisticsMetricEvent__fillPublicEventStatisticsWithGraph_progressReporter___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 40) isCancelledWithProgress:0.5];
    v3 = *(*(a1 + 48) + 8);
  }

  *(v3 + 24) = result;
  return result;
}

- (void)_fillBusinessStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v37 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v10 = [v9 isCancelledWithProgress:0.0];
  *(v27 + 24) = v10;
  if (!v10)
  {
    *buf = 0;
    *&v35 = buf;
    *(&v35 + 1) = 0x2020000000;
    v36 = 0;
    array = [MEMORY[0x277CBEB18] array];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __82__PGGraphStatisticsMetricEvent__fillBusinessStatisticsWithGraph_progressReporter___block_invoke;
    v21 = &unk_27888B3E0;
    v24 = buf;
    v12 = array;
    v22 = v12;
    v25 = &v26;
    v13 = v9;
    v23 = v13;
    [graphCopy enumerateBusinessNodesUsingBlock:&v18];
    self->_numberOfBusinessNodes = *(v35 + 24);
    v14 = [v12 count];
    self->_numberOfMomentsLinkedToABusinessNode = v14;
    numberOfMoments = self->_numberOfMoments;
    if (numberOfMoments)
    {
      v16 = v14 / numberOfMoments;
    }

    else
    {
      v16 = *&PGMetricsUnavailableDoubleValue;
    }

    self->_ratioOfMomentsLinkedToABusinessNode = v16;
    if (v27[3])
    {
      *(v27 + 24) = 1;
    }

    else
    {
      v17 = [v13 isCancelledWithProgress:1.0];
      *(v27 + 24) = v17;
      if ((v17 & 1) == 0)
      {
LABEL_12:

        _Block_object_dispose(buf, 8);
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v30 = 67109378;
      v31 = 360;
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v30, 0x12u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 338;
    LOWORD(v35) = 2080;
    *(&v35 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_13:
  _Block_object_dispose(&v26, 8);

  objc_autoreleasePoolPop(v8);
}

void __82__PGGraphStatisticsMetricEvent__fillBusinessStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  v3 = [a2 collection];
  v4 = [v3 momentNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__PGGraphStatisticsMetricEvent__fillBusinessStatisticsWithGraph_progressReporter___block_invoke_2;
  v9[3] = &unk_27888B3B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v10 = v5;
  v12 = v6;
  v11 = *(a1 + 40);
  [v4 enumerateNodesUsingBlock:v9];

  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 40) isCancelledWithProgress:0.5];
    v7 = *(*(a1 + 56) + 8);
  }

  *(v7 + 24) = v8;
}

uint64_t __82__PGGraphStatisticsMetricEvent__fillBusinessStatisticsWithGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 40) isCancelledWithProgress:0.5];
    v3 = *(*(a1 + 48) + 8);
  }

  *(v3 + 24) = result;
  return result;
}

- (void)_fillMeaningfulEventsStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v23 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  if (![v9 isCancelledWithProgress:0.0])
  {
    meaningfulEvents = [graphCopy meaningfulEvents];
    if ([v9 isCancelledWithProgress:0.3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = 67109378;
        v20 = 284;
        v21 = 2080;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v19, 0x12u);
      }

      goto LABEL_21;
    }

    v11 = objc_alloc_init(MEMORY[0x277CCA940]);
    v12 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:meaningfulEvents graph:graphCopy];
    if ([v9 isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = 67109378;
        v20 = 288;
        v21 = 2080;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
LABEL_19:
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v19, 0x12u);
      }
    }

    else
    {
      meaningNodes = [(PGGraphMomentNodeCollection *)v12 meaningNodes];
      meaningLabels = [meaningNodes meaningLabels];
      [v11 unionSet:meaningLabels];

      if (![v9 isCancelledWithProgress:0.8])
      {
        self->_numberOfMeaningfulMomentsGathering = [v11 countForObject:@"Gathering"];
        self->_numberOfMeaningfulMomentsActivity = [v11 countForObject:@"Activity"];
        self->_numberOfMeaningfulMomentsActivityBeach = [v11 countForObject:@"Beaching"];
        self->_numberOfMeaningfulMomentsActivityDiving = [v11 countForObject:@"Diving"];
        self->_numberOfMeaningfulMomentsActivityHiking = [v11 countForObject:@"Hiking"];
        self->_numberOfMeaningfulMomentsActivityWinterSport = [v11 countForObject:@"WinterSport"];
        self->_numberOfMeaningfulMomentsEntertainment = [v11 countForObject:@"Entertainment"];
        self->_numberOfMeaningfulMomentsEntertainmentNightOut = [v11 countForObject:@"NightOut"];
        self->_numberOfMeaningfulMomentsEntertainmentPerformance = [v11 countForObject:@"Performance"];
        self->_numberOfMeaningfulMomentsEntertainmentSportEvent = [v11 countForObject:@"SportEvent"];
        self->_numberOfMeaningfulMomentsEntertainmentConcert = [v11 countForObject:@"Concert"];
        self->_numberOfMeaningfulMomentsEntertainmentDance = [v11 countForObject:@"Dance"];
        self->_numberOfMeaningfulMomentsEntertainmentAmusementPark = [v11 countForObject:@"AmusementPark"];
        self->_numberOfMeaningfulMomentsEntertainmentFestival = [v11 countForObject:@"Festival"];
        self->_numberOfMeaningfulMomentsEntertainmentMuseum = [v11 countForObject:@"Museum"];
        self->_numberOfMeaningfulMomentsEntertainmentTheater = [v11 countForObject:@"Theater"];
        self->_numberOfMeaningfulMomentsCelebration = [v11 countForObject:@"Celebration"];
        self->_numberOfMeaningfulMomentsCelebrationAnniversary = [v11 countForObject:@"Anniversary"];
        self->_numberOfMeaningfulMomentsCelebrationBirthday = [v11 countForObject:@"Birthday"];
        self->_numberOfMeaningfulMomentsCelebrationHolidayEvent = [v11 countForObject:@"HolidayEvent"];
        self->_numberOfMeaningfulMomentsCelebrationWedding = [v11 countForObject:@"Wedding"];
        self->_numberOfMeaningfulMomentsRestaurant = [v11 countForObject:@"Restaurant"];
        self->_numberOfMeaningfulMomentsRestaurantBreakfast = [v11 countForObject:@"Breakfast"];
        self->_numberOfMeaningfulMomentsRestaurantLunch = [v11 countForObject:@"Lunch"];
        self->_numberOfMeaningfulMomentsRestaurantDinner = [v11 countForObject:@"Dinner"];
        v16 = [meaningfulEvents count];
        self->_numberOfMeaningfulMoments = v16;
        numberOfMoments = self->_numberOfMoments;
        if (numberOfMoments)
        {
          v18 = v16 / numberOfMoments;
        }

        else
        {
          v18 = *&PGMetricsUnavailableDoubleValue;
        }

        self->_ratioOfMeaningfulMoments = v18;
        if (![v9 isCancelledWithProgress:1.0] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v19 = 67109378;
        v20 = 331;
        v21 = 2080;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_19;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = 67109378;
        v20 = 291;
        v21 = 2080;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_19;
      }
    }

LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = 67109378;
    v20 = 281;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v19, 0x12u);
  }

LABEL_22:

  objc_autoreleasePoolPop(v8);
}

- (void)_fillMomentStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v36 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  if (![v9 isCancelledWithProgress:0.0])
  {
    momentNodes = [graphCopy momentNodes];
    self->_numberOfMoments = [momentNodes count];
    if ([v9 isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v33 = 246;
        v34 = 2080;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_18;
    }

    meNodeCollection = [graphCopy meNodeCollection];
    if ([v9 isCancelledWithProgress:0.4])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      *buf = 67109378;
      v33 = 249;
      v34 = 2080;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      if (self->_numberOfMoments)
      {
        homeNodes = [meNodeCollection homeNodes];
        addressNodes = [homeNodes addressNodes];
        momentNodes2 = [addressNodes momentNodes];
        self->_numberOfMomentsAtMyHome = [momentNodes2 count];

        workNodes = [meNodeCollection workNodes];
        addressNodes2 = [workNodes addressNodes];
        momentNodes3 = [addressNodes2 momentNodes];
        v29 = 584;
        self->_numberOfMomentsAtMyWork = [momentNodes3 count];

        v30 = [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:graphCopy];
        highlightGroupNodes = [v30 highlightGroupNodes];
        highlightNodes = [highlightGroupNodes highlightNodes];
        [highlightNodes momentNodes];
        v21 = v31 = meNodeCollection;
        self->_numberOfMomentsInTrip = [v21 count];

        v22 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];
        momentNodes4 = [v22 momentNodes];
        v24 = [momentNodes4 count];

        numberOfMoments = self->_numberOfMoments;
        self->_ratioOfMomentsAtMyHome = self->_numberOfMomentsAtMyHome / numberOfMoments;
        self->_ratioOfMomentsAtMyWork = self->_numberOfMomentsAtMyWork / numberOfMoments;
        v26 = v24;
        meNodeCollection = v31;
        self->_ratioOfMomentsAtAFrequentLocation = v26 / numberOfMoments;
        self->_ratioOfMomentsInTrip = self->_numberOfMomentsInTrip / numberOfMoments;
      }

      else
      {
        v27 = *&PGMetricsUnavailableDoubleValue;
        *&self->_ratioOfMomentsAtMyHome = PGMetricsUnavailableDoubleValue;
        self->_ratioOfMomentsAtMyWork = v27;
        v28 = *&PGMetricsUnavailableDoubleValue;
        *&self->_ratioOfMomentsAtAFrequentLocation = PGMetricsUnavailableDoubleValue;
        self->_ratioOfMomentsInTrip = v28;
      }

      if (![v9 isCancelledWithProgress:{1.0, v29}] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 67109378;
      v33 = 274;
      v34 = 2080;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v12 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v33 = 242;
    v34 = 2080;
    v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_19:

  objc_autoreleasePoolPop(v8);
}

- (void)_fillGenericStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  infoNode = [graphCopy infoNode];
  self->_librarySize = [infoNode numberOfAssets];
  librarySizeRange = [graphCopy librarySizeRange];

  self->_librarySizeRange = librarySizeRange;
  numberOfSelfies = [infoNode numberOfSelfies];
  self->_numberOfSelfies = numberOfSelfies;
  librarySize = self->_librarySize;
  if (librarySize)
  {
    v8 = numberOfSelfies / librarySize;
  }

  else
  {
    v8 = *&PGMetricsUnavailableDoubleValue;
  }

  self->_ratioOfSelfies = v8;
}

- (void)gatherMetricsWithProgressBlock:(id)block
{
  blockCopy = block;
  enrichmentLoggingConnection = [(PGManager *)self->_manager enrichmentLoggingConnection];
  manager = self->_manager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__PGGraphStatisticsMetricEvent_gatherMetricsWithProgressBlock___block_invoke;
  v9[3] = &unk_27888B2F8;
  selfCopy = self;
  v12 = blockCopy;
  v10 = enrichmentLoggingConnection;
  v7 = enrichmentLoggingConnection;
  v8 = blockCopy;
  [(PGManager *)manager performSynchronousConcurrentGraphReadUsingBlock:v9];
}

void __63__PGGraphStatisticsMetricEvent_gatherMetricsWithProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48))
  {
    [MEMORY[0x277D22C80] progressReporterWithProgressBlock:?];
  }

  else
  {
    [MEMORY[0x277D22C80] ignoreProgress];
  }
  v4 = ;
  if (![v4 isCancelledWithProgress:0.0])
  {
    v5 = [v3 graph];
    v6 = *(a1 + 32);
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "GraphStatisticsMetrics", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v10 = mach_absolute_time();
    [*(a1 + 40) _fillGenericStatisticsWithGraph:v5];
    if ([v4 isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 170;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_55;
    }

    v11 = [v4 childProgressReporterFromStart:0.11 toEnd:0.19];
    [*(a1 + 40) _fillMomentStatisticsWithGraph:v5 progressReporter:v11];
    if ([v4 isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 175;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_54;
    }

    v12 = [v4 childProgressReporterFromStart:0.21 toEnd:0.29];
    [*(a1 + 40) _fillBusinessStatisticsWithGraph:v5 progressReporter:v12];
    if ([v4 isCancelledWithProgress:0.3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 180;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_53;
    }

    v27 = [v4 childProgressReporterFromStart:0.31 toEnd:0.39];
    [*(a1 + 40) _fillMeaningfulEventsStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.4])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 185;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_52;
    }

    v26 = [v4 childProgressReporterFromStart:0.41 toEnd:0.49];
    [*(a1 + 40) _fillPublicEventStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 190;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_51;
    }

    v25 = [v4 childProgressReporterFromStart:0.51 toEnd:0.59];
    [*(a1 + 40) _fillPeopleStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.6])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 195;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_50;
    }

    v24 = [v4 childProgressReporterFromStart:0.61 toEnd:0.69];
    [*(a1 + 40) _fillTripStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.7])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 200;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_49;
    }

    v23 = [v4 childProgressReporterFromStart:0.71 toEnd:0.79];
    [*(a1 + 40) _fillHolidaysStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:0.8])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 205;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
LABEL_37:
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    [*(a1 + 40) _fillPetStatisticsWithGraph:v5];
    [*(a1 + 40) _fillHomeWorkStatisticsWithGraph:v5];
    if ([v4 isCancelledWithProgress:0.9])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v30 = 212;
        *&v30[4] = 2080;
        *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_37;
      }

LABEL_48:

LABEL_49:
LABEL_50:

LABEL_51:
LABEL_52:

LABEL_53:
LABEL_54:

LABEL_55:
      goto LABEL_56;
    }

    v22 = [v4 childProgressReporterFromStart:0.91 toEnd:0.99];
    [*(a1 + 40) _fillFrequentLocationsStatisticsWithGraph:v5 progressReporter:?];
    if ([v4 isCancelledWithProgress:1.0])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_47:

        goto LABEL_48;
      }

      *buf = 67109378;
      *v30 = 217;
      *&v30[4] = 2080;
      *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
      v14 = MEMORY[0x277D86220];
      v15 = "Cancelled at line %d in file %s";
      v16 = 18;
    }

    else
    {
      v21 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v19 = v9;
      v20 = v19;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v7, "GraphStatisticsMetrics", "", buf, 2u);
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      *buf = 136315394;
      *v30 = "GraphStatisticsMetrics";
      *&v30[8] = 2048;
      *&v30[10] = ((((v21 - v10) * numer) / denom) / 1000000.0);
      v15 = "[Performance] %s: %f ms";
      v14 = v20;
      v16 = 22;
    }

    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, v15, buf, v16);
    goto LABEL_47;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v30 = 162;
    *&v30[4] = 2080;
    *&v30[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGGraphStatisticsMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_56:
}

- (PGGraphStatisticsMetricEvent)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PGGraphStatisticsMetricEvent;
  v6 = [(PGGraphStatisticsMetricEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

@end