@interface ATXSpotlightSuggestionLayout
+ (BOOL)isValidInputWithCollections:(id)collections scores:(id)scores;
- (ATXProactiveSuggestion)highestConfidenceSuggestion;
- (ATXSpotlightSuggestionLayout)initWithCoder:(id)coder;
- (ATXSpotlightSuggestionLayout)initWithCollections:(id)collections scores:(id)scores uuid:(id)uuid;
- (ATXSpotlightSuggestionLayout)initWithProto:(id)proto;
- (ATXSpotlightSuggestionLayout)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXSpotlightSuggestionLayout:(id)layout;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXSpotlightSuggestionLayout

- (ATXSpotlightSuggestionLayout)initWithCollections:(id)collections scores:(id)scores uuid:(id)uuid
{
  collectionsCopy = collections;
  scoresCopy = scores;
  uuidCopy = uuid;
  v17.receiver = self;
  v17.super_class = ATXSpotlightSuggestionLayout;
  v11 = [(ATXSpotlightSuggestionLayout *)&v17 init];
  if (v11)
  {
    v12 = [collectionsCopy copy];
    collections = v11->_collections;
    v11->_collections = v12;

    v14 = [scoresCopy copy];
    scores = v11->_scores;
    v11->_scores = v14;

    objc_storeStrong(&v11->_uuid, uuid);
  }

  return v11;
}

- (ATXProactiveSuggestion)highestConfidenceSuggestion
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_collections;
  v23 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  v3 = 0;
  v4 = 0;
  if (v23)
  {
    v5 = 0;
    v22 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v6;
        v7 = *(*(&v30 + 1) + 8 * v6);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        suggestions = [v7 suggestions];
        v8 = [suggestions countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
LABEL_8:
          v11 = 0;
          while (1)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(suggestions);
            }

            v12 = *(*(&v26 + 1) + 8 * v11);
            if (v5 >= [(NSArray *)self->_scores count])
            {
              break;
            }

            v13 = [(NSArray *)self->_scores objectAtIndexedSubscript:v5];
            v14 = v13;
            if (!v4 || ([v13 doubleValue], v16 = v15, objc_msgSend(v4, "doubleValue"), v16 > v17))
            {
              v18 = v14;

              v19 = v12;
              v3 = v19;
              v4 = v18;
            }

            ++v5;

            if (v9 == ++v11)
            {
              v9 = [suggestions countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v9)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        v6 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v23);
  }

  return v3;
}

+ (BOOL)isValidInputWithCollections:(id)collections scores:(id)scores
{
  v20 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  scoresCopy = scores;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [collectionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(collectionsCopy);
        }

        suggestions = [*(*(&v15 + 1) + 8 * i) suggestions];
        v9 += [suggestions count];
      }

      v8 = [collectionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = v9 == [scoresCopy count];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXSpotlightSuggestionLayout allocWithZone:zone];
  collections = self->_collections;
  scores = self->_scores;
  uuid = self->_uuid;

  return [(ATXSpotlightSuggestionLayout *)v4 initWithCollections:collections scores:scores uuid:uuid];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightSuggestionLayout *)self isEqualToATXSpotlightSuggestionLayout:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightSuggestionLayout:(id)layout
{
  layoutCopy = layout;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == layoutCopy[1])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_collections;
  v9 = v8;
  if (v8 == layoutCopy[2])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_13;
    }
  }

  v12 = self->_scores;
  v13 = v12;
  if (v12 == layoutCopy[3])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSArray *)v12 isEqual:?];
  }

LABEL_13:
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXSpotlightSuggestionLayout *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSpotlightSuggestionLayout)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default(v6);
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"protobufData" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXSpotlightSuggestionLayout" errorCode:-1 logHandle:v7];

  v9 = [(ATXSpotlightSuggestionLayout *)self initWithProtoData:v8];
  return v9;
}

- (id)encodeAsProto
{
  proto = [(ATXSpotlightSuggestionLayout *)self proto];
  data = [proto data];

  return data;
}

- (ATXSpotlightSuggestionLayout)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = protoCopy;
      collections = [v6 collections];
      v8 = [collections _pas_mappedArrayWithTransform:&__block_literal_global_19];

      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v6 scoresCount])
      {
        v10 = 0;
        do
        {
          [v6 scoresAtIndex:v10];
          v11 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v9 addObject:v11];

          ++v10;
        }

        while ([v6 scoresCount]> v10);
      }

      v12 = [ATXSpotlightSuggestionLayout isValidInputWithCollections:v8 scores:v9];
      if (v12)
      {
        v13 = objc_alloc(MEMORY[0x1E696AFB0]);
        uuidString = [v6 uuidString];
        v15 = [v13 initWithUUIDString:uuidString];
        self = [(ATXSpotlightSuggestionLayout *)self initWithCollections:v8 scores:v9 uuid:v15];

        selfCopy = self;
      }

      else
      {
        v17 = __atxlog_handle_blending(v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [ATXSpotlightSuggestionLayout initWithProto:v17];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v6 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v6];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

ATXSpotlightSuggestionCollection *__46__ATXSpotlightSuggestionLayout_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXSpotlightSuggestionCollection alloc] initWithProto:v2];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = __atxlog_handle_blending(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __46__ATXSpotlightSuggestionLayout_initWithProto___block_invoke_cold_1(v6);
    }
  }

  return v3;
}

- (ATXSpotlightSuggestionLayout)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBSpotlightSuggestionLayout alloc] initWithData:dataCopy];

    self = [(ATXSpotlightSuggestionLayout *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuidString:uUIDString];

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_collections, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_collections;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
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

        proto = [*(*(&v26 + 1) + 8 * v10) proto];
        if (proto)
        {
          [v5 addObject:proto];
        }

        else
        {
          v12 = __atxlog_handle_default(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            [(ATXSpotlightSuggestionLayout *)&buf proto];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  [v3 setCollections:v13];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = self->_scores;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * i) doubleValue];
        [v3 addScores:?];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v16);
  }

  return v3;
}

- (void)proto
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Unable to construct class ProtoBuf object from ATXProactiveSuggestion. Archived suggestion was nil.", buf, 2u);
}

@end