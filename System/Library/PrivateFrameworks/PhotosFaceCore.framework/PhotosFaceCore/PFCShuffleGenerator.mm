@interface PFCShuffleGenerator
- (PFCShuffleGenerator)init;
- (PFCShuffleGenerator)initWithPhotoLibrary:(id)library targetShuffleSize:(int64_t)size;
- (id)baseSuggestionFetchOptionsWithSubtype:(unsigned __int16)subtype personLocalIdentifiers:(id)identifiers;
- (id)shuffleForNonPersonSubtypes:(id)subtypes requireMinimumShuffleCount:(BOOL)count;
- (id)shuffleForSubtype:(unsigned __int16)subtype persons:(id)persons requireMinimumShuffleCount:(BOOL)count;
- (id)shuffles;
- (void)generateShuffles;
- (void)generateShufflesV2;
@end

@implementation PFCShuffleGenerator

- (PFCShuffleGenerator)init
{
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
  v4 = [(PFCShuffleGenerator *)self initWithPhotoLibrary:mEMORY[0x1E69789A8] targetShuffleSize:64];

  return v4;
}

- (PFCShuffleGenerator)initWithPhotoLibrary:(id)library targetShuffleSize:(int64_t)size
{
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = PFCShuffleGenerator;
  v8 = [(PFCShuffleGenerator *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoLibrary, library);
    sizeCopy = 16;
    v9->_shuffleMinimumSuggestionRequired = 16;
    if (size > 0x10)
    {
      sizeCopy = size;
    }

    v9->_targetShuffleSize = sizeCopy;
    v11 = [[PFCShuffleDataSource alloc] initWithPhotoLibrary:v9->_photoLibrary];
    dataSource = v9->_dataSource;
    v9->_dataSource = v11;

    array = [MEMORY[0x1E695DF70] array];
    shuffles = v9->_shuffles;
    v9->_shuffles = array;

    [(PFCShuffleGenerator *)v9 generateShufflesV2];
  }

  return v9;
}

- (id)shuffles
{
  v2 = [(NSMutableArray *)self->_shuffles copy];

  return v2;
}

- (void)generateShufflesV2
{
  v59[1] = *MEMORY[0x1E69E9840];
  sortedTopAmbientPeople = [(PFCShuffleDataSource *)self->_dataSource sortedTopAmbientPeople];
  v4 = [sortedTopAmbientPeople mutableCopy];

  if ([v4 count] >= 2)
  {
    firstObject = [v4 firstObject];
    [v4 removeObjectAtIndex:0];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:firstObject];
    v7 = [(PFCShuffleGenerator *)self shuffleForSubtype:804 persons:v6 requireMinimumShuffleCount:1];
    if (v7)
    {
      v8 = pfc_shuffle_log([(NSMutableArray *)self->_shuffles addObject:v7]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v51 = firstObject;
        _os_log_impl(&dword_1DF9B6000, v8, OS_LOG_TYPE_INFO, "Did generate VIP shuffle for person: %@", buf, 0xCu);
      }
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  if ([&unk_1F5AEBE58 count])
  {
    v10 = 1;
    while (1)
    {
      v11 = [&unk_1F5AEBE58 objectAtIndex:v10 - 1];
      v12 = -[PFCShuffleDataSource numberOfSuggestionsForShuffleSubtype:persons:](self->_dataSource, "numberOfSuggestionsForShuffleSubtype:persons:", [v11 unsignedIntegerValue], 0);
      if (v12 >= 0x10)
      {
        break;
      }

LABEL_23:

      if (v10++ >= [&unk_1F5AEBE58 count])
      {
        goto LABEL_25;
      }
    }

    v13 = v12;
    if (v12 >= self->_targetShuffleSize)
    {
      v59[0] = v11;
      v18 = MEMORY[0x1E695DEC8];
      v19 = v59;
    }

    else
    {
      if (v10 < [&unk_1F5AEBE58 count])
      {
        v14 = [&unk_1F5AEBE58 objectAtIndex:v10];
        v15 = -[PFCShuffleDataSource numberOfSuggestionsForShuffleSubtype:persons:](self->_dataSource, "numberOfSuggestionsForShuffleSubtype:persons:", [v14 unsignedIntegerValue], 0);
        if (v15 > 0xF)
        {
          if (v15 + v13 >= self->_targetShuffleSize)
          {
            v56[0] = v11;
            v56[1] = v14;
            v16 = MEMORY[0x1E695DEC8];
            v17 = v56;
            v20 = 2;
            goto LABEL_21;
          }

          v55 = v11;
          v16 = MEMORY[0x1E695DEC8];
          v17 = &v55;
        }

        else
        {
          v57 = v11;
          v16 = MEMORY[0x1E695DEC8];
          v17 = &v57;
        }

        v20 = 1;
LABEL_21:
        v21 = [v16 arrayWithObjects:v17 count:v20];
        [array addObject:v21];

        goto LABEL_22;
      }

      v58 = v11;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v58;
    }

    v14 = [v18 arrayWithObjects:v19 count:1];
    [array addObject:v14];
LABEL_22:

    goto LABEL_23;
  }

LABEL_25:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = array;
  v24 = [v23 countByEnumeratingWithState:&v46 objects:v54 count:16];
  v25 = v23;
  if (!v24)
  {
    goto LABEL_50;
  }

  v26 = v24;
  v45 = v4;
  v27 = 0;
  cityscape = 0;
  nature = 0;
  pets = 0;
  v31 = *v47;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v47 != v31)
      {
        objc_enumerationMutation(v23);
      }

      v33 = [(PFCShuffleGenerator *)self shuffleForNonPersonSubtypes:*(*(&v46 + 1) + 8 * i) requireMinimumShuffleCount:1];
      if (v33)
      {
        [(NSMutableArray *)self->_shuffles addObject:v33];
        if (pets)
        {
          pets = 1;
          if ((nature & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_35:
          nature = 1;
        }

        else
        {
          pets = [v33 pets];
          if (nature)
          {
            goto LABEL_35;
          }

LABEL_33:
          nature = [v33 nature];
        }

        ++v27;
        if (cityscape)
        {
          cityscape = 1;
        }

        else
        {
          cityscape = [v33 cityscape];
        }
      }
    }

    v26 = [v23 countByEnumeratingWithState:&v46 objects:v54 count:16];
  }

  while (v26);

  v4 = v45;
  if (v27 >= 2)
  {
    v35 = [v45 count];
    v25 = [MEMORY[0x1E695DFD8] set];
    if ([v45 count])
    {
      if (v35 >= 5)
      {
        v36 = 5;
      }

      else
      {
        v36 = v35;
      }

      v37 = MEMORY[0x1E695DFD8];
      v38 = [v45 subarrayWithRange:{0, v36}];
      v39 = [v37 setWithArray:v38];

      v25 = v39;
    }

    v40 = [[PFCShuffle alloc] initWithPeople:v25 pets:pets & 1 nature:nature & 1 cityscape:cityscape & 1];
    v41 = pfc_shuffle_log([(NSMutableArray *)self->_shuffles insertObject:v40 atIndex:0]);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v40;
      _os_log_impl(&dword_1DF9B6000, v41, OS_LOG_TYPE_INFO, "[PFCShuffleGenerator]: Generated everything shuffle: %@", buf, 0xCu);
    }

LABEL_50:
  }

  v42 = pfc_shuffle_log(v34);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [(NSMutableArray *)self->_shuffles count];
    shuffles = self->_shuffles;
    *buf = 134218242;
    v51 = v43;
    v52 = 2112;
    v53 = shuffles;
    _os_log_impl(&dword_1DF9B6000, v42, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator]: Generated %ld shuffles\n%@", buf, 0x16u);
  }
}

- (void)generateShuffles
{
  v51 = *MEMORY[0x1E69E9840];
  topAmbientPeople = [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
  v4 = [topAmbientPeople count];

  if (v4 < 2)
  {
    v11 = 0;
  }

  else
  {
    v6 = pfc_shuffle_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      topAmbientPeople2 = [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
      *buf = 134217984;
      v47 = [topAmbientPeople2 count];
      _os_log_impl(&dword_1DF9B6000, v6, OS_LOG_TYPE_INFO, "Processing shuffle for %lu top people", buf, 0xCu);
    }

    topAmbientPeople3 = [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
    v9 = [(PFCShuffleGenerator *)self shuffleForSubtype:804 persons:topAmbientPeople3 requireMinimumShuffleCount:0];

    v11 = v9 != 0;
    if (v9)
    {
      v12 = pfc_shuffle_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v9;
        _os_log_impl(&dword_1DF9B6000, v12, OS_LOG_TYPE_INFO, "Did generate top people shuffle: %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_shuffles addObject:v9];
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  topAmbientPeople4 = [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
  v14 = [topAmbientPeople4 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v43;
    *&v15 = 138412290;
    v41 = v15;
    do
    {
      v18 = 0;
      do
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(topAmbientPeople4);
        }

        v19 = *(*(&v42 + 1) + 8 * v18);
        v20 = pfc_shuffle_log(v14);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = v41;
          v47 = v19;
          _os_log_impl(&dword_1DF9B6000, v20, OS_LOG_TYPE_INFO, "Processing shuffle for person id: %@", buf, 0xCu);
        }

        v21 = [MEMORY[0x1E695DFD8] setWithObject:v19];
        v22 = [(PFCShuffleGenerator *)self shuffleForSubtype:804 persons:v21 requireMinimumShuffleCount:1];
        v23 = v22;
        if (v22)
        {
          v24 = pfc_shuffle_log(v22);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = v41;
            v47 = v19;
            _os_log_impl(&dword_1DF9B6000, v24, OS_LOG_TYPE_INFO, "Did generate shuffle for person: %@", buf, 0xCu);
          }

          [(NSMutableArray *)self->_shuffles addObject:v23];
          v11 = 1;
        }

        ++v18;
      }

      while (v16 != v18);
      v14 = [topAmbientPeople4 countByEnumeratingWithState:&v42 objects:v50 count:16];
      v16 = v14;
    }

    while (v14);
  }

  v25 = [(PFCShuffleGenerator *)self shuffleForSubtype:803 persons:0 requireMinimumShuffleCount:1];
  v26 = v25;
  v27 = v11;
  if (v25)
  {
    v28 = pfc_shuffle_log(v25);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF9B6000, v28, OS_LOG_TYPE_INFO, "Did generate shuffle for pets", buf, 2u);
    }

    [(NSMutableArray *)self->_shuffles addObject:v26];
    if (v11)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }
  }

  v29 = [(PFCShuffleGenerator *)self shuffleForSubtype:801 persons:0 requireMinimumShuffleCount:1, v41];

  if (v29)
  {
    v31 = pfc_shuffle_log(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF9B6000, v31, OS_LOG_TYPE_INFO, "Did generate shuffle for nature", buf, 2u);
    }

    [(NSMutableArray *)self->_shuffles addObject:v29];
    ++v27;
  }

  v32 = [(PFCShuffleGenerator *)self shuffleForSubtype:802 persons:0 requireMinimumShuffleCount:1];

  if (v32)
  {
    v34 = pfc_shuffle_log(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF9B6000, v34, OS_LOG_TYPE_INFO, "Did generate shuffle for cities", buf, 2u);
    }

    v33 = [(NSMutableArray *)self->_shuffles addObject:v32];
    ++v27;
  }

  if (v27 >= 2)
  {
    v35 = pfc_shuffle_log(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF9B6000, v35, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator] producing consolidated shuffle as well", buf, 2u);
    }

    if (v11)
    {
      [(PFCShuffleDataSource *)self->_dataSource topAmbientPeople];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v36 = ;
    v37 = [[PFCShuffle alloc] initWithPeople:v36 pets:v26 != 0 nature:v29 != 0 cityscape:v32 != 0];
    [(NSMutableArray *)self->_shuffles insertObject:v37 atIndex:0];
  }

  v38 = pfc_shuffle_log(v33);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [(NSMutableArray *)self->_shuffles count];
    shuffles = self->_shuffles;
    *buf = 134218242;
    v47 = v39;
    v48 = 2112;
    v49 = shuffles;
    _os_log_impl(&dword_1DF9B6000, v38, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator]: Generated %ld shuffles\n%@", buf, 0x16u);
  }
}

- (id)shuffleForNonPersonSubtypes:(id)subtypes requireMinimumShuffleCount:(BOOL)count
{
  countCopy = count;
  v36 = *MEMORY[0x1E69E9840];
  subtypesCopy = subtypes;
  if (countCopy)
  {
    v7 = 16;
  }

  else
  {
    v7 = 1;
  }

  array = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = subtypesCopy;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v10)
  {
    v28 = 0;
    v27 = 0;
    goto LABEL_29;
  }

  v12 = v10;
  v28 = 0;
  v27 = 0;
  v13 = *v30;
  *&v11 = 138412290;
  v26 = v11;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(v9);
      }

      unsignedIntegerValue = [*(*(&v29 + 1) + 8 * i) unsignedIntegerValue];
      v16 = [(PFCShuffleDataSource *)self->_dataSource numberOfSuggestionsForShuffleSubtype:unsignedIntegerValue persons:0];
      v17 = PHSuggestionStringWithSubtype();
      v18 = [array addObject:v17];
      if (v16 < v7)
      {
        v20 = pfc_shuffle_log(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PFCShuffleGenerator shuffleForNonPersonSubtypes:v17 requireMinimumShuffleCount:v20];
        }

LABEL_27:
        v21 = 0;
        v22 = v9;
        goto LABEL_33;
      }

      if (unsignedIntegerValue > 802)
      {
        if (unsignedIntegerValue == 803)
        {
          v27 = 1;
          goto LABEL_21;
        }

        if (unsignedIntegerValue == 804)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (unsignedIntegerValue == 801)
        {
          LODWORD(v28) = 1;
          goto LABEL_21;
        }

        if (unsignedIntegerValue == 802)
        {
          HIDWORD(v28) = 1;
          goto LABEL_21;
        }
      }

      v19 = pfc_shuffle_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = v26;
        v34 = v17;
        _os_log_error_impl(&dword_1DF9B6000, v19, OS_LOG_TYPE_ERROR, "[PFCShuffleGenerator] bad shuffle subtype: %@", buf, 0xCu);
      }

LABEL_21:
    }

    v12 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v22 = [array componentsJoinedByString:{@", "}];
  v23 = pfc_shuffle_log(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v22;
    _os_log_impl(&dword_1DF9B6000, v23, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator] Generated shuffle for subtypes (%@)", buf, 0xCu);
  }

  if ((v27 | v28 | HIDWORD(v28)))
  {
    v24 = [PFCShuffle alloc];
    v17 = [MEMORY[0x1E695DFD8] set];
    v21 = [(PFCShuffle *)v24 initWithPeople:v17 pets:v27 & 1 nature:v28 & 1 cityscape:BYTE4(v28) & 1];
LABEL_33:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)shuffleForSubtype:(unsigned __int16)subtype persons:(id)persons requireMinimumShuffleCount:(BOOL)count
{
  countCopy = count;
  subtypeCopy = subtype;
  v29 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  v9 = PHSuggestionStringWithSubtype();
  v10 = pfc_shuffle_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = v9;
    v27 = 2112;
    v28 = personsCopy;
    _os_log_impl(&dword_1DF9B6000, v10, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator] Fetching suggestion with subtype (%@), personLocalIdentifiers %@", &v25, 0x16u);
  }

  if (countCopy)
  {
    v11 = 16;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(PFCShuffleDataSource *)self->_dataSource hasSuggestionsForShuffleSubtype:subtypeCopy persons:personsCopy minimumCount:v11];
  if ((v12 & 1) == 0)
  {
    v20 = pfc_shuffle_log(v12);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412546;
      v26 = v9;
      v27 = 2112;
      v28 = personsCopy;
      _os_log_impl(&dword_1DF9B6000, v20, OS_LOG_TYPE_DEFAULT, "[PFCShuffleGenerator] No suggestions for subtype (%@), personLocalIdentifiers %@", &v25, 0x16u);
    }

    goto LABEL_18;
  }

  if (subtypeCopy > 802)
  {
    if (subtypeCopy != 803)
    {
      if (subtypeCopy == 804)
      {
        v21 = [[PFCShuffle alloc] initWithPeople:personsCopy pets:0 nature:0 cityscape:0];
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    v23 = [PFCShuffle alloc];
    v14 = [MEMORY[0x1E695DFD8] set];
    v15 = v23;
    v16 = v14;
    v17 = 1;
    v18 = 0;
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  if (subtypeCopy == 801)
  {
    v22 = [PFCShuffle alloc];
    v14 = [MEMORY[0x1E695DFD8] set];
    v15 = v22;
    v16 = v14;
    v17 = 0;
    v18 = 1;
    goto LABEL_21;
  }

  if (subtypeCopy != 802)
  {
LABEL_16:
    v20 = pfc_shuffle_log(v12);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PFCShuffleGenerator shuffleForSubtype:v9 persons:v20 requireMinimumShuffleCount:?];
    }

LABEL_18:

    v21 = 0;
    goto LABEL_23;
  }

  v13 = [PFCShuffle alloc];
  v14 = [MEMORY[0x1E695DFD8] set];
  v15 = v13;
  v16 = v14;
  v17 = 0;
  v18 = 0;
  v19 = 1;
LABEL_22:
  v21 = [(PFCShuffle *)v15 initWithPeople:v16 pets:v17 nature:v18 cityscape:v19];

LABEL_23:

  return v21;
}

- (id)baseSuggestionFetchOptionsWithSubtype:(unsigned __int16)subtype personLocalIdentifiers:(id)identifiers
{
  subtypeCopy = subtype;
  v20[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v20[0] = v8;
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v20[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v10];

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v19[0] = v12;
  subtypeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", subtypeCopy];
  v19[1] = subtypeCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v11 initWithArray:v14];

  if (identifiersCopy)
  {
    identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"context", identifiersCopy];
    [v15 addObject:identifiersCopy];
  }

  v17 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v15];
  [librarySpecificFetchOptions setPredicate:v17];

  return librarySpecificFetchOptions;
}

- (void)shuffleForNonPersonSubtypes:(uint64_t)a1 requireMinimumShuffleCount:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF9B6000, a2, OS_LOG_TYPE_ERROR, "[PFCShuffleGenerator] Not enough suggestions for subtype (%@)", &v2, 0xCu);
}

- (void)shuffleForSubtype:(uint64_t)a1 persons:(NSObject *)a2 requireMinimumShuffleCount:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF9B6000, a2, OS_LOG_TYPE_ERROR, "[PFCShuffleGenerator] bad shuffle subtype: %@", &v2, 0xCu);
}

@end