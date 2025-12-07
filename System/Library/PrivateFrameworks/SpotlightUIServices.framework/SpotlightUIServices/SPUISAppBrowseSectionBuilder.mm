@interface SPUISAppBrowseSectionBuilder
+ (BOOL)supportsSection:(id)section queryContext:(id)context;
+ (id)_bundleIdToOnenessBundleId;
+ (id)appSectionWithTitle:(id)title identifier:(id)identifier style:(int)style appIdentities:(id)identities;
+ (void)updateBundleIdToOnenessBundleIdMapping:(id)mapping;
- (id)buildSection;
@end

@implementation SPUISAppBrowseSectionBuilder

+ (void)updateBundleIdToOnenessBundleIdMapping:(id)mapping
{
  mappingCopy = mapping;
  if (updateBundleIdToOnenessBundleIdMapping__onceToken != -1)
  {
    +[SPUISAppBrowseSectionBuilder updateBundleIdToOnenessBundleIdMapping:];
  }

  [_spuisOnenessBundleIdMappingLock lock];
  v4 = _spuisBundleIdToOnenessBundleId;
  _spuisBundleIdToOnenessBundleId = mappingCopy;
  v5 = mappingCopy;

  [_spuisOnenessBundleIdMappingLock unlock];
}

uint64_t __71__SPUISAppBrowseSectionBuilder_updateBundleIdToOnenessBundleIdMapping___block_invoke()
{
  _spuisOnenessBundleIdMappingLock = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)_bundleIdToOnenessBundleId
{
  [_spuisOnenessBundleIdMappingLock lock];
  v2 = [_spuisBundleIdToOnenessBundleId copy];
  [_spuisOnenessBundleIdMappingLock unlock];

  return v2;
}

+ (id)appSectionWithTitle:(id)title identifier:(id)identifier style:(int)style appIdentities:(id)identities
{
  v28 = *MEMORY[0x277D85DE8];
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
  queryContext = [(SPUISSectionBuilder *)self queryContext];
  if ([queryContext displayAllResultsAsIcons])
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  section = [(SPUISSectionBuilder *)self section];
  resultSet = [section resultSet];
  array = [resultSet array];
  v8 = [SPUISAppBrowseSectionBuilder appSectionWithTitle:&stru_287C50EE8 identifier:@"com.apple.spotlight.zkw.apps" style:v4 results:array];

  return v8;
}

@end