@interface PGGraphPersonTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block;
- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)personNodePropertyKeysFromPHPersonPropertyKeys:(id)keys;
- (id)personTypeProperties;
- (id)stateUpdateProperties;
- (id)verifiedTypeProperties;
@end

@implementation PGGraphPersonTranslator

- (id)personNodePropertyKeysFromPHPersonPropertyKeys:(id)keys
{
  v17 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = keysCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 isEqualToString:{@"name", v12}] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"displayName"))
        {
          [v4 addObject:@"name"];
        }

        if ([v10 isEqualToString:@"type"])
        {
          [v4 addObject:@"fav"];
        }

        if ([v10 isEqualToString:@"personUri"])
        {
          [v4 addObject:@"cnid"];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)personTypeProperties
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)verifiedTypeProperties
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"verifiedType";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)stateUpdateProperties
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"name";
  v6[1] = @"displayName";
  v6[2] = @"personUri";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block
{
  v104[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  changeCopy = change;
  blockCopy = block;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v65 = _Block_copy(blockCopy);
  if (!v65 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v91[3] < 0.01) || (v91[3] = v8, LOBYTE(v104[0]) = 0, (*(v65 + 2))(v65, v104, 0.0), v9 = *(v95 + 24) | LOBYTE(v104[0]), *(v95 + 24) = v9, (v9 & 1) == 0))
  {
    verifiedTypeProperties = [(PGGraphPersonTranslator *)self verifiedTypeProperties];
    stateUpdateProperties = [(PGGraphPersonTranslator *)self stateUpdateProperties];
    personTypeProperties = [(PGGraphPersonTranslator *)self personTypeProperties];
    selfCopy = self;
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    array = [MEMORY[0x277CBEB18] array];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
    v78[3] = &unk_278887BC8;
    v56 = verifiedTypeProperties;
    v79 = v56;
    v61 = v14;
    v80 = v61;
    v58 = personTypeProperties;
    v81 = v58;
    selfCopy2 = self;
    v63 = v16;
    v83 = v63;
    v57 = stateUpdateProperties;
    v84 = v57;
    v18 = array;
    v85 = v18;
    v54 = v65;
    v86 = v54;
    v87 = &v90;
    v88 = &v94;
    v89 = 0x3F847AE147AE147BLL;
    [identifierCopy enumerateKeysAndObjectsUsingBlock:v78];
    if (*(v95 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 623;
        LOWORD(v101) = 2080;
        *(&v101 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v19 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v63 count])
      {
        v20 = MEMORY[0x277CBEB58];
        allKeys = [v63 allKeys];
        v22 = [v20 setWithArray:allKeys];

        photoLibrary = [(PGGraphEntityTranslator *)self photoLibrary];
        v24 = v22;
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
        v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"localIdentifier", v24];

        [librarySpecificFetchOptions setPredicate:v26];
        [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844863D8];
        v27 = *MEMORY[0x277CD9C58];
        *buf = *MEMORY[0x277CD9C60];
        *&v101 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:2];
        [librarySpecificFetchOptions setFetchPropertySets:v28];

        v29 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];

        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_396;
        v74[3] = &unk_278887BF0;
        v75 = v18;
        v76 = v15;
        v77 = v63;
        [v29 enumerateObjectsUsingBlock:v74];
      }

      if ([v61 count])
      {
        photoLibrary2 = [(PGGraphEntityTranslator *)self photoLibrary];
        v55 = v61;
        librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];
        v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier IN %@ AND verifiedType = %d", v55, -2];

        [librarySpecificFetchOptions2 setPredicate:v32];
        [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_2844863F0];
        v104[0] = *MEMORY[0x277CD9C60];
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:1];
        [librarySpecificFetchOptions2 setFetchPropertySets:v33];

        v34 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions2];
        v35 = [MEMORY[0x277CBEB58] set];
        *buf = MEMORY[0x277D85DD0];
        *&v101 = 3221225472;
        *(&v101 + 1) = __tombstonedLocalIdentifiersFrom_block_invoke;
        v102 = &unk_278887C60;
        v36 = v35;
        v103 = v36;
        [v34 enumerateObjectsUsingBlock:buf];

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v37 = v36;
        v38 = [v37 countByEnumeratingWithState:&v70 objects:v99 count:16];
        if (v38)
        {
          v39 = *v71;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v71 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v41 = *(*(&v70 + 1) + 8 * i);
              v42 = [PGGraphPersonsDeletion alloc];
              v43 = [MEMORY[0x277CBEB98] setWithObject:v41];
              v44 = [(PGGraphPersonsDeletion *)v42 initWithPersonLocalIdentifiers:v43];

              [v18 addObject:v44];
            }

            v38 = [v37 countByEnumeratingWithState:&v70 objects:v99 count:16];
          }

          while (v38);
        }

        [v55 minusSet:v37];
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v45 = v55;
        v46 = [v45 countByEnumeratingWithState:&v66 objects:v98 count:16];
        if (v46)
        {
          v47 = *v67;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v67 != v47)
              {
                objc_enumerationMutation(v45);
              }

              [v15 addObject:*(*(&v66 + 1) + 8 * j)];
            }

            v46 = [v45 countByEnumeratingWithState:&v66 objects:v98 count:16];
          }

          while (v46);
        }
      }

      if ([v15 count])
      {
        photoLibrary3 = [(PGGraphEntityTranslator *)selfCopy photoLibrary];
        v50 = momentChangesForLocalIdentifiers(v15, photoLibrary3, &__block_literal_global_60300);

        [v18 addObjectsFromArray:v50];
      }

      if (!v65 || (Current = CFAbsoluteTimeGetCurrent(), Current - v91[3] < 0.01) || (v91[3] = Current, LOBYTE(v104[0]) = 0, (*(v54 + 2))(v54, v104, 1.0), v52 = *(v95 + 24) | LOBYTE(v104[0]), *(v95 + 24) = v52, (v52 & 1) == 0))
      {
        v10 = v18;
        goto LABEL_38;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 693;
        LOWORD(v101) = 2080;
        *(&v101 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v19 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    v10 = MEMORY[0x277CBEBF8];
LABEL_38:

    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 574;
    LOWORD(v101) = 2080;
    *(&v101 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_39:
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v94, 8);

  return v10;
}

void __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([v8 intersectsSet:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v7];
  }

  if ([v8 intersectsSet:*(a1 + 48)])
  {
    v9 = [*(a1 + 56) personNodePropertyKeysFromPHPersonPropertyKeys:v8];
    [*(a1 + 64) setObject:v9 forKeyedSubscript:v7];
LABEL_7:

    goto LABEL_8;
  }

  if ([v8 intersectsSet:*(a1 + 72)])
  {
    v9 = [*(a1 + 56) personNodePropertyKeysFromPHPersonPropertyKeys:v8];
    v10 = [[PGGraphPersonChange alloc] initWithPersonLocalIdentifier:v7 propertyNames:v9];
    [*(a1 + 80) addObject:v10];

    goto LABEL_7;
  }

LABEL_8:
  if (*(a1 + 88))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = *(*(a1 + 96) + 8);
    if (Current - *(v12 + 24) >= *(a1 + 112))
    {
      *(v12 + 24) = Current;
      (*(*(a1 + 88) + 16))(0.5);
      *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24);
      if (*(*(*(a1 + 104) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }
}

void __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_396(id *a1, void *a2)
{
  v3 = a2;
  v9 = [v3 localIdentifier];
  v4 = [v3 type];

  if (v4 >= 2)
  {
    if (v4 != -1)
    {
      goto LABEL_6;
    }

    v7 = [PGGraphPersonsDeletion alloc];
    v8 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v5 = [(PGGraphPersonsDeletion *)v7 initWithPersonLocalIdentifiers:v8];

    [a1[4] addObject:v5];
  }

  else
  {
    [a1[5] addObject:v9];
    v5 = [a1[6] objectForKeyedSubscript:v9];
    v6 = [[PGGraphPersonChange alloc] initWithPersonLocalIdentifier:v9 propertyNames:v5];
    [a1[4] addObject:v6];
  }

LABEL_6:
}

id __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CD98F8];
  v5 = a3;
  v6 = [a2 allObjects];
  v7 = [v4 fetchMomentsForPersonsWithLocalIdentifiers:v6 options:v5];

  return v7;
}

- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v11 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Delete %ld persons", buf, 0xCu);
  }

  v5 = [[PGGraphPersonsDeletion alloc] initWithPersonLocalIdentifiers:identifiersCopy];
  v8 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];

  return v6;
}

@end