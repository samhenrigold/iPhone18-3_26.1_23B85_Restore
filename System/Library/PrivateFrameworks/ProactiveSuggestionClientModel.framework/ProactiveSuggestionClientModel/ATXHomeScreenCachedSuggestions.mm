@interface ATXHomeScreenCachedSuggestions
- (ATXHomeScreenCachedSuggestions)initWithCoder:(id)coder;
- (ATXHomeScreenCachedSuggestions)initWithProto:(id)proto;
- (ATXHomeScreenCachedSuggestions)initWithProtoData:(id)data;
- (ATXHomeScreenCachedSuggestions)initWithUUID:(id)d suggestionWidgetLayouts:(id)layouts appPredictionPanelLayouts:(id)panelLayouts topOfStackLayouts:(id)stackLayouts suggestedWidgetLayouts:(id)widgetLayouts fallbackSuggestions:(id)suggestions;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_jsonRawDataForLayoutListMapping:(id)mapping;
- (id)_jsonRawDataForWidgetLayoutMapping:(id)mapping;
- (id)_layoutDictionaryWithKeys:(id)keys protoLayouts:(id)layouts;
- (id)_layoutListDictionaryWithKeys:(id)keys protoLayoutLists:(id)lists;
- (id)_protoLayoutListsFromLayoutListDictionary:(id)dictionary orderedByKeys:(id)keys;
- (id)_protoLayoutsFromLayoutDictionary:(id)dictionary orderedByKeys:(id)keys;
- (id)allSuggestionsInCachedSuggestions;
- (id)compactDescription;
- (id)descriptionWithoutPreviews;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks;
- (id)proto;
- (id)protoForBiome;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHomeScreenCachedSuggestions

- (ATXHomeScreenCachedSuggestions)initWithUUID:(id)d suggestionWidgetLayouts:(id)layouts appPredictionPanelLayouts:(id)panelLayouts topOfStackLayouts:(id)stackLayouts suggestedWidgetLayouts:(id)widgetLayouts fallbackSuggestions:(id)suggestions
{
  dCopy = d;
  layoutsCopy = layouts;
  panelLayoutsCopy = panelLayouts;
  stackLayoutsCopy = stackLayouts;
  widgetLayoutsCopy = widgetLayouts;
  suggestionsCopy = suggestions;
  v34.receiver = self;
  v34.super_class = ATXHomeScreenCachedSuggestions;
  v20 = [(ATXHomeScreenCachedSuggestions *)&v34 init];
  if (v20)
  {
    v21 = [dCopy copy];
    uuid = v20->_uuid;
    v20->_uuid = v21;

    v23 = [layoutsCopy copy];
    cachedSuggestionWidgetLayouts = v20->_cachedSuggestionWidgetLayouts;
    v20->_cachedSuggestionWidgetLayouts = v23;

    v25 = [panelLayoutsCopy copy];
    cachedAppPredictionPanelLayouts = v20->_cachedAppPredictionPanelLayouts;
    v20->_cachedAppPredictionPanelLayouts = v25;

    v27 = [stackLayoutsCopy copy];
    cachedTopOfStackLayouts = v20->_cachedTopOfStackLayouts;
    v20->_cachedTopOfStackLayouts = v27;

    v29 = [widgetLayoutsCopy copy];
    cachedSuggestedWidgetsLayouts = v20->_cachedSuggestedWidgetsLayouts;
    v20->_cachedSuggestedWidgetsLayouts = v29;

    v31 = [suggestionsCopy copy];
    fallbackSuggestions = v20->_fallbackSuggestions;
    v20->_fallbackSuggestions = v31;
  }

  return v20;
}

- (id)allSuggestionsInCachedSuggestions
{
  v3 = objc_opt_new();
  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke;
  v23[3] = &unk_1E86A4720;
  v5 = v3;
  v24 = v5;
  [(NSDictionary *)cachedSuggestionWidgetLayouts enumerateKeysAndObjectsUsingBlock:v23];
  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_2;
  v21[3] = &unk_1E86A4720;
  v7 = v5;
  v22 = v7;
  [(NSDictionary *)cachedAppPredictionPanelLayouts enumerateKeysAndObjectsUsingBlock:v21];
  cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_3;
  v19[3] = &unk_1E86A4720;
  v9 = v7;
  v20 = v9;
  [(NSDictionary *)cachedTopOfStackLayouts enumerateKeysAndObjectsUsingBlock:v19];
  cachedSuggestedWidgetsLayouts = self->_cachedSuggestedWidgetsLayouts;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_4;
  v17 = &unk_1E86A4748;
  v18 = v9;
  v11 = v9;
  [(NSDictionary *)cachedSuggestedWidgetsLayouts enumerateKeysAndObjectsUsingBlock:&v14];
  [v11 addObjectsFromArray:{self->_fallbackSuggestions, v14, v15, v16, v17}];
  v12 = [v11 copy];

  return v12;
}

void __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allSuggestionsInLayout];
  [v3 addObjectsFromArray:v4];
}

void __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allSuggestionsInLayout];
  [v3 addObjectsFromArray:v4];
}

void __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allSuggestionsInLayout];
  [v3 addObjectsFromArray:v4];
}

void __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        v10 = [*(*(&v11 + 1) + 8 * v8) allSuggestionsInLayout];
        [v9 addObjectsFromArray:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks
{
  v3 = objc_opt_new();
  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke;
  v23[3] = &unk_1E86A4720;
  v5 = v3;
  v24 = v5;
  [(NSDictionary *)cachedSuggestionWidgetLayouts enumerateKeysAndObjectsUsingBlock:v23];
  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_2;
  v21[3] = &unk_1E86A4720;
  v7 = v5;
  v22 = v7;
  [(NSDictionary *)cachedAppPredictionPanelLayouts enumerateKeysAndObjectsUsingBlock:v21];
  cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_3;
  v19[3] = &unk_1E86A4720;
  v9 = v7;
  v20 = v9;
  [(NSDictionary *)cachedTopOfStackLayouts enumerateKeysAndObjectsUsingBlock:v19];
  cachedSuggestedWidgetsLayouts = self->_cachedSuggestedWidgetsLayouts;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_4;
  v17 = &unk_1E86A4748;
  v18 = v9;
  v11 = v9;
  [(NSDictionary *)cachedSuggestedWidgetsLayouts enumerateKeysAndObjectsUsingBlock:&v14];
  v12 = [v11 copy];

  return v12;
}

void __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:*MEMORY[0x1E698AFC8]] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E698AFD0]) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E698AFD8]) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [v5 minSuggestionListInLayout];
    [v6 addObjectsFromArray:v7];
  }
}

void __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (([a2 isEqualToString:*MEMORY[0x1E698AF60]] & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [v7 minSuggestionListInLayout];
    [v5 addObjectsFromArray:v6];
  }
}

void __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 minSuggestionListInLayout];
  [v3 addObjectsFromArray:v4];
}

void __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        v10 = [*(*(&v11 + 1) + 8 * v8) minSuggestionListInLayout];
        [v9 addObjectsFromArray:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uuid = [(ATXHomeScreenCachedSuggestions *)self uuid];
      uuid2 = [(ATXHomeScreenCachedSuggestions *)v5 uuid];

      v8 = [uuid isEqual:uuid2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)compactDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendFormat:@"\n\n=== HomeScreenCachedSuggestions (ID: %@) ===\n", uUIDString];

  [v3 appendString:@"\n1. Layouts For Suggestion Widgets\n"]);
  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __45__ATXHomeScreenCachedSuggestions_description__block_invoke;
  v40[3] = &unk_1E86A4720;
  v6 = v3;
  v41 = v6;
  [(NSDictionary *)cachedSuggestionWidgetLayouts enumerateKeysAndObjectsUsingBlock:v40];
  [v6 appendString:@"\n2. Layouts for App Prediction Panels\n"]);
  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __45__ATXHomeScreenCachedSuggestions_description__block_invoke_2;
  v38[3] = &unk_1E86A4720;
  v8 = v6;
  v39 = v8;
  [(NSDictionary *)cachedAppPredictionPanelLayouts enumerateKeysAndObjectsUsingBlock:v38];
  [v8 appendString:@"\n3. Stack Suggestions\n"]);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(NSDictionary *)self->_cachedTopOfStackLayouts allKeys];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        [v8 appendFormat:@"\nStack ID: %@\n", v13];
        [v8 appendString:@"\n Top of Stack \n"];
        v14 = [(NSDictionary *)self->_cachedTopOfStackLayouts objectForKeyedSubscript:v13];
        v15 = [v14 description];
        [v8 appendString:v15];

        [v8 appendString:@"\n Suggested Widgets \n"];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = [(NSDictionary *)self->_cachedSuggestedWidgetsLayouts objectForKeyedSubscript:v13];
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v30 + 1) + 8 * j) description];
              [v8 appendString:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v18);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v10);
  }

  [v8 appendString:@"\n4. Fallback Suggestions\n"]);
  fallbackSuggestions = self->_fallbackSuggestions;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __45__ATXHomeScreenCachedSuggestions_description__block_invoke_3;
  v28[3] = &unk_1E86A4770;
  v23 = v8;
  v29 = v23;
  [(NSArray *)fallbackSuggestions enumerateObjectsUsingBlock:v28];
  v24 = v29;
  v25 = v23;

  return v23;
}

void __45__ATXHomeScreenCachedSuggestions_description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendFormat:@"\nWidget ID: %@\n", a2];
  v7 = *(a1 + 32);
  v8 = [v6 description];

  [v7 appendString:v8];
}

void __45__ATXHomeScreenCachedSuggestions_description__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendFormat:@"\nApp Prediction Panel ID: %@\n", a2];
  v7 = *(a1 + 32);
  v8 = [v6 description];

  [v7 appendString:v8];
}

void __45__ATXHomeScreenCachedSuggestions_description__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 appendString:v3];
}

- (id)descriptionWithoutPreviews
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendFormat:@"\n\n=== HomeScreenCachedSuggestions (ID: %@) ===\n", uUIDString];

  [v3 appendString:@"\n1. Layouts For Suggestion Widgets\n"]);
  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke;
  v40[3] = &unk_1E86A4720;
  v6 = v3;
  v41 = v6;
  [(NSDictionary *)cachedSuggestionWidgetLayouts enumerateKeysAndObjectsUsingBlock:v40];
  [v6 appendString:@"\n2. Layouts For App Prediction Panels\n"]);
  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke_2;
  v38[3] = &unk_1E86A4720;
  v8 = v6;
  v39 = v8;
  [(NSDictionary *)cachedAppPredictionPanelLayouts enumerateKeysAndObjectsUsingBlock:v38];
  [v8 appendString:@"\n3. Stack Suggestions\n"]);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(NSDictionary *)self->_cachedTopOfStackLayouts allKeys];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        [v8 appendFormat:@"\nStack ID: %@\n", v13];
        [v8 appendString:@"\n Top of Stack \n"];
        v14 = [(NSDictionary *)self->_cachedTopOfStackLayouts objectForKeyedSubscript:v13];
        v15 = [v14 description];
        [v8 appendString:v15];

        [v8 appendString:@"\n Suggested Widgets \n"];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = [(NSDictionary *)self->_cachedSuggestedWidgetsLayouts objectForKeyedSubscript:v13];
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v30 + 1) + 8 * j) description];
              [v8 appendString:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v18);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v10);
  }

  [v8 appendString:@"\n4. Fallback Suggestions\n"]);
  fallbackSuggestions = self->_fallbackSuggestions;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke_3;
  v28[3] = &unk_1E86A4770;
  v23 = v8;
  v29 = v23;
  [(NSArray *)fallbackSuggestions enumerateObjectsUsingBlock:v28];
  v24 = v29;
  v25 = v23;

  return v23;
}

void __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:*MEMORY[0x1E698AFC8]] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E698AFD0]) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E698AFD8]) & 1) == 0)
  {
    [*(a1 + 32) appendFormat:@"\nWidget ID: %@\n", v8];
    v6 = *(a1 + 32);
    v7 = [v5 description];
    [v6 appendString:v7];
  }
}

void __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:*MEMORY[0x1E698AF60]] & 1) == 0)
  {
    [*(a1 + 32) appendFormat:@"\nApp Prediction Panel ID: %@\n", v8];
    v6 = *(a1 + 32);
    v7 = [v5 description];
    [v6 appendString:v7];
  }
}

void __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 appendString:v3];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXHomeScreenCachedSuggestions *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXHomeScreenCachedSuggestions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXHomeScreenCachedSuggestions *)self initWithProtoData:v5];
  return v6;
}

- (ATXHomeScreenCachedSuggestions)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBHomeScreenCachedSuggestion alloc] initWithData:dataCopy];

    self = [(ATXHomeScreenCachedSuggestions *)self initWithProto:v5];
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
  proto = [(ATXHomeScreenCachedSuggestions *)self proto];
  data = [proto data];

  return data;
}

- (ATXHomeScreenCachedSuggestions)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v21 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenCachedSuggestions *)self initWithProto:v21];
    }

    goto LABEL_9;
  }

  v6 = protoCopy;
  fallbackSuggestions = [(ATXPBHomeScreenCachedSuggestion *)v6 fallbackSuggestions];
  v8 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:fallbackSuggestions];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v10 = v8;
  }

  v27 = v10;

  v11 = objc_alloc(MEMORY[0x1E696AFB0]);
  uuidString = [(ATXPBHomeScreenCachedSuggestion *)v6 uuidString];
  v24 = [v11 initWithUUIDString:uuidString];
  cachedSuggestionWidgetIds = [(ATXPBHomeScreenCachedSuggestion *)v6 cachedSuggestionWidgetIds];
  cachedSuggestionWidgetLayouts = [(ATXPBHomeScreenCachedSuggestion *)v6 cachedSuggestionWidgetLayouts];
  v12 = [(ATXHomeScreenCachedSuggestions *)self _layoutDictionaryWithKeys:cachedSuggestionWidgetIds protoLayouts:cachedSuggestionWidgetLayouts];
  cachedAppPredictionPanelIds = [(ATXPBHomeScreenCachedSuggestion *)v6 cachedAppPredictionPanelIds];
  cachedAppPredictionPanelLayouts = [(ATXPBHomeScreenCachedSuggestion *)v6 cachedAppPredictionPanelLayouts];
  v13 = [(ATXHomeScreenCachedSuggestions *)self _layoutDictionaryWithKeys:cachedAppPredictionPanelIds protoLayouts:cachedAppPredictionPanelLayouts];
  cachedTopOfStackLayoutKeys = [(ATXPBHomeScreenCachedSuggestion *)v6 cachedTopOfStackLayoutKeys];
  cachedTopOfStackLayouts = [(ATXPBHomeScreenCachedSuggestion *)v6 cachedTopOfStackLayouts];
  v15 = [(ATXHomeScreenCachedSuggestions *)self _layoutDictionaryWithKeys:cachedTopOfStackLayoutKeys protoLayouts:cachedTopOfStackLayouts];
  cachedSuggestedWidgetLayoutListKeys = [(ATXPBHomeScreenCachedSuggestion *)v6 cachedSuggestedWidgetLayoutListKeys];
  cachedSuggestedWidgetLayoutLists = [(ATXPBHomeScreenCachedSuggestion *)v6 cachedSuggestedWidgetLayoutLists];

  v18 = [(ATXHomeScreenCachedSuggestions *)self _layoutListDictionaryWithKeys:cachedSuggestedWidgetLayoutListKeys protoLayoutLists:cachedSuggestedWidgetLayoutLists];
  v19 = [(ATXHomeScreenCachedSuggestions *)self initWithUUID:v24 suggestionWidgetLayouts:v12 appPredictionPanelLayouts:v13 topOfStackLayouts:v15 suggestedWidgetLayouts:v18 fallbackSuggestions:v27];

  self = v19;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setUuidString:uUIDString];

  allKeys = [(NSDictionary *)self->_cachedSuggestionWidgetLayouts allKeys];
  v6 = [allKeys mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestionWidgetIds:v6];

  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  cachedSuggestionWidgetIds = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetIds];
  v9 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedSuggestionWidgetLayouts orderedByKeys:cachedSuggestionWidgetIds];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestionWidgetLayouts:v9];

  allKeys2 = [(NSDictionary *)self->_cachedTopOfStackLayouts allKeys];
  v11 = [allKeys2 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedTopOfStackLayoutKeys:v11];

  cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts;
  cachedTopOfStackLayoutKeys = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedTopOfStackLayoutKeys];
  v14 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedTopOfStackLayouts orderedByKeys:cachedTopOfStackLayoutKeys];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedTopOfStackLayouts:v14];

  v15 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_fallbackSuggestions];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setFallbackSuggestions:v15];

  allKeys3 = [(NSDictionary *)self->_cachedAppPredictionPanelLayouts allKeys];
  v17 = [allKeys3 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedAppPredictionPanelIds:v17];

  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  cachedAppPredictionPanelIds = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelIds];
  v20 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedAppPredictionPanelLayouts orderedByKeys:cachedAppPredictionPanelIds];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedAppPredictionPanelLayouts:v20];

  allKeys4 = [(NSDictionary *)self->_cachedSuggestedWidgetsLayouts allKeys];
  v22 = [allKeys4 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestedWidgetLayoutListKeys:v22];

  cachedSuggestedWidgetsLayouts = self->_cachedSuggestedWidgetsLayouts;
  cachedSuggestedWidgetLayoutListKeys = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestedWidgetLayoutListKeys];
  v25 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutListsFromLayoutListDictionary:cachedSuggestedWidgetsLayouts orderedByKeys:cachedSuggestedWidgetLayoutListKeys];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestedWidgetLayoutLists:v25];

  return v3;
}

- (id)protoForBiome
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setUuidString:uUIDString];

  allKeys = [(NSDictionary *)self->_cachedSuggestionWidgetLayouts allKeys];
  v6 = [allKeys mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestionWidgetIds:v6];

  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  cachedSuggestionWidgetIds = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetIds];
  v9 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedSuggestionWidgetLayouts orderedByKeys:cachedSuggestionWidgetIds];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestionWidgetLayouts:v9];

  v10 = objc_opt_new();
  cachedSuggestionWidgetIds2 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetIds];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __47__ATXHomeScreenCachedSuggestions_protoForBiome__block_invoke;
  v42[3] = &unk_1E86A4798;
  v43 = v10;
  v12 = v10;
  [cachedSuggestionWidgetIds2 enumerateObjectsUsingBlock:v42];

  cachedSuggestionWidgetIds3 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetIds];
  [cachedSuggestionWidgetIds3 removeObjectsAtIndexes:v12];

  cachedSuggestionWidgetLayouts = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetLayouts];
  [cachedSuggestionWidgetLayouts removeObjectsAtIndexes:v12];

  allKeys2 = [(NSDictionary *)self->_cachedTopOfStackLayouts allKeys];
  v16 = [allKeys2 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedTopOfStackLayoutKeys:v16];

  cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts;
  cachedTopOfStackLayoutKeys = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedTopOfStackLayoutKeys];
  v19 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedTopOfStackLayouts orderedByKeys:cachedTopOfStackLayoutKeys];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedTopOfStackLayouts:v19];

  allKeys3 = [(NSDictionary *)self->_cachedSuggestedWidgetsLayouts allKeys];
  v21 = [allKeys3 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestedWidgetLayoutListKeys:v21];

  cachedSuggestedWidgetsLayouts = self->_cachedSuggestedWidgetsLayouts;
  cachedSuggestedWidgetLayoutListKeys = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestedWidgetLayoutListKeys];
  v24 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutListsFromLayoutListDictionary:cachedSuggestedWidgetsLayouts orderedByKeys:cachedSuggestedWidgetLayoutListKeys];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestedWidgetLayoutLists:v24];

  v25 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_fallbackSuggestions];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setFallbackSuggestions:v25];

  v26 = objc_opt_new();
  allKeys4 = [(NSDictionary *)self->_cachedAppPredictionPanelLayouts allKeys];
  v28 = [allKeys4 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedAppPredictionPanelIds:v28];

  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  cachedAppPredictionPanelIds = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelIds];
  v31 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedAppPredictionPanelLayouts orderedByKeys:cachedAppPredictionPanelIds];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedAppPredictionPanelLayouts:v31];

  cachedAppPredictionPanelIds2 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelIds];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __47__ATXHomeScreenCachedSuggestions_protoForBiome__block_invoke_2;
  v40 = &unk_1E86A4798;
  v41 = v26;
  v33 = v26;
  [cachedAppPredictionPanelIds2 enumerateObjectsUsingBlock:&v37];

  cachedAppPredictionPanelIds3 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelIds];
  [cachedAppPredictionPanelIds3 removeObjectsAtIndexes:{v33, v37, v38, v39, v40}];

  cachedAppPredictionPanelLayouts = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelLayouts];
  [cachedAppPredictionPanelLayouts removeObjectsAtIndexes:v33];

  return v3;
}

void __47__ATXHomeScreenCachedSuggestions_protoForBiome__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 isEqualToString:*MEMORY[0x1E698AFC8]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E698AFD0]) & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E698AFD8]))
  {
    [*(a1 + 32) addIndex:a3];
  }
}

void *__47__ATXHomeScreenCachedSuggestions_protoForBiome__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 isEqualToString:*MEMORY[0x1E698AF60]];
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

- (id)_layoutDictionaryWithKeys:(id)keys protoLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v6 = MEMORY[0x1E695DF90];
  keysCopy = keys;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__ATXHomeScreenCachedSuggestions__layoutDictionaryWithKeys_protoLayouts___block_invoke;
  v14[3] = &unk_1E86A47C0;
  v15 = layoutsCopy;
  v9 = v8;
  v16 = v9;
  v10 = layoutsCopy;
  [keysCopy enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __73__ATXHomeScreenCachedSuggestions__layoutDictionaryWithKeys_protoLayouts___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [ATXSuggestionLayout alloc];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = [(ATXSuggestionLayout *)v6 initWithProto:v7];

  if (v8)
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }

  else
  {
    v10 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __73__ATXHomeScreenCachedSuggestions__layoutDictionaryWithKeys_protoLayouts___block_invoke_cold_1(v10, v11, v12);
    }
  }
}

- (id)_protoLayoutsFromLayoutDictionary:(id)dictionary orderedByKeys:(id)keys
{
  dictionaryCopy = dictionary;
  v6 = MEMORY[0x1E695DF70];
  keysCopy = keys;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__ATXHomeScreenCachedSuggestions__protoLayoutsFromLayoutDictionary_orderedByKeys___block_invoke;
  v14[3] = &unk_1E86A47C0;
  v15 = dictionaryCopy;
  v9 = v8;
  v16 = v9;
  v10 = dictionaryCopy;
  [keysCopy enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __82__ATXHomeScreenCachedSuggestions__protoLayoutsFromLayoutDictionary_orderedByKeys___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v3 proto];

  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v6 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __82__ATXHomeScreenCachedSuggestions__protoLayoutsFromLayoutDictionary_orderedByKeys___block_invoke_cold_1(v6, v7, v8);
    }
  }
}

- (id)_layoutListDictionaryWithKeys:(id)keys protoLayoutLists:(id)lists
{
  listsCopy = lists;
  v6 = MEMORY[0x1E695DF90];
  keysCopy = keys;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__ATXHomeScreenCachedSuggestions__layoutListDictionaryWithKeys_protoLayoutLists___block_invoke;
  v14[3] = &unk_1E86A47C0;
  v15 = listsCopy;
  v9 = v8;
  v16 = v9;
  v10 = listsCopy;
  [keysCopy enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __81__ATXHomeScreenCachedSuggestions__layoutListDictionaryWithKeys_protoLayoutLists___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:-[ATXPBSuggestionLayoutList layoutsCount](v4)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(ATXPBSuggestionLayoutList *)v4 layouts];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[ATXSuggestionLayout alloc] initWithProto:*(*(&v17 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = __atxlog_handle_default(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            __81__ATXHomeScreenCachedSuggestions__layoutListDictionaryWithKeys_protoLayoutLists___block_invoke_cold_1(&v15, v16, v12);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [*(a1 + 40) setObject:v5 forKeyedSubscript:v14];
}

- (id)_protoLayoutListsFromLayoutListDictionary:(id)dictionary orderedByKeys:(id)keys
{
  dictionaryCopy = dictionary;
  v6 = MEMORY[0x1E695DF70];
  keysCopy = keys;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__ATXHomeScreenCachedSuggestions__protoLayoutListsFromLayoutListDictionary_orderedByKeys___block_invoke;
  v14[3] = &unk_1E86A47C0;
  v15 = dictionaryCopy;
  v9 = v8;
  v16 = v9;
  v10 = dictionaryCopy;
  [keysCopy enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __90__ATXHomeScreenCachedSuggestions__protoLayoutListsFromLayoutListDictionary_orderedByKeys___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) proto];
        if (v10)
        {
          [(ATXPBSuggestionLayoutList *)v4 addLayout:v10];
        }

        else
        {
          v11 = __atxlog_handle_default(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            __90__ATXHomeScreenCachedSuggestions__protoLayoutListsFromLayoutListDictionary_orderedByKeys___block_invoke_cold_1(&v12, v13, v11);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) addObject:v4];
}

- (id)_jsonRawDataForWidgetLayoutMapping:(id)mapping
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  mappingCopy = mapping;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x1E698AFD0];
  v19[0] = *MEMORY[0x1E698AFC8];
  v19[1] = v6;
  v7 = *MEMORY[0x1E698AF60];
  v19[2] = *MEMORY[0x1E698AFD8];
  v19[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v9 = [v5 initWithArray:v8];

  v10 = objc_opt_new();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__ATXHomeScreenCachedSuggestions__jsonRawDataForWidgetLayoutMapping___block_invoke;
  v16[3] = &unk_1E86A47E8;
  v17 = v9;
  v11 = v10;
  v18 = v11;
  v12 = v9;
  [mappingCopy enumerateKeysAndObjectsUsingBlock:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

void __69__ATXHomeScreenCachedSuggestions__jsonRawDataForWidgetLayoutMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    v6 = [v5 jsonRawData];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)_jsonRawDataForLayoutListMapping:(id)mapping
{
  mappingCopy = mapping;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ATXHomeScreenCachedSuggestions__jsonRawDataForLayoutListMapping___block_invoke;
  v7[3] = &unk_1E86A4748;
  v5 = v4;
  v8 = v5;
  [mappingCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __67__ATXHomeScreenCachedSuggestions__jsonRawDataForLayoutListMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_14];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)jsonRawData
{
  v12[6] = *MEMORY[0x1E69E9840];
  v11[0] = @"uuid";
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v12[0] = uUIDString;
  v11[1] = @"cachedSuggestionWidgetLayouts";
  v4 = [(ATXHomeScreenCachedSuggestions *)self _jsonRawDataForWidgetLayoutMapping:self->_cachedSuggestionWidgetLayouts];
  v12[1] = v4;
  v11[2] = @"cachedAppPredictionPanelLayouts";
  v5 = [(ATXHomeScreenCachedSuggestions *)self _jsonRawDataForWidgetLayoutMapping:self->_cachedAppPredictionPanelLayouts];
  v12[2] = v5;
  v11[3] = @"cachedTopOfStackLayouts";
  v6 = [(ATXHomeScreenCachedSuggestions *)self _jsonRawDataForWidgetLayoutMapping:self->_cachedTopOfStackLayouts];
  v12[3] = v6;
  v11[4] = @"cachedSuggestedWidgetsLayouts";
  v7 = [(ATXHomeScreenCachedSuggestions *)self _jsonRawDataForLayoutListMapping:self->_cachedSuggestedWidgetsLayouts];
  v12[4] = v7;
  v11[5] = @"fallbackSuggestions";
  v8 = [(NSArray *)self->_fallbackSuggestions _pas_mappedArrayWithTransform:&__block_literal_global_83_0];
  v12[5] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "ATXHomeScreenCachedSuggestions: Unable to construct class %@ from ProtoBuf object", &v5, 0xCu);
}

void __81__ATXHomeScreenCachedSuggestions__layoutListDictionaryWithKeys_protoLayoutLists___block_invoke_cold_1(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_7(&dword_1DEFC4000, a3, a3, "ATXHomeScreenCachedSuggestions: Unable to construct class ATXSuggestionLayout from ProtoBuf object", a1);
}

void __90__ATXHomeScreenCachedSuggestions__protoLayoutListsFromLayoutListDictionary_orderedByKeys___block_invoke_cold_1(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_7(&dword_1DEFC4000, a3, a3, "ATXHomeScreenCachedSuggestions: Unable to construct ProtoBuf object from ATXSuggestionLayout", a1);
}

@end