@interface PGGraphMomentTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block;
- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)highlightUpdateTypeByMomentProperty;
- (id)momentUpdateTypeByMomentProperty;
@end

@implementation PGGraphMomentTranslator

- (id)highlightUpdateTypeByMomentProperty
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"approximateLatitude";
  v4[1] = @"approximateLongitude";
  v5[0] = &unk_284484590;
  v5[1] = &unk_284484590;
  v4[2] = @"estimatedAssetCount";
  v5[2] = &unk_2844845A8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)momentUpdateTypeByMomentProperty
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"startDate";
  v4[1] = @"endDate";
  v5[0] = &unk_284484548;
  v5[1] = &unk_284484548;
  v4[2] = @"approximateLatitude";
  v4[3] = @"approximateLongitude";
  v5[2] = &unk_284484560;
  v5[3] = &unk_284484560;
  v4[4] = @"estimatedAssetCount";
  v5[4] = &unk_284484578;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  changeCopy = change;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  if (!v10 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v49[3] < 0.01) || (v49[3] = v11, v47 = 0, (*(v10 + 2))(v10, &v47, 0.0), v12 = *(v53 + 24) | v47, *(v53 + 24) = v12, (v12 & 1) == 0))
  {
    momentUpdateTypeByMomentProperty = [(PGGraphMomentTranslator *)self momentUpdateTypeByMomentProperty];
    highlightUpdateTypeByMomentProperty = [(PGGraphMomentTranslator *)self highlightUpdateTypeByMomentProperty];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
    v38[3] = &unk_278887B50;
    v38[4] = self;
    v18 = momentUpdateTypeByMomentProperty;
    v39 = v18;
    v19 = array;
    v40 = v19;
    v20 = highlightUpdateTypeByMomentProperty;
    v41 = v20;
    v21 = dictionary;
    v42 = v21;
    v22 = v10;
    v43 = v22;
    v44 = &v48;
    v45 = &v52;
    v46 = 0x3F847AE147AE147BLL;
    [identifierCopy enumerateKeysAndObjectsUsingBlock:v38];
    if (*(v53 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v57 = 341;
        v58 = 2080;
        v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v23 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v21 count])
      {
        photoLibrary = [(PGGraphEntityTranslator *)self photoLibrary];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

        allKeys = [v21 allKeys];
        v26 = [MEMORY[0x277CD9958] fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs:allKeys options:librarySpecificFetchOptions];
        if (v10)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v49[3] >= 0.01)
          {
            v49[3] = Current;
            v47 = 0;
            (*(v22 + 2))(v22, &v47, 0.5);
            v28 = *(v53 + 24) | v47;
            *(v53 + 24) = v28;
            if (v28)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v57 = 350;
                v58 = 2080;
                v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_11;
            }
          }
        }

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_331;
        v35[3] = &unk_278887B78;
        v29 = v26;
        v36 = v29;
        v37 = v19;
        [v21 enumerateKeysAndObjectsUsingBlock:v35];
      }

      if (!v10 || (v30 = CFAbsoluteTimeGetCurrent(), v30 - v49[3] < 0.01) || (v49[3] = v30, v47 = 0, (*(v22 + 2))(v22, &v47, 1.0), v31 = *(v53 + 24) | v47, *(v53 + 24) = v31, (v31 & 1) == 0))
      {
        v13 = v19;
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v57 = 364;
        v58 = 2080;
        v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v23 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

LABEL_11:
    v13 = MEMORY[0x277CBEBF8];
LABEL_26:

    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v57 = 292;
    v58 = 2080;
    v59 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_27:
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  return v13;
}

void __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [objc_opt_class() uuidFromLocalIdentifier:v7];
  v10 = v9;
  if (v9 && [v9 length])
  {
    v29 = a4;
    v30 = v8;
    v31 = v7;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [*(a1 + 40) objectForKeyedSubscript:v15];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 unsignedIntegerValue];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v23 = PGGraphChangeStringFromMomentUpdateType(v18);
              *buf = 138412802;
              v39 = v10;
              v40 = 2112;
              v41 = v15;
              v42 = 2112;
              v43 = v23;
              _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Moment Updated %@, Property changed %@, Need to trigger an %@", buf, 0x20u);
            }

            v19 = [[PGGraphMomentChange alloc] initWithMomentUUID:v10 updateTypes:v18];
            [*(a1 + 48) addObject:v19];
          }

          v20 = [*(a1 + 56) objectForKeyedSubscript:v15];
          if (v20)
          {
            v21 = [*(a1 + 64) objectForKeyedSubscript:v10];
            if (!v21)
            {
              v21 = [MEMORY[0x277CCAB58] indexSet];
              [*(a1 + 64) setObject:v21 forKeyedSubscript:v10];
            }

            v22 = [v20 unsignedIntegerValue];
            [v21 addIndex:v22];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v24 = PGGraphChangeStringFromHighlightUpdateType(v22);
              *buf = 138412802;
              v39 = v10;
              v40 = 2112;
              v41 = v15;
              v42 = 2112;
              v43 = v24;
              _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Moment %@ updated %@, Need to update highlight for updateType %@", buf, 0x20u);
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    v8 = v30;
    v7 = v31;
    if (*(a1 + 72))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v26 = *(*(a1 + 80) + 8);
      if (Current - *(v26 + 24) >= *(a1 + 96))
      {
        *(v26 + 24) = Current;
        buf[0] = 0;
        (*(*(a1 + 72) + 16))(0.5);
        *(*(*(a1 + 88) + 8) + 24) |= buf[0];
        if (*(*(*(a1 + 88) + 8) + 24) == 1)
        {
          *v29 = 1;
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = [objc_opt_class() entityClassName];
    *buf = 138413314;
    v39 = v10;
    v40 = 2112;
    v41 = v7;
    v42 = 2112;
    v43 = v27;
    v44 = 2112;
    v45 = v28;
    v46 = 2112;
    v47 = v8;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Moment updated but momentUUID is invalid (%@) for local identifier: %@, class: %@, entityClassName: %@, changedPropertyNames: %@", buf, 0x34u);
  }
}

void __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_331(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2;
    v8[3] = &unk_278889B40;
    v9 = v6;
    v10 = *(a1 + 40);
    [v5 enumerateIndexesUsingBlock:v8];
  }
}

void __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[PGGraphHighlightChange alloc] initWithHighlightUUID:*(a1 + 32) updateTypes:a2];
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
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Batch Updates - Delete %ld moments", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:identifiersCopy];
  v6 = [[PGGraphMomentsDeletion alloc] initWithMomentUUIDs:v5];
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
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Batch Updates - Insert %ld new moments", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:identifiersCopy];
  v6 = [[PGGraphMomentsInsertion alloc] initWithMomentUUIDs:v5];
  v9 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];

  return v7;
}

@end