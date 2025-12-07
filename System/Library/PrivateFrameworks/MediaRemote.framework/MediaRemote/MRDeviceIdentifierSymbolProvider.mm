@interface MRDeviceIdentifierSymbolProvider
+ (id)currentDeviceRoutingSymbolName;
+ (id)sharedProvider;
- (MRDeviceIdentifierSymbolProvider)init;
- (id)symbolNameForModelID:(id)d;
- (id)symbolNameForProductIdentifier:(id)identifier;
@end

@implementation MRDeviceIdentifierSymbolProvider

+ (id)currentDeviceRoutingSymbolName
{
  if (currentDeviceRoutingSymbolName_onceToken != -1)
  {
    +[MRDeviceIdentifierSymbolProvider currentDeviceRoutingSymbolName];
  }

  v3 = currentDeviceRoutingSymbolName___symbolName;

  return v3;
}

+ (id)sharedProvider
{
  if (sharedProvider___once != -1)
  {
    +[MRDeviceIdentifierSymbolProvider sharedProvider];
  }

  v3 = sharedProvider___provider;

  return v3;
}

void __50__MRDeviceIdentifierSymbolProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(MRDeviceIdentifierSymbolProvider);
  v1 = sharedProvider___provider;
  sharedProvider___provider = v0;
}

- (MRDeviceIdentifierSymbolProvider)init
{
  v7.receiver = self;
  v7.super_class = MRDeviceIdentifierSymbolProvider;
  v2 = [(MRDeviceIdentifierSymbolProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cache = v3->_cache;
    v3->_cache = dictionary;
  }

  return v3;
}

- (id)symbolNameForModelID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    cache = [(MRDeviceIdentifierSymbolProvider *)self cache];
    v6 = [cache objectForKeyedSubscript:dCopy];

    os_unfair_lock_unlock(&self->_lock);
    if (!v6)
    {
      v7 = [MEMORY[0x1E6982C40] _typeWithDeviceModelCode:dCopy];
      v8 = MEMORY[0x1E69A8A40];
      identifier = [v7 identifier];
      v17 = 0;
      v10 = [v8 symbolForTypeIdentifier:identifier withResolutionStrategy:1 variantOptions:1 error:&v17];
      v11 = v17;

      name = [v10 name];
      v13 = name;
      if (v11)
      {
        v14 = _MRLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v19 = dCopy;
          v20 = 2114;
          v21 = v7;
          v22 = 2114;
          v23 = v11;
          _os_log_error_impl(&dword_1A2860000, v14, OS_LOG_TYPE_ERROR, "Failed to find product symbol with model: %{public}@ uti: %{public}@ error: %{public}@", buf, 0x20u);
        }
      }

      else if (name)
      {
        os_unfair_lock_lock(&self->_lock);
        cache2 = [(MRDeviceIdentifierSymbolProvider *)self cache];
        [cache2 setObject:v13 forKeyedSubscript:dCopy];

        os_unfair_lock_unlock(&self->_lock);
      }

      v6 = v13;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)symbolNameForProductIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = identifierCopy;
    letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:letterCharacterSet];

    os_unfair_lock_lock(&self->_lock);
    cache = [(MRDeviceIdentifierSymbolProvider *)self cache];
    v9 = [cache objectForKeyedSubscript:v7];

    os_unfair_lock_unlock(&self->_lock);
    if (!v9)
    {
      v10 = [v7 componentsSeparatedByString:{@", "}];
      firstObject = [v10 firstObject];
      lastObject = [v10 lastObject];
      v13 = lastObject;
      if (firstObject && lastObject)
      {
        v14 = [MEMORY[0x1E6982C40] _typeWithBluetoothProductID:objc_msgSend(lastObject vendorID:{"intValue"), objc_msgSend(firstObject, "intValue")}];
        v15 = MEMORY[0x1E69A8A40];
        identifier = [v14 identifier];
        v24 = 0;
        v17 = [v15 symbolForTypeIdentifier:identifier withResolutionStrategy:1 variantOptions:1 error:&v24];
        v18 = v24;

        name = [v17 name];
        v20 = name;
        if (v18)
        {
          v21 = _MRLogForCategory(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v26 = v7;
            v27 = 2114;
            v28 = v14;
            v29 = 2114;
            v30 = v18;
            _os_log_error_impl(&dword_1A2860000, v21, OS_LOG_TYPE_ERROR, "Failed to find bluetooth symbol with model: %{public}@ uti: %{public}@ error: %{public}@", buf, 0x20u);
          }
        }

        else if (name)
        {
          os_unfair_lock_lock(&self->_lock);
          cache2 = [(MRDeviceIdentifierSymbolProvider *)self cache];
          [cache2 setObject:v20 forKeyedSubscript:v7];

          os_unfair_lock_unlock(&self->_lock);
        }

        v9 = v20;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __66__MRDeviceIdentifierSymbolProvider_currentDeviceRoutingSymbolName__block_invoke()
{
  v0 = [MEMORY[0x1E6982C40] _typeOfCurrentDevice];
  v1 = [v0 identifier];

  v7 = 0;
  v2 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:v1 withResolutionStrategy:1 variantOptions:1 error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__MRDeviceIdentifierSymbolProvider_currentDeviceRoutingSymbolName__block_invoke_cold_1(v1, v3, v4);
    }
  }

  v5 = [v2 name];
  v6 = currentDeviceRoutingSymbolName___symbolName;
  currentDeviceRoutingSymbolName___symbolName = v5;
}

void __66__MRDeviceIdentifierSymbolProvider_currentDeviceRoutingSymbolName__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "Failed to find symbol with uti: %{public}@ error: %{public}@", &v3, 0x16u);
}

@end