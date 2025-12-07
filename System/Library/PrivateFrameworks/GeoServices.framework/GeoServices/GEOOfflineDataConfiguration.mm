@interface GEOOfflineDataConfiguration
- (NSDate)lastUpdatedDate;
- (NSDictionary)activeVersions;
- (id)_configurationIsolated;
@end

@implementation GEOOfflineDataConfiguration

- (NSDictionary)activeVersions
{
  v6 = self->_configurationIsolation;
  _geo_isolate_lock();
  _configurationIsolated = [(GEOOfflineDataConfiguration *)self _configurationIsolated];
  v4 = self->_activeVersions;

  _geo_isolate_unlock();

  return v4;
}

- (id)_configurationIsolated
{
  v35 = *MEMORY[0x1E69E9840];
  geo_assert_isolated();
  configuration = self->_configuration;
  if (!configuration)
  {
    v4 = [GEOFilePaths urlFor:38];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v4 path];
    v7 = [defaultManager fileExistsAtPath:path];

    if (v7)
    {
      v32 = 0;
      v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:0 error:&v32];
      v9 = v32;
      if (!v8)
      {
        v10 = GEOGetOfflineDataConfigurationLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v34 = v9;
          _os_log_impl(&dword_18660C000, v10, OS_LOG_TYPE_ERROR, "Failed to read existing config: %{public}@", buf, 0xCu);
        }
      }

      v11 = [[GEOPBOfflineDataConfiguration alloc] initWithData:v8];
      v12 = self->_configuration;
      self->_configuration = v11;

      if (!self->_configuration)
      {
        v13 = GEOGetOfflineDataConfigurationLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18660C000, v13, OS_LOG_TYPE_FAULT, "Failed to decode existing config", buf, 2u);
        }
      }
    }

    v14 = self->_configuration;
    if (!v14)
    {
      v15 = GEOGetOfflineDataConfigurationLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_18660C000, v15, OS_LOG_TYPE_DEBUG, "Generating empty config", buf, 2u);
      }

      v16 = objc_alloc_init(GEOPBOfflineDataConfiguration);
      v17 = self->_configuration;
      self->_configuration = v16;

      v14 = self->_configuration;
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    [(GEOPBOfflineDataConfiguration *)v14 _readActiveVersions];
    v14 = v14->_activeVersions;
    v18 = self->_configuration;
    if (v18)
    {
      [(GEOPBOfflineDataConfiguration *)self->_configuration _readActiveVersions];
      activeVersionsCount = v18->_activeVersionsCount;
    }

    else
    {
LABEL_28:
      activeVersionsCount = 0;
    }

    v20 = _versionDictionaryFromProtobuf(v14, activeVersionsCount);
    activeVersions = self->_activeVersions;
    self->_activeVersions = v20;

    v22 = self->_configuration;
    if (v22 && ([(GEOPBOfflineDataConfiguration *)self->_configuration _readLatestAvailableVersions], v22 = v22->_latestAvailableVersions, (v23 = self->_configuration) != 0))
    {
      [(GEOPBOfflineDataConfiguration *)self->_configuration _readLatestAvailableVersions];
      latestAvailableVersionsCount = v23->_latestAvailableVersionsCount;
    }

    else
    {
      latestAvailableVersionsCount = 0;
    }

    v25 = _versionDictionaryFromProtobuf(v22, latestAvailableVersionsCount);
    latestAvailableVersions = self->_latestAvailableVersions;
    self->_latestAvailableVersions = v25;

    if (GEOConfigGetBOOL(40, &GeoOfflineConfig_SimulateDataIncompatible_Metadata))
    {
      v27 = [(NSDictionary *)self->_activeVersions mutableCopy];
      allKeys = [(NSDictionary *)v27 allKeys];
      firstObject = [allKeys firstObject];
      [(NSDictionary *)v27 removeObjectForKey:firstObject];

      v30 = self->_activeVersions;
      self->_activeVersions = v27;
    }

    configuration = self->_configuration;
  }

  return configuration;
}

- (NSDate)lastUpdatedDate
{
  v7 = self->_configurationIsolation;
  _geo_isolate_lock_data();
  _configurationIsolated = [(GEOOfflineDataConfiguration *)self _configurationIsolated];
  v4 = _configurationIsolated;
  if (_configurationIsolated && (*(_configurationIsolated + 108) & 2) != 0)
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(_configurationIsolated + 80)];
  }

  else
  {
    v5 = 0;
  }

  _geo_isolate_unlock();

  return v5;
}

@end