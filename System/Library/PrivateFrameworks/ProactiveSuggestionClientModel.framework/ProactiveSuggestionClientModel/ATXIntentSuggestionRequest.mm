@interface ATXIntentSuggestionRequest
- (ATXIntentSuggestionRequest)initWithCoder:(id)coder;
- (ATXIntentSuggestionRequest)initWithOriginatorId:(id)id consumerSubType:(unsigned __int8)type bundleIds:(id)ids intentClassNames:(id)names limit:(id)limit;
- (ATXIntentSuggestionRequest)initWithProto:(id)proto;
- (ATXIntentSuggestionRequest)initWithProtoData:(id)data;
- (ATXIntentSuggestionRequest)initWithUUID:(id)d originatorId:(id)id consumerSubType:(unsigned __int8)type bundleIds:(id)ids intentClassNames:(id)names limit:(id)limit timeout:(double)timeout;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXIntentSuggestionRequest

- (ATXIntentSuggestionRequest)initWithOriginatorId:(id)id consumerSubType:(unsigned __int8)type bundleIds:(id)ids intentClassNames:(id)names limit:(id)limit
{
  typeCopy = type;
  limitCopy = limit;
  namesCopy = names;
  idsCopy = ids;
  idCopy = id;
  v16 = objc_opt_new();
  v17 = [(ATXIntentSuggestionRequest *)self initWithUUID:v16 originatorId:idCopy consumerSubType:typeCopy bundleIds:idsCopy intentClassNames:namesCopy limit:limitCopy timeout:10.0];

  return v17;
}

- (ATXIntentSuggestionRequest)initWithUUID:(id)d originatorId:(id)id consumerSubType:(unsigned __int8)type bundleIds:(id)ids intentClassNames:(id)names limit:(id)limit timeout:(double)timeout
{
  typeCopy = type;
  idsCopy = ids;
  namesCopy = names;
  limitCopy = limit;
  v22.receiver = self;
  v22.super_class = ATXIntentSuggestionRequest;
  v20 = [(ATXSuggestionRequest *)&v22 initWithUUID:d originatorId:id consumerSubType:typeCopy timeout:timeout];
  if (v20)
  {
    if ([idsCopy count])
    {
      objc_storeStrong(&v20->_bundleIds, ids);
    }

    if ([namesCopy count])
    {
      objc_storeStrong(&v20->_intentClassNames, names);
    }

    objc_storeStrong(&v20->_limit, limit);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ATXIntentSuggestionRequest;
    if ([(ATXSuggestionRequest *)&v16 isEqual:equalCopy])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = equalCopy;
        v6 = self->_limit;
        v7 = v6;
        if (v6 == v5->_limit)
        {
        }

        else
        {
          v8 = [(NSNumber *)v6 isEqual:?];

          if ((v8 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v10 = self->_bundleIds;
        v11 = v10;
        if (v10 == v5->_bundleIds)
        {
        }

        else
        {
          v12 = [(NSArray *)v10 isEqual:?];

          if ((v12 & 1) == 0)
          {
LABEL_12:
            v9 = 0;
LABEL_18:

            goto LABEL_19;
          }
        }

        v13 = self->_intentClassNames;
        v14 = v13;
        if (v13 == v5->_intentClassNames)
        {
          v9 = 1;
        }

        else
        {
          v9 = [(NSArray *)v13 isEqual:?];
        }

        goto LABEL_18;
      }
    }

    v9 = 0;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ATXIntentSuggestionRequest;
  v3 = [(ATXSuggestionRequest *)&v7 hash];
  v4 = [(NSArray *)self->_bundleIds hash]- v3 + 32 * v3;
  v5 = [(NSArray *)self->_intentClassNames hash]- v4 + 32 * v4;
  return [(NSNumber *)self->_limit hash]- v5 + 32 * v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXIntentSuggestionRequest *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXIntentSuggestionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXIntentSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXIntentSuggestionRequest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBRequestForIntentSuggestions alloc] initWithData:dataCopy];

    self = [(ATXIntentSuggestionRequest *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXIntentSuggestionRequest *)self proto];
  data = [proto data];

  return data;
}

- (ATXIntentSuggestionRequest)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v16 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ATXIntentSuggestionRequest initWithProto:protoCopy];
    }

    goto LABEL_8;
  }

  v6 = protoCopy;
  v7 = [ATXSuggestionRequest alloc];
  base = [v6 base];
  v9 = [(ATXSuggestionRequest *)v7 initWithProto:base];

  requestUUID = [(ATXSuggestionRequest *)v9 requestUUID];
  originatorId = [(ATXSuggestionRequest *)v9 originatorId];
  consumerSubType = [(ATXSuggestionRequest *)v9 consumerSubType];
  bundleIds = [v6 bundleIds];
  intentClassNames = [v6 intentClassNames];
  hasLimit = [v6 hasLimit];
  if (hasLimit)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "limit")}];
  }

  else
  {
    v15 = 0;
  }

  [(ATXSuggestionRequest *)v9 timeout];
  self = [(ATXIntentSuggestionRequest *)self initWithUUID:requestUUID originatorId:originatorId consumerSubType:consumerSubType bundleIds:bundleIds intentClassNames:intentClassNames limit:v15 timeout:?];
  if (hasLimit)
  {
  }

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)proto
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v27.receiver = self;
  v27.super_class = ATXIntentSuggestionRequest;
  proto = [(ATXSuggestionRequest *)&v27 proto];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v3 setBase:proto];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = self->_bundleIds;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 addBundleIds:*(*(&v23 + 1) + 8 * i)];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v8);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = self->_intentClassNames;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v3 addIntentClassNames:{*(*(&v19 + 1) + 8 * j), v19}];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v13);
    }

    if (self->_limit)
    {
      [v3 setHasLimit:1];
      [v3 setLimit:{-[NSNumber intValue](self->_limit, "intValue")}];
    }

    else
    {
      [v3 setHasLimit:0];
    }

    v17 = v3;
  }

  else
  {
    v16 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(ATXIntentSuggestionRequest *)proto proto];
    }

    v17 = 0;
  }

  return v17;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1)
{
  objc_opt_class();
  v7 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1DEFC4000, v1, v2, "%s: Returning nil because input proto is of unexpected class %{public}@", v3, v4, v5, v6, v7);
}

- (void)proto
{
  objc_opt_class();
  v7 = 136315394;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1DEFC4000, v1, v2, "%s: Returning nil because [super proto] is of unexpected class %{public}@", v3, v4, v5, v6, v7);
}

@end