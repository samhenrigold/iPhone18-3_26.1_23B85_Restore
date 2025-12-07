@interface EXExtensionPointCatalog
- (EXExtensionPointCatalog)init;
- (EXExtensionPointCatalog)initWithEnumerator:(id)enumerator;
- (id)extensionPointForIdentifier:(id)identifier;
- (id)extensionPointForIdentifier:(id)identifier platform:(unsigned int)platform;
@end

@implementation EXExtensionPointCatalog

- (EXExtensionPointCatalog)init
{
  v3 = +[EXExtensionPointEnumerator enumeratorIncludingPlaceHolders];
  v4 = [(EXExtensionPointCatalog *)self initWithEnumerator:v3];

  return v4;
}

- (EXExtensionPointCatalog)initWithEnumerator:(id)enumerator
{
  v28 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  v26.receiver = self;
  v26.super_class = EXExtensionPointCatalog;
  v5 = [(EXExtensionPointCatalog *)&v26 init];
  v6 = v5;
  if (v5)
  {
    v21 = v5;
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = enumeratorCopy;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = MEMORY[0x1E696AEC0];
          identifier = [v13 identifier];
          v16 = [v14 stringWithFormat:@"%@:%u", identifier, objc_msgSend(v13, "platform")];

          v17 = [v13 copy];
          [v7 setObject:v17 forKeyedSubscript:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    v18 = [v7 copy];
    v6 = v21;
    extensionPointByIdentifierPlatform = v21->_extensionPointByIdentifierPlatform;
    v21->_extensionPointByIdentifierPlatform = v18;
  }

  return v6;
}

- (id)extensionPointForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(EXExtensionPointCatalog *)self extensionPointForIdentifier:identifierCopy platform:dyld_get_active_platform()];

  return v5;
}

- (id)extensionPointForIdentifier:(id)identifier platform:(unsigned int)platform
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%u", identifier, *&platform];
  v6 = [(NSDictionary *)self->_extensionPointByIdentifierPlatform objectForKeyedSubscript:v5];

  return v6;
}

@end