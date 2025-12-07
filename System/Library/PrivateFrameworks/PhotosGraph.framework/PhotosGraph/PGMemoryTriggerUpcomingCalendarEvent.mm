@interface PGMemoryTriggerUpcomingCalendarEvent
- (PGMemoryTriggerUpcomingCalendarEvent)initWithServiceManager:(id)manager locationCache:(id)cache loggingConnection:(id)connection;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryTriggerUpcomingCalendarEvent

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  v174[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 47;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingCalendarEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    localDate = [contextCopy localDate];
    v136 = contextCopy;
    timeZone = [contextCopy timeZone];
    v118 = localDate;
    v117 = [MEMORY[0x277D27690] startOfDayForDate:localDate];
    v135 = timeZone;
    v14 = [MEMORY[0x277D27690] universalDateFromLocalDate:? inTimeZone:?];
    v15 = [v14 dateByAddingTimeInterval:86400.0];
    v116 = v14;
    v16 = [v14 dateByAddingTimeInterval:345600.0];
    v123 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:1 inGraph:graphCopy];
    v124 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = MEMORY[0x277D276F0];
    v114 = v16;
    v115 = v15;
    v174[0] = v15;
    v174[1] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:2];
    v19 = [v17 clueWithDates:v18 serviceManager:self->_serviceManager];

    v113 = v19;
    [v19 events];
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v20 = v168 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v165 objects:v173 count:16];
    v137 = graphCopy;
    v121 = reporterCopy;
    v122 = v20;
    selfCopy = self;
    if (v21)
    {
      v22 = v21;
      v23 = *v166;
      v24 = *MEMORY[0x277CE4208];
      v25 = *MEMORY[0x277CE4228] + *MEMORY[0x277CE4228];
      v119 = *v166;
      while (2)
      {
        v26 = 0;
        v120 = v22;
        do
        {
          if (*v166 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v165 + 1) + 8 * v26);
          v28 = objc_autoreleasePoolPush();
          if ([reporterCopy isCancelledWithProgress:0.5])
          {
            contextCopy = v136;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 64;
              *&buf[8] = 2080;
              *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingCalendarEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v28);
            v11 = MEMORY[0x277CBEBF8];
            v111 = v20;
            graphCopy = v137;
            goto LABEL_77;
          }

          if (([v27 hasMeetingRoom] & 1) == 0)
          {
            v132 = v28;
            endDate = [v27 endDate];
            v133 = [v124 objectForKeyedSubscript:endDate];
            if (!v133)
            {
              v133 = objc_alloc_init(MEMORY[0x277D22BD0]);
              [v124 setObject:? forKeyedSubscript:?];
            }

            v130 = endDate;
            v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
            attendees = [v27 attendees];
            v32 = [attendees valueForKey:@"name"];
            v33 = v32;
            v131 = v26;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = objc_alloc_init(MEMORY[0x277CBEB98]);
            }

            v35 = v34;

            v36 = MEMORY[0x277D276E8];
            v129 = v35;
            allObjects = [v35 allObjects];
            v38 = [v36 cluesWithPeoples:allObjects serviceManager:self->_serviceManager];

            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v39 = v38;
            v40 = [v39 countByEnumeratingWithState:&v161 objects:v172 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v162;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v162 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v161 + 1) + 8 * i);
                  [v44 prepareIfNeeded];
                  person = [v44 person];
                  v46 = person;
                  if (person && ([person isMe] & 1) == 0)
                  {
                    cNIdentifier = [v46 CNIdentifier];
                    if (cNIdentifier)
                    {
                      [v30 addObject:cNIdentifier];
                    }

                    else
                    {
                      loggingConnection = [(PGMemoryTrigger *)self loggingConnection];
                      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
                      {
                        name = [v44 name];
                        *buf = 138477827;
                        *&buf[4] = name;
                        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGMemoryTriggerUpcomingCalendarEvent] person.CNIdentifier found to be nil for person %{private}@", buf, 0xCu);
                      }

                      self = selfCopy;
                    }
                  }
                }

                v41 = [v39 countByEnumeratingWithState:&v161 objects:v172 count:16];
              }

              while (v41);
            }

            v128 = [PGGraphPersonNodeCollection personNodesForContactIdentifiers:v30 inGraph:v137];
            momentNodes = [v128 momentNodes];
            memoryNodes = [momentNodes memoryNodes];
            v52 = [memoryNodes collectionByIntersecting:v123];
            elementIdentifiers = [v52 elementIdentifiers];

            v126 = objc_alloc_init(MEMORY[0x277D22BD0]);
            v160 = 0.0;
            v159 = 0.0;
            location = [v27 location];
            [location coordinate];
            v159 = v54;
            v160 = v55;

            v56 = [(CLSLocationCache *)self->_locationCache placemarksForLocationCoordinate:v159 withHorizontalAccuracy:v160 queryAccuracy:v24, v25];
            v125 = v56;
            if ([v56 count])
            {
              v157 = 0u;
              v158 = 0u;
              v155 = 0u;
              v156 = 0u;
              v57 = v56;
              v58 = [v57 countByEnumeratingWithState:&v155 objects:v171 count:16];
              if (v58)
              {
                v59 = v58;
                loggingConnection3 = 0;
                v61 = *v156;
                v62 = 1.79769313e308;
                do
                {
                  for (j = 0; j != v59; ++j)
                  {
                    if (*v156 != v61)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v64 = *(*(&v155 + 1) + 8 * j);
                    *&buf[8] = 0;
                    *buf = 0;
                    location2 = [v64 location];
                    [location2 coordinate];
                    *buf = v66;
                    *&buf[8] = v67;

                    CLLocationCoordinate2DGetDistanceFrom();
                    if (v68 < v62)
                    {
                      v69 = v68;
                      v70 = v64;

                      v62 = v69;
                      loggingConnection3 = v70;
                    }
                  }

                  v59 = [v57 countByEnumeratingWithState:&v155 objects:v171 count:16];
                }

                while (v59);
              }

              else
              {
                loggingConnection3 = 0;
                v62 = 1.79769313e308;
              }

              locality = [loggingConnection3 locality];

              if (locality)
              {
                locality2 = [loggingConnection3 locality];
                v75 = [(PGGraphNamedLocationNodeCollection *)PGGraphLocationCityNodeCollection locationNodeWithName:locality2 inGraph:v137];

                administrativeArea = [loggingConnection3 administrativeArea];

                if (administrativeArea)
                {
                  administrativeArea2 = [loggingConnection3 administrativeArea];
                  administrativeArea = [(PGGraphNamedLocationNodeCollection *)PGGraphLocationStateNodeCollection locationNodeWithName:administrativeArea2 inGraph:v137];
                }

                iSOcountryCode = [loggingConnection3 ISOcountryCode];

                if (iSOcountryCode)
                {
                  iSOcountryCode2 = [loggingConnection3 ISOcountryCode];
                  iSOcountryCode = [(PGGraphNamedLocationNodeCollection *)PGGraphLocationCountryNodeCollection locationNodeWithName:iSOcountryCode2 inGraph:v137];
                }

                v150[0] = MEMORY[0x277D85DD0];
                v150[1] = 3221225472;
                v150[2] = __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke;
                v150[3] = &unk_278888EE0;
                v153 = administrativeArea != 0;
                v154 = iSOcountryCode != 0;
                v151 = administrativeArea;
                v152 = iSOcountryCode;
                v80 = administrativeArea;
                v81 = iSOcountryCode;
                v82 = [v75 filteredCollectionUsingBlock:v150];
                v83 = v75;
                loggingConnection2 = v82;

                momentNodes2 = [loggingConnection2 momentNodes];
                location3 = [loggingConnection3 location];
                [location3 coordinate];
                v88 = v87;
                v90 = v89;

                v144[0] = MEMORY[0x277D85DD0];
                v144[1] = 3221225472;
                v144[2] = __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2;
                v144[3] = &unk_278888F30;
                v147 = v88;
                v148 = v90;
                v149 = v62;
                v71 = v126;
                v145 = v126;
                v146 = v123;
                [momentNodes2 enumerateIdentifiersAsCollectionsWithBlock:v144];

                v72 = elementIdentifiers;
              }

              else
              {
                loggingConnection2 = [(PGMemoryTrigger *)self loggingConnection];
                if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
                {
                  *buf = 134283777;
                  *&buf[4] = v159;
                  *&buf[12] = 2049;
                  *&buf[14] = v160;
                  _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGMemoryTriggerUpcomingCalendarEvent] closestPlacemark.locality is nil, not going to try matching location for event coordinate (%{private}f, %{private}f)", buf, 0x16u);
                }

                v71 = v126;
                v72 = elementIdentifiers;
              }

              v20 = v122;
              v23 = v119;
              v22 = v120;
            }

            else
            {
              loggingConnection3 = [(PGMemoryTrigger *)self loggingConnection];
              if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
              {
                *buf = 134283777;
                *&buf[4] = v159;
                *&buf[12] = 2049;
                *&buf[14] = v160;
                _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[PGMemoryTriggerUpcomingCalendarEvent] No placemarks found matching event coordinate (%{private}f, %{private}f)", buf, 0x16u);
              }

              v20 = v122;
              v23 = v119;
              v22 = v120;
              v71 = v126;
              v72 = elementIdentifiers;
            }

            v91 = [v72 identifierSetByIntersectingIdentifierSet:v71];
            v92 = [v91 count];
            v93 = v91;
            if (!v92)
            {
              [v133 unionWithIdentifierSet:v72];
              v93 = v71;
            }

            [v133 unionWithIdentifierSet:v93];

            v26 = v131;
            v28 = v132;
            reporterCopy = v121;
          }

          objc_autoreleasePoolPop(v28);
          ++v26;
        }

        while (v26 != v22);
        v22 = [v20 countByEnumeratingWithState:&v165 objects:v173 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v138 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v94 = v124;
    v95 = [v94 countByEnumeratingWithState:&v140 objects:v169 count:16];
    if (v95)
    {
      v96 = v95;
      v134 = *v141;
      do
      {
        for (k = 0; k != v96; ++k)
        {
          if (*v141 != v134)
          {
            objc_enumerationMutation(v94);
          }

          v98 = *(*(&v140 + 1) + 8 * k);
          v99 = [v94 objectForKeyedSubscript:v98];
          v100 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:v137 elementIdentifiers:v99];
          v101 = MEMORY[0x277D27690];
          v102 = [v98 dateByAddingTimeInterval:-259200.0];
          v103 = [v101 localDateFromUniversalDate:v102 inTimeZone:v135];

          v104 = MEMORY[0x277D27690];
          v105 = [v98 dateByAddingTimeInterval:-86400.0];
          v106 = [v104 localDateFromUniversalDate:v105 inTimeZone:v135];

          v107 = objc_opt_class();
          timeZone2 = [v136 timeZone];
          v109 = [v107 validityIntervalForLocalStartDate:v103 localEndDate:v106 timeZone:timeZone2];

          v110 = [objc_opt_class() memoryTriggerResultsForMemoryNodes:v100 withValidityInterval:v109];
          [v138 addObjectsFromArray:v110];
        }

        v96 = [v94 countByEnumeratingWithState:&v140 objects:v169 count:16];
      }

      while (v96);
    }

    reporterCopy = v121;
    if ([v121 isCancelledWithProgress:1.0])
    {
      v20 = v122;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 178;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/MemoryTriggers/PGMemoryTriggerUpcomingCalendarEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
      contextCopy = v136;
      graphCopy = v137;
      v111 = v138;
    }

    else
    {
      v111 = v138;
      v11 = v111;
      contextCopy = v136;
      graphCopy = v137;
      v20 = v122;
    }

LABEL_77:
  }

  return v11;
}

uint64_t __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48))
  {
    v5 = [v3 stateNodes];
    v6 = [v5 intersectsCollection:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 49))
  {
    v7 = [v4 countryNodes];
    v8 = [v7 intersectsCollection:*(a1 + 40)];
  }

  else
  {
    v8 = 1;
  }

  return v6 & v8;
}

void __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 cityNodes];
  v6 = [v5 count];

  if (v6 <= 1)
  {
    v7 = [v4 addressNodes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_3;
    v8[3] = &unk_278888F08;
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = v4;
    v11 = *(a1 + 40);
    [v7 enumerateIdentifiersAsCollectionsWithBlock:v8];
  }
}

void __93__PGMemoryTriggerUpcomingCalendarEvent_resultsTriggeredWithContext_inGraph_progressReporter___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  [a3 centroidCoordinate];
  v13 = v6;
  v14 = v7;
  CLLocationCoordinate2DGetDistanceFrom();
  if (v8 <= *(a1 + 72) + 0.01)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) memoryNodes];
    v11 = [v10 collectionByIntersecting:*(a1 + 48)];
    v12 = [v11 elementIdentifiers];
    [v9 unionWithIdentifierSet:v12];

    *a4 = 1;
  }
}

- (PGMemoryTriggerUpcomingCalendarEvent)initWithServiceManager:(id)manager locationCache:(id)cache loggingConnection:(id)connection
{
  managerCopy = manager;
  cacheCopy = cache;
  v14.receiver = self;
  v14.super_class = PGMemoryTriggerUpcomingCalendarEvent;
  v11 = [(PGMemoryTrigger *)&v14 initWithLoggingConnection:connection];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceManager, manager);
    objc_storeStrong(&v12->_locationCache, cache);
  }

  return v12;
}

@end