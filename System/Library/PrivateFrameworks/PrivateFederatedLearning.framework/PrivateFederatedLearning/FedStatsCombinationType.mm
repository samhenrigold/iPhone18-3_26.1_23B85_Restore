@interface FedStatsCombinationType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsCombinationType)initWithCombinationSpec:(id)spec;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)sampleForIndex:(unint64_t)index;
@end

@implementation FedStatsCombinationType

- (FedStatsCombinationType)initWithCombinationSpec:(id)spec
{
  v43 = *MEMORY[0x277D85DE8];
  specCopy = spec;
  v40.receiver = self;
  v40.super_class = FedStatsCombinationType;
  v6 = [(FedStatsCombinationType *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_combinationSpec, spec);
    allKeys = [specCopy allKeys];
    v9 = [allKeys sortedArrayUsingComparator:&__block_literal_global_1];
    orderedKeys = v7->_orderedKeys;
    v7->_orderedKeys = v9;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    orderedKeys = [(FedStatsCombinationType *)v7 orderedKeys];
    v12 = [orderedKeys countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(orderedKeys);
          }

          v17 = [specCopy objectForKeyedSubscript:*(*(&v36 + 1) + 8 * i)];
          v15 *= [v17 classCount];
        }

        v13 = [orderedKeys countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 1;
    }

    v35.receiver = v7;
    v35.super_class = FedStatsCombinationType;
    [(FedStatsBoundedULongType *)&v35 setBound:v15 - 1];
    v7->_classCount = v15;
    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(specCopy, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v7;
    orderedKeys2 = [(FedStatsCombinationType *)v7 orderedKeys];
    v20 = [orderedKeys2 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(orderedKeys2);
          }

          v24 = *(*(&v31 + 1) + 8 * j);
          v25 = [specCopy objectForKeyedSubscript:v24];
          v15 /= [v25 classCount];

          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
          [v18 setObject:v26 forKeyedSubscript:v24];
        }

        v21 = [orderedKeys2 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v21);
    }

    v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18];
    v7 = v30;
    strides = v30->_strides;
    v30->_strides = v27;
  }

  return v7;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v7 = [dictCopy objectForKey:@"structure"];
  if (!v7)
  {
    if (error)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key %@", @"structure"];
      v9 = 300;
LABEL_11:
      *error = [FedStatsError errorWithCode:v9 description:v8];

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must be an array", @"structure"];
      goto LABEL_10;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if ([v7 count] <= 1)
  {
    if (error)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must have at least 2 elements", @"structure"];
      v8 = LABEL_10:;
      v9 = 302;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  selfCopy = self;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Every entry in the value of the key %@ must be a string", @"structure"];
            *error = [FedStatsError errorWithCode:302 description:v31];
          }

          goto LABEL_12;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = [dictCopy objectForKey:@"availableTypes"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      allValues = [v17 allValues];
      v19 = [allValues countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v42;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(allValues);
            }

            if (([*(*(&v41 + 1) + 8 * j) conformsToProtocol:&unk_282B4D078] & 1) == 0)
            {
              v30 = v17;
              if (error)
              {
                v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Every value in the %@ dictionary must be a class conforming to %@", @"availableTypes", @"FedStatsDataTypeProtocol"];
                *error = [FedStatsError errorWithCode:302 description:v33];
              }

LABEL_57:
              v10 = 0;
              goto LABEL_58;
            }
          }

          v20 = [allValues countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      allValues = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v12;
      v23 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        while (2)
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v37 + 1) + 8 * k);
            v28 = [v17 objectForKey:v27];
            [allValues setObject:v28 forKeyedSubscript:v27];

            v29 = [allValues objectForKeyedSubscript:v27];

            if (!v29)
            {
              v30 = v17;
              if (error)
              {
                v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no type defined for %@", v27];
                *error = [FedStatsError errorWithCode:302 description:v34];
              }

              goto LABEL_57;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v30 = v17;

      v10 = [[selfCopy alloc] initWithCombinationSpec:allValues];
      goto LABEL_58;
    }

    v30 = v17;
    if (error)
    {
      allValues = [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must be a dictionary", @"availableTypes"];
      v32 = 302;
      goto LABEL_50;
    }
  }

  else
  {
    v30 = 0;
    if (error)
    {
      allValues = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key %@", @"availableTypes"];
      v32 = 300;
LABEL_50:
      [FedStatsError errorWithCode:v32 description:allValues];
      *error = v10 = 0;
LABEL_58:

      goto LABEL_59;
    }
  }

  v10 = 0;
LABEL_59:

LABEL_13:

  return v10;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    orderedKeys = [(FedStatsCombinationType *)self orderedKeys];
    v8 = [orderedKeys countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(orderedKeys);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          v13 = [indexCopy objectForKey:v12];

          if (!v13)
          {
            if (error)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"The combination type requires the key %@ to be in the value dictionary", v12];
              *error = [FedStatsError errorWithCode:401 description:v26];
            }

            goto LABEL_27;
          }
        }

        v9 = [orderedKeys countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(FedStatsCombinationType *)self orderedKeys];
    v33 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v33)
    {
      errorCopy = error;
      v14 = 0;
      v32 = *v36;
      while (2)
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * j);
          combinationSpec = [(FedStatsCombinationType *)self combinationSpec];
          v18 = [combinationSpec objectForKey:v16];

          v19 = [indexCopy objectForKeyedSubscript:v16];
          v34 = 0;
          v20 = [v18 encodeToIndex:v19 possibleError:&v34];
          v21 = v34;

          if (!v20)
          {
            if (errorCopy)
            {
              code = [*errorCopy code];
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error with %@ value in the encoder.", v16];
              *errorCopy = [FedStatsError errorWithCode:code underlyingError:v21 description:v28];
            }

            goto LABEL_27;
          }

          strides = [(FedStatsCombinationType *)self strides];
          v23 = [strides objectForKey:v16];
          unsignedLongValue = [v23 unsignedLongValue];
          v14 += [v20 unsignedLongValue] * unsignedLongValue;
        }

        v33 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 description:@"The combination type encoder requires a dictionary to process."];
    *error = v25 = 0;
  }

  else
  {
LABEL_27:
    v25 = 0;
  }

  return v25;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v7 = indexCopy;
  if (!indexCopy)
  {
    if (error)
    {
      v27 = @"The decoder can only work with a valid number type";
LABEL_16:
      [FedStatsError errorWithCode:500 description:v27];
      *error = v26 = 0;
      goto LABEL_22;
    }

LABEL_17:
    v26 = 0;
    goto LABEL_22;
  }

  unsignedLongValue = [indexCopy unsignedLongValue];
  if (unsignedLongValue >= [(FedStatsCombinationType *)self classCount])
  {
    if (error)
    {
      v27 = @"The decoder requires a number less than the class count";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v33 = v7;
  unsignedLongValue2 = [v7 unsignedLongValue];
  v10 = MEMORY[0x277CBEB38];
  orderedKeys = [(FedStatsCombinationType *)self orderedKeys];
  v38 = [v10 dictionaryWithCapacity:{objc_msgSend(orderedKeys, "count")}];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(FedStatsCombinationType *)self orderedKeys];
  v37 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v37)
  {
    selfCopy = self;
    v36 = *v41;
    while (2)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        strides = [(FedStatsCombinationType *)self strides];
        v15 = [strides objectForKey:v13];
        unsignedLongValue3 = [v15 unsignedLongValue];

        v39 = unsignedLongValue3;
        v17 = unsignedLongValue2 / unsignedLongValue3;
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedLongValue2 / unsignedLongValue3];
        combinationSpec = [(FedStatsCombinationType *)self combinationSpec];
        [combinationSpec objectForKey:v13];
        v21 = v20 = unsignedLongValue2;
        errorCopy = error;
        v23 = [v21 decodeFromIndex:v18 possibleError:error];
        [v38 setValue:v23 forKey:v13];

        v24 = [v38 objectForKey:v13];

        if (!v24)
        {
          if (errorCopy)
          {
            v28 = errorCopy;
            v29 = MEMORY[0x277CCACA8];
            localizedDescription = [*errorCopy localizedDescription];
            v31 = [v29 stringWithFormat:@"Could not decode %@ value in the combination: %@", v13, localizedDescription];
            *v28 = [FedStatsError errorWithCode:500 description:v31];
          }

          v26 = 0;
          v25 = v38;
          goto LABEL_21;
        }

        unsignedLongValue2 = v20 - v17 * v39;

        error = errorCopy;
        self = selfCopy;
      }

      v37 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v25 = v38;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v38];
LABEL_21:

  v7 = v33;
LABEL_22:

  return v26;
}

- (id)sampleForIndex:(unint64_t)index
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  orderedKeys = [(FedStatsCombinationType *)self orderedKeys];
  v20 = [v5 dictionaryWithCapacity:{objc_msgSend(orderedKeys, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(FedStatsCombinationType *)self orderedKeys];
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        strides = [(FedStatsCombinationType *)self strides];
        v12 = [strides objectForKey:v10];
        unsignedLongValue = [v12 unsignedLongValue];

        combinationSpec = [(FedStatsCombinationType *)self combinationSpec];
        v15 = [combinationSpec objectForKey:v10];
        v16 = [v15 sampleForIndex:index / unsignedLongValue];
        [v20 setObject:v16 forKey:v10];

        index %= unsignedLongValue;
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return v20;
}

@end