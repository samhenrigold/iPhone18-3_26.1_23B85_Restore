@interface PGGraphHighlightTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block;
- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)highlightUpdateAssetCountProperties;
- (id)highlightUpdateDateProperties;
- (id)highlightUpdateSearchProperties;
- (id)highlightUpdateTypeProperties;
- (id)momentUpdateTypeByHighlightProperty;
@end

@implementation PGGraphHighlightTranslator

- (id)momentUpdateTypeByHighlightProperty
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"extendedCount";
  v5[0] = &unk_284484530;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)highlightUpdateSearchProperties
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"verboseSmartDescription";
  v6[1] = @"subtitle";
  v6[2] = @"title";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)highlightUpdateAssetCountProperties
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"estimatedAssetCount";
  v6[1] = @"dayGroupAssetsCount";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)highlightUpdateTypeProperties
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"type";
  v6[1] = @"category";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)highlightUpdateDateProperties
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"startDate";
  v6[1] = @"endDate";
  v6[2] = @"startTimeZoneOffset";
  v6[3] = @"endTimeZoneOffset";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block
{
  v70 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  changeCopy = change;
  blockCopy = block;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v40 = _Block_copy(blockCopy);
  if (!v40 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v59[3] < 0.01) || (v59[3] = v9, v57 = 0, (*(v40 + 2))(v40, &v57, 0.0), v10 = *(v63 + 24) | v57, *(v63 + 24) = v10, (v10 & 1) == 0))
  {
    highlightUpdateDateProperties = [(PGGraphHighlightTranslator *)self highlightUpdateDateProperties];
    highlightUpdateTypeProperties = [(PGGraphHighlightTranslator *)self highlightUpdateTypeProperties];
    highlightUpdateAssetCountProperties = [(PGGraphHighlightTranslator *)self highlightUpdateAssetCountProperties];
    highlightUpdateSearchProperties = [(PGGraphHighlightTranslator *)self highlightUpdateSearchProperties];
    v16 = blockCopy;
    momentUpdateTypeByHighlightProperty = [(PGGraphHighlightTranslator *)self momentUpdateTypeByHighlightProperty];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    array = [MEMORY[0x277CBEB18] array];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
    v44[3] = &unk_278887BA0;
    v35 = highlightUpdateDateProperties;
    v45 = v35;
    v36 = highlightUpdateTypeProperties;
    v46 = v36;
    v47 = changeCopy;
    v20 = highlightUpdateSearchProperties;
    v48 = v20;
    v37 = highlightUpdateAssetCountProperties;
    v49 = v37;
    v21 = array;
    v50 = v21;
    v22 = momentUpdateTypeByHighlightProperty;
    v51 = v22;
    v23 = v18;
    v52 = v23;
    v24 = v40;
    v53 = v24;
    v54 = &v58;
    v55 = &v62;
    v56 = 0x3F847AE147AE147BLL;
    [identifierCopy enumerateKeysAndObjectsUsingBlock:v44];
    blockCopy = v16;
    if ([v23 count])
    {
      photoLibrary = [(PGGraphEntityTranslator *)self photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      allKeys = [v23 allKeys];
      v28 = [MEMORY[0x277CD98F8] fetchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs:allKeys options:librarySpecificFetchOptions];
      if (v40)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v59[3] >= 0.01)
        {
          v59[3] = Current;
          v57 = 0;
          (*(v24 + 2))(v24, &v57, 0.5);
          v30 = *(v63 + 24) | v57;
          *(v63 + 24) = v30;
          if (v30)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v67 = 487;
              v68 = 2080;
              v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_20;
          }
        }
      }

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_360;
      v41[3] = &unk_278887B78;
      v31 = v28;
      v42 = v31;
      v43 = v21;
      [v23 enumerateKeysAndObjectsUsingBlock:v41];
    }

    if (!v40 || (v32 = CFAbsoluteTimeGetCurrent(), v32 - v59[3] < 0.01) || (v59[3] = v32, v57 = 0, (*(v24 + 2))(v24, &v57, 1.0), v33 = *(v63 + 24) | v57, *(v63 + 24) = v33, (v33 & 1) == 0))
    {
      v11 = v21;
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v67 = 499;
      v68 = 2080;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_20:
    v11 = MEMORY[0x277CBEBF8];
LABEL_22:

    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v67 = 418;
    v68 = 2080;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_23:
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  return v11;
}

void __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CD9958] uuidFromLocalIdentifier:v6];
  if ([v7 intersectsSet:*(a1 + 32)])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if ([v7 intersectsSet:{*(a1 + 40), a4}])
  {
    v9 |= 4uLL;
  }

  if (([*(a1 + 48) momentRelationshipChangedForHighlightWithLocalIdentifier:v6] & 1) != 0 || objc_msgSend(*(a1 + 48), "highlightGroupRelationshipChangedForHighlightWithLocalIdentifier:", v6))
  {
    v9 |= 8uLL;
  }

  v10 = v9 | [*(a1 + 48) assetsOrDayGroupAssetsRelationshipChangedForHighlightWithLocalIdentifier:v6];
  if (([v7 intersectsSet:*(a1 + 56)] & 1) != 0 || (objc_msgSend(*(a1 + 48), "keyAssetPrivateOrDayGroupKeyAssetPrivateChangedForHighlightWithLocalIdentifier:", v6) & 1) != 0 || objc_msgSend(*(a1 + 48), "keyAssetSharedOrDayGroupKeyAssetSharedChangedForHighlightWithLocalIdentifier:", v6))
  {
    v10 |= 0x40uLL;
  }

  v26 = v6;
  if ([v7 intersectsSet:*(a1 + 64)])
  {
    v10 |= 0x10uLL;
  }

  if (v10)
  {
    v11 = [[PGGraphHighlightChange alloc] initWithHighlightUUID:v8 updateTypes:v10];
    [*(a1 + 72) addObject:v11];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [*(a1 + 80) objectForKeyedSubscript:v17];
        if (v18)
        {
          v19 = [*(a1 + 88) objectForKeyedSubscript:v8];
          if (!v19)
          {
            v19 = [MEMORY[0x277CCAB58] indexSet];
            [*(a1 + 88) setObject:v19 forKeyedSubscript:v8];
          }

          v20 = [v18 unsignedIntegerValue];
          [v19 addIndex:v20];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v21 = PGGraphChangeStringFromMomentUpdateType(v20);
            *buf = 138412802;
            v32 = v8;
            v33 = 2112;
            v34 = v17;
            v35 = 2112;
            v36 = v21;
            _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Highlight %@ updated %@, Need to update moment for updateType %@", buf, 0x20u);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v14);
  }

  if (*(a1 + 96))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v23 = *(*(a1 + 104) + 8);
    if (Current - *(v23 + 24) >= *(a1 + 120))
    {
      *(v23 + 24) = Current;
      buf[0] = 0;
      (*(*(a1 + 96) + 16))(0.5);
      *(*(*(a1 + 112) + 8) + 24) |= buf[0];
      if (*(*(*(a1 + 112) + 8) + 24) == 1)
      {
        *v25 = 1;
      }
    }
  }
}

void __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_360(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2;
        v12[3] = &unk_278889B40;
        v12[4] = v11;
        v13 = *(a1 + 40);
        [v5 enumerateIndexesUsingBlock:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

void __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[PGGraphMomentChange alloc] initWithMomentUUID:*(a1 + 32) updateTypes:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v12 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Batch Updates - Delete %ld highlights", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:identifiersCopy];
  v6 = [[PGGraphHighlightsDeletion alloc] initWithHighlightUUIDs:v5];
  v9 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];

  return v7;
}

- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v12 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Batch Updates - Insert %ld new highlights", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:identifiersCopy];
  v6 = [[PGGraphHighlightsInsertion alloc] initWithHighlightUUIDs:v5];
  v9 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];

  return v7;
}

@end