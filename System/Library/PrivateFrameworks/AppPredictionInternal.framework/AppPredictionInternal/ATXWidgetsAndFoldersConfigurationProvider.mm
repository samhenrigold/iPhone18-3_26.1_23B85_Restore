@interface ATXWidgetsAndFoldersConfigurationProvider
- (ATXWidgetsAndFoldersConfigurationProvider)init;
- (unint64_t)globalAllPagesFolderCount;
- (unint64_t)globalAllPagesWidgetCount;
- (unint64_t)homePageFolderCountBucket;
- (unint64_t)homePageWidgetCountBucket;
- (void)cacheHomeScreenConfigurationsIfNecessary;
@end

@implementation ATXWidgetsAndFoldersConfigurationProvider

- (ATXWidgetsAndFoldersConfigurationProvider)init
{
  v6.receiver = self;
  v6.super_class = ATXWidgetsAndFoldersConfigurationProvider;
  v2 = [(ATXWidgetsAndFoldersConfigurationProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEB568]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (void)cacheHomeScreenConfigurationsIfNecessary
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXWidgetsAndFoldersConfigurations: could not fetch home page configurations with error: %@", &v2, 0xCu);
}

uint64_t __85__ATXWidgetsAndFoldersConfigurationProvider_cacheHomeScreenConfigurationsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)homePageFolderCountBucket
{
  [(ATXWidgetsAndFoldersConfigurationProvider *)self cacheHomeScreenConfigurationsIfNecessary];
  if ([(NSArray *)self->_homePageFolders count]> 0xA)
  {
    return 10;
  }

  homePageFolders = self->_homePageFolders;

  return [(NSArray *)homePageFolders count];
}

- (unint64_t)homePageWidgetCountBucket
{
  [(ATXWidgetsAndFoldersConfigurationProvider *)self cacheHomeScreenConfigurationsIfNecessary];
  firstObject = [(NSArray *)self->_pages firstObject];
  stacks = [firstObject stacks];
  if ([stacks count] > 0xA)
  {
    v7 = 10;
  }

  else
  {
    firstObject2 = [(NSArray *)self->_pages firstObject];
    stacks2 = [firstObject2 stacks];
    v7 = [stacks2 count];
  }

  return v7;
}

- (unint64_t)globalAllPagesFolderCount
{
  v17 = *MEMORY[0x277D85DE8];
  [(ATXWidgetsAndFoldersConfigurationProvider *)self cacheHomeScreenConfigurationsIfNecessary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_pages;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        leafIcons = [*(*(&v12 + 1) + 8 * i) leafIcons];
        v10 = [leafIcons _pas_filteredArrayWithTest:&__block_literal_global_19_2];
        v6 += [v10 count];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __70__ATXWidgetsAndFoldersConfigurationProvider_globalAllPagesFolderCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)globalAllPagesWidgetCount
{
  v16 = *MEMORY[0x277D85DE8];
  [(ATXWidgetsAndFoldersConfigurationProvider *)self cacheHomeScreenConfigurationsIfNecessary];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_pages;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        stacks = [*(*(&v11 + 1) + 8 * i) stacks];
        v6 += [stacks count];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end