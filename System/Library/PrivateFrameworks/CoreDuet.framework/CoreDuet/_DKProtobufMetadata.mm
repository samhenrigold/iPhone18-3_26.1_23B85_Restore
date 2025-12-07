@interface _DKProtobufMetadata
+ (id)createFromData:(id)data;
+ (id)fromPBCodable:(id)codable;
- (_DKProtobufMetadata)initWithDictionary:(id)dictionary;
- (id)asData;
- (id)toPBCodable;
@end

@implementation _DKProtobufMetadata

- (id)toPBCodable
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [(_DKProtobufMetadata *)self dictionary];
  v4 = [dictionary count];

  if (v4)
  {
    v17 = objc_alloc_init(_DKPRMetadata);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    dictionary2 = [(_DKProtobufMetadata *)self dictionary];
    v6 = [dictionary2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(dictionary2);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          dictionary3 = [(_DKProtobufMetadata *)self dictionary];
          v12 = [dictionary3 objectForKeyedSubscript:v10];

          v13 = objc_alloc_init(_DKPRMetadataEntry);
          [(_DKPRMetadataEntry *)v13 setKey:v10];
          toPBCodable = [v12 toPBCodable];
          [(_DKPRMetadataEntry *)v13 setValue:toPBCodable];

          value = [(_DKPRMetadataEntry *)v13 value];

          if (value)
          {
            [(_DKPRMetadata *)v17 addEntry:v13];
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [(_DKEvent(Protobuf) *)buf toPBCodableUseStructuredMetadata:v10, &buf[4]];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [dictionary2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)fromPBCodable:(id)codable
{
  v27 = *MEMORY[0x1E69E9840];
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codableCopy;
    entrys = [(_DKPRMetadata *)v4 entrys];
    v6 = [entrys count];

    if (v6)
    {
      v7 = MEMORY[0x1E695DF90];
      entrys2 = [(_DKPRMetadata *)v4 entrys];
      v9 = [v7 dictionaryWithCapacity:{objc_msgSend(entrys2, "count")}];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = v4;
      entrys3 = [(_DKPRMetadata *)v4 entrys];
      v11 = [entrys3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(entrys3);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v16 = MEMORY[0x1E69E58C0];
            value = [(_DKPRMetadataEntry *)v15 value];
            v18 = [v16 fromPBCodable:value];
            v19 = [(_DKPRMetadataEntry *)v15 key];
            [v9 setObject:v18 forKeyedSubscript:v19];
          }

          v12 = [entrys3 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      v6 = [[_DKProtobufMetadata alloc] initWithDictionary:v9];
      v4 = v21;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_DKProtobufMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _DKProtobufMetadata;
  v6 = [(_DKProtobufMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

+ (id)createFromData:(id)data
{
  dataCopy = data;
  v4 = [[_DKPRMetadata alloc] initWithData:dataCopy];

  v5 = [_DKProtobufMetadata fromPBCodable:v4];

  return v5;
}

- (id)asData
{
  toPBCodable = [(_DKProtobufMetadata *)self toPBCodable];
  data = [toPBCodable data];

  return data;
}

@end