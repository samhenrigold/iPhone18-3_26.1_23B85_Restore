@interface PGOnThisDayContextualRule
- (id)_contextualKeyAssetForDayHighlightItem:(id)item contextualLocalDate:(id)date sharingFilter:(unsigned __int16)filter;
- (void)enumerateContextualKeyAssetsForYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options modelReader:(id)reader curationContext:(id)context usingBlock:(id)block;
@end

@implementation PGOnThisDayContextualRule

- (id)_contextualKeyAssetForDayHighlightItem:(id)item contextualLocalDate:(id)date sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  itemCopy = item;
  dateCopy = date;
  v9 = [itemCopy keyAssetForHighlightFilter:filterCopy];
  if (+[PGUserDefaults onThisDayHighlightKeyAssetRotationIsEnabled])
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    localStartDate = [itemCopy localStartDate];
    v12 = [currentCalendar components:16 fromDate:dateCopy toDate:localStartDate options:0];

    v13 = [v12 day];
    extendedCuratedAssets = [itemCopy extendedCuratedAssets];
    v15 = +[PGHighlightEnrichmentUtilities filteredAssetsInAssets:withSharingComposition:forSharingFilter:](PGHighlightEnrichmentUtilities, "filteredAssetsInAssets:withSharingComposition:forSharingFilter:", extendedCuratedAssets, [itemCopy sharingComposition], filterCopy);

    v16 = [v15 count];
    if (v16 < 1)
    {
      v19 = 0;
    }

    else
    {
      v17 = v16;
      v18 = [v15 indexOfObject:v9];
      v19 = [v15 objectAtIndexedSubscript:(v17 & (((v18 + v13) % v17) >> 63)) + (v18 + v13) % v17];
    }
  }

  else
  {
    v19 = v9;
  }

  return v19;
}

- (void)enumerateContextualKeyAssetsForYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options modelReader:(id)reader curationContext:(id)context usingBlock:(id)block
{
  filterCopy = filter;
  v84 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  optionsCopy = options;
  readerCopy = reader;
  contextCopy = context;
  blockCopy = block;
  if (!blockCopy)
  {
    goto LABEL_52;
  }

  v60 = blockCopy;
  v57 = contextCopy;
  v58 = optionsCopy;
  v77 = 0;
  v19 = [PGContextualRuleUtils onThisDayLocalDateForYearHighlight:highlightCopy withOptions:optionsCopy];
  v59 = highlightCopy;
  v20 = [highlightCopy childHighlightItemsForHighlightFilter:filterCopy];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __139__PGOnThisDayContextualRule_enumerateContextualKeyAssetsForYearHighlight_sharingFilter_withOptions_modelReader_curationContext_usingBlock___block_invoke;
  v75[3] = &unk_27887F258;
  v21 = v19;
  v76 = v21;
  v56 = v20;
  [v20 sortedArrayUsingComparator:v75];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v22 = v74 = 0u;
  v63 = [v22 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (!v63)
  {

    v49 = 0;
    v53 = v20;
    v50 = v22;
    goto LABEL_48;
  }

  selfCopy = self;
  v23 = 0;
  obj = v22;
  v62 = *v72;
  do
  {
    v24 = 0;
    v25 = v23;
    do
    {
      if (*v72 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v71 + 1) + 8 * v24);

      v26 = [readerCopy fetchChildHighlightItemsForHighlightItem:v23 sharingFilter:filterCopy];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v67 objects:v82 count:16];
      if (!v27)
      {

        goto LABEL_36;
      }

      v28 = v27;
      v64 = v24;
      v65 = v23;
      v29 = 0;
      v66 = 0;
      v30 = *v68;
      v31 = 2.22507386e-308;
      v32 = 978307200.0;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v68 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v34 = *(*(&v67 + 1) + 8 * i);
          if (MEMORY[0x231902060]([readerCopy visibilityStateForHighlightItem:v34 sharingFilter:{filterCopy, selfCopy}]))
          {
            v35 = readerCopy;
            localStartDate = [v34 localStartDate];
            [localStartDate timeIntervalSinceDate:v21];
            v38 = v37;

            if (v38 >= 0.0)
            {
              v39 = v38;
            }

            else
            {
              v39 = -v38;
            }

            localEndDate = [v34 localEndDate];
            [localEndDate timeIntervalSinceDate:v21];
            v42 = v41;

            v43 = -v42;
            if (v42 >= 0.0)
            {
              v43 = v42;
            }

            if (v39 >= v43)
            {
              v39 = v43;
            }

            enrichmentState = [v34 enrichmentState];
            [v34 promotionScore];
            v46 = v45;
            if (enrichmentState <= 3 && enrichmentState >= v29)
            {
              if (v45 > v31)
              {
                goto LABEL_29;
              }
            }

            else if (enrichmentState == 4 && (v29 < 4 || v39 < v32))
            {
LABEL_29:
              v48 = v34;

              v29 = enrichmentState;
              v31 = v46;
              v32 = v39;
              v66 = v48;
            }

            readerCopy = v35;
            continue;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v67 objects:v82 count:16];
      }

      while (v28);

      v23 = v65;
      v49 = v66;
      v24 = v64;
      if (v66)
      {

        if (v65)
        {
          loggingConnection = [(PGOnThisDayContextualRule *)selfCopy _contextualKeyAssetForDayHighlightItem:v66 contextualLocalDate:v21 sharingFilter:filterCopy];
          if (loggingConnection)
          {
            v60[2](v60, loggingConnection, v66, v65, &v77, 0.0);
          }

          v53 = v56;
          v50 = obj;
          goto LABEL_51;
        }

        v53 = v56;
        v50 = obj;
LABEL_48:
        v54 = +[PGLogging sharedLogging];
        loggingConnection = [v54 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v79 = v59;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No month found for highlight year %@", buf, 0xCu);
        }

        v23 = 0;
        goto LABEL_51;
      }

LABEL_36:
      ++v24;
      v25 = v23;
    }

    while (v24 != v63);
    v63 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
  }

  while (v63);
  v50 = obj;

  if (!v23)
  {
    v49 = 0;
    v53 = v56;
    goto LABEL_48;
  }

  v51 = +[PGLogging sharedLogging];
  loggingConnection = [v51 loggingConnection];

  v53 = v56;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v79 = v59;
    v80 = 2112;
    v81 = v23;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No day found for highlight year %@ and month %@", buf, 0x16u);
  }

  v49 = 0;
LABEL_51:

  optionsCopy = v58;
  highlightCopy = v59;
  contextCopy = v57;
  blockCopy = v60;
LABEL_52:
}

uint64_t __139__PGOnThisDayContextualRule_enumerateContextualKeyAssetsForYearHighlight_sharingFilter_withOptions_modelReader_curationContext_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 startDate];
  v9 = [v5 endDate];
  [v9 timeIntervalSinceDate:v8];
  v11 = [v8 dateByAddingTimeInterval:v10 * 0.5];
  [v11 timeIntervalSinceDate:v7];
  v13 = v12;

  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  v15 = *(a1 + 32);
  v16 = v6;
  v17 = [v16 startDate];
  v18 = [v16 endDate];

  [v18 timeIntervalSinceDate:v17];
  v20 = [v17 dateByAddingTimeInterval:v19 * 0.5];
  [v20 timeIntervalSinceDate:v15];
  v22 = v21;

  if (v22 < 0.0)
  {
    v22 = -v22;
  }

  if (v14 >= v22)
  {
    if (v14 <= v22)
    {
      v24 = [v5 uuid];
      v25 = [v16 uuid];
      v23 = [v24 compare:v25];
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = -1;
  }

  return v23;
}

@end