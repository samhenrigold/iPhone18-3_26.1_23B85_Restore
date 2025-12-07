@interface AMDatabase
+ (BOOL)checkDatabaseReadAccess:(id *)access;
+ (BOOL)openDatabase:(id *)database;
+ (BOOL)openDatabaseWithAcousticParameterFilter:(unint64_t)filter error:(id *)error;
+ (id)acousticParameters:(id)parameters forMaterialName:(id)name error:(id *)error;
+ (id)acousticParameters:(id)parameters forSemanticLabels:(id)labels error:(id *)error;
+ (id)labelsForSemanticType:(id)type error:(id *)error;
+ (id)materialNamesForAcousticParameterType:(id)type error:(id *)error;
@end

@implementation AMDatabase

+ (BOOL)openDatabase:(id *)database
{
  if (_dbPtr)
  {
    DBIOCloseDatabase(&_dbPtr, database);
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  resourcePath = [v5 resourcePath];
  v7 = [resourcePath stringByAppendingPathComponent:@"AMDatabase.db"];

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v9 = DBIOOpenDatabaseFromURL(v8, database);
  _dbPtr = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = DBIODatabaseValidatedWithoutError(v9, database);
  if ((v10 & 1) == 0)
  {
    DBIOCloseDatabase(&_dbPtr, database);
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v11 = AbsorptionTable::get(v10);
  materialCachedTable<AMAbsorption>::readTable(v11, database);
  v13 = ScatteringTable::get(v12);
  materialCachedTable<AMScattering>::readTable(v13, database);
  v15 = SoundReductionTable::get(v14);
  materialCachedTable<AMSoundReductionIndex>::readTable(v15, database);
  v16 = SemanticsTableCached;
  if (!SemanticsTableCached)
  {
    v17 = objc_alloc_init(SemanticsTable);
    v18 = SemanticsTableCached;
    SemanticsTableCached = v17;

    v16 = SemanticsTableCached;
  }

  [v16 readTable:database];
  _parameterFilter = 0;
  *&v19 = 255;
  *(&v19 + 1) = 255;
  v22 = v19;
  v23 = 0xFFFFLL;
  _defaultMaterial = [SemanticsTableCached getMaterialsForPair:&v22];
  v20 = 1;
LABEL_10:

  return v20;
}

+ (BOOL)openDatabaseWithAcousticParameterFilter:(unint64_t)filter error:(id *)error
{
  v5 = [AMDatabase openDatabase:error];
  v6 = v5;
  if (v5)
  {
    if (filter - 1 <= 2)
    {
      v7 = *(&off_278BFE2D8 + filter - 1);
      v8 = AbsorptionTable::get(v5);
      materialCachedTable<AMAbsorption>::applyAbsFilter(v8, v7);
    }

    _parameterFilter = filter;
  }

  return v6;
}

+ (BOOL)checkDatabaseReadAccess:(id *)access
{
  result = 1;
  if (!_dbPtr)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults objectForKey:@"com.apple.acousticmaterials.parameterfilter"];

    if (v4 && [v4 unsignedIntValue] <= 7)
    {
      unsignedIntValue = [v4 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 1;
    }

    _parameterFilter = unsignedIntValue;
    v6 = [AMDatabase openDatabaseWithAcousticParameterFilter:"openDatabaseWithAcousticParameterFilter:error:" error:?];

    if (!v6)
    {
      return 0;
    }
  }

  return result;
}

+ (id)materialNamesForAcousticParameterType:(id)type error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([AMDatabase checkDatabaseReadAccess:error])
  {
    v6 = [typeCopy isEqualToString:@"acoustic absorption"];
    if (v6)
    {
      v7 = AbsorptionTable::get(v6);
      v8 = materialCachedTable<AMAbsorption>::materialNames(v7);
      goto LABEL_8;
    }

    v9 = [typeCopy isEqualToString:@"acoustic scattering"];
    if (v9)
    {
      v10 = ScatteringTable::get(v9);
      v8 = materialCachedTable<AMScattering>::materialNames(v10);
      goto LABEL_8;
    }

    v11 = [typeCopy isEqualToString:@"acoustic sound reduction index"];
    if (v11)
    {
      v12 = SoundReductionTable::get(v11);
      v8 = materialCachedTable<AMSoundReductionIndex>::materialNames(v12);
LABEL_8:
      v13 = v8;
      if (!error)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  v13 = 0;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v13)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Materials for %@ don't exist in the database.", typeCopy, *MEMORY[0x277CCA450]];
    v19[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v14 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v16];
  }

LABEL_13:

  return v13;
}

+ (id)labelsForSemanticType:(id)type error:(id *)error
{
  typeCopy = type;
  if ([AMDatabase checkDatabaseReadAccess:error])
  {
    v6 = [SemanticsTableCached labelsForSemanticType:typeCopy error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)acousticParameters:(id)parameters forMaterialName:(id)name error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  nameCopy = name;
  if (![AMDatabase checkDatabaseReadAccess:error])
  {
    error = 0;
    goto LABEL_16;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [parametersCopy isEqualToString:@"acoustic absorption"];
  if (v10)
  {
    v11 = AbsorptionTable::get(v10);
    v12 = materialCachedTable<AMAbsorption>::getMaterial(v11, nameCopy, error);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    error = 0;
    goto LABEL_15;
  }

  v13 = [parametersCopy isEqualToString:@"acoustic scattering"];
  if (v13)
  {
    v14 = ScatteringTable::get(v13);
    v12 = materialCachedTable<AMScattering>::getMaterial(v14, nameCopy, error);
    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v15 = [parametersCopy isEqualToString:@"acoustic sound reduction index"];
  if (!v15)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown acoustic parameter type [%@]", parametersCopy, *MEMORY[0x277CCA450]];
    v22[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    *error = [v17 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v19];

    goto LABEL_14;
  }

  v16 = SoundReductionTable::get(v15);
  v12 = materialCachedTable<AMSoundReductionIndex>::getMaterial(v16, nameCopy, error);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  [v9 setObject:v12 forKey:parametersCopy];

  error = [v9 copy];
LABEL_15:

LABEL_16:

  return error;
}

+ (id)acousticParameters:(id)parameters forSemanticLabels:(id)labels error:(id *)error
{
  v67[1] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  labelsCopy = labels;
  if (!parametersCopy || !labelsCopy || ![parametersCopy count] || !objc_msgSend(labelsCopy, "count"))
  {
    if (!error)
    {
      goto LABEL_13;
    }

    v22 = MEMORY[0x277CCA9B8];
    v66 = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"At least one query input (parameterTypes, semanticQuery) was empty."];
    v67[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    *error = [v22 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v24];

    goto LABEL_12;
  }

  if (![AMDatabase checkDatabaseReadAccess:error])
  {
    goto LABEL_8;
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:parametersCopy];
  v8 = MEMORY[0x277CBEB98];
  v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"acoustic absorption", @"acoustic scattering", @"acoustic sound reduction index", 0}];
  v10 = [v8 setWithArray:v9];
  v11 = [v7 isSubsetOfSet:v10];

  if ((v11 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_13;
    }

    v26 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"At least one requested acoustic parameter type not found in database."];
    v65 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    *error = [v26 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v28];

    goto LABEL_12;
  }

  v12 = MEMORY[0x277CBEB98];
  allKeys = [labelsCopy allKeys];
  v14 = [v12 setWithArray:allKeys];
  v15 = MEMORY[0x277CBEB98];
  v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"visual material", @"ARMeshMaterial", @"object", @"ARMeshClassification", 0}];
  v17 = [v15 setWithArray:v16];
  v18 = [v14 isSubsetOfSet:v17];

  if ((v18 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_13;
    }

    v49 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA450];
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"At least one requested semantic type not found in database."];
    v63 = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    *error = [v49 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v51];

LABEL_12:
    error = 0;
    goto LABEL_13;
  }

LABEL_8:
  longValue = 255;
  v19 = [labelsCopy objectForKey:@"visual material"];

  if (v19)
  {
    v20 = SemanticsTableCached;
    v21 = [labelsCopy objectForKey:@"visual material"];
    [v20 getARMeshMaterialID:v21 ARMeshMaterialID:&longValue];
  }

  else
  {
    v29 = [labelsCopy objectForKey:@"ARMeshMaterial"];

    if (v29)
    {
      v30 = [labelsCopy objectForKey:@"ARMeshMaterial"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        longValue = [v30 longValue];
      }
    }
  }

  longValue2 = 255;
  v31 = [labelsCopy objectForKey:@"object"];
  v32 = v31 == 0;

  if (!v32)
  {
    v33 = SemanticsTableCached;
    v34 = [labelsCopy objectForKey:@"object"];
    [v33 getARMeshClassificationID:v34 ARMeshClassificationID:&longValue2];
LABEL_24:

    goto LABEL_25;
  }

  v47 = [labelsCopy objectForKey:@"ARMeshClassification"];
  v48 = v47 == 0;

  if (!v48)
  {
    v34 = [labelsCopy objectForKey:@"ARMeshClassification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      longValue2 = [v34 longValue];
    }

    goto LABEL_24;
  }

LABEL_25:
  v58[0] = longValue;
  v58[1] = longValue2;
  if (longValue >= longValue2)
  {
    v35 = longValue + longValue * longValue + longValue2;
  }

  else
  {
    v35 = longValue + longValue2 * longValue2;
  }

  v58[2] = v35;
  error = [SemanticsTableCached getMaterialsForPair:v58];
  if (error)
  {
    v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v37 = parametersCopy;
    v38 = [v37 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v38)
    {
      v39 = *v55;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v54 + 1) + 8 * i);
          v42 = [v41 isEqualToString:@"acoustic absorption"];
          errorCopy = error;
          v44 = @"acoustic absorption";
          if ((v42 & 1) == 0)
          {
            v45 = [v41 isEqualToString:{@"acoustic scattering", @"acoustic absorption"}];
            errorCopy = error + 1;
            v44 = @"acoustic scattering";
            if ((v45 & 1) == 0)
            {
              v46 = [v41 isEqualToString:{@"acoustic sound reduction index", @"acoustic scattering"}];
              errorCopy = error + 2;
              v44 = @"acoustic sound reduction index";
              if (!v46)
              {
                continue;
              }
            }
          }

          [v36 setObject:*errorCopy forKey:v44];
        }

        v38 = [v37 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v38);
    }

    error = [v36 copy];
  }

LABEL_13:

  return error;
}

@end