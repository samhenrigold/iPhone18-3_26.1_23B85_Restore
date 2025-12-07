@interface KNAbstractSlideAlternateArchiveBuildFilter
- (KNAbstractSlideAlternateArchiveBuildFilter)initWithExcludedBuildMinVersion:(unint64_t)version capacity:(unint64_t)capacity;
- (id)filteredBuildChunksForBuildChunks:(id)chunks;
- (id)filteredBuildsForBuilds:(id)builds;
@end

@implementation KNAbstractSlideAlternateArchiveBuildFilter

- (KNAbstractSlideAlternateArchiveBuildFilter)initWithExcludedBuildMinVersion:(unint64_t)version capacity:(unint64_t)capacity
{
  v11.receiver = self;
  v11.super_class = KNAbstractSlideAlternateArchiveBuildFilter;
  v6 = [(KNAbstractSlideAlternateArchiveBuildFilter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_excludedBuildMinVersion = version;
    v8 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:512 capacity:capacity];
    excludedBuilds = v7->_excludedBuilds;
    v7->_excludedBuilds = v8;
  }

  return v7;
}

- (id)filteredBuildsForBuilds:(id)builds
{
  v18 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(buildsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = buildsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (![(NSHashTable *)self->_excludedBuilds containsObject:v11, v13])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)filteredBuildChunksForBuildChunks:(id)chunks
{
  v20 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(chunksCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = chunksCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        excludedBuilds = self->_excludedBuilds;
        build = [v11 build];
        LOBYTE(excludedBuilds) = [(NSHashTable *)excludedBuilds containsObject:build];

        if ((excludedBuilds & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end