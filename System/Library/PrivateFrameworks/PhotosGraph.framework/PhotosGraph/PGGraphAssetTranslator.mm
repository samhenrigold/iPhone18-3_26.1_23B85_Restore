@interface PGGraphAssetTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block;
- (id)highlightUpdateTypeByAssetProperty;
- (id)momentUpdateTypeByAssetProperty;
@end

@implementation PGGraphAssetTranslator

- (id)highlightUpdateTypeByAssetProperty
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"favorite";
  v4[1] = @"adjustmentTimestamp";
  v5[0] = &unk_284484530;
  v5[1] = &unk_284484530;
  v4[2] = @"analysisStateModificationDate";
  v5[2] = &unk_284484530;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)momentUpdateTypeByAssetProperty
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"favorite";
  v4[1] = @"adjustmentTimestamp";
  v5[0] = &unk_284484530;
  v5[1] = &unk_284484530;
  v4[2] = @"analysisStateModificationDate";
  v5[2] = &unk_284484530;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block
{
  v71 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  changeCopy = change;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  if (!v10 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v60[3] < 0.01) || (v60[3] = v11, v58 = 0, (*(v10 + 2))(v10, &v58, 0.0), v12 = *(v64 + 24) | v58, *(v64 + 24) = v12, (v12 & 1) == 0))
  {
    array = [MEMORY[0x277CBEB18] array];
    momentUpdateTypeByAssetProperty = [(PGGraphAssetTranslator *)self momentUpdateTypeByAssetProperty];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    highlightUpdateTypeByAssetProperty = [(PGGraphAssetTranslator *)self highlightUpdateTypeByAssetProperty];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
    v49[3] = &unk_278887B50;
    v49[4] = self;
    v18 = momentUpdateTypeByAssetProperty;
    v50 = v18;
    v19 = dictionary;
    v51 = v19;
    v20 = highlightUpdateTypeByAssetProperty;
    v52 = v20;
    v21 = dictionary2;
    v53 = v21;
    v22 = v10;
    v54 = v22;
    v55 = &v59;
    v56 = &v63;
    v57 = 0x3F847AE147AE147BLL;
    [identifierCopy enumerateKeysAndObjectsUsingBlock:v49];
    if (*(v64 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v68 = 197;
        v69 = 2080;
        v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v13 = MEMORY[0x277CBEBF8];
      goto LABEL_41;
    }

    photoLibrary = [(PGGraphEntityTranslator *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    if ([v19 count])
    {
      allKeys = [v19 allKeys];
      v25 = [MEMORY[0x277CD98F8] fetchMomentUUIDByAssetUUIDForAssetUUIDs:allKeys options:librarySpecificFetchOptions];
      if (v10)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v60[3] >= 0.01)
        {
          v60[3] = Current;
          v58 = 0;
          (*(v22 + 2))(v22, &v58, 0.5);
          v27 = *(v64 + 24) | v58;
          *(v64 + 24) = v27;
          if (v27)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v68 = 206;
              v69 = 2080;
              v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_38;
          }
        }
      }

      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_303;
      v46[3] = &unk_278887B78;
      v28 = v25;
      v47 = v28;
      v48 = array;
      [v19 enumerateKeysAndObjectsUsingBlock:v46];
    }

    if (v10 && (v29 = CFAbsoluteTimeGetCurrent(), v29 - v60[3] >= 0.01) && (v60[3] = v29, v58 = 0, (*(v22 + 2))(v22, &v58, 0.5), v30 = *(v64 + 24) | v58, *(v64 + 24) = v30, (v30 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v68 = 220;
        v69 = 2080;
        v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v31 = MEMORY[0x277D86220];
LABEL_37:
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v21 count])
      {
        allKeys2 = [v21 allKeys];
        v33 = [MEMORY[0x277CD9958] fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs:allKeys2 options:librarySpecificFetchOptions];
        if (v10)
        {
          v34 = CFAbsoluteTimeGetCurrent();
          if (v34 - v60[3] >= 0.01)
          {
            v60[3] = v34;
            v58 = 0;
            (*(v22 + 2))(v22, &v58, 0.5);
            v35 = *(v64 + 24) | v58;
            *(v64 + 24) = v35;
            if (v35)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v68 = 227;
                v69 = 2080;
                v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_38;
            }
          }
        }

        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_308;
        v43[3] = &unk_278887B78;
        v36 = v33;
        v44 = v36;
        v45 = array;
        [v21 enumerateKeysAndObjectsUsingBlock:v43];
      }

      if (!v10 || (v37 = CFAbsoluteTimeGetCurrent(), v37 - v60[3] < 0.01) || (v60[3] = v37, v58 = 0, (*(v22 + 2))(v22, &v58, 1.0), v38 = *(v64 + 24) | v58, *(v64 + 24) = v38, (v38 & 1) == 0))
      {
        v13 = array;
        goto LABEL_40;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v68 = 241;
        v69 = 2080;
        v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v31 = MEMORY[0x277D86220];
        goto LABEL_37;
      }
    }

LABEL_38:
    v13 = MEMORY[0x277CBEBF8];
LABEL_40:

LABEL_41:
    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v68 = 150;
    v69 = 2080;
    v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_42:
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

  return v13;
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v22 = v6;
  v8 = [objc_opt_class() uuidFromLocalIdentifier:v6];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [*(a1 + 40) objectForKeyedSubscript:v14];
        if (v15)
        {
          v16 = [*(a1 + 48) objectForKeyedSubscript:v8];
          if (!v16)
          {
            v16 = [MEMORY[0x277CCAB58] indexSet];
            [*(a1 + 48) setObject:v16 forKeyedSubscript:v8];
          }

          [v16 addIndex:{objc_msgSend(v15, "unsignedIntegerValue")}];
        }

        v17 = [*(a1 + 56) objectForKeyedSubscript:v14];
        if (v17)
        {
          v18 = [*(a1 + 64) objectForKeyedSubscript:v8];
          if (!v18)
          {
            v18 = [MEMORY[0x277CCAB58] indexSet];
            [*(a1 + 64) setObject:v18 forKeyedSubscript:v8];
          }

          [v18 addIndex:{objc_msgSend(v17, "unsignedIntegerValue")}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if (*(a1 + 72))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v20 = *(*(a1 + 80) + 8);
    if (Current - *(v20 + 24) >= *(a1 + 96))
    {
      *(v20 + 24) = Current;
      (*(*(a1 + 72) + 16))(0.5);
      *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_303(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2;
    v8[3] = &unk_278889B40;
    v9 = v6;
    v10 = *(a1 + 40);
    [v5 enumerateIndexesUsingBlock:v8];
  }
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_308(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2_309;
    v8[3] = &unk_278889B40;
    v9 = v6;
    v10 = *(a1 + 40);
    [v5 enumerateIndexesUsingBlock:v8];
  }
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2_309(uint64_t a1, uint64_t a2)
{
  v3 = [[PGGraphHighlightChange alloc] initWithHighlightUUID:*(a1 + 32) updateTypes:a2];
  [*(a1 + 40) addObject:v3];
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[PGGraphMomentChange alloc] initWithMomentUUID:*(a1 + 32) updateTypes:a2];
  [*(a1 + 40) addObject:v3];
}

@end