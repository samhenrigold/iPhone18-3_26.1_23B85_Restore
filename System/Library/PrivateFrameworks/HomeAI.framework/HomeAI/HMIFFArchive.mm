@interface HMIFFArchive
- (HMIFFArchive)initWithJSONPath:(id)path error:(id *)error;
- (NSArray)allPersons;
- (NSArray)homePersons;
- (NSArray)photosPersons;
- (id)faceCropsForPerson:(id)person;
- (id)sourceUUIDForPerson:(id)person;
@end

@implementation HMIFFArchive

- (HMIFFArchive)initWithJSONPath:(id)path error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v35.receiver = self;
  v35.super_class = HMIFFArchive;
  v7 = [(HMIFFArchive *)&v35 init];
  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v10 = [v8 dataWithContentsOfURL:?];

    if (v10)
    {
      v36 = objc_opt_class();
      v37 = objc_opt_class();
      v38 = objc_opt_class();
      v39 = objc_opt_class();
      v40 = objc_opt_class();
      v41 = objc_opt_class();
      v42 = objc_opt_class();
      v43 = objc_opt_class();
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v12 = MEMORY[0x277CCAAC8];
      v13 = [MEMORY[0x277CBEB98] setWithArray:?];
      v14 = [v12 unarchivedObjectOfClasses:? fromData:? error:?];
      v15 = 0;

      if (v14)
      {
        objc_storeStrong(&v7->_ffData, v14);
        ffData = [(HMIFFArchive *)v7 ffData];
        v17 = [ffData objectForKeyedSubscript:?];
        homePersonsAndFaceCrops = v7->_homePersonsAndFaceCrops;
        v7->_homePersonsAndFaceCrops = v17;

        ffData2 = [(HMIFFArchive *)v7 ffData];
        v20 = [ffData2 objectForKeyedSubscript:?];
        photosPersonsAndFaceCrops = v7->_photosPersonsAndFaceCrops;
        v7->_photosPersonsAndFaceCrops = v20;

        homePersonsAndFaceCrops = [(HMIFFArchive *)v7 homePersonsAndFaceCrops];

        if (homePersonsAndFaceCrops)
        {
          homePersonsAndFaceCrops2 = [(HMIFFArchive *)v7 homePersonsAndFaceCrops];
          photosPersonsAndFaceCrops = [(HMIFFArchive *)v7 photosPersonsAndFaceCrops];
          v25 = [homePersonsAndFaceCrops2 arrayByAddingObjectsFromArray:?];
          allPersonsAndFaceCrops = v7->_allPersonsAndFaceCrops;
          v7->_allPersonsAndFaceCrops = v25;
        }

        else
        {
          photosPersonsAndFaceCrops2 = [(HMIFFArchive *)v7 photosPersonsAndFaceCrops];
          v32 = v7->_allPersonsAndFaceCrops;
          v7->_allPersonsAndFaceCrops = photosPersonsAndFaceCrops2;
        }
      }

      else
      {
        if (error)
        {
          v30 = v15;
          *error = v15;
        }

        HMIErrorLogC(v15);
      }

      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v27 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:? description:?];
      v28 = v27;
      if (error)
      {
        v29 = v27;
        *error = v28;
      }

      HMIErrorLogC(v28);
    }

    v33 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v33 = v7;
LABEL_16:

  return v33;
}

- (NSArray)photosPersons
{
  photosPersonsAndFaceCrops = [(HMIFFArchive *)self photosPersonsAndFaceCrops];
  v3 = [photosPersonsAndFaceCrops na_map:?];

  return v3;
}

- (NSArray)homePersons
{
  homePersonsAndFaceCrops = [(HMIFFArchive *)self homePersonsAndFaceCrops];
  v3 = [homePersonsAndFaceCrops na_map:?];

  return v3;
}

- (NSArray)allPersons
{
  allPersonsAndFaceCrops = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v3 = [allPersonsAndFaceCrops na_map:?];

  return v3;
}

- (id)faceCropsForPerson:(id)person
{
  personCopy = person;
  allPersonsAndFaceCrops = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v10 = personCopy;
  v6 = personCopy;
  v7 = [allPersonsAndFaceCrops na_firstObjectPassingTest:?];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *__35__HMIFFArchive_faceCropsForPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:?];
  v4 = [v2 isEqual:?];

  return v4;
}

- (id)sourceUUIDForPerson:(id)person
{
  personCopy = person;
  allPersonsAndFaceCrops = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v10 = personCopy;
  v6 = personCopy;
  v7 = [allPersonsAndFaceCrops na_firstObjectPassingTest:?];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *__36__HMIFFArchive_sourceUUIDForPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:?];
  v4 = [v2 isEqual:?];

  return v4;
}

@end