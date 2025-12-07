@interface CPLClientCacheBaseView
+ (id)clientCacheBaseViewIDMappingForStore:(id)store;
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (CPLClientCacheBaseView)initWithStore:(id)store;
- (id)recordViewWithScopedIdentifier:(id)identifier;
- (id)recordViewsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier;
- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
@end

@implementation CPLClientCacheBaseView

- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  idMapping = [(CPLClientCacheBaseView *)self idMapping];
  v12 = 0;
  v8 = [idMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v12];

  if (v8)
  {
    cloudCache = [(CPLClientCacheBaseView *)self cloudCache];
    v10 = [cloudCache countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:v8 class:class];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idMapping = [(CPLClientCacheBaseView *)self idMapping];
  v10 = 0;
  v6 = [idMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v10];

  if (v6)
  {
    cloudCache = [(CPLClientCacheBaseView *)self cloudCache];
    v8 = [cloudCache hasRecordAcknowledgedByClientWithScopedIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idMapping = [(CPLClientCacheBaseView *)self idMapping];
  v11 = 0;
  v6 = [idMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v11];

  if (v6 && (-[CPLClientCacheBaseView cloudCache](self, "cloudCache"), v7 = objc_claimAutoreleasedReturnValue(), [v7 relatedScopedIdentifierForRecordWithScopedIdentifier:v6 isFinal:1], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = [idMapping localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)recordViewsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v23 = 0;
  v7 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v23];
  v8 = v7;
  if (v7)
  {
    v18 = v7;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [(CPLEngineCloudCache *)self->_cloudCache recordsAcknowledgedByClientWithRelatedScopedIdentifier:v7 class:class];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v16 = [[CPLClientCacheRecordView alloc] initWithLocalScopedIdentifier:0 cloudRecord:v15 idMapping:self->_idMapping];
          [v12 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v8 = v18;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)recordViewWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v5 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v10];
  if (v5 && ([(CPLEngineCloudCache *)self->_cloudCache recordAcknowledgedByClientWithScopedIdentifier:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [[CPLClientCacheRecordView alloc] initWithLocalScopedIdentifier:identifierCopy cloudRecord:v6 idMapping:self->_idMapping];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CPLClientCacheBaseView)initWithStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CPLClientCacheBaseView;
  v6 = [(CPLClientCacheBaseView *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    cloudCache = [storeCopy cloudCache];
    cloudCache = v7->_cloudCache;
    v7->_cloudCache = cloudCache;

    v10 = [objc_opt_class() clientCacheBaseViewIDMappingForStore:storeCopy];
    idMapping = v7->_idMapping;
    v7->_idMapping = v10;
  }

  return v7;
}

+ (id)clientCacheBaseViewIDMappingForStore:(id)store
{
  storeCopy = store;
  v4 = [_CPLOptimisticIDMapping alloc];
  idMapping = [storeCopy idMapping];

  v6 = [(_CPLOptimisticIDMapping *)v4 initWithIDMapping:idMapping];

  return v6;
}

@end