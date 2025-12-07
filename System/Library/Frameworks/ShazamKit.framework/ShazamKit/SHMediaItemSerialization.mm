@interface SHMediaItemSerialization
+ (BOOL)isInternalMediaItemProperty:(id)property;
+ (id)dateFormatter;
+ (id)serializedFormatFromArrayValues:(id)values property:(id)property;
+ (id)transformArrayValue:(id)value property:(id)property shouldSerialize:(BOOL)serialize;
+ (id)transformProperties:(id)properties toSerializationFormat:(BOOL)format error:(id *)error;
+ (id)transformValue:(id)value forProperty:(id)property toSerializationFormat:(BOOL)format error:(id *)error;
@end

@implementation SHMediaItemSerialization

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    +[SHMediaItemSerialization dateFormatter];
  }

  v3 = dateFormatter_dateFormatter;

  return v3;
}

uint64_t __41__SHMediaItemSerialization_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = dateFormatter_dateFormatter;
  dateFormatter_dateFormatter = v0;

  v2 = dateFormatter_dateFormatter;

  return [v2 setFormatOptions:1907];
}

+ (id)transformProperties:(id)properties toSerializationFormat:(BOOL)format error:(id *)error
{
  formatCopy = format;
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = propertiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (([self isInternalMediaItemProperty:v14] & 1) == 0)
        {
          v15 = [v9 objectForKeyedSubscript:v14];
          v16 = [self transformValue:v15 forProperty:v14 toSerializationFormat:formatCopy error:error];

          if (!v16)
          {

            v17 = 0;
            goto LABEL_13;
          }

          [v8 setObject:v16 forKeyedSubscript:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = [v8 copy];
LABEL_13:

  return v17;
}

+ (id)transformValue:(id)value forProperty:(id)property toSerializationFormat:(BOOL)format error:(id *)error
{
  formatCopy = format;
  v26[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  propertyCopy = property;
  if (![SHMediaItemPropertyUtilities isShazamKitDefinedMediaItemProperty:propertyCopy])
  {
LABEL_12:
    uUIDString = valueCopy;
LABEL_13:
    v16 = uUIDString;
    goto LABEL_17;
  }

  v12 = [SHMediaItemPropertyUtilities typeForShazamKitProperty:propertyCopy];
  if (!formatCopy)
  {
    [SHMediaItemPropertyUtilities jsonRepresentationTypeForProperty:propertyCopy];
    if (objc_opt_isKindOfClass())
    {
      if (v12 == objc_opt_class())
      {
        uUIDString = [MEMORY[0x277CBEBC0] URLWithString:valueCopy];
        goto LABEL_13;
      }

      if (v12 == objc_opt_class())
      {
        dateFormatter = [self dateFormatter];
        v14 = [dateFormatter dateFromString:valueCopy];
        goto LABEL_24;
      }

LABEL_10:
      if (v12 == objc_opt_class())
      {
        uUIDString = [self transformArrayValue:valueCopy property:propertyCopy shouldSerialize:formatCopy];
        goto LABEL_13;
      }

      if (v12 == objc_opt_class())
      {
        if (formatCopy)
        {
          uUIDString = [valueCopy UUIDString];
        }

        else
        {
          uUIDString = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:valueCopy];
        }

        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v23 = *MEMORY[0x277CCA068];
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid object in catalog for property %@ : %@", propertyCopy, valueCopy];
    v24 = valueCopy;
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v24;
    v20 = &v23;
LABEL_16:
    v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    [SHError annotateClientError:error code:300 underlyingError:0 keyOverrides:v21];

    v16 = 0;
    goto LABEL_17;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = *MEMORY[0x277CCA068];
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid object in catalog for property %@ : %@", propertyCopy, valueCopy];
    v26[0] = valueCopy;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v26;
    v20 = &v25;
    goto LABEL_16;
  }

  if (v12 == objc_opt_class())
  {
    uUIDString = [valueCopy absoluteString];
    goto LABEL_13;
  }

  if (v12 != objc_opt_class())
  {
    goto LABEL_10;
  }

  dateFormatter = [self dateFormatter];
  v14 = [dateFormatter stringFromDate:valueCopy];
LABEL_24:
  v16 = v14;

LABEL_17:

  return v16;
}

+ (id)transformArrayValue:(id)value property:(id)property shouldSerialize:(BOOL)serialize
{
  serializeCopy = serialize;
  v51 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  propertyCopy = property;
  v10 = [SHMediaItemPropertyUtilities categoryForShazamKitProperty:propertyCopy];
  v11 = v10;
  if (!serializeCopy)
  {
    v20 = valueCopy;
    v21 = v20;
    if (v11 == 8)
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = v21;
      v28 = [v14 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v37;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v37 != v30)
            {
              objc_enumerationMutation(v14);
            }

            v32 = *(*(&v36 + 1) + 8 * i);
            v33 = [SHSignatureAlignment alloc];
            v34 = [(SHSignatureAlignment *)v33 initWithSerializedRepresentation:v32, v36];
            [v13 addObject:v34];
          }

          v29 = [v14 countByEnumeratingWithState:&v36 objects:v48 count:16];
        }

        while (v29);
      }
    }

    else
    {
      if (v11 != 6)
      {
        goto LABEL_33;
      }

      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v14 = v21;
      v22 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v41;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(v14);
            }

            v26 = [[SHRange alloc] initWithSerializedRepresentation:*(*(&v40 + 1) + 8 * j)];
            [v13 addObject:v26];
          }

          v23 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v23);
      }
    }

    goto LABEL_30;
  }

  if (v10 == 8)
  {
    v27 = [self serializedFormatFromArrayValues:valueCopy property:propertyCopy];
  }

  else
  {
    if (v10 == 6)
    {
      v12 = valueCopy;
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v45;
        do
        {
          for (k = 0; k != v16; ++k)
          {
            if (*v45 != v17)
            {
              objc_enumerationMutation(v14);
            }

            serializedRepresentation = [*(*(&v44 + 1) + 8 * k) serializedRepresentation];
            [v13 addObject:serializedRepresentation];
          }

          v16 = [v14 countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v16);
      }

LABEL_30:

      v21 = [v13 copy];
      goto LABEL_33;
    }

    v27 = valueCopy;
  }

  v21 = v27;
LABEL_33:

  return v21;
}

+ (id)serializedFormatFromArrayValues:(id)values property:(id)property
{
  v21 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  propertyCopy = property;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  if ([SHMediaItemPropertyUtilities categoryForShazamKitProperty:propertyCopy]== 8)
  {
    v8 = valuesCopy;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          serializedRepresentation = [*(*(&v16 + 1) + 8 * i) serializedRepresentation];
          [v7 addObject:serializedRepresentation];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempting to serialize a custom array containing objects that aren't ShazamKit defined."];
  }

  v14 = [v7 copy];

  return v14;
}

+ (BOOL)isInternalMediaItemProperty:(id)property
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = @"sh_identifier";
  v8 = @"sh_providerIdentifier";
  v9 = @"sh_score";
  v10 = @"sh_matchLocationCoordinate";
  v11 = @"sh_matchLocationCoordinate_Swift";
  v3 = MEMORY[0x277CBEA60];
  propertyCopy = property;
  v5 = [v3 arrayWithObjects:&v7 count:5];
  LOBYTE(v3) = [v5 containsObject:{propertyCopy, v7, v8, v9, v10, v11, v12}];

  return v3;
}

@end