@interface FedStatsDataEncoder
+ (BOOL)encodeDataAndRecord:(id)record dataTypeContent:(id)content baseKey:(id)key errorOut:(id *)out;
+ (BOOL)encodeDataAndRecord:(id)record dataTypeContent:(id)content metadata:(id)metadata baseKey:(id)key errorOut:(id *)out;
+ (BOOL)encodeDataArrayAndRecord:(id)record dataTypeContent:(id)content metadata:(id)metadata baseKey:(id)key errorOut:(id *)out;
+ (BOOL)record:(id)record metadata:(id)metadata baseKey:(id)key;
+ (id)createWithDataTypeContent:(id)content possibleError:(id *)error;
+ (id)encodeDataArray:(id)array dataTypeContent:(id)content resultType:(unint64_t *)type errorOut:(id *)out;
- (FedStatsDataEncoder)initWithDataTypes:(id)types combinationTypes:(id)combinationTypes;
- (id)decodeFromBitVector:(id)vector possibleError:(id *)error;
- (id)decodeFromBitVector:(id)vector withType:(id)type possibleError:(id *)error;
- (id)encodeToBitVector:(id)vector possibleError:(id *)error;
- (id)encodeToBitVector:(id)vector withType:(id)type possibleError:(id *)error;
- (id)encodeToIndex:(id)index error:(id *)error;
- (id)encodeToIndex:(id)index withType:(id)type error:(id *)error;
@end

@implementation FedStatsDataEncoder

- (FedStatsDataEncoder)initWithDataTypes:(id)types combinationTypes:(id)combinationTypes
{
  v46 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  combinationTypesCopy = combinationTypes;
  v43.receiver = self;
  v43.super_class = FedStatsDataEncoder;
  v9 = [(FedStatsDataEncoder *)&v43 init];
  v10 = v9;
  if (v9)
  {
    v32 = v9;
    objc_storeStrong(&v9->_dataTypes, types);
    allKeys = [combinationTypesCopy allKeys];
    v12 = [allKeys sortedArrayUsingComparator:&__block_literal_global_0];

    v13 = MEMORY[0x277CBEB58];
    v33 = typesCopy;
    allKeys2 = [typesCopy allKeys];
    v15 = [v13 setWithArray:allKeys2];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v12;
    v16 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        v19 = 0;
        do
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v39 + 1) + 8 * v19);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v21 = [combinationTypesCopy objectForKey:v20];
          typesInCombination = [v21 typesInCombination];

          v23 = [typesInCombination countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v36;
            do
            {
              v26 = 0;
              do
              {
                if (*v36 != v25)
                {
                  objc_enumerationMutation(typesInCombination);
                }

                [v15 removeObject:*(*(&v35 + 1) + 8 * v26++)];
              }

              while (v24 != v26);
              v24 = [typesInCombination countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v24);
          }

          [v15 removeObject:v20];
          ++v19;
        }

        while (v19 != v17);
        v17 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v17);
    }

    allObjects = [v15 allObjects];
    v28 = [allObjects sortedArrayUsingComparator:&__block_literal_global_0];
    v29 = [obj arrayByAddingObjectsFromArray:v28];
    v10 = v32;
    typeConfiguration = v32->_typeConfiguration;
    v32->_typeConfiguration = v29;

    typesCopy = v33;
  }

  return v10;
}

+ (id)createWithDataTypeContent:(id)content possibleError:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  v7 = contentCopy;
  if (!contentCopy || ![contentCopy count])
  {
    if (error)
    {
      [FedStatsError errorWithCode:100 description:@"Missing data type content"];
      *error = v31 = 0;
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_42;
  }

  errorCopy = error;
  array = [MEMORY[0x277CBEB18] array];
  v48 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v43 = v7;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v54;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v54 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v53 + 1) + 8 * i);
      v14 = [v8 objectForKey:v13];
      v15 = [v14 objectForKey:@"dataType"];
      if (!v15)
      {
        v32 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_39;
        }

        localizedDescription = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing data type specifier key %@", @"dataType"];
        v34 = 100;
        goto LABEL_35;
      }

      v16 = [FedStatsDataTypeFactory dataTypeFromString:v15];
      if (v16 != 99)
      {
        if (v16 != -1)
        {
          v17 = [FedStatsDataTypeFactory createFedStatsDataType:v15 dataTypeParams:v14 possibleError:errorCopy];
          if (v17)
          {
            v18 = v17;
            [v48 setValue:v17 forKey:v13];

            goto LABEL_14;
          }

          if (errorCopy)
          {
            code = [*errorCopy code];
            v40 = MEMORY[0x277CCACA8];
            localizedDescription = [*errorCopy localizedDescription];
            v41 = [v40 stringWithFormat:@"Could not create data type %@: %@", v13, localizedDescription];
            *errorCopy = [FedStatsError errorWithCode:code description:v41];

            goto LABEL_38;
          }

LABEL_39:
          v31 = 0;
LABEL_40:
          v7 = v43;
          v30 = v48;
          goto LABEL_41;
        }

        v32 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_39;
        }

        localizedDescription = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not supported", v15];
        v34 = 101;
LABEL_35:
        *v32 = [FedStatsError errorWithCode:v34 description:localizedDescription];
LABEL_38:
        v7 = v43;
        v30 = v48;

        v31 = 0;
        goto LABEL_41;
      }

      [array addObject:v13];
LABEL_14:
    }

    v10 = [v8 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(array, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = array;
  v19 = [v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v45 = *v50;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v49 + 1) + 8 * j);
        v23 = MEMORY[0x277CBEB38];
        v24 = [v8 objectForKey:v22];
        v15 = [v23 dictionaryWithDictionary:v24];

        v25 = +[FedStatsCombinationType kAvailableTypes];
        v57 = v25;
        v58 = v48;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        [v15 addEntriesFromDictionary:v26];

        v27 = [FedStatsCombinationType createFromDict:v15 possibleError:errorCopy];
        if (!v27)
        {
          if (errorCopy)
          {
            code2 = [*errorCopy code];
            v36 = MEMORY[0x277CCACA8];
            localizedDescription2 = [*errorCopy localizedDescription];
            v38 = [v36 stringWithFormat:@"Could not create data type %@: %@", v22, localizedDescription2];
            *errorCopy = [FedStatsError errorWithCode:code2 description:v38];
          }

          v31 = 0;
          v8 = v46;
          goto LABEL_40;
        }

        v28 = v27;
        [v46 setValue:v27 forKey:v22];
        [v48 setValue:v28 forKey:v22];
      }

      v20 = [v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v29 = [self alloc];
  v30 = v48;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v48];
  v8 = v46;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v46];
  v31 = [v29 initWithDataTypes:v14 combinationTypes:v15];
  v7 = v43;
LABEL_41:

LABEL_42:

  return v31;
}

- (id)encodeToIndex:(id)index withType:(id)type error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  typeCopy = type;
  if (indexCopy)
  {
    dataTypes = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [dataTypes objectForKey:typeCopy];

    if (!v11)
    {
      if (error)
      {
        typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", typeCopy];
        *error = [FedStatsError errorWithCode:200 description:typeCopy];
      }

      v25 = 0;
      goto LABEL_24;
    }

    if ([v11 dataType] == 99)
    {
      errorCopy = error;
      v29 = v11;
      typesInCombination = [v29 typesInCombination];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(typesInCombination, "count")}];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = typesInCombination;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            v20 = [indexCopy objectForKey:v19];
            [v13 setValue:v20 forKey:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v16);
      }

      v21 = [v13 copy];
      v32 = 0;
      v22 = v29;
      v23 = [v29 encodeToIndex:v21 possibleError:&v32];
      v24 = v32;

      error = errorCopy;
    }

    else
    {
      v22 = [indexCopy objectForKey:typeCopy];
      v31 = 0;
      v23 = [v11 encodeToIndex:v22 possibleError:&v31];
      v24 = v31;
    }

    if (v23)
    {
      typeCopy2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v11, "classCount")}];
      v25 = [FedStatsDataEncoderDimensionalResult resultWithIndex:v23 dimensionality:typeCopy2];
    }

    else
    {
      if (!error)
      {
        v25 = 0;
        goto LABEL_23;
      }

      typeCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot encode data to %@", typeCopy];
      [FedStatsError errorWithCode:401 underlyingError:v24 description:typeCopy2];
      *error = v25 = 0;
    }

LABEL_23:
LABEL_24:

    goto LABEL_25;
  }

  if (error)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_25:

  return v25;
}

- (id)encodeToBitVector:(id)vector withType:(id)type possibleError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  typeCopy = type;
  if (vectorCopy)
  {
    dataTypes = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [dataTypes objectForKey:typeCopy];

    if (v11)
    {
      if ([v11 dataType] == 99)
      {
        errorCopy = error;
        v26 = v11;
        typesInCombination = [v26 typesInCombination];
        v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(typesInCombination, "count")}];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = typesInCombination;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v28 + 1) + 8 * i);
              v20 = [vectorCopy objectForKey:v19];
              [v13 setValue:v20 forKey:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v16);
        }

        v21 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];
        v22 = [v26 encodeToOneHotVector:v21 possibleError:errorCopy];
      }

      else
      {
        v24 = [vectorCopy objectForKey:typeCopy];
        v22 = [v11 encodeToOneHotVector:v24 possibleError:error];
      }
    }

    else
    {
      if (error)
      {
        typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", typeCopy];
        *error = [FedStatsError errorWithCode:200 description:typeCopy];
      }

      v22 = 0;
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)decodeFromBitVector:(id)vector withType:(id)type possibleError:(id *)error
{
  vectorCopy = vector;
  typeCopy = type;
  if (vectorCopy)
  {
    dataTypes = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [dataTypes objectForKey:typeCopy];

    if (v11)
    {
      v12 = [v11 decodeFromOneHotVector:vectorCopy possibleError:error];
    }

    else
    {
      if (error)
      {
        typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", typeCopy];
        *error = [FedStatsError errorWithCode:200 description:typeCopy];
      }

      v12 = 0;
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)encodeToBitVector:(id)vector possibleError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  if (!vectorCopy)
  {
    if (error)
    {
      [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
      *error = v16 = 0;
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  typeConfiguration = [(FedStatsDataEncoder *)self typeConfiguration];
  v7 = [typeConfiguration countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(typeConfiguration);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        dataTypes = [(FedStatsDataEncoder *)self dataTypes];
        v14 = [dataTypes objectForKey:v12];
        v9 += [v14 classCount];
      }

      v8 = [typeConfiguration countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);

    if (v9 > 0x186A0)
    {
      if (error)
      {
        100000 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resulting dimensionality %lu is larger than max dimensionality %lu", v9, 100000];
        *error = [FedStatsError errorWithCode:900 description:100000];
      }

LABEL_14:
      v16 = 0;
      goto LABEL_30;
    }
  }

  else
  {
  }

  data = [MEMORY[0x277CBEB28] data];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  typeConfiguration2 = [(FedStatsDataEncoder *)self typeConfiguration];
  v19 = [typeConfiguration2 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v33;
    while (2)
    {
      v23 = 0;
      v24 = v21;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(typeConfiguration2);
        }

        v25 = *(*(&v32 + 1) + 8 * v23);
        v21 = [(FedStatsDataEncoder *)self encodeToBitVector:vectorCopy withType:v25 possibleError:error];

        if (!v21)
        {
          if (error)
          {
            code = [*error code];
            v27 = MEMORY[0x277CCACA8];
            localizedDescription = [*error localizedDescription];
            v29 = [v27 stringWithFormat:@"Error encoding %@ type: %@", v25, localizedDescription];
            *error = [FedStatsError errorWithCode:code description:v29];
          }

          v16 = 0;
          goto LABEL_29;
        }

        [data appendData:v21];
        ++v23;
        v24 = v21;
      }

      while (v20 != v23);
      v20 = [typeConfiguration2 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = data;
LABEL_29:

LABEL_30:

  return v16;
}

- (id)encodeToIndex:(id)index error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  typeConfiguration = [(FedStatsDataEncoder *)self typeConfiguration];
  v8 = [typeConfiguration count];

  if (v8 != 1)
  {
    if (error)
    {
      v23 = @"This API is only available for single type in encoding schema";
      v24 = 900;
LABEL_19:
      [FedStatsError errorWithCode:v24 description:v23];
      *error = v20 = 0;
      goto LABEL_27;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_27;
  }

  if (!indexCopy)
  {
    if (error)
    {
      v23 = @"Provided data is empty";
      v24 = 401;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  errorCopy = error;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  dataTypes = [(FedStatsDataEncoder *)self dataTypes];
  v10 = [dataTypes countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(dataTypes);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        dataTypes2 = [(FedStatsDataEncoder *)self dataTypes];
        v16 = [dataTypes2 objectForKey:v14];
        if ([v16 dataType] == 99)
        {
        }

        else
        {
          v17 = [indexCopy objectForKey:v14];

          if (!v17)
          {
            if (errorCopy)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Provided data does not contain a value for %@", v14];
              *errorCopy = [FedStatsError errorWithCode:200 description:v25];
            }

            goto LABEL_23;
          }
        }
      }

      v11 = [dataTypes countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  typeConfiguration2 = [(FedStatsDataEncoder *)self typeConfiguration];
  firstObject = [typeConfiguration2 firstObject];
  v32 = 0;
  v20 = [(FedStatsDataEncoder *)self encodeToIndex:indexCopy withType:firstObject error:&v32];
  v21 = v32;

  if (v20)
  {
    v22 = v20;
  }

  else if (errorCopy)
  {
    v26 = MEMORY[0x277CCACA8];
    typeConfiguration3 = [(FedStatsDataEncoder *)self typeConfiguration];
    firstObject2 = [typeConfiguration3 firstObject];
    v29 = [v26 stringWithFormat:@"Cannot encode data to %@", firstObject2];
    *errorCopy = [FedStatsError errorWithCode:401 underlyingError:v21 description:v29];
  }

LABEL_27:

  return v20;
}

- (id)decodeFromBitVector:(id)vector possibleError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v6 = MEMORY[0x277CBEB38];
  typeConfiguration = [(FedStatsDataEncoder *)self typeConfiguration];
  v23 = [v6 dictionaryWithCapacity:{objc_msgSend(typeConfiguration, "count")}];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(FedStatsDataEncoder *)self typeConfiguration];
  v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v25)
  {
    v8 = 0;
    v24 = *v29;
LABEL_3:
    v9 = 0;
    while (1)
    {
      errorCopy = error;
      if (*v29 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v28 + 1) + 8 * v9);
      dataTypes = [(FedStatsDataEncoder *)self dataTypes];
      v13 = [dataTypes objectForKey:v11];

      classCount = [v13 classCount];
      v15 = [vectorCopy subdataWithRange:{v8, classCount}];
      v27 = 0;
      v16 = [(FedStatsDataEncoder *)self decodeFromBitVector:v15 withType:v11 possibleError:&v27];
      v17 = v27;
      if (v16)
      {
        break;
      }

      if (!errorCopy)
      {
        goto LABEL_13;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"The decoder for %@ failed", v11];
      error = errorCopy;
      *errorCopy = [FedStatsError errorWithCode:500 underlyingError:v17 description:v18];

LABEL_14:
      if (!v16)
      {

        v20 = 0;
        v19 = v23;
        goto LABEL_19;
      }

      if (v25 == ++v9)
      {
        v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v25)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v23 addEntriesFromDictionary:v16];
    }

    else
    {
      [v23 setValue:v16 forKey:v11];
    }

    v8 += classCount;
LABEL_13:
    error = errorCopy;
    goto LABEL_14;
  }

LABEL_17:

  v19 = v23;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v23];
LABEL_19:

  return v20;
}

+ (id)encodeDataArray:(id)array dataTypeContent:(id)content resultType:(unint64_t *)type errorOut:(id *)out
{
  v59 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  contentCopy = content;
  if (!contentCopy)
  {
    if (out)
    {
      v26 = @"encodeDataArray missing data type content";
LABEL_22:
      [FedStatsError errorWithCode:400 description:v26];
      *out = v15 = 0;
      goto LABEL_44;
    }

LABEL_23:
    v15 = 0;
    goto LABEL_44;
  }

  if (!arrayCopy)
  {
    if (out)
    {
      v26 = @"encodeDataArray missing data array";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v53 = 0;
  v11 = [FedStatsDataEncoder createWithDataTypeContent:contentCopy possibleError:&v53];
  v12 = v53;
  v13 = v12;
  if (v11)
  {
    v38 = v12;
    v39 = contentCopy;
    v40 = arrayCopy;
    v14 = [FedStatsDataSampler pickSamplesFrom:arrayCopy length:20];
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    typeConfiguration = [v11 typeConfiguration];
    v17 = [typeConfiguration count];

    v37 = v14;
    if (v17 < 2)
    {
      *type = 1;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v27 = v14;
      v28 = [v27 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v45;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v44 + 1) + 8 * i);
            if (v32)
            {
              v41 = 0;
              v33 = [v11 encodeToIndex:v32 error:&v41];
              v34 = v41;
              if (v33)
              {
                [v15 addObject:v33];
              }

              else
              {
                v35 = +[FedStatsLog logger];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  [FedStatsDataEncoder encodeDataArray:v34 dataTypeContent:&v56 resultType:v35 errorOut:?];
                }
              }
            }

            else
            {
              v34 = +[FedStatsLog logger];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                [FedStatsDataEncoder encodeDataArray:v43 dataTypeContent:v34 resultType:? errorOut:?];
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v44 objects:v57 count:16];
        }

        while (v29);
      }
    }

    else
    {
      *type = 2;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v18 = v14;
      v19 = [v18 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v50;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v49 + 1) + 8 * j);
            v48 = 0;
            v24 = [v11 encodeToBitVector:v23 possibleError:&v48];
            if (v24)
            {
              [v15 addObject:v24];
            }

            else
            {
              v25 = +[FedStatsLog logger];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                [FedStatsDataEncoder encodeDataArray:v55 dataTypeContent:v25 resultType:? errorOut:?];
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v20);
      }
    }

    contentCopy = v39;
    arrayCopy = v40;
    v13 = v38;
  }

  else if (out)
  {
    [FedStatsError errorWithCode:302 underlyingError:v12 description:@"encodeDataArray encoder construction failed"];
    *out = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_44:

  return v15;
}

+ (BOOL)encodeDataArrayAndRecord:(id)record dataTypeContent:(id)content metadata:(id)metadata baseKey:(id)key errorOut:(id *)out
{
  v80[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  contentCopy = content;
  metadataCopy = metadata;
  keyCopy = key;
  v15 = keyCopy;
  if (keyCopy)
  {
    v16 = [keyCopy length];
    if (v16 >= [@"fedstats:" length] && (objc_msgSend(v15, "substringToIndex:", objc_msgSend(@"fedstats:", "length")), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"fedstats:"), v17, (v18 & 1) != 0))
    {
      v19 = v15;
    }

    else
    {
      v19 = [@"fedstats:" stringByAppendingString:v15];
    }

    v20 = v19;
    v21 = +[FedStatsLog logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsDataEncoder encodeDataArrayAndRecord:v20 dataTypeContent:v21 metadata:? baseKey:? errorOut:?];
    }

    v71 = 0;
    v72 = 0;
    v22 = [FedStatsDataEncoder encodeDataArray:recordCopy dataTypeContent:contentCopy resultType:&v72 errorOut:&v71];
    v23 = v71;
    if (!v22)
    {
      if (out)
      {
        [FedStatsError errorWithCode:401 underlyingError:v23 description:@"encodeDataArrayAndRecord failed at encoding"];
        *out = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_61;
    }

    v24 = +[FedStatsLog logger];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FedStatsDataEncoder encodeDataArrayAndRecord:v24 dataTypeContent:? metadata:? baseKey:? errorOut:?];
    }

    v62 = [objc_alloc(MEMORY[0x277D052E8]) initWithKey:v20];
    if (!v62)
    {
      if (out)
      {
        [FedStatsError errorWithCode:600 description:@"encodeDataArrayAndRecord failed at recorder allocation"];
        *out = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_60;
    }

    if ([metadataCopy count])
    {
      v25 = metadataCopy;
    }

    else
    {
      v79 = *MEMORY[0x277D05410];
      v80[0] = &stru_282B43830;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    }

    v61 = v25;
    if (![v22 count])
    {
      goto LABEL_26;
    }

    if (v72 == 1)
    {
      v55 = v23;
      v59 = recordCopy;
      v60 = v20;
      v56 = v15;
      v57 = metadataCopy;
      v58 = contentCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v28 = v22;
      v29 = [v28 countByEnumeratingWithState:&v67 objects:v78 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v68;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v68 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v67 + 1) + 8 * i);
            dimensionality = [v33 dimensionality];
            v35 = [dictionary objectForKey:dimensionality];

            if (v35)
            {
              index = [v33 index];
              [v35 arrayByAddingObject:index];
            }

            else
            {
              v37 = MEMORY[0x277CBEA60];
              index = [v33 index];
              [v37 arrayWithObject:index];
            }
            v38 = ;
            dimensionality2 = [v33 dimensionality];
            [dictionary setObject:v38 forKey:dimensionality2];
          }

          v30 = [v28 countByEnumeratingWithState:&v67 objects:v78 count:16];
        }

        while (v30);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v40 = dictionary;
      v41 = [v40 countByEnumeratingWithState:&v63 objects:v77 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v64;
        v44 = *MEMORY[0x277D05328];
        v45 = *MEMORY[0x277D05330];
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v64 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v47 = *(*(&v63 + 1) + 8 * j);
            v48 = +[FedStatsLog logger];
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v76 = v47;
              _os_log_debug_impl(&dword_21A3C2000, v48, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord recording with dimension = %@", buf, 0xCu);
            }

            v49 = [v61 mutableCopy];
            v73 = v44;
            v74 = v47;
            v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
            [v49 setObject:v50 forKey:v45];

            v51 = [v40 objectForKey:v47];
            v52 = [v62 record:v51 metadata:v49];

            if ((v52 & 1) == 0)
            {
              v53 = +[FedStatsLog logger];
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v76 = v60;
                _os_log_debug_impl(&dword_21A3C2000, v53, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord failed to record numbers for key '%@'", buf, 0xCu);
              }
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v63 objects:v77 count:16];
        }

        while (v42);
      }

      v26 = 1;
      contentCopy = v58;
      recordCopy = v59;
      v15 = v56;
      metadataCopy = v57;
      v20 = v60;
      v23 = v55;
    }

    else if (v72 == 2)
    {
      if ([v62 recordBitVectors:v22 metadata:v61])
      {
LABEL_26:
        v26 = 1;
LABEL_59:

LABEL_60:
LABEL_61:

        goto LABEL_62;
      }

      v40 = +[FedStatsLog logger];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [FedStatsDataEncoder encodeDataArrayAndRecord:v20 dataTypeContent:v40 metadata:? baseKey:? errorOut:?];
      }

      v26 = 1;
    }

    else
    {
      if (!out)
      {
        v26 = 0;
        goto LABEL_59;
      }

      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported result type %lu in data encoder", v72];
      [FedStatsError errorWithCode:900 description:v40];
      *out = v26 = 0;
    }

    goto LABEL_59;
  }

  if (out)
  {
    [FedStatsError errorWithCode:400 description:@"encodeDataArrayAndRecord missing collection ID key"];
    *out = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_62:

  return v26;
}

+ (BOOL)encodeDataAndRecord:(id)record dataTypeContent:(id)content metadata:(id)metadata baseKey:(id)key errorOut:(id *)out
{
  v19 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v11 = MEMORY[0x277CBEA60];
  keyCopy = key;
  metadataCopy = metadata;
  contentCopy = content;
  recordCopy2 = record;
  v16 = [v11 arrayWithObjects:&recordCopy count:1];
  LOBYTE(out) = [FedStatsDataEncoder encodeDataArrayAndRecord:v16 dataTypeContent:contentCopy metadata:metadataCopy baseKey:keyCopy errorOut:out, recordCopy, v19];

  return out;
}

+ (BOOL)encodeDataAndRecord:(id)record dataTypeContent:(id)content baseKey:(id)key errorOut:(id *)out
{
  v16 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v9 = MEMORY[0x277CBEA60];
  keyCopy = key;
  contentCopy = content;
  recordCopy2 = record;
  v13 = [v9 arrayWithObjects:&recordCopy count:1];
  LOBYTE(out) = [FedStatsDataEncoder encodeDataArrayAndRecord:v13 dataTypeContent:contentCopy baseKey:keyCopy errorOut:out, recordCopy, v16];

  return out;
}

+ (BOOL)record:(id)record metadata:(id)metadata baseKey:(id)key
{
  v7 = MEMORY[0x277D052E8];
  keyCopy = key;
  metadataCopy = metadata;
  recordCopy = record;
  v11 = [[v7 alloc] initWithKey:keyCopy];

  LOBYTE(keyCopy) = [v11 record:recordCopy metadata:metadataCopy];
  return keyCopy;
}

+ (void)encodeDataArray:(uint8_t *)a1 dataTypeContent:(void *)a2 resultType:(void *)a3 errorOut:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 debugDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_21A3C2000, a4, OS_LOG_TYPE_DEBUG, "Cannot process data point: '%@', skipping", a1, 0xCu);
}

+ (void)encodeDataArray:(os_log_t)log dataTypeContent:resultType:errorOut:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_21A3C2000, log, OS_LOG_TYPE_DEBUG, "Non-dictionary or nil in the input, skipping...", buf, 2u);
}

+ (void)encodeDataArray:(os_log_t)log dataTypeContent:resultType:errorOut:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_21A3C2000, log, OS_LOG_TYPE_DEBUG, "Cannot process data point, skipping...", buf, 2u);
}

+ (void)encodeDataArrayAndRecord:(uint64_t)a1 dataTypeContent:(NSObject *)a2 metadata:baseKey:errorOut:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21A3C2000, a2, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord with baseKey = %@", &v2, 0xCu);
}

+ (void)encodeDataArrayAndRecord:(uint64_t)a1 dataTypeContent:(NSObject *)a2 metadata:baseKey:errorOut:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21A3C2000, a2, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord failed to record bit vectors for key '%@'", &v2, 0xCu);
}

@end