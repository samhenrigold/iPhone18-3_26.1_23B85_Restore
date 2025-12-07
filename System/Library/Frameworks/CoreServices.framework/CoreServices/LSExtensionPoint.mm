@interface LSExtensionPoint
+ (id)extensionPointForIdentifier:(id)identifier;
+ (id)extensionPointForIdentifier:(id)identifier platform:(id)platform;
- (BOOL)respondsToSelector:(SEL)selector;
- (LSExtensionPoint)initWithCoder:(id)coder;
- (NSDictionary)sdkEntry;
- (NSNumber)platform;
- (id)_initWithRecord:(id)record resolveAndDetach:(BOOL)detach;
- (id)description;
@end

@implementation LSExtensionPoint

- (NSDictionary)sdkEntry
{
  sDKDictionary = [(LSExtensionPointRecord *)self->_record SDKDictionary];
  _expensiveDictionaryRepresentation = [sDKDictionary _expensiveDictionaryRepresentation];
  v4 = _expensiveDictionaryRepresentation;
  if (_expensiveDictionaryRepresentation)
  {
    v5 = _expensiveDictionaryRepresentation;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

+ (id)extensionPointForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dyld_get_active_platform()];
  v5 = [LSExtensionPoint extensionPointForIdentifier:identifierCopy platform:v4];

  return v5;
}

+ (id)extensionPointForIdentifier:(id)identifier platform:(id)platform
{
  identifierCopy = identifier;
  platformCopy = platform;
  v8 = [LSExtensionPointRecord alloc];
  if (platformCopy)
  {
    unsignedLongLongValue = [platformCopy unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v17 = 0;
  v10 = [(LSExtensionPointRecord *)v8 initWithIdentifier:identifierCopy platform:unsignedLongLongValue parentAppRecord:0 error:&v17];
  v11 = v17;
  v12 = v11;
  if (v10)
  {
    v13 = [[self alloc] _initWithRecord:v10 resolveAndDetach:1];
    v14 = _LSDefaultLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(LSExtensionPoint *)v13 extensionPointForIdentifier:identifierCopy platform:v14];
    }
  }

  else
  {
    v14 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(LSExtensionPoint *)identifierCopy extensionPointForIdentifier:v12 platform:v14];
    }

    v13 = 0;
  }

  v15 = v13;
  return v13;
}

- (id)_initWithRecord:(id)record resolveAndDetach:(BOOL)detach
{
  detachCopy = detach;
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = LSExtensionPoint;
  _init = [(_LSQueryResult *)&v11 _init];
  v9 = _init;
  if (_init)
  {
    if (detachCopy && _LSDatabaseContextGetDetachProxyObjects(_init))
    {
      [recordCopy _resolveAllProperties];
      [recordCopy detach];
    }

    objc_storeStrong(v9 + 1, record);
  }

  return v9;
}

- (NSNumber)platform
{
  platform = [(LSExtensionPointRecord *)self->_record platform];
  if (platform)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:platform];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = LSExtensionPoint;
  if ([(LSExtensionPoint *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [LSExtensionPointRecord instancesRespondToSelector:selector];
  }
}

- (LSExtensionPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = LSExtensionPoint;
  v5 = [(_LSQueryResult *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    record = v5->_record;
    v5->_record = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = LSExtensionPoint;
  v4 = [(LSExtensionPoint *)&v10 description];
  identifier = [(LSExtensionPoint *)self identifier];
  platform = [(LSExtensionPoint *)self platform];
  sdkEntry = [(LSExtensionPoint *)self sdkEntry];
  v8 = [v3 stringWithFormat:@"%@ %@ %@ <%@>", v4, identifier, platform, sdkEntry];

  return v8;
}

+ (void)extensionPointForIdentifier:(os_log_t)log platform:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Found LSExtensionPoint %@ for identifier %{public}@", &v3, 0x16u);
}

+ (void)extensionPointForIdentifier:(os_log_t)log platform:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Failed to find extension point for identifier %{public}@: %@", &v3, 0x16u);
}

@end