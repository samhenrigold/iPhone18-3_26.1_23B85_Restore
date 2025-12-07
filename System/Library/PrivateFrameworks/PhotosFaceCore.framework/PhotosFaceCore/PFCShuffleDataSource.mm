@interface PFCShuffleDataSource
- (BOOL)hasSuggestions;
- (BOOL)hasSuggestionsForShuffleSubtype:(unsigned __int16)subtype persons:(id)persons minimumCount:(int64_t)count;
- (BOOL)hasSuggestionsForSubtype:(unsigned __int16)subtype;
- (PFCShuffleDataSource)initWithPhotoLibrary:(id)library;
- (id)baseSuggestionFetchOptionsWithSubtype:(unsigned __int16)subtype personLocalIdentifiers:(id)identifiers;
- (id)fetchPersonLocalIdentifiersForSuggestionSubtype:(unsigned __int16)subtype photoLibrary:(id)library;
- (unint64_t)numberOfSuggestionsForShuffleSubtype:(unsigned __int16)subtype persons:(id)persons;
- (unint64_t)numberOfSuggestionsForTopPerson:(id)person;
- (void)calculateAvailableShuffles;
- (void)calculatePeople;
- (void)calculatePeopleCount;
@end

@implementation PFCShuffleDataSource

- (PFCShuffleDataSource)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PFCShuffleDataSource;
  v6 = [(PFCShuffleDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    [(PFCShuffleDataSource *)v7 calculateAvailableShuffles];
  }

  return v7;
}

- (BOOL)hasSuggestionsForSubtype:(unsigned __int16)subtype
{
  subtypeCopy = subtype;
  v5 = PHSuggestionStringWithSubtype();
  v6 = v5;
  if (subtypeCopy > 802)
  {
    if (subtypeCopy == 803)
    {
      hasPets = [(PFCShuffleDataSource *)self hasPets];
      goto LABEL_13;
    }

    if (subtypeCopy == 804)
    {
      hasPets = [(PFCShuffleDataSource *)self hasPeople];
      goto LABEL_13;
    }
  }

  else
  {
    if (subtypeCopy == 801)
    {
      hasPets = [(PFCShuffleDataSource *)self hasNature];
      goto LABEL_13;
    }

    if (subtypeCopy == 802)
    {
      hasPets = [(PFCShuffleDataSource *)self hasCityscape];
LABEL_13:
      v9 = hasPets;
      goto LABEL_14;
    }
  }

  v8 = pfc_shuffle_log(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(PFCShuffleDataSource *)v6 hasSuggestionsForSubtype:v8];
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (unint64_t)numberOfSuggestionsForTopPerson:(id)person
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:person];
  v5 = [(PFCShuffleDataSource *)self numberOfSuggestionsForShuffleSubtype:602 persons:v4];

  return v5;
}

- (unint64_t)numberOfSuggestionsForShuffleSubtype:(unsigned __int16)subtype persons:(id)persons
{
  subtypeCopy = subtype;
  v19 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  v7 = [(PFCShuffleDataSource *)self baseSuggestionFetchOptionsWithSubtype:subtypeCopy personLocalIdentifiers:personsCopy];
  v8 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v7];
  v9 = PHSuggestionStringWithSubtype();
  v10 = pfc_shuffle_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218498;
    v14 = [v8 count];
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = personsCopy;
    _os_log_impl(&dword_1DF9B6000, v10, OS_LOG_TYPE_DEFAULT, "[PFCShuffleDataSource] Fetched (%lu) suggestions with subtype (%@), personLocalIdentifiers %@", &v13, 0x20u);
  }

  v11 = [v8 count];
  return v11;
}

- (BOOL)hasSuggestionsForShuffleSubtype:(unsigned __int16)subtype persons:(id)persons minimumCount:(int64_t)count
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [PFCShuffleDataSource numberOfSuggestionsForShuffleSubtype:"numberOfSuggestionsForShuffleSubtype:persons:" persons:?];
  v7 = PHSuggestionStringWithSubtype();
  v8 = v7;
  if (v6 < count)
  {
    v9 = pfc_shuffle_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218754;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      v15 = 2048;
      countCopy = count;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1DF9B6000, v9, OS_LOG_TYPE_DEFAULT, "[PFCShuffleDataSource] Found %lu %@ suggestions, required %lu, skipping creating shuffle descriptor for %@", &v11, 0x2Au);
    }
  }

  return v6 >= count;
}

- (void)calculateAvailableShuffles
{
  self->_numberOfNatureSuggestions = [(PFCShuffleDataSource *)self numberOfSuggestionsForShuffleSubtype:801 persons:0];
  self->_numberOfPetSuggestions = [(PFCShuffleDataSource *)self numberOfSuggestionsForShuffleSubtype:803 persons:0];
  self->_numberOfCityscapeSuggestions = [(PFCShuffleDataSource *)self numberOfSuggestionsForShuffleSubtype:802 persons:0];

  [(PFCShuffleDataSource *)self calculatePeople];
}

- (void)calculatePeople
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:self->_photoLibrary];
  personUUIDsWithNegativeFeedback = [v3 personUUIDsWithNegativeFeedback];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = personUUIDsWithNegativeFeedback;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E6978980] localIdentifierWithUUID:{*(*(&v26 + 1) + 8 * v10), v26}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x1E695DFA8];
  v13 = [(PFCShuffleDataSource *)self fetchPersonLocalIdentifiersForSuggestionSubtype:804 photoLibrary:self->_photoLibrary];
  v14 = [v12 setWithSet:v13];

  [v14 minusSet:v5];
  v15 = [v14 copy];
  ambientPeople = self->_ambientPeople;
  self->_ambientPeople = v15;

  v17 = MEMORY[0x1E695DFA8];
  v18 = [(PFCShuffleDataSource *)self fetchPersonLocalIdentifiersForSuggestionSubtype:602 photoLibrary:self->_photoLibrary];
  v19 = [v17 setWithSet:v18];

  [v19 intersectSet:v14];
  v20 = [v19 copy];
  topAmbientPeople = self->_topAmbientPeople;
  self->_topAmbientPeople = v20;

  v22 = [(NSSet *)self->_ambientPeople count];
  self->_numberOfPeopleSuggestions = v22;
  v23 = pfc_shuffle_log(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(NSSet *)self->_ambientPeople count];
    v25 = [(NSSet *)self->_topAmbientPeople count];
    *buf = 134218240;
    v31 = v24;
    v32 = 2048;
    v33 = v25;
    _os_log_impl(&dword_1DF9B6000, v23, OS_LOG_TYPE_DEFAULT, "[PFCShuffleDataSource] Found %td ambient people, %td VIPs", buf, 0x16u);
  }

  [(PFCShuffleDataSource *)self calculatePeopleCount];
}

- (void)calculatePeopleCount
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_topAmbientPeople;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFCShuffleDataSource numberOfSuggestionsForTopPerson:](self, "numberOfSuggestionsForTopPerson:", v9, v13)}];
        [dictionary setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [dictionary keysSortedByValueUsingComparator:&__block_literal_global];
  sortedTopAmbientPeople = self->_sortedTopAmbientPeople;
  self->_sortedTopAmbientPeople = v11;
}

- (BOOL)hasSuggestions
{
  if ([(PFCShuffleDataSource *)self hasPeople]|| [(PFCShuffleDataSource *)self hasPets]|| [(PFCShuffleDataSource *)self hasNature])
  {
    return 1;
  }

  return [(PFCShuffleDataSource *)self hasCityscape];
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

- (id)fetchPersonLocalIdentifiersForSuggestionSubtype:(unsigned __int16)subtype photoLibrary:(id)library
{
  subtypeCopy = subtype;
  v25[2] = *MEMORY[0x1E69E9840];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v6 = MEMORY[0x1E696AB28];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v25[0] = v7;
  subtypeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"subtype", subtypeCopy];
  v25[1] = subtypeCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];
  [librarySpecificFetchOptions setPredicate:v10];

  v11 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        context = [*(*(&v20 + 1) + 8 * i) context];
        if (context)
        {
          [v12 addObject:context];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v12;
}

- (void)hasSuggestionsForSubtype:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF9B6000, a2, OS_LOG_TYPE_ERROR, "[PFCShuffleDataSource] bad shuffle subtype: %@", &v2, 0xCu);
}

@end