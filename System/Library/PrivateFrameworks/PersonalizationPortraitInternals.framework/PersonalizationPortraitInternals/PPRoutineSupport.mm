@interface PPRoutineSupport
+ (BOOL)importCoreRoutineDataWithError:(id *)error shouldContinueBlock:(id)block;
+ (id)fetchLocationOfInterestByType:(int64_t)type;
+ (id)locationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate;
@end

@implementation PPRoutineSupport

+ (id)fetchLocationOfInterestByType:(int64_t)type
{
  v4 = defaultRTRoutineManager();
  if (v4)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3148;
    v20 = __Block_byref_object_dispose__3149;
    v21 = 0;
    v5 = dispatch_semaphore_create(0);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __50__PPRoutineSupport_fetchLocationOfInterestByType___block_invoke;
    v13 = &unk_2789760B8;
    v15 = buf;
    v6 = v5;
    v14 = v6;
    [v4 fetchLocationsOfInterestOfType:type withHandler:&v10];
    [MEMORY[0x277D425A0] waitForSemaphore:{v6, v10, v11, v12, v13}];
    v7 = *(v17 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to initialize default RTRoutineManager.", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

intptr_t __50__PPRoutineSupport_fetchLocationOfInterestByType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

+ (id)locationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v7 = defaultRTRoutineManager();
  if (v7)
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__3148;
    v22 = __Block_byref_object_dispose__3149;
    v23 = 0;
    v8 = dispatch_semaphore_create(0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__PPRoutineSupport_locationsOfInterestVisitedBetweenStartDate_endDate___block_invoke;
    v15[3] = &unk_2789760B8;
    v17 = buf;
    v9 = v8;
    v16 = v9;
    [v7 fetchLocationsOfInterestVisitedBetweenStartDate:dateCopy endDate:endDateCopy withHandler:v15];
    if ([MEMORY[0x277D425A0] waitForSemaphore:v9 timeoutSeconds:10.0] == 1)
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v14[0] = 0;
        _os_log_fault_impl(&dword_23224A000, v10, OS_LOG_TYPE_FAULT, "RTRoutineManager LOI fetching taking more than 10 seconds", v14, 2u);
      }
    }

    v11 = *(v19 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to initialize default RTRoutineManager.", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

void __71__PPRoutineSupport_locationsOfInterestVisitedBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v3;
    obj = v3;
    v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          v12 = *(*(*(a1 + 40) + 8) + 40);
          v13 = objc_alloc(MEMORY[0x277CE41F8]);
          v14 = [v11 mapItem];
          v15 = [v14 location];
          [v15 latitude];
          v17 = v16;
          v18 = [v11 mapItem];
          v19 = [v18 location];
          [v19 longitude];
          v21 = [v13 initWithLatitude:v17 longitude:v20];
          [v12 addObject:v21];

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v3 = v22;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)importCoreRoutineDataWithError:(id *)error shouldContinueBlock:(id)block
{
  v66 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport running CoreRoutine import", &buf, 2u);
  }

  v6 = +[PPConfiguration sharedInstance];
  v7 = *MEMORY[0x277D3A608];
  v8 = [v6 extractionAlgorithmsForBundleId:*MEMORY[0x277D3A608] sourceLanguage:0 conservative:0 domain:1];

  v9 = +[PPConfiguration sharedInstance];
  v10 = [v9 extractionAlgorithmsForBundleId:v7 sourceLanguage:0 conservative:0 domain:2];

  if ((blockCopy[2](blockCopy) & 1) == 0)
  {
    v37 = pp_default_log_handle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v37, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: deferring before deletions.", &buf, 2u);
    }

    goto LABEL_20;
  }

  v11 = [v8 containsObject:&unk_284783B88];
  v12 = [v10 containsObject:&unk_284783BA0];
  v13 = v12;
  if (((v11 | v12) & 1) == 0)
  {
    v37 = pp_default_log_handle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v37, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: Core Routine blocked for both named entities and locations, skipping.", &buf, 2u);
    }

LABEL_20:

LABEL_27:
    v36 = 1;
    goto LABEL_28;
  }

  v14 = +[PPLocalNamedEntityStore defaultStore];
  v60 = 0;
  v15 = [v14 deleteAllNamedEntitiesFromSourcesWithBundleId:@"com.apple.CoreRoutine" deletedCount:0 error:&v60];
  v16 = v60;

  if ((v15 & 1) == 0)
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport failed to purge CoreRoutine locations from PPNamedEntityStore: %@", &buf, 0xCu);
    }
  }

  v18 = +[PPLocalLocationStore defaultStore];
  v59 = 0;
  v19 = [v18 deleteAllLocationsFromSourcesWithBundleId:@"com.apple.CoreRoutine" deletedCount:0 error:&v59];
  v20 = v59;

  if ((v19 & 1) == 0)
  {
    v21 = pp_default_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport failed to purge CoreRoutine locations from PPLocationStore: %@", &buf, 0xCu);
    }
  }

  if ((blockCopy[2](blockCopy) & 1) == 0)
  {
    v38 = pp_default_log_handle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v38, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: deferring after deletions.", &buf, 2u);
    }

    goto LABEL_27;
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__3148;
  v64 = __Block_byref_object_dispose__3149;
  v65 = 0;
  v22 = objc_opt_new();
  v23 = [v22 dateByAddingTimeInterval:-4233600.0];
  v24 = defaultRTRoutineManager();
  if (v24)
  {
    v25 = +[PPConfiguration sharedInstance];
    [v25 routineExtractionScoreCountWeight];
    v27 = v26;

    v28 = +[PPConfiguration sharedInstance];
    [v28 routineExtractionScoreDurationWeight];
    v30 = v29;

    v31 = +[PPConfiguration sharedInstance];
    [v31 routineExtractionScoreDecayHalfLifeDays];
    v33 = v32;

    v34 = dispatch_semaphore_create(0);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __71__PPRoutineSupport_importCoreRoutineDataWithError_shouldContinueBlock___block_invoke;
    v43[3] = &unk_2789724C8;
    p_buf = &buf;
    v47 = &v55;
    v35 = v34;
    v44 = v35;
    selfCopy = self;
    v45 = blockCopy;
    v49 = v27;
    v50 = v30;
    v51 = 0.693 / (v33 * 86400.0);
    v52 = v11;
    v53 = v13;
    [v24 fetchLocationsOfInterestVisitedBetweenStartDate:v23 endDate:v22 withHandler:v43];
    [MEMORY[0x277D425A0] waitForSemaphore:v35];

    v36 = *(v56 + 24);
    if (error && (v56[3] & 1) == 0)
    {
      *error = *(*(&buf + 1) + 40);
      v36 = *(v56 + 24);
    }
  }

  else
  {
    v40 = pp_default_log_handle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v54 = 0;
      _os_log_error_impl(&dword_23224A000, v40, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to initialize default RTRoutineManager.", v54, 2u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D3A580] code:25 userInfo:0];
    }

    v36 = 0;
  }

  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v55, 8);
LABEL_28:

  return v36 & 1;
}

void __71__PPRoutineSupport_importCoreRoutineDataWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v166 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pp_default_log_handle();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPRoutineSupport fetchLOI query failure: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *(*(*(a1 + 56) + 8) + 24) = 0;
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_86;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = [v5 count];
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport found %tu LOIs", buf, 0xCu);
  }

  v9 = objc_autoreleasePoolPush();
  objc_opt_self();
  v10 = objc_opt_new();
  [v10 setLimit:-1];
  v11 = +[PPLocalLocationStore defaultStore];
  v160 = 0;
  v12 = [v11 locationRecordsWithQuery:v10 error:&v160];
  v13 = v160;

  if (v12)
  {
    v14 = [PPLocationClusterID lookupTableWithRecords:v12];
  }

  else
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "PPRoutineSupport error during unlimited record query: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = v5;
  v124 = [obj countByEnumeratingWithState:&v156 objects:v162 count:16];
  if (!v124)
  {
    goto LABEL_85;
  }

  v121 = v5;
  v16 = 0;
  v17 = 0;
  v122 = *v157;
  v123 = v14;
  while (2)
  {
    for (i = 0; i != v124; i = v119 + 1)
    {
      if (*v157 != v122)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v156 + 1) + 8 * i);
      v20 = objc_autoreleasePoolPush();
      if (((*(*(a1 + 40) + 16))() & 1) == 0)
      {
        v120 = pp_default_log_handle();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v120, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: deferring during result iteration.", buf, 2u);
        }

        objc_autoreleasePoolPop(v20);
        goto LABEL_84;
      }

      v140 = v17;
      v141 = v16;
      v126 = i;
      v127 = v20;
      v148 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{9 * objc_msgSend(obj, "count")}];
      v147 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count")}];
      v21 = [v19 mapItem];
      v22 = [v21 address];

      v134 = MEMORY[0x277D3A3F8];
      v146 = v19;
      v142 = [v19 mapItem];
      v138 = [v142 name];
      v136 = [v22 thoroughfare];
      v133 = [v22 subThoroughfare];
      v132 = [v22 locality];
      v144 = [v22 subLocality];
      v131 = [v22 administrativeArea];
      v130 = [v22 subAdministrativeArea];
      v129 = [v22 postalCode];
      v128 = [v22 countryCode];
      v23 = [v22 country];
      v24 = [v22 inlandWater];
      v25 = [v22 ocean];
      v26 = [v22 areasOfInterest];
      v135 = [v134 placemarkWithLatitudeDegrees:0 longitudeDegrees:0 name:v138 thoroughfare:v136 subthoroughFare:v133 locality:v132 subLocality:v144 administrativeArea:v131 subAdministrativeArea:v130 postalCode:v129 countryCode:v128 country:v23 inlandWater:v24 ocean:v25 areasOfInterest:v26];

      v27 = v22;
      v28 = v135;
      v29 = v123;
      objc_opt_self();
      v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:9];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __81__PPRoutineSupport__scoredNamedEntitiesForAddress_placemark_locationLookupTable___block_invoke;
      v164 = &unk_2789724A0;
      v31 = v30;
      v165 = v31;
      v32 = _Block_copy(buf);
      v33 = [v28 postalAddress];
      v145 = [v33 street];
      v34 = [v28 name];

      v143 = v28;
      if (v34)
      {
        v35 = [v28 name];
        v32[2](v32, v35, 3);
      }

      else
      {
        v36 = v146;
        if (!v123)
        {
          goto LABEL_25;
        }

        v137 = v33;
        v139 = v31;
        v37 = [PPLocationClusterID alloc];
        v38 = [v27 subThoroughfare];
        v39 = [v27 thoroughfare];
        v40 = [v27 subLocality];
        v41 = [v27 locality];
        [v27 administrativeArea];
        v43 = v42 = v29;
        v35 = [(PPLocationClusterID *)v37 initWithName:0 subThoroughfare:v38 thoroughfare:v39 subLocality:v40 locality:v41 administrativeArea:v43];

        v29 = v42;
        v44 = [v42 objectForKeyedSubscript:v35];
        v45 = [v44 location];
        v46 = [v45 placemark];
        v47 = [v46 name];

        if (v47)
        {
          v48 = [v44 location];
          v49 = [v48 placemark];
          v50 = [v49 name];
          v32[2](v32, v50, 3);
        }

        v28 = v143;
        v33 = v137;
        v31 = v139;
      }

      v36 = v146;
LABEL_25:
      if ([v145 length])
      {
        v32[2](v32, v145, 8);
      }

      v51 = [v27 subLocality];
      v52 = [v51 length];

      if (v52)
      {
        v53 = [v27 subLocality];
        v32[2](v32, v53, 9);
      }

      v54 = [v27 locality];
      v55 = [v54 length];

      if (v55)
      {
        v56 = [v27 locality];
        v32[2](v32, v56, 9);
      }

      v57 = [v27 administrativeArea];
      v58 = [v57 length];

      if (v58)
      {
        v59 = [v27 administrativeArea];
        v32[2](v32, v59, 10);
      }

      v60 = [v27 administrativeAreaCode];
      v61 = [v60 length];

      if (v61)
      {
        v62 = [v27 administrativeAreaCode];
        v32[2](v32, v62, 10);
      }

      v63 = [v27 country];
      v64 = [v63 length];

      if (v64)
      {
        v65 = [v27 country];
        v32[2](v32, v65, 11);
      }

      v66 = [v27 countryCode];
      v67 = [v66 length];

      if (v67)
      {
        v68 = [v27 countryCode];
        v32[2](v32, v68, 11);
      }

      v69 = [v27 locality];
      v70 = [v69 length];

      if (v70)
      {
        v71 = [MEMORY[0x277CBDB80] singleLineStringFromPostalAddress:v33 addCountryName:0];
        if (v71)
        {
          v32[2](v32, v71, 12);
        }
      }

      v72 = v31;

      [v148 addObjectsFromArray:v72];
      v73 = objc_alloc(MEMORY[0x277D3A3D8]);
      v74 = [v36 type];
      objc_opt_self();
      if ((v74 + 1) > 4)
      {
        v75 = 5;
      }

      else
      {
        v75 = word_232418944[v74 + 1];
      }

      v76 = [v73 initWithPlacemark:v28 category:v75 mostRelevantRecord:0];
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v77 = [v36 visits];
      v78 = [v77 countByEnumeratingWithState:&v152 objects:v161 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v153;
        v81 = 0.0;
        do
        {
          for (j = 0; j != v79; ++j)
          {
            if (*v153 != v80)
            {
              objc_enumerationMutation(v77);
            }

            v83 = *(*(&v152 + 1) + 8 * j);
            v84 = *(a1 + 72);
            v85 = [v83 exitDate];
            v86 = [v83 entryDate];
            [v85 timeIntervalSinceDate:v86];
            v88 = v84 + log2(v87 + 1.0) * *(a1 + 80);

            v89 = *(a1 + 88);
            v90 = [v83 exitDate];
            [v90 timeIntervalSinceNow];
            v81 = v81 + v88 * exp(-fabs(v89 * v91));
          }

          v79 = [v77 countByEnumeratingWithState:&v152 objects:v161 count:16];
        }

        while (v79);
      }

      else
      {
        v81 = 0.0;
      }

      v92 = [objc_alloc(MEMORY[0x277D3A4A8]) initWithLocation:v76 score:v81 / (v81 + 1.0) sentimentScore:0.0];
      [v147 addObject:v92];
      v93 = pp_default_log_handle();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v94 = [v148 count];
        v95 = [v147 count];
        *buf = 134218240;
        *&buf[4] = v94;
        *&buf[12] = 2048;
        *&buf[14] = v95;
        _os_log_impl(&dword_23224A000, v93, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport extracted %tu entities and %tu locations from LOI", buf, 0x16u);
      }

      v96 = [v146 visits];
      v97 = [v96 lastObject];
      v17 = [v97 exitDate];

      v98 = objc_alloc(MEMORY[0x277D3A4D8]);
      v99 = objc_opt_new();
      v100 = [v99 UUIDString];
      v101 = objc_opt_new();
      v16 = [v98 initWithBundleId:@"com.apple.CoreRoutine" groupId:0 documentId:v100 date:v101 relevanceDate:v17 contactHandles:0 language:0 metadata:0];

      if ([v148 count] && *(a1 + 96) == 1)
      {
        v102 = +[PPLocalNamedEntityStore defaultStore];
        v151 = 0;
        v103 = [v102 donateNamedEntities:v148 source:v16 algorithm:3 cloudSync:0 sentimentScore:&v151 error:0.0];
        v104 = v151;

        if (v103)
        {
          v105 = +[PPLocalNamedEntityStore defaultStore];
          v150 = 0;
          v106 = [v105 flushDonationsWithError:&v150];
          v107 = v150;

          if ((v106 & 1) == 0)
          {
            v108 = pp_default_log_handle();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v107;
              _os_log_impl(&dword_23224A000, v108, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: importCoreRoutineDataWithCompletion: Warning: failed to flush: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v109 = pp_default_log_handle();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v104;
            _os_log_error_impl(&dword_23224A000, v109, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to store CoreRoutine-derived named entities: %@", buf, 0xCu);
          }

          *(*(*(a1 + 56) + 8) + 24) = 0;
          v110 = *(*(a1 + 48) + 8);
          v111 = v104;
          v107 = *(v110 + 40);
          *(v110 + 40) = v111;
        }
      }

      v112 = v147;
      if ([v147 count] && *(a1 + 97) == 1)
      {
        v113 = +[PPLocalLocationStore defaultStore];
        v149 = 0;
        v114 = [v113 donateLocations:v147 source:v16 contextualNamedEntities:0 algorithm:3 cloudSync:0 error:&v149];
        v115 = v149;
        v116 = v149;

        if ((v114 & 1) == 0)
        {
          v117 = pp_default_log_handle();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v116;
            _os_log_error_impl(&dword_23224A000, v117, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to store CoreRoutine-derived locations: %@", buf, 0xCu);
          }

          *(*(*(a1 + 56) + 8) + 24) = 0;
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v115);
        }

        v119 = v126;
        v118 = v127;
        v112 = v147;
      }

      else
      {
        v116 = pp_default_log_handle();
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = 0;
          _os_log_impl(&dword_23224A000, v116, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport failed to submit CoreRoutine locations to location store: %@", buf, 0xCu);
        }

        v119 = v126;
        v118 = v127;
      }

      objc_autoreleasePoolPop(v118);
    }

    v124 = [obj countByEnumeratingWithState:&v156 objects:v162 count:16];
    if (v124)
    {
      continue;
    }

    break;
  }

LABEL_84:

  v6 = 0;
  v5 = v121;
  v14 = v123;
LABEL_85:

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_86:
}

void __81__PPRoutineSupport__scoredNamedEntitiesForAddress_placemark_locationLookupTable___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = [MEMORY[0x277D3A420] describeCategory:a3];
    v14 = 138412290;
    v15 = v13;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "PPRoutineSupport adding entity of category %@", &v14, 0xCu);
  }

  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138739971;
    v15 = v5;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPRoutineSupport adding entity: %{sensitive}@", &v14, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277D3A420]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v9 languageCode];
  v11 = [v8 initWithName:v5 category:a3 language:v10];

  v12 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v11 score:1.0];
  [*(a1 + 32) addObject:v12];
}

@end