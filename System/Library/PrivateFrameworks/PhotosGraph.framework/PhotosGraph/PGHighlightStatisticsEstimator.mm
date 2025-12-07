@interface PGHighlightStatisticsEstimator
- (PGHighlightStatisticsEstimator)initWithWorkingContext:(id)context;
- (id)_collectDetailsForAggregations:(id)aggregations inGraph:(id)graph curationContext:(id)context;
- (id)_collectDetailsForTripsAndWeekends:(id)weekends inGraph:(id)graph curationContext:(id)context;
- (id)_createHighlightEstimatesDictionaryWithCurationContext:(id)context;
- (id)_highlightEstimatesDescriptionWithData:(id)data;
- (id)_stringDescriptionForHomeWorkAggregations:(id)aggregations;
- (id)_stringDescriptionForMomentsDetails:(id)details;
- (id)_stringDescriptionForTripWeekendDetails:(id)details;
- (id)highlightEstimatesDescriptionWithCurationContext:(id)context;
- (id)highlightEstimatesDictionaryWithCurationContext:(id)context;
- (unint64_t)_numberOfUtilityAssetsForAssetCollection:(id)collection;
@end

@implementation PGHighlightStatisticsEstimator

- (id)_stringDescriptionForMomentsDetails:(id)details
{
  v30 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  v24 = [MEMORY[0x277CCAB68] stringWithString:@"\n\tmomentName\tassets\tcurated assets\tutility assets\tinteresting\tmeanings"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = detailsCopy;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"name"];
        v10 = [v8 objectForKeyedSubscript:@"assetCount"];
        unsignedIntegerValue = [v10 unsignedIntegerValue];

        v12 = [v8 objectForKeyedSubscript:@"curatedAssetCount"];
        unsignedIntegerValue2 = [v12 unsignedIntegerValue];

        v14 = [v8 objectForKeyedSubscript:@"utilityAssetCount"];
        unsignedIntegerValue3 = [v14 unsignedIntegerValue];

        v16 = [v8 objectForKeyedSubscript:@"isInteresting"];
        bOOLValue = [v16 BOOLValue];
        v18 = @"NO";
        if (bOOLValue)
        {
          v18 = @"YES";
        }

        v19 = v18;

        v20 = [v8 objectForKeyedSubscript:@"meanings"];
        v21 = [v20 componentsJoinedByString:{@", "}];

        [v24 appendFormat:@"\n\t%@\t%lu\t%lu\t%lu\t%@\t%@", v9, unsignedIntegerValue, unsignedIntegerValue2, unsignedIntegerValue3, v19, v21];
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  return v24;
}

- (id)_stringDescriptionForHomeWorkAggregations:(id)aggregations
{
  v33 = *MEMORY[0x277D85DE8];
  aggregationsCopy = aggregations;
  v27 = [MEMORY[0x277CCAB68] stringWithString:@"\n\t  aggregation identifier\t\t\tassets\tcurated assets\tutility assets\tmoments\tassets per moment"];
  v25 = [aggregationsCopy count];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = aggregationsCopy;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v29;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"name"];
        v12 = [v10 objectForKeyedSubscript:@"assetCount"];
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        v14 = [v10 objectForKeyedSubscript:@"curatedAssetCount"];
        unsignedIntegerValue2 = [v14 unsignedIntegerValue];

        v16 = [v10 objectForKeyedSubscript:@"aggregationAvgAssetCountPerMoment"];
        [v16 doubleValue];
        v18 = v17;

        v19 = [v10 objectForKeyedSubscript:@"momentCount"];
        unsignedIntegerValue3 = [v19 unsignedIntegerValue];

        v21 = [v10 objectForKeyedSubscript:@"utilityAssetCount"];
        unsignedIntegerValue4 = [v21 unsignedIntegerValue];

        v6 += unsignedIntegerValue3;
        v8 = v8 + unsignedIntegerValue;
        [v27 appendFormat:@"\n\t- %@\t%lu\t%lu\t%lu\t%lu\t%.1f", v11, unsignedIntegerValue, unsignedIntegerValue2, unsignedIntegerValue4, unsignedIntegerValue3, v18];
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v8 = 0.0;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n- number of aggregations: %lu\n- number of moments: %lu\n- avg number of assets per aggregation: %f\n\nDetails:\n%@", v25, v6, v8 / v25, v27];

  return v23;
}

- (id)_stringDescriptionForTripWeekendDetails:(id)details
{
  v29 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"\n\tname\tassets\tcurated assets\tutility assets\tmoments"];
  v22 = [detailsCopy count];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = detailsCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"name"];
        v12 = [v10 objectForKeyedSubscript:@"assetCount"];
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        v14 = [v10 objectForKeyedSubscript:@"curatedAssetCount"];
        unsignedIntegerValue2 = [v14 unsignedIntegerValue];

        v16 = [v10 objectForKeyedSubscript:@"utilityAssetCount"];
        unsignedIntegerValue3 = [v16 unsignedIntegerValue];

        v18 = [v10 objectForKeyedSubscript:@"momentCount"];
        unsignedIntegerValue4 = [v18 unsignedIntegerValue];

        [v4 appendFormat:@"\n\t%@\t%lu\t%lu\t%lu\t%lu", v11, unsignedIntegerValue, unsignedIntegerValue2, unsignedIntegerValue3, unsignedIntegerValue4];
        v8 = v8 + unsignedIntegerValue;
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v20 = [MEMORY[0x277CCAB68] stringWithFormat:@"(count %lu, avg assets per trip %f)\n%@", v22, v8 / v22, v4];

  return v20;
}

- (id)_highlightEstimatesDescriptionWithData:(id)data
{
  v79 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  string = [MEMORY[0x277CCAB68] string];
  v5 = [dataCopy objectForKeyedSubscript:@"generalInfo"];
  v6 = [v5 objectForKeyedSubscript:@"assetCount"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [v5 objectForKeyedSubscript:@"utilityAssetCount"];
  unsignedIntegerValue2 = [v8 unsignedIntegerValue];

  v10 = [v5 objectForKeyedSubscript:@"momentCount"];
  unsignedIntegerValue3 = [v10 unsignedIntegerValue];

  v12 = [v5 objectForKeyedSubscript:@"highlightCount"];
  unsignedIntegerValue4 = [v12 unsignedIntegerValue];

  v14 = [v5 objectForKeyedSubscript:@"avgAssetCountPerMoment"];
  [v14 doubleValue];
  v16 = v15;

  v67 = v5;
  v17 = [v5 objectForKeyedSubscript:@"avgCuratedAssetCountPerMoment"];
  [v17 doubleValue];
  v19 = v18;

  [string appendFormat:@"\nnumber of assets: %lu", unsignedIntegerValue];
  [string appendFormat:@"\nnumber of utility assets: %lu", unsignedIntegerValue2];
  [string appendFormat:@"\nnumber of moments: %lu", unsignedIntegerValue3];
  [string appendFormat:@"\nnumber of highlights: %lu", unsignedIntegerValue4];
  [string appendFormat:@"\navg assets per moment: %f", v16];
  v69 = string;
  [string appendFormat:@"\navg curated assets per moment: %f", v19];
  v20 = [MEMORY[0x277CCAB68] stringWithString:@"\n\nmoments count per year:"];
  v21 = [MEMORY[0x277CCAB68] stringWithString:@"\n\navg assets per moment per year:"];
  v22 = [dataCopy objectForKeyedSubscript:@"momentsByYear"];
  v68 = dataCopy;
  v72 = [dataCopy objectForKeyedSubscript:@"avgAssetsPerMomentByYear"];
  v73 = v22;
  allKeys = [v22 allKeys];
  v24 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v65 = v24;
  obj = [v24 reverseObjectEnumerator];
  v25 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v75;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v75 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v74 + 1) + 8 * i);
        v30 = [v73 objectForKeyedSubscript:v29];
        unsignedIntegerValue5 = [v30 unsignedIntegerValue];

        [v20 appendFormat:@"\n %@: %lu", v29, unsignedIntegerValue5];
        v32 = [v72 objectForKeyedSubscript:v29];
        [v32 doubleValue];
        v34 = v33;

        [v21 appendFormat:@"\n %@: %f", v29, v34];
      }

      v26 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v26);
  }

  v64 = v20;
  [v69 appendString:v20];
  v60 = v21;
  [v69 appendString:v21];
  obja = [v68 objectForKeyedSubscript:@"trips"];
  v35 = MEMORY[0x277CCACA8];
  v36 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForTripWeekendDetails:obja];
  v62 = [v35 stringWithFormat:@"\n\n################################\n\nTrip Statistics: %@", v36];

  v63 = [v68 objectForKeyedSubscript:@"weekends"];
  v37 = MEMORY[0x277CCACA8];
  v38 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForTripWeekendDetails:v63];
  v61 = [v37 stringWithFormat:@"\n\n################################\n\nWeekend Statistics: %@", v38];

  [v69 appendString:v62];
  [v69 appendString:v61];
  v59 = [v68 objectForKeyedSubscript:@"homeAggregations"];
  v39 = MEMORY[0x277CCACA8];
  v40 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForHomeWorkAggregations:v59];
  v56 = [v39 stringWithFormat:@"\n\n################################\n\nHome Aggregation Statistics:%@", v40];

  v58 = [v68 objectForKeyedSubscript:@"homeSupersetAggregations"];
  v41 = MEMORY[0x277CCACA8];
  v42 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForHomeWorkAggregations:v58];
  v43 = [v41 stringWithFormat:@"\n\n################################\n\nHome Superset Aggregation Statistics:%@", v42];

  v57 = [v68 objectForKeyedSubscript:@"workAggregations"];
  v44 = MEMORY[0x277CCACA8];
  v45 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForHomeWorkAggregations:v57];
  v46 = [v44 stringWithFormat:@"\n\n################################\n\nWork Aggregation Statistics:%@", v45];

  [v69 appendString:v56];
  [v69 appendString:v46];
  [v69 appendString:v43];
  v47 = [v68 objectForKeyedSubscript:@"singleMoments"];
  v48 = MEMORY[0x277CCACA8];
  v49 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForMomentsDetails:v47];
  v50 = [v48 stringWithFormat:@"Moments that are not in Trips/Weekends/Aggregations: %@", v49];

  [v69 appendFormat:@"\n\n################################\n\n%@", v50];
  v51 = [v68 objectForKeyedSubscript:@"moments"];
  v52 = MEMORY[0x277CCACA8];
  v53 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForMomentsDetails:v51];
  v54 = [v52 stringWithFormat:@"Moment Statistics: %@", v53];

  [v69 appendFormat:@"\n\n################################\n\n%@", v54];

  return v69;
}

- (id)_collectDetailsForAggregations:(id)aggregations inGraph:(id)graph curationContext:(id)context
{
  v96 = *MEMORY[0x277D85DE8];
  aggregationsCopy = aggregations;
  graphCopy = graph;
  contextCopy = context;
  v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(aggregationsCopy, "count")}];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  v59 = aggregationsCopy;
  allKeys = [aggregationsCopy allKeys];
  v10 = [allKeys sortedArrayUsingSelector:sel_localizedCompare_];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v10;
  v60 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v60)
  {
    v55 = *v86;
    do
    {
      v11 = 0;
      do
      {
        if (*v86 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v85 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v59 objectForKeyedSubscript:v12];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v81 objects:v94 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v82;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v82 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v18 += [*(*(&v81 + 1) + 8 * i) numberOfAssets];
            }

            v17 = [v15 countByEnumeratingWithState:&v81 objects:v94 count:16];
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        [v15 count];
        v21 = v18;
        v22 = [v15 count];
        v23 = [graphCopy momentsResultForMomentNodes:v15 inPhotoLibrary:photoLibrary sortChronologically:0];
        array = [MEMORY[0x277CBEB18] array];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
        [librarySpecificFetchOptions setIncludeGuestAssets:1];
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v68 = v23;
        v24 = [v68 countByEnumeratingWithState:&v77 objects:v93 count:16];
        context = v13;
        v66 = v11;
        v63 = v12;
        v64 = v15;
        if (v24)
        {
          v25 = v24;
          v26 = 0;
          v69 = *v78;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v78 != v69)
              {
                objc_enumerationMutation(v68);
              }

              v28 = *(*(&v77 + 1) + 8 * j);
              v29 = objc_autoreleasePoolPush();
              v30 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v28 options:librarySpecificFetchOptions];
              fetchedObjects = [v30 fetchedObjects];
              [array addObjectsFromArray:fetchedObjects];

              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v32 = v30;
              v33 = [v32 countByEnumeratingWithState:&v73 objects:v92 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v74;
                do
                {
                  for (k = 0; k != v34; ++k)
                  {
                    if (*v74 != v35)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v26 += [(PGHighlightStatisticsEstimator *)self _isUtilityAsset:*(*(&v73 + 1) + 8 * k)];
                  }

                  v34 = [v32 countByEnumeratingWithState:&v73 objects:v92 count:16];
                }

                while (v34);
              }

              objc_autoreleasePoolPop(v29);
            }

            v25 = [v68 countByEnumeratingWithState:&v77 objects:v93 count:16];
          }

          while (v25);
        }

        else
        {
          v26 = 0;
        }

        v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
        v91 = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
        [array sortUsingDescriptors:v38];

        v70 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:array title:0 identifier:0 photoLibrary:photoLibrary];
        v62 = [[PGCurationOptions alloc] initWithDuration:2];
        curationManager = [(PGManagerWorkingContext *)self->_workingContext curationManager];
        v40 = [curationManager curatedAssetsForAssetCollection:v70 options:v62 curationContext:contextCopy progressBlock:0];
        v61 = [v40 count];

        v41 = MEMORY[0x277CCACA8];
        firstObject = [v64 firstObject];
        name = [firstObject name];
        lastObject = [v64 lastObject];
        name2 = [lastObject name];
        v46 = [v41 stringWithFormat:@"%@ (%@ - %@)", v63, name, name2];

        v90[0] = v46;
        v89[0] = @"name";
        v89[1] = @"assetCount";
        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
        v90[1] = v47;
        v89[2] = @"curatedAssetCount";
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61];
        v90[2] = v48;
        v89[3] = @"utilityAssetCount";
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
        v90[3] = v49;
        v89[4] = @"aggregationAvgAssetCountPerMoment";
        v50 = [MEMORY[0x277CCABB0] numberWithDouble:v21 / v22];
        v90[4] = v50;
        v89[5] = @"momentCount";
        v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v64, "count")}];
        v90[5] = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:6];

        [v57 addObject:v52];
        objc_autoreleasePoolPop(context);
        v11 = v66 + 1;
      }

      while (v66 + 1 != v60);
      v60 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
    }

    while (v60);
  }

  return v57;
}

- (id)_collectDetailsForTripsAndWeekends:(id)weekends inGraph:(id)graph curationContext:(id)context
{
  v70 = *MEMORY[0x277D85DE8];
  weekendsCopy = weekends;
  graphCopy = graph;
  contextCopy = context;
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(weekendsCopy, "count")}];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  v10 = [PGTitleGenerationContext alloc];
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  v47 = graphCopy;
  v43 = [(PGTitleGenerationContext *)v10 initWithGraph:graphCopy serviceManager:serviceManager];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = weekendsCopy;
  v48 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v48)
  {
    v42 = *v63;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v63 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v62 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v56 = [[PGHighlightTitleGenerator alloc] initWithCollection:v13 curatedAssetCollection:0 keyAsset:0 createVerboseTitle:0 titleGenerationContext:v43];
        titleTuple = [(PGHighlightTitleGenerator *)v56 titleTuple];
        title = [titleTuple title];
        stringValue = [title stringValue];
        v17 = [stringValue stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

        v55 = titleTuple;
        subtitle = [titleTuple subtitle];
        stringValue2 = [subtitle stringValue];

        v53 = stringValue2;
        v54 = v17;
        v52 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ – %@", v17, stringValue2];
        eventCollection = [v13 eventCollection];
        eventMomentNodes = [eventCollection eventMomentNodes];
        numberOfAssets = [eventMomentNodes numberOfAssets];

        v22 = [v13 fetchAssetCollectionInPhotoLibrary:photoLibrary];
        v23 = +[PGCurationOptions defaultOptions];
        curationManager = [(PGManagerWorkingContext *)self->_workingContext curationManager];
        v51 = v22;
        v25 = [curationManager curatedAssetsForAssetCollection:v22 options:v23 curationContext:contextCopy progressBlock:0];

        v50 = v25;
        v26 = [v25 count];
        eventEnrichmentMomentNodes = [v13 eventEnrichmentMomentNodes];
        temporarySet = [eventEnrichmentMomentNodes temporarySet];

        v29 = [v47 momentsResultForMomentNodes:temporarySet inPhotoLibrary:photoLibrary sortChronologically:0];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v30 = [v29 countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = 0;
          v33 = *v59;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v59 != v33)
              {
                objc_enumerationMutation(v29);
              }

              v32 += [(PGHighlightStatisticsEstimator *)self _numberOfUtilityAssetsForAssetCollection:*(*(&v58 + 1) + 8 * j)];
            }

            v31 = [v29 countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v31);
        }

        else
        {
          v32 = 0;
        }

        v67[0] = v52;
        v66[0] = @"name";
        v66[1] = @"assetCount";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numberOfAssets];
        v67[1] = v35;
        v66[2] = @"curatedAssetCount";
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
        v67[2] = v36;
        v66[3] = @"utilityAssetCount";
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
        v67[3] = v37;
        v66[4] = @"momentCount";
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(temporarySet, "count")}];
        v67[4] = v38;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:5];

        [v46 addObject:v39];
        objc_autoreleasePoolPop(context);
      }

      v48 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v48);
  }

  return v46;
}

- (unint64_t)_numberOfUtilityAssetsForAssetCollection:(id)collection
{
  v20 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v7 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions addFetchPropertySets:v7];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v8 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 += [(PGHighlightStatisticsEstimator *)self _isUtilityAsset:*(*(&v15 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_createHighlightEstimatesDictionaryWithCurationContext:(id)context
{
  contextCopy = context;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__54617;
  v20 = __Block_byref_object_dispose__54618;
  v21 = 0;
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  workingContext = self->_workingContext;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke;
  v11[3] = &unk_278889308;
  v7 = photoLibrary;
  v12 = v7;
  selfCopy = self;
  v8 = contextCopy;
  v14 = v8;
  v15 = &v16;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke(uint64_t a1, void *a2)
{
  v121 = *MEMORY[0x277D85DE8];
  v61 = a2;
  v71 = [v61 graph];
  v2 = [v71 momentNodesSortedByDate];
  v77 = [MEMORY[0x277CBEB38] dictionary];
  v91 = [MEMORY[0x277CBEB38] dictionary];
  v67 = [MEMORY[0x277CBEB38] dictionary];
  v65 = [MEMORY[0x277CBEB38] dictionary];
  v63 = [MEMORY[0x277CBEB38] dictionary];
  v69 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v64 = [MEMORY[0x277CBEB18] array];
  v62 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v71];
  v76 = [v71 meNodeCollection];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v2;
  v72 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
  if (!v72)
  {
    v66 = 0;
    v74 = 0;
    v75 = 0;
    v3 = 0.0;
    v4 = 0.0;
    goto LABEL_30;
  }

  v66 = 0;
  v74 = 0;
  v75 = 0;
  v70 = *v109;
  v3 = 0.0;
  v4 = 0.0;
  do
  {
    for (i = 0; i != v72; ++i)
    {
      if (*v109 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v108 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v7 = [v71 momentForMomentNode:v6 inPhotoLibrary:*(a1 + 32)];
      if (v7)
      {
        v92 = [v6 numberOfAssets];
        v86 = [[PGCurationOptions alloc] initWithDuration:2];
        v8 = [*(*(a1 + 40) + 8) curationManager];
        v9 = [v8 curatedAssetsForAssetCollection:v7 options:v86 curationContext:*(a1 + 48) progressBlock:0];
        v82 = [v9 count];

        v10 = [MEMORY[0x277CBEB58] set];
        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = 3221225472;
        v106[2] = __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke_2;
        v106[3] = &unk_2788877E0;
        v84 = v10;
        v107 = v84;
        [v6 enumerateMeaningNodesUsingBlock:v106];
        v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_localizedCompare_];
        v119 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
        v80 = [v84 sortedArrayUsingDescriptors:v12];

        v13 = [v6 isSmartInteresting];
        v78 = [*(a1 + 40) _numberOfUtilityAssetsForAssetCollection:v7];
        v117[0] = @"name";
        v14 = [v6 name];
        v118[0] = v14;
        v117[1] = @"assetCount";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v92];
        v118[1] = v15;
        v117[2] = @"curatedAssetCount";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v82];
        v118[2] = v16;
        v117[3] = @"utilityAssetCount";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v78];
        v118[3] = v17;
        v117[4] = @"isInteresting";
        v18 = [MEMORY[0x277CCABB0] numberWithBool:v13];
        v117[5] = @"meanings";
        v118[4] = v18;
        v118[5] = v80;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:6];

        [v69 addObject:v19];
        v20 = [v6 localStartDate];
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(MEMORY[0x277D27690], "yearFromDate:", v20)}];
        v22 = [v77 objectForKeyedSubscript:v21];
        v23 = [v22 unsignedIntegerValue];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23 + 1];
        [v77 setObject:v24 forKeyedSubscript:v21];

        v25 = [v91 objectForKeyedSubscript:v21];
        v26 = [v25 unsignedIntegerValue];

        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26 + v92];
        [v91 setObject:v27 forKeyedSubscript:v21];

        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", v21, objc_msgSend(MEMORY[0x277D27690], "weekOfYearFromDate:", v20)];
        v29 = [v6 happensPartiallyAtHomeOrWorkOfPersonNodes:v76];
        v30 = [v6 happensPartiallyAtHomeOfPersonNodes:v76];
        v102 = 0;
        v103 = &v102;
        v104 = 0x2020000000;
        v105 = 0;
        if (v13 & 1 | ((v30 & 1) == 0))
        {
          if (v13 & 1 | ((v29 & 1) == 0))
          {
            if (v13)
            {
              goto LABEL_23;
            }

            v31 = [v6 addressNodes];
            if ([v31 count] == 1)
            {
              v98[0] = MEMORY[0x277D85DD0];
              v98[1] = 3221225472;
              v98[2] = __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke_3;
              v98[3] = &unk_2788863F8;
              v98[4] = v6;
              v99 = v63;
              v100 = v28;
              v101 = &v102;
              [v62 enumerateIdentifiersAsCollectionsWithBlock:v98];
            }

            if (v29)
            {
              goto LABEL_25;
            }

LABEL_22:
            if (v13 & 1 | ((v103[3] & 1) == 0))
            {
              goto LABEL_23;
            }

            goto LABEL_25;
          }

          v32 = [v65 objectForKeyedSubscript:v28];
          if (!v32)
          {
            v32 = [MEMORY[0x277CBEB18] array];
            [v65 setObject:v32 forKeyedSubscript:v28];
          }
        }

        else
        {
          v32 = [v67 objectForKeyedSubscript:v28];
          if (!v32)
          {
            v32 = [MEMORY[0x277CBEB18] array];
            [v67 setObject:v32 forKeyedSubscript:v28];
          }
        }

        [v32 addObject:v6];

        if ((v29 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v13)
        {
LABEL_23:
          if (([v6 isPartOfTrip] & 1) == 0)
          {
            [v64 addObject:v19];
            ++v66;
          }
        }

LABEL_25:
        _Block_object_dispose(&v102, 8);

        v74 += v92;
        v75 += v78;
        v4 = v4 + v92;
        v3 = v3 + v82;
      }

      objc_autoreleasePoolPop(context);
    }

    v72 = [obj countByEnumeratingWithState:&v108 objects:v120 count:16];
  }

  while (v72);
LABEL_30:

  v79 = [obj count];
  v73 = [obj count];
  v33 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v91, "count")}];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v34 = v77;
  v35 = [v34 countByEnumeratingWithState:&v94 objects:v116 count:16];
  if (v35)
  {
    v36 = *v95;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v95 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v94 + 1) + 8 * j);
        v39 = [v34 objectForKeyedSubscript:v38];
        v40 = [v39 unsignedIntegerValue];

        v41 = [v91 objectForKeyedSubscript:v38];
        [v41 doubleValue];
        v43 = v42;

        v44 = [MEMORY[0x277CCABB0] numberWithDouble:v43 / v40];
        [v33 setObject:v44 forKeyedSubscript:v38];
      }

      v35 = [v34 countByEnumeratingWithState:&v94 objects:v116 count:16];
    }

    while (v35);
  }

  v93 = [v71 longTripNodes];
  contexta = [v71 shortTripNodes];
  v87 = [*(a1 + 40) _collectDetailsForTripsAndWeekends:v93 inGraph:v71 curationContext:*(a1 + 48)];
  v85 = [*(a1 + 40) _collectDetailsForTripsAndWeekends:contexta inGraph:v71 curationContext:*(a1 + 48)];
  v83 = [*(a1 + 40) _collectDetailsForAggregations:v67 inGraph:v71 curationContext:*(a1 + 48)];
  v81 = [*(a1 + 40) _collectDetailsForAggregations:v65 inGraph:v71 curationContext:*(a1 + 48)];
  v45 = [*(a1 + 40) _collectDetailsForAggregations:v63 inGraph:v71 curationContext:*(a1 + 48)];
  v46 = [v93 count];
  v47 = [contexta count];
  v48 = [v67 count];
  v49 = [v63 count];
  v50 = [v65 count];
  v114[0] = @"assetCount";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v74];
  v115[0] = v51;
  v114[1] = @"momentCount";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
  v115[1] = v52;
  v114[2] = @"highlightCount";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46 + v66 + v47 + v48 + v49 + v50];
  v115[2] = v53;
  v114[3] = @"avgAssetCountPerMoment";
  v54 = [MEMORY[0x277CCABB0] numberWithDouble:v4 / v79];
  v115[3] = v54;
  v114[4] = @"avgCuratedAssetCountPerMoment";
  v55 = [MEMORY[0x277CCABB0] numberWithDouble:v3 / v73];
  v115[4] = v55;
  v114[5] = @"utilityAssetCount";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v75];
  v115[5] = v56;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:6];

  v112[0] = @"generalInfo";
  v112[1] = @"moments";
  v113[0] = v57;
  v113[1] = v69;
  v112[2] = @"singleMoments";
  v112[3] = @"trips";
  v113[2] = v64;
  v113[3] = v87;
  v112[4] = @"weekends";
  v112[5] = @"homeAggregations";
  v113[4] = v85;
  v113[5] = v83;
  v112[6] = @"workAggregations";
  v112[7] = @"homeSupersetAggregations";
  v113[6] = v81;
  v113[7] = v45;
  v112[8] = @"momentsByYear";
  v112[9] = @"avgAssetsPerMomentByYear";
  v113[8] = v34;
  v113[9] = v33;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:10];
  v59 = *(*(a1 + 56) + 8);
  v60 = *(v59 + 40);
  *(v59 + 40) = v58;
}

void __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  [v2 addObject:v3];
}

void __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 momentNodes];
  v7 = [v6 containsNode:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    if (!v8)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:*(a1 + 48)];
      v8 = v9;
    }

    v10 = v8;
    [v8 addObject:*(a1 + 32)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)highlightEstimatesDescriptionWithCurationContext:(id)context
{
  v4 = [(PGHighlightStatisticsEstimator *)self highlightEstimatesDictionaryWithCurationContext:context];
  v5 = [(PGHighlightStatisticsEstimator *)self _highlightEstimatesDescriptionWithData:v4];

  return v5;
}

- (id)highlightEstimatesDictionaryWithCurationContext:(id)context
{
  highlightEstimatesDictionary = self->_highlightEstimatesDictionary;
  if (!highlightEstimatesDictionary)
  {
    v5 = [(PGHighlightStatisticsEstimator *)self _createHighlightEstimatesDictionaryWithCurationContext:context];
    v6 = self->_highlightEstimatesDictionary;
    self->_highlightEstimatesDictionary = v5;

    highlightEstimatesDictionary = self->_highlightEstimatesDictionary;
  }

  return highlightEstimatesDictionary;
}

- (PGHighlightStatisticsEstimator)initWithWorkingContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PGHighlightStatisticsEstimator;
  v6 = [(PGHighlightStatisticsEstimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, context);
  }

  return v7;
}

@end