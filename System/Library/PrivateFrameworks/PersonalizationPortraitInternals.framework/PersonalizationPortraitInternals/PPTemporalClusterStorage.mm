@interface PPTemporalClusterStorage
+ (id)defaultStorage;
+ (id)enrichEntities:(id)entities mediaRecords:(id)records;
- (PPTemporalClusterStorage)initWithEventStore:(id)store topicStore:(id)topicStore entityStore:(id)entityStore locationStore:(id)locationStore contactStore:(id)contactStore;
- (id)createTemporalClusterForEvent:(void *)event startDate:(void *)date endDate:(void *)endDate error:;
- (id)eventsWithStartDate:(id)date endDate:(id)endDate;
- (id)rankedTemporalClusterForStartDate:(id)date endDate:(id)endDate error:(id *)error;
@end

@implementation PPTemporalClusterStorage

- (id)eventsWithStartDate:(id)date endDate:(id)endDate
{
  eventStore = self->_eventStore;
  endDateCopy = endDate;
  dateCopy = date;
  v9 = [(PPLocalEventStore *)eventStore eventsFromDate:dateCopy toDate:endDateCopy];
  v10 = [(PPLocalEventStore *)self->_eventStore nlEventsFromDate:dateCopy toDate:endDateCopy];

  v11 = [v9 arrayByAddingObjectsFromArray:v10];

  return v11;
}

- (id)rankedTemporalClusterForStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v10 = objc_opt_new();
  v34 = 0;
  v11 = [(PPTemporalClusterStorage *)self createTemporalClusterForEvent:dateCopy startDate:endDateCopy endDate:&v34 error:?];
  v12 = v34;
  v28 = v10;
  [v10 addObject:v11];

  selfCopy = self;
  v25 = endDateCopy;
  v26 = dateCopy;
  [(PPTemporalClusterStorage *)self eventsWithStartDate:dateCopy endDate:endDateCopy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v14 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        v18 = v12;
        if (*v31 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        startDate = [v19 startDate];
        endDate = [v19 endDate];
        v29 = v18;
        v22 = [(PPTemporalClusterStorage *)selfCopy createTemporalClusterForEvent:v19 startDate:startDate endDate:endDate error:&v29];
        v12 = v29;

        [v28 addObject:v22];
        if (error && v12)
        {
          v23 = v12;
          *error = v12;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v15);
  }

  return v28;
}

- (id)createTemporalClusterForEvent:(void *)event startDate:(void *)date endDate:(void *)endDate error:
{
  v215 = *MEMORY[0x277D85DE8];
  v136 = a2;
  eventCopy = event;
  dateCopy = date;
  v138 = eventCopy;
  v139 = dateCopy;
  if (!self)
  {
    v129 = 0;
    goto LABEL_115;
  }

  v10 = dateCopy;
  v11 = objc_opt_new();
  [v11 setFromDate:eventCopy];
  [v11 setToDate:v10];
  [v11 setScoringDate:v10];
  [v11 setFilterByRelevanceDate:1];
  selfCopy = self;
  v12 = self[2];
  v200 = 0;
  v135 = v11;
  v13 = [v12 rankedTopicsWithQuery:v11 error:&v200];
  v14 = v200;
  if (!v13)
  {
    v15 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Topics Store query returned nil.", &buf, 2u);
    }

    if (v14)
    {
      v16 = pp_temporal_clusters_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Topics Store query error: %@", &buf, 0xCu);
      }

      if (endDate)
      {
        v17 = v14;
        *endDate = v14;
      }
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  v141 = objc_opt_new();
  [v141 setFromDate:v138];
  [v141 setToDate:v139];
  [v141 setScoringDate:v139];
  [v141 setFilterByRelevanceDate:1];
  v18 = objc_autoreleasePoolPush();
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284785298, 0}];
  objc_autoreleasePoolPop(v18);
  [v141 setExcludingAlgorithms:v19];

  v20 = selfCopy[3];
  v199 = v14;
  v143 = [v20 rankedNamedEntitiesWithQuery:v141 error:&v199];
  v21 = v199;

  if (!v143)
  {
    v22 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Named Entities Store query returned nil.", &buf, 2u);
    }

    if (v21)
    {
      v23 = pp_temporal_clusters_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v21;
        _os_log_error_impl(&dword_23224A000, v23, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Named Entities Store query error: %@", &buf, 0xCu);
      }

      if (endDate)
      {
        v24 = v21;
        *endDate = v21;
      }
    }

    v143 = MEMORY[0x277CBEBF8];
  }

  v140 = objc_opt_new();
  [v140 setFromDate:v138];
  [v140 setToDate:v139];
  [v140 setScoringDate:v139];
  [v140 setFilterByRelevanceDate:1];
  v193 = 0;
  v194 = &v193;
  v195 = 0x3032000000;
  v196 = __Block_byref_object_copy__26836;
  v197 = __Block_byref_object_dispose__26837;
  v198 = objc_opt_new();
  v25 = selfCopy[4];
  v192 = v21;
  v191[0] = MEMORY[0x277D85DD0];
  v191[1] = 3221225472;
  v191[2] = __82__PPTemporalClusterStorage_createTemporalClusterForEvent_startDate_endDate_error___block_invoke;
  v191[3] = &unk_278979568;
  v191[4] = &v193;
  [v25 iterRankedLocationsWithQuery:v140 error:&v192 block:v191];
  v26 = v192;

  if (![v194[5] count] && v26)
  {
    v27 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Locations Store query error: %@", &buf, 0xCu);
    }

    if (endDate)
    {
      v28 = v26;
      *endDate = v26;
    }
  }

  v29 = objc_opt_new();
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  obj = v13;
  v30 = [obj countByEnumeratingWithState:&v187 objects:v207 count:16];
  if (v30)
  {
    v146 = *v188;
    do
    {
      v159 = 0;
      v149 = v30;
      do
      {
        if (*v188 != v146)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v187 + 1) + 8 * v159);
        context = objc_autoreleasePoolPush();
        item = [v31 item];
        mostRelevantRecord = [item mostRelevantRecord];
        source = [mostRelevantRecord source];
        metadata = [source metadata];
        v36 = [metadata contactHandleCount] == 0;

        if (!v36)
        {
          v37 = selfCopy[5];
          item2 = [v31 item];
          mostRelevantRecord2 = [item2 mostRelevantRecord];
          source2 = [mostRelevantRecord2 source];
          v186 = v26;
          v41 = [v37 contactHandlesForSource:source2 error:&v186];
          v153 = v186;

          if (!v41)
          {
            v42 = pp_temporal_clusters_log_handle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v153;
              _os_log_error_impl(&dword_23224A000, v42, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Contact Store query error: %@", &buf, 0xCu);
            }
          }

          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v43 = v41;
          v44 = [v43 countByEnumeratingWithState:&v182 objects:v206 count:16];
          if (v44)
          {
            v45 = *v183;
            do
            {
              for (i = 0; i != v44; ++i)
              {
                if (*v183 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                v47 = *(*(&v182 + 1) + 8 * i);
                v48 = MEMORY[0x277CCABB0];
                v49 = [v29 objectForKeyedSubscript:v47];
                [v49 doubleValue];
                v51 = v50;
                [v31 score];
                v53 = [v48 numberWithDouble:v51 + v52];
                [v29 setObject:v53 forKeyedSubscript:v47];
              }

              v44 = [v43 countByEnumeratingWithState:&v182 objects:v206 count:16];
            }

            while (v44);
          }

          v26 = v153;
        }

        objc_autoreleasePoolPop(context);
        ++v159;
      }

      while (v159 != v149);
      v30 = [obj countByEnumeratingWithState:&v187 objects:v207 count:16];
    }

    while (v30);
  }

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v144 = v143;
  v54 = [v144 countByEnumeratingWithState:&v178 objects:v205 count:16];
  if (v54)
  {
    v147 = *v179;
    do
    {
      v160 = 0;
      v150 = v54;
      do
      {
        if (*v179 != v147)
        {
          objc_enumerationMutation(v144);
        }

        v55 = *(*(&v178 + 1) + 8 * v160);
        contexta = objc_autoreleasePoolPush();
        item3 = [v55 item];
        mostRelevantRecord3 = [item3 mostRelevantRecord];
        source3 = [mostRelevantRecord3 source];
        metadata2 = [source3 metadata];
        v60 = [metadata2 contactHandleCount] == 0;

        if (!v60)
        {
          v61 = selfCopy[5];
          item4 = [v55 item];
          mostRelevantRecord4 = [item4 mostRelevantRecord];
          source4 = [mostRelevantRecord4 source];
          v177 = v26;
          v65 = [v61 contactHandlesForSource:source4 error:&v177];
          v154 = v177;

          if (!v65)
          {
            v66 = pp_temporal_clusters_log_handle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v154;
              _os_log_error_impl(&dword_23224A000, v66, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Contact Store query error: %@", &buf, 0xCu);
            }
          }

          v175 = 0u;
          v176 = 0u;
          v173 = 0u;
          v174 = 0u;
          v67 = v65;
          v68 = [v67 countByEnumeratingWithState:&v173 objects:v204 count:16];
          if (v68)
          {
            v69 = *v174;
            do
            {
              for (j = 0; j != v68; ++j)
              {
                if (*v174 != v69)
                {
                  objc_enumerationMutation(v67);
                }

                v71 = *(*(&v173 + 1) + 8 * j);
                v72 = MEMORY[0x277CCABB0];
                v73 = [v29 objectForKeyedSubscript:v71];
                [v73 doubleValue];
                v75 = v74;
                [v55 score];
                v77 = [v72 numberWithDouble:v75 + v76];
                [v29 setObject:v77 forKeyedSubscript:v71];
              }

              v68 = [v67 countByEnumeratingWithState:&v173 objects:v204 count:16];
            }

            while (v68);
          }

          v26 = v154;
        }

        objc_autoreleasePoolPop(contexta);
        ++v160;
      }

      while (v160 != v150);
      v54 = [v144 countByEnumeratingWithState:&v178 objects:v205 count:16];
    }

    while (v54);
  }

  v78 = v136;
  if (v78)
  {
    v79 = v78;
    if ([v78 suggestedEventCategory] != 8)
    {
      v134 = MEMORY[0x277CBEBF8];
LABEL_91:
      v78 = v79;
      goto LABEL_92;
    }

    v80 = objc_opt_new();
    v81 = selfCopy[1];
    eventIdentifier = [v79 eventIdentifier];
    v83 = [v81 customObjectForKey:*MEMORY[0x277D3A760] eventIdentifier:eventIdentifier];

    if (!v83 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v92 = 0;
      goto LABEL_82;
    }

    v84 = v83;
    v85 = [v84 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    if (v85)
    {
      v86 = [v84 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v88 = [v84 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
        firstObject = [v88 firstObject];
        v90 = [firstObject objectForKeyedSubscript:@"reservationFor"];

        if (v90)
        {
          v91 = [firstObject objectForKeyedSubscript:@"reservationFor"];
          v92 = [v91 objectForKeyedSubscript:@"name"];

LABEL_81:
LABEL_82:
          if ([v92 length])
          {
            lowercaseString = [v92 lowercaseString];

            v94 = objc_opt_new();
            v95 = objc_autoreleasePoolPush();
            v96 = objc_alloc(MEMORY[0x277CBEB98]);
            v97 = [v96 initWithObjects:{*MEMORY[0x277D3A660], 0}];
            objc_autoreleasePoolPop(v95);
            [v94 setMatchingSourceBundleIds:v97];

            v98 = selfCopy[3];
            v201 = 0;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v211 = __53__PPTemporalClusterStorage_fetchRelatedMediaRecords___block_invoke;
            v212 = &unk_2789795D8;
            v92 = lowercaseString;
            v213 = v92;
            v214 = v80;
            LOBYTE(v98) = [v98 iterNamedEntityRecordsWithQuery:v94 error:&v201 block:&buf];
            v99 = v201;
            if ((v98 & 1) == 0)
            {
              v100 = pp_temporal_clusters_log_handle();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                *v208 = 138412290;
                v209 = v99;
                _os_log_error_impl(&dword_23224A000, v100, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage fetchRelatedMediaItems: Entity Store query error: %@", v208, 0xCu);
              }

              v134 = MEMORY[0x277CBEBF8];
              goto LABEL_90;
            }
          }

          else
          {
            v99 = 0;
          }

          v134 = [v80 copy];
LABEL_90:

          goto LABEL_91;
        }
      }
    }

    v88 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_23224A000, v88, OS_LOG_TYPE_DEBUG, "PPTemporalClusterStorage ticketReservationFromMetadata: Couldn't fetch anything from the reservationFor schemaOrg property.", &buf, 2u);
    }

    v92 = 0;
    goto LABEL_81;
  }

  v134 = MEMORY[0x277CBEBF8];
LABEL_92:
  v131 = v78;

  v133 = [v134 _pas_mappedArrayWithTransform:&__block_literal_global_26843];
  v132 = [PPTemporalClusterStorage enrichEntities:v144 mediaRecords:v134];
  v171 = 0u;
  v172 = 0u;
  v170 = 0u;
  v169 = 0u;
  v142 = v194[5];
  v101 = [v142 countByEnumeratingWithState:&v169 objects:v203 count:16];
  if (v101)
  {
    v148 = *v170;
    do
    {
      v161 = 0;
      v151 = v101;
      do
      {
        if (*v170 != v148)
        {
          objc_enumerationMutation(v142);
        }

        v102 = *(*(&v169 + 1) + 8 * v161);
        contextb = objc_autoreleasePoolPush();
        location = [v102 location];
        mostRelevantRecord5 = [location mostRelevantRecord];
        source5 = [mostRelevantRecord5 source];
        metadata3 = [source5 metadata];
        v107 = [metadata3 contactHandleCount] == 0;

        if (!v107)
        {
          v108 = selfCopy[5];
          location2 = [v102 location];
          mostRelevantRecord6 = [location2 mostRelevantRecord];
          source6 = [mostRelevantRecord6 source];
          v168 = v26;
          v112 = [v108 contactHandlesForSource:source6 error:&v168];
          v155 = v168;

          if (!v112)
          {
            v113 = pp_temporal_clusters_log_handle();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v155;
              _os_log_error_impl(&dword_23224A000, v113, OS_LOG_TYPE_ERROR, "PPTemporalClusterStorage: Contact Store query error: %@", &buf, 0xCu);
            }
          }

          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v114 = v112;
          v115 = [v114 countByEnumeratingWithState:&v164 objects:v202 count:16];
          if (v115)
          {
            v116 = *v165;
            do
            {
              for (k = 0; k != v115; ++k)
              {
                if (*v165 != v116)
                {
                  objc_enumerationMutation(v114);
                }

                v118 = *(*(&v164 + 1) + 8 * k);
                v119 = MEMORY[0x277CCABB0];
                v120 = [v29 objectForKeyedSubscript:v118];
                [v120 doubleValue];
                v122 = v121;
                [v102 score];
                v123 = [v119 numberWithDouble:v122 + v123];
                [v29 setObject:v123 forKeyedSubscript:v118];
              }

              v115 = [v114 countByEnumeratingWithState:&v164 objects:v202 count:16];
            }

            while (v115);
          }

          v26 = v155;
        }

        objc_autoreleasePoolPop(contextb);
        ++v161;
      }

      while (v161 != v151);
      v101 = [v142 countByEnumeratingWithState:&v169 objects:v203 count:16];
    }

    while (v101);
  }

  if (endDate)
  {
    v125 = v26;
    *endDate = v26;
  }

  v126 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v29, "count")}];
  v162[0] = MEMORY[0x277D85DD0];
  v162[1] = 3221225472;
  v162[2] = __82__PPTemporalClusterStorage_createTemporalClusterForEvent_startDate_endDate_error___block_invoke_32;
  v162[3] = &unk_2789795B0;
  v127 = v126;
  v163 = v127;
  [v29 enumerateKeysAndObjectsUsingBlock:v162];
  [v127 sortUsingSelector:sel_reverseCompare_];
  v128 = objc_alloc(MEMORY[0x277D3A510]);
  v129 = [v128 initWithEvent:v131 startDate:v138 endDate:v139 score:obj topics:v132 entities:v194[5] locations:1.0 contacts:MEMORY[0x277CBEBF8] contactHandles:v127 mediaItems:v133];

  _Block_object_dispose(&v193, 8);
LABEL_115:

  return v129;
}

void __82__PPTemporalClusterStorage_createTemporalClusterForEvent_startDate_endDate_error___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277D3A490];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  [v6 doubleValue];
  v10 = v9;

  v11 = [v8 initWithContactHandle:v7 score:v10];
  [v4 addObject:v11];
}

id __82__PPTemporalClusterStorage_createTemporalClusterForEvent_startDate_endDate_error___block_invoke_30(uint64_t a1, void *a2)
{
  v2 = [a2 source];
  v3 = [v2 documentId];

  return v3;
}

void __53__PPTemporalClusterStorage_fetchRelatedMediaRecords___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 entity];
  v4 = [v3 name];
  v5 = [v4 lowercaseString];

  if (([*(a1 + 32) localizedCaseInsensitiveContainsString:v5] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3A578], "jaroSimilarityForString:other:", v5, *(a1 + 32)), v6 > 0.9))
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (PPTemporalClusterStorage)initWithEventStore:(id)store topicStore:(id)topicStore entityStore:(id)entityStore locationStore:(id)locationStore contactStore:(id)contactStore
{
  storeCopy = store;
  topicStoreCopy = topicStore;
  entityStoreCopy = entityStore;
  locationStoreCopy = locationStore;
  contactStoreCopy = contactStore;
  v21.receiver = self;
  v21.super_class = PPTemporalClusterStorage;
  v17 = [(PPTemporalClusterStorage *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventStore, store);
    objc_storeStrong(&v18->_topicStore, topicStore);
    objc_storeStrong(&v18->_entityStore, entityStore);
    objc_storeStrong(&v18->_locationStore, locationStore);
    objc_storeStrong(&v18->_contactStore, contactStore);
  }

  return v18;
}

+ (id)enrichEntities:(id)entities mediaRecords:(id)records
{
  v59 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  recordsCopy = records;
  v7 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = recordsCopy;
  v8 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        entity = [*(*(&v52 + 1) + 8 * i) entity];
        name = [entity name];
        [v7 addObject:name];
      }

      v9 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v9);
  }

  v14 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v43 = entitiesCopy;
  v15 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v43);
        }

        v19 = *(*(&v48 + 1) + 8 * j);
        v20 = objc_autoreleasePoolPush();
        item = [v19 item];
        name2 = [item name];
        v23 = [v7 containsObject:name2];

        if (v23)
        {
          v24 = objc_alloc(MEMORY[0x277D3A498]);
          item2 = [v19 item];
          v26 = [v24 initWithItem:item2 score:1.0];
          [v14 addObject:v26];

          item3 = [v19 item];
          name3 = [item3 name];
          [v7 removeObject:name3];
        }

        else
        {
          [v14 addObject:v19];
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v16);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = obj;
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v45;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v44 + 1) + 8 * k);
        entity2 = [v34 entity];
        name4 = [entity2 name];
        v37 = [v7 containsObject:name4];

        if (v37)
        {
          v38 = objc_alloc(MEMORY[0x277D3A498]);
          entity3 = [v34 entity];
          v40 = [v38 initWithItem:entity3 score:1.0];
          [v14 addObject:v40];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v31);
  }

  return v14;
}

+ (id)defaultStorage
{
  v2 = +[PPLocalEventStore defaultStore];
  v3 = +[PPLocalTopicStore defaultStore];
  v4 = +[PPLocalNamedEntityStore defaultStore];
  v5 = +[PPLocalLocationStore defaultStore];
  v6 = +[PPLocalContactStore defaultStore];
  v7 = v6;
  if (!v2)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v10 = "PPTemporalClusterStorage: Failed to obtain default Events Store";
LABEL_19:
    _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_20;
  }

  if (!v3)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v10 = "PPTemporalClusterStorage: Failed to obtain default Topics Store";
    goto LABEL_19;
  }

  if (!v4)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v10 = "PPTemporalClusterStorage: Failed to obtain default Named Entities Store";
    goto LABEL_19;
  }

  if (!v5)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v10 = "PPTemporalClusterStorage: Failed to obtain default Locations Store";
    goto LABEL_19;
  }

  if (!v6)
  {
    v9 = pp_temporal_clusters_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "PPTemporalClusterStorage: Failed to obtain default Contacts Store";
      goto LABEL_19;
    }

LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PPTemporalClusterStorage_defaultStorage__block_invoke;
  block[3] = &unk_278979540;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v7;
  if (defaultStorage__pasOnceToken9 != -1)
  {
    dispatch_once(&defaultStorage__pasOnceToken9, block);
  }

  v8 = defaultStorage__pasExprOnceResult_26886;

  v9 = v13;
LABEL_21:

  return v8;
}

void __42__PPTemporalClusterStorage_defaultStorage__block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[PPTemporalClusterStorage alloc] initWithEventStore:a1[4] topicStore:a1[5] entityStore:a1[6] locationStore:a1[7] contactStore:a1[8]];
  v4 = defaultStorage__pasExprOnceResult_26886;
  defaultStorage__pasExprOnceResult_26886 = v3;

  objc_autoreleasePoolPop(v2);
}

@end