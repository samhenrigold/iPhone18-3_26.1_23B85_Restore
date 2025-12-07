@interface PGShareBackLocationSource
+ (id)suggesterInputsByDateIntervalForInputs:(id)inputs;
- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackLocationSource

+ (id)suggesterInputsByDateIntervalForInputs:(id)inputs
{
  v47 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  v4 = objc_opt_new();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = inputsCopy;
  v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v32)
  {
    v30 = v4;
    v31 = *v42;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        creationDate = [v7 creationDate];
        if (creationDate)
        {
          location = [v7 location];
          timeZone = [v7 timeZone];
          v35 = location;
          v36 = creationDate;
          v33 = timeZone;
          v34 = v7;
          if (timeZone)
          {
            v11 = [MEMORY[0x277D27690] localDateFromUniversalDate:creationDate inTimeZone:timeZone];
          }

          else
          {
            if (location)
            {
              [MEMORY[0x277D27690] localDateFromUniversalDate:creationDate atLocation:location];
            }

            else
            {
              [MEMORY[0x277D27690] localDateFromUniversalDate:creationDate];
            }
            v11 = ;
          }

          v12 = v11;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          allKeys = [v4 allKeys];
          v14 = [allKeys countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v38;
LABEL_15:
            v17 = 0;
            while (1)
            {
              if (*v38 != v16)
              {
                objc_enumerationMutation(allKeys);
              }

              v18 = *(*(&v37 + 1) + 8 * v17);
              startDate = [v18 startDate];
              v20 = [currentCalendar isDate:v12 inSameDayAsDate:startDate];

              if (v20)
              {
                break;
              }

              if (v15 == ++v17)
              {
                v15 = [allKeys countByEnumeratingWithState:&v37 objects:v45 count:16];
                if (v15)
                {
                  goto LABEL_15;
                }

                goto LABEL_21;
              }
            }

            v21 = v18;

            if (!v21)
            {
              goto LABEL_24;
            }

            startDate2 = [v21 startDate];
            v23 = [startDate2 earlierDate:v12];

            endDate = [v21 endDate];
            v25 = [endDate laterDate:v12];

            v4 = v30;
            v26 = [v30 objectForKeyedSubscript:v21];
            [v30 removeObjectForKey:v21];
          }

          else
          {
LABEL_21:

LABEL_24:
            v23 = v12;
            v26 = objc_opt_new();
            v25 = v23;
            v4 = v30;
          }

          creationDate = v36;
          v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v25];
          [v4 setObject:v26 forKeyedSubscript:v27];
          [v26 addObject:v34];
        }
      }

      v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v32);
  }

  return v4;
}

- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  nodesCopy = nodes;
  graphCopy = graph;
  loggingConnection = [(PGShareBackSource *)self loggingConnection];
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v42 = objc_opt_new();
  if (![nodesCopy count])
  {
    goto LABEL_32;
  }

  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = inputsCopy;
  v37 = [obj countByEnumeratingWithState:&v61 objects:v82 count:16];
  if (v37)
  {
    v36 = *v62;
LABEL_4:
    v39 = 0;
    while (1)
    {
      if (*v62 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(*(&v61 + 1) + 8 * v39);
      location = [v44 location];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v40 = nodesCopy;
      v9 = [v40 countByEnumeratingWithState:&v57 objects:v81 count:16];
      if (v9)
      {
        v43 = *v58;
LABEL_9:
        v10 = 0;
        while (1)
        {
          if (*v58 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v11 = *(*(&v57 + 1) + 8 * v10);
          collection = [v11 collection];
          urbanRoiNodes = [collection urbanRoiNodes];
          if ([urbanRoiNodes isEmpty])
          {
            addressNodes = [collection addressNodes];
            cityNodes = [addressNodes cityNodes];
            momentNodes = [cityNodes momentNodes];
            urbanRoiNodes2 = [momentNodes urbanRoiNodes];
            isEmpty = [urbanRoiNodes2 isEmpty];

            v19 = isEmpty ^ 1;
          }

          else
          {
            v19 = 1;
          }

          happensAtFrequentLocation = [v11 happensAtFrequentLocation];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __81__PGShareBackLocationSource_suggesterResultsForInputs_momentNodes_inGraph_error___block_invoke;
          v46[3] = &unk_27888A328;
          v52 = &v69;
          v21 = location;
          v53 = &v65;
          v47 = v21;
          v48 = v44;
          v55 = v19;
          v56 = happensAtFrequentLocation;
          v49 = loggingConnection;
          v50 = v11;
          v54 = &v73;
          v51 = v42;
          [v11 enumerateAddressEdgesAndNodesUsingBlock:v46];
          v22 = *(v74 + 12) == 16;

          if (v22)
          {
            break;
          }

          if (v9 == ++v10)
          {
            v9 = [v40 countByEnumeratingWithState:&v57 objects:v81 count:16];
            if (v9)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v23 = *(v74 + 12) == 16;
      if (v23)
      {
        break;
      }

      if (++v39 == v37)
      {
        v37 = [obj countByEnumeratingWithState:&v61 objects:v82 count:16];
        if (v37)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  if ((v70[3] & 1) == 0)
  {
    *(v74 + 12) = 2;
    [v42 unionSet:nodesCopy];
    v25 = loggingConnection;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
      *buf = 138412547;
      v78 = v26;
      v79 = 2113;
      v80 = v42;
      _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_DEFAULT, "[PGShareBackLocationSource] Moment nodes in interval has no location, processingValue: %@, possible contributions: %{private}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (*(v66 + 24))
  {
    if ([v42 count])
    {
      goto LABEL_29;
    }

    v24 = 8;
  }

  else
  {
    v24 = 4;
  }

  *(v74 + 12) = v24;
LABEL_29:
  v27 = loggingConnection;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
    *buf = 138412547;
    v78 = v28;
    v79 = 2113;
    v80 = v42;
    _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_DEFAULT, "[PGShareBackLocationSource] Moment nodes in interval has location, processingValue: %@, possible contributions: %{private}@", buf, 0x16u);
  }

LABEL_31:

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
LABEL_32:
  if (*(v74 + 12))
  {
    v29 = [PGShareBackSuggesterResult alloc];
    v30 = [(PGShareBackSuggesterResult *)v29 initWithInputs:inputsCopy processingValue:*(v74 + 12) momentNodes:v42];
    v31 = [MEMORY[0x277CBEA60] arrayWithObject:v30];
  }

  else
  {
    v31 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v73, 8);

  return v31;
}

void __81__PGShareBackLocationSource_suggesterResultsForInputs_momentNodes_inGraph_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 72) + 8) + 24) = 1;
  if (*(a1 + 32))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v9 = [*(a1 + 40) creationDate];
    v10 = [v7 universalStartDate];
    v11 = [v7 universalEndDate];
    v12 = v11;
    if (!v10 || !v11)
    {
      goto LABEL_25;
    }

    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v11];
    if ([v13 containsDate:v9])
    {

      v14 = 0.0;
    }

    else
    {
      [v9 timeIntervalSinceDate:v10];
      v16 = fabs(v15);
      [v9 timeIntervalSinceDate:v12];
      v14 = fmin(v16, fabs(v17));

      if (v14 >= 7200.0)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    v18 = [v8 location];
    if (v18)
    {
      [*(a1 + 32) distanceFromLocation:v18];
      v20 = v19;
    }

    else
    {
      v20 = 1.79769313e308;
    }

    v21 = [v7 photoLocation];
    if (v21)
    {
      [*(a1 + 32) distanceFromLocation:v21];
      v20 = fmin(v20, v22);
    }

    v23 = [MEMORY[0x277D3ACD0] locationIsCoarse:*(a1 + 32)];
    v24 = 0x408F400000000000;
    v25 = 1800.0;
    if (*(a1 + 96) && (v23 & 1) == 0 && ([v8 isCoarse] & 1) == 0)
    {
      if (*(a1 + 97))
      {
        v24 = 0x405F400000000000;
        v25 = 0.0;
      }

      else
      {
        if (v20 > 1000.0)
        {
LABEL_24:

          goto LABEL_25;
        }

        v24 = 0x405F400000000000;
        v25 = 300.0;
      }
    }

    if (v20 <= 125.0 || v20 / 1.4 <= v25)
    {
      v31 = a4;
      v26 = *(a1 + 48);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v29 = *(a1 + 56);
        log = v26;
        v27 = [v29 uuid];
        v28 = *(a1 + 96);
        *buf = 138413826;
        v33 = v27;
        v34 = 2048;
        v35 = v20;
        v36 = 2048;
        v37 = v24;
        v38 = 1024;
        v39 = v28;
        v40 = 2048;
        v41 = v20 / 1.4;
        v42 = 2048;
        v43 = v14;
        v44 = 2048;
        v45 = v25;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGShareBackLocationSource] Moment node %@ matched with distance %.0f location threshold %.0f (urban: %d), timeToWalkToDestination %.0f, timeDistance %.0f, walking threshold %.0f", buf, 0x44u);
      }

      *(*(*(a1 + 88) + 8) + 24) = 16;
      [*(a1 + 64) addObject:*(a1 + 56)];
      *v31 = 1;
    }

    goto LABEL_24;
  }

LABEL_26:
}

@end