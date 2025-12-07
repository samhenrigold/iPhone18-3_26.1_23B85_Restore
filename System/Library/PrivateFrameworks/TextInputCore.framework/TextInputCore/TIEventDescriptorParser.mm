@interface TIEventDescriptorParser
- (TIEventDescriptorParser)init;
- (id)parseFloatFieldSpecWithName:(id)name fromConfig:(id)config errors:(id)errors;
- (id)parseIntegerFieldSpecWithName:(id)name fromConfig:(id)config errors:(id)errors;
- (id)parseStringFieldSpecWithName:(id)name fromConfig:(id)config errors:(id)errors;
- (void)parseEventDescriptor:(id *)descriptor andEventSpec:(id *)spec withName:(id)name fromConfig:(id)config errors:(id)errors;
- (void)parseEventDescriptors:(id)descriptors andEventSpecs:(id)specs fromConfig:(id)config errors:(id)errors;
- (void)parseFieldDescriptor:(id *)descriptor andFieldSpec:(id *)spec withName:(id)name fromConfig:(id)config errors:(id)errors;
@end

@implementation TIEventDescriptorParser

- (id)parseFloatFieldSpecWithName:(id)name fromConfig:(id)config errors:(id)errors
{
  nameCopy = name;
  configCopy = config;
  errorsCopy = errors;
  v11 = objc_opt_new();
  if (configCopy)
  {
    v12 = [(TIDescriptorParser *)self parseFloatForKey:@"minValue" fromConfig:configCopy required:0 errors:v11];
    v13 = [(TIDescriptorParser *)self parseFloatForKey:@"maxValue" fromConfig:configCopy required:0 errors:v11];
    v14 = [(TIDescriptorParser *)self parseIntegerForKey:@"significantDigits" fromConfig:configCopy required:0 errors:v11];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if ([v11 count])
  {
    [errorsCopy addObjectsFromArray:v11];
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277D6F308] floatFieldSpecWithName:nameCopy minValue:v12 maxValue:v13 significantDigits:v14];
  }

  return v15;
}

- (id)parseIntegerFieldSpecWithName:(id)name fromConfig:(id)config errors:(id)errors
{
  nameCopy = name;
  configCopy = config;
  errorsCopy = errors;
  v11 = objc_opt_new();
  if (configCopy)
  {
    v12 = [(TIDescriptorParser *)self parseIntegerForKey:@"minValue" fromConfig:configCopy required:0 errors:v11];
    v13 = [(TIDescriptorParser *)self parseIntegerForKey:@"maxValue" fromConfig:configCopy required:0 errors:v11];
    v14 = [(TIDescriptorParser *)self parseIntegerForKey:@"significantDigits" fromConfig:configCopy required:0 errors:v11];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if ([v11 count])
  {
    [errorsCopy addObjectsFromArray:v11];
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277D6F308] integerFieldSpecWithName:nameCopy minValue:v12 maxValue:v13 significantDigits:v14];
  }

  return v15;
}

- (id)parseStringFieldSpecWithName:(id)name fromConfig:(id)config errors:(id)errors
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configCopy = config;
  errorsCopy = errors;
  v11 = objc_opt_new();
  if (configCopy)
  {
    v12 = [(TIDescriptorParser *)self parseArrayForKey:@"allowedValues" fromConfig:configCopy required:0 errors:v11];
    v13 = v12;
    if (v12)
    {
      if ([v12 count])
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = v13;
        v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          v25 = nameCopy;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v26 + 1) + 8 * i);
              if (![MEMORY[0x277D6F320] isString:v18] || !objc_msgSend(v18, "length"))
              {
                v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' values must all be strings.", @"allowedValues"];
                v20 = [(TIDescriptorParser *)self errorWithMessage:v19 andValue:v13];
                [v11 addObject:v20];

                nameCopy = v25;
                goto LABEL_17;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
            nameCopy = v25;
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' must contain at least one value.", @"allowedValues"];
        v22 = [(TIDescriptorParser *)self errorWithMessage:v21 andValue:v13];
        [v11 addObject:v22];
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_17:
  if ([v11 count])
  {
    [errorsCopy addObjectsFromArray:v11];
    v23 = 0;
  }

  else
  {
    v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:nameCopy allowedValues:v13];
  }

  return v23;
}

- (void)parseFieldDescriptor:(id *)descriptor andFieldSpec:(id *)spec withName:(id)name fromConfig:(id)config errors:(id)errors
{
  nameCopy = name;
  configCopy = config;
  errorsCopy = errors;
  v12 = objc_opt_new();
  v13 = [(TIDescriptorParser *)self parseStringForKey:@"fieldDescription" fromConfig:configCopy required:0 errors:v12];
  v14 = [(TIDescriptorParser *)self parseStringForKey:@"metricName" fromConfig:configCopy required:1 errors:v12];
  v15 = [(TIDescriptorParser *)self parseStringForKey:@"metricType" fromConfig:configCopy required:1 errors:v12];
  v16 = [(TIDescriptorParser *)self parseStringForKey:@"dataType" fromConfig:configCopy required:1 errors:v12];
  v17 = [(TIDescriptorParser *)self parseDictionaryForKey:@"constraints" fromConfig:configCopy required:0 errors:v12];
  if (objc_msgSend_isEqualToString_(v16))
  {
    v18 = [(TIDescriptorParser *)self parseStringForKey:@"inactiveValue" fromConfig:configCopy required:0 errors:v12];
    v19 = [(TIEventDescriptorParser *)self parseStringFieldSpecWithName:nameCopy fromConfig:v17 errors:v12];
LABEL_9:
    v20 = v19;
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v16))
  {
    v18 = [(TIDescriptorParser *)self parseIntegerForKey:@"inactiveValue" fromConfig:configCopy required:0 errors:v12];
    v19 = [(TIEventDescriptorParser *)self parseIntegerFieldSpecWithName:nameCopy fromConfig:v17 errors:v12];
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(v16))
  {
    v18 = [(TIDescriptorParser *)self parseNumberForKey:@"inactiveValue" fromConfig:configCopy required:0 errors:v12];
    v19 = [(TIEventDescriptorParser *)self parseFloatFieldSpecWithName:nameCopy fromConfig:v17 errors:v12];
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(v16))
  {
    v18 = [(TIDescriptorParser *)self parseBooleanForKey:@"inactiveValue" fromConfig:configCopy required:0 errors:v12];
    v19 = [(TIEventDescriptorParser *)self parseBooleanFieldSpecWithName:nameCopy fromConfig:v17 errors:v12];
    goto LABEL_9;
  }

  v22 = [(TIDescriptorParser *)self invalidValueErrorForKey:@"dataType" withValue:v16];
  [v12 addObject:v22];

  v18 = 0;
  v20 = 0;
LABEL_10:
  if ([v12 count])
  {
    [errorsCopy addObjectsFromArray:v12];
  }

  else
  {
    *descriptor = [TIFieldDescriptor fieldDescriptorWithFieldName:nameCopy fieldDescription:v13 metricName:v14 metricType:v15 inactiveValue:v18];
    v21 = v20;
    *spec = v20;
  }
}

- (void)parseEventDescriptor:(id *)descriptor andEventSpec:(id *)spec withName:(id)name fromConfig:(id)config errors:(id)errors
{
  v55 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configCopy = config;
  errorsCopy = errors;
  v15 = objc_opt_new();
  v16 = [(TIDescriptorParser *)self parseStringForKey:@"eventDescription" fromConfig:configCopy required:0 errors:v15];
  v17 = [(TIDescriptorParser *)self parseBooleanForKey:@"includeTestingParameters" fromConfig:configCopy required:0 errors:v15];
  v42 = [v17 isEqualToNumber:MEMORY[0x277CBEC38]];

  v18 = [(TIDescriptorParser *)self parseDictionaryForKey:@"fieldDescriptors" fromConfig:configCopy required:1 errors:v15];
  v44 = objc_opt_new();
  v43 = objc_opt_new();
  v46 = objc_opt_new();
  v47 = v18;
  if (!v18)
  {
    goto LABEL_18;
  }

  descriptorCopy = descriptor;
  v38 = v16;
  specCopy = spec;
  v40 = errorsCopy;
  v41 = configCopy;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [v18 allKeys];
  v19 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = v19;
  v21 = *v51;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v51 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v50 + 1) + 8 * i);
      context = [(TIDescriptorParser *)self context];
      v25 = nameCopy;
      [context setObject:nameCopy forKey:@"event"];

      v26 = [(TIDescriptorParser *)self parseDictionaryForKey:v23 fromConfig:v47 required:1 errors:v15];
      if (v26)
      {
        v48 = 0;
        v49 = 0;
        [(TIEventDescriptorParser *)self parseFieldDescriptor:&v49 andFieldSpec:&v48 withName:v23 fromConfig:v26 errors:v15];
        v27 = v49;
        v28 = v48;
        v29 = v28;
        if (v27 && v28)
        {
          [v44 setObject:v27 forKey:v23];
          [v43 setObject:v29 forKey:v23];
          goto LABEL_13;
        }
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      [v46 addObject:v23];
LABEL_13:

      nameCopy = v25;
    }

    v20 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  }

  while (v20);
LABEL_15:

  errorsCopy = v40;
  configCopy = v41;
  v16 = v38;
  spec = specCopy;
  descriptor = descriptorCopy;
  if (![v44 count] && !objc_msgSend(v46, "count"))
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' must contain at least one value.", @"fieldDescriptors"];
    v31 = [(TIDescriptorParser *)self errorWithMessage:v30 andValue:v43];
    [v15 addObject:v31];
  }

LABEL_18:
  if ([v15 count])
  {
    [errorsCopy addObjectsFromArray:v15];
    v33 = v43;
    v32 = v44;
  }

  else
  {
    v32 = v44;
    allValues = [v44 allValues];
    *descriptor = [TIEventDescriptor eventDescriptorWithEventName:nameCopy eventDescription:v16 fieldDescriptors:allValues includeTestingParameters:v42];

    v35 = MEMORY[0x277D6F300];
    v33 = v43;
    allValues2 = [v43 allValues];
    *spec = [v35 eventSpecWithName:nameCopy inputModeRequired:0 fieldSpecs:allValues2];
  }
}

- (void)parseEventDescriptors:(id)descriptors andEventSpecs:(id)specs fromConfig:(id)config errors:(id)errors
{
  v36 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  specsCopy = specs;
  configCopy = config;
  errorsCopy = errors;
  v11 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [configCopy allKeys];
  v12 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        context = [(TIDescriptorParser *)self context];
        v33 = @"event";
        v34 = v16;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        [context setDictionary:v18];

        v19 = [(TIDescriptorParser *)self parseDictionaryForKey:v16 fromConfig:configCopy required:1 errors:v11];
        if (v19)
        {
          v27 = 0;
          v28 = 0;
          [(TIEventDescriptorParser *)self parseEventDescriptor:&v28 andEventSpec:&v27 withName:v16 fromConfig:v19 errors:v11];
          v20 = v28;
          v21 = v27;
          v22 = v21;
          if (v20 && v21)
          {
            [descriptorsCopy setObject:v20 forKey:v16];
            [specsCopy setObject:v22 forKey:v16];
          }
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v13);
  }

  [errorsCopy addObjectsFromArray:v11];
}

- (TIEventDescriptorParser)init
{
  v3.receiver = self;
  v3.super_class = TIEventDescriptorParser;
  return [(TIDescriptorParser *)&v3 initWithErrorCode:1];
}

@end