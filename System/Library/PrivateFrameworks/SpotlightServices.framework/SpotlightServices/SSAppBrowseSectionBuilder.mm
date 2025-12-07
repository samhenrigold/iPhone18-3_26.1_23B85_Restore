@interface SSAppBrowseSectionBuilder
+ (BOOL)supportsSection:(id)section queryContext:(id)context;
+ (id)_bundleIdToOnenessBundleId;
+ (id)appSectionWithTitle:(id)title identifier:(id)identifier style:(int)style appIdentities:(id)identities;
+ (void)updateBundleIdToOnenessBundleIdMapping:(id)mapping;
- (id)buildSection;
@end

@implementation SSAppBrowseSectionBuilder

+ (void)updateBundleIdToOnenessBundleIdMapping:(id)mapping
{
  mappingCopy = mapping;
  if (updateBundleIdToOnenessBundleIdMapping__onceToken != -1)
  {
    +[SSAppBrowseSectionBuilder updateBundleIdToOnenessBundleIdMapping:];
  }

  [_ssOnenessBundleIdMappingLock lock];
  v4 = _ssBundleIdToOnenessBundleId;
  _ssBundleIdToOnenessBundleId = mappingCopy;
  v5 = mappingCopy;

  [_ssOnenessBundleIdMappingLock unlock];
}

uint64_t __68__SSAppBrowseSectionBuilder_updateBundleIdToOnenessBundleIdMapping___block_invoke()
{
  _ssOnenessBundleIdMappingLock = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_bundleIdToOnenessBundleId
{
  [_ssOnenessBundleIdMappingLock lock];
  v2 = [_ssBundleIdToOnenessBundleId copy];
  [_ssOnenessBundleIdMappingLock unlock];

  return v2;
}

+ (id)appSectionWithTitle:(id)title identifier:(id)identifier style:(int)style appIdentities:(id)identities
{
  v28 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  identifierCopy = identifier;
  identitiesCopy = identities;
  v12 = objc_opt_new();
  _bundleIdToOnenessBundleId = [self _bundleIdToOnenessBundleId];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = identitiesCopy;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [self _resultForAppIdentity:*(*(&v23 + 1) + 8 * i) bundleIdToOnenessBundleIdMapping:_bundleIdToOnenessBundleId];
        [v12 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [self sectionWithTitle:titleCopy identifier:identifierCopy style:style results:v12];

  return v20;
}

+ (BOOL)supportsSection:(id)section queryContext:(id)context
{
  if ([context queryKind] != 14)
  {
    return 0;
  }

  return isMacOS();
}

- (id)buildSection
{
  queryContext = [(SSSectionBuilder *)self queryContext];
  if ([queryContext displayAllResultsAsIcons])
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  section = [(SSSectionBuilder *)self section];
  resultSet = [section resultSet];
  array = [resultSet array];
  v8 = [SSAppBrowseSectionBuilder appSectionWithTitle:&stru_1F556FE60 identifier:@"com.apple.spotlight.zkw.apps" style:v4 results:array];

  return v8;
}

@end