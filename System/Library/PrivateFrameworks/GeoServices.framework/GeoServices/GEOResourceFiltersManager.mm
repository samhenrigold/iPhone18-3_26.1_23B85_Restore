@interface GEOResourceFiltersManager
- (NSSet)activeNames;
- (NSSet)activeScales;
- (NSSet)activeScenarios;
@end

@implementation GEOResourceFiltersManager

- (NSSet)activeScales
{
  v18 = *MEMORY[0x1E69E9840];
  if (GEOConfigGetBOOL(257, &GeoServicesConfig_ActivateAllResourceFilters_Metadata))
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EFA22268];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    os_unfair_lock_lock_with_options();
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    filters = [(GEOActiveResourceFilters *)self->_activeFilters filters];
    v5 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(filters);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 whichFilter] == 1 && (objc_msgSend(v9, "_isFilterStaleThresholdExpired") & 1) == 0)
          {
            v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "scale")}];
            [v3 addObject:v10];
          }
        }

        v6 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    os_unfair_lock_unlock(&self->_lock);
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[GEOResourceManifestConfiguration defaultScale](self->_configuration, "defaultScale")}];
    [v3 addObject:v11];
  }

  return v3;
}

- (NSSet)activeScenarios
{
  v17 = *MEMORY[0x1E69E9840];
  if (GEOConfigGetBOOL(257, &GeoServicesConfig_ActivateAllResourceFilters_Metadata))
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EFA22280];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    os_unfair_lock_lock_with_options();
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    filters = [(GEOActiveResourceFilters *)self->_activeFilters filters];
    v5 = [filters countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(filters);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 whichFilter] == 2 && (objc_msgSend(v9, "_isFilterStaleThresholdExpired") & 1) == 0)
          {
            v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "scenario")}];
            [v3 addObject:v10];
          }
        }

        v6 = [filters countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    os_unfair_lock_unlock(&self->_lock);
    [v3 addObject:&unk_1EFA20F18];
  }

  return v3;
}

- (NSSet)activeNames
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock_with_options();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  filters = [(GEOActiveResourceFilters *)self->_activeFilters filters];
  v5 = [filters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(filters);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 whichFilter] == 3 && (objc_msgSend(v9, "_isFilterStaleThresholdExpired") & 1) == 0)
        {
          name = [v9 name];
          [v3 addObject:name];
        }
      }

      v6 = [filters countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end