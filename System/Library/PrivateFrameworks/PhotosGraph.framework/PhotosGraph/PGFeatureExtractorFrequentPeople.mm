@interface PGFeatureExtractorFrequentPeople
- (PGFeatureExtractorFrequentPeople)initWithNumberOfFrequentPeopleToExtract:(unint64_t)extract;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorFrequentPeople

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v45[2] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  photoLibrary = [entityCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceCount" ascending:0];
  v45[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v45[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v10];

  [librarySpecificFetchOptions setFetchLimit:{-[PGFeatureExtractorFrequentPeople numberOfFrequentPeopleToExtract](self, "numberOfFrequentPeopleToExtract")}];
  frequencySortedPersons = [(PGFeatureExtractorFrequentPeople *)self frequencySortedPersons];
  v12 = [frequencySortedPersons count];

  if (!v12)
  {
    v13 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];
    [(PGFeatureExtractorFrequentPeople *)self setFrequencySortedPersons:v13];
  }

  v34 = entityCopy;
  v14 = [MEMORY[0x277CD9938] fetchPersonsInAsset:entityCopy options:{librarySpecificFetchOptions, librarySpecificFetchOptions}];
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        uuid = [*(*(&v39 + 1) + 8 * i) uuid];
        [v15 addObject:uuid];
      }

      v18 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v18);
  }

  v22 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorFrequentPeople numberOfFrequentPeopleToExtract](self, "numberOfFrequentPeopleToExtract")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  frequencySortedPersons2 = [(PGFeatureExtractorFrequentPeople *)self frequencySortedPersons];
  v24 = [frequencySortedPersons2 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v36;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(frequencySortedPersons2);
        }

        uuid2 = [*(*(&v35 + 1) + 8 * j) uuid];
        v30 = [v15 containsObject:uuid2];

        if (v30)
        {
          LODWORD(v31) = 1.0;
          [v22 setFloat:v26 atIndex:v31];
        }

        ++v26;
      }

      v25 = [frequencySortedPersons2 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v25);
  }

  return v22;
}

- (id)featureNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(PGFeatureExtractorFrequentPeople *)self numberOfFrequentPeopleToExtract])
  {
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", @"FREQ_PERSON", v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(PGFeatureExtractorFrequentPeople *)self numberOfFrequentPeopleToExtract]);
  }

  return v3;
}

- (PGFeatureExtractorFrequentPeople)initWithNumberOfFrequentPeopleToExtract:(unint64_t)extract
{
  v8.receiver = self;
  v8.super_class = PGFeatureExtractorFrequentPeople;
  v4 = [(PGFeatureExtractorFrequentPeople *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_numberOfFrequentPeopleToExtract = extract;
    frequencySortedPersons = v4->_frequencySortedPersons;
    v4->_frequencySortedPersons = 0;
  }

  return v5;
}

@end