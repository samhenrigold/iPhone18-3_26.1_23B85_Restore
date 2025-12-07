@interface ATXInfoEngineCachedSuggestions
- (ATXInfoEngineCachedSuggestions)initWithProto:(id)proto;
- (ATXInfoEngineCachedSuggestions)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXInfoEngineCachedSuggestions

- (ATXInfoEngineCachedSuggestions)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBInfoEngineCachedSuggestions alloc] initWithData:dataCopy];

    self = [(ATXInfoEngineCachedSuggestions *)self initWithProto:v5];
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
  proto = [(ATXInfoEngineCachedSuggestions *)self proto];
  data = [proto data];

  return data;
}

- (ATXInfoEngineCachedSuggestions)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = protoCopy;
      v7 = [(ATXPBInfoEngineCachedSuggestions *)v6 length];
      cachedSuggestionIds = [(ATXPBInfoEngineCachedSuggestions *)v6 cachedSuggestionIds];
      cachedSuggestionSourceIds = [(ATXPBInfoEngineCachedSuggestions *)v6 cachedSuggestionSourceIds];
      v10 = [cachedSuggestionIds count];
      if (v10 == v7 && (v10 = [cachedSuggestionSourceIds count], v10 == v7))
      {
        v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __48__ATXInfoEngineCachedSuggestions_initWithProto___block_invoke;
        v18[3] = &unk_1E80C3C88;
        v19 = cachedSuggestionSourceIds;
        v12 = v11;
        v20 = v12;
        [cachedSuggestionIds enumerateObjectsUsingBlock:v18];
        v17.receiver = self;
        v17.super_class = ATXInfoEngineCachedSuggestions;
        v13 = [(ATXInfoEngineCachedSuggestions *)&v17 init];
        v14 = v13;
        if (v13)
        {
          objc_storeStrong(&v13->_entries, v11);
        }

        self = v14;

        selfCopy = self;
      }

      else
      {
        v12 = __atxlog_handle_gi(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          [ATXInfoEngineCachedSuggestions initWithProto:v12];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v6 = __atxlog_handle_gi(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXInfoEngineCachedSuggestions *)self initWithProto:v6];
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

void __48__ATXInfoEngineCachedSuggestions_initWithProto___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_opt_new();
  [v7 setSuggestionId:v5];

  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v7 setSourceId:v6];

  [*(a1 + 40) addObject:v7];
}

- (id)proto
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_entries, "count")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_entries, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_entries;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        suggestionId = [v10 suggestionId];
        [v3 addObject:suggestionId];

        sourceId = [v10 sourceId];
        [v4 addObject:sourceId];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = objc_opt_new();
  [(ATXPBInfoEngineCachedSuggestions *)v13 setLength:?];
  [(ATXPBInfoEngineCachedSuggestions *)v13 setCachedSuggestionIds:v3];
  [(ATXPBInfoEngineCachedSuggestions *)v13 setCachedSuggestionSourceIds:v4];

  return v13;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXInfoEngineCachedSuggestions: Unable to construct class %@ from ProtoBuf object", &v5, 0xCu);
}

@end