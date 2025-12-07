@interface BYChronicle
- (BYChronicle)init;
- (id)_dictionaryRepresentationForBackedUpFeatures:(BOOL)features;
- (id)_parseChronicleFeaturesFromPreferences:(id)preferences includeCache:(BOOL)cache;
- (id)entryForFeature:(unint64_t)feature;
- (id)initFromBackedUpPreferences:(id)preferences andNotBackedUpPreferences:(id)upPreferences includeCache:(BOOL)cache;
- (void)addEntry:(id)entry forFeature:(unint64_t)feature;
- (void)persistBackedUpFeaturesInPreferences:(id)preferences andNotBackedFeaturesInPreferences:(id)inPreferences persistImmediately:(BOOL)immediately;
- (void)recordFeatureShown:(unint64_t)shown;
- (void)removeRecordForFeature:(unint64_t)feature;
- (void)setProductVersion:(id)version forFeature:(unint64_t)feature;
@end

@implementation BYChronicle

- (BYChronicle)init
{
  v6.receiver = self;
  v6.super_class = BYChronicle;
  v2 = [(BYChronicle *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    featureEntries = v2->_featureEntries;
    v2->_featureEntries = v3;
  }

  return v2;
}

- (id)initFromBackedUpPreferences:(id)preferences andNotBackedUpPreferences:(id)upPreferences includeCache:(BOOL)cache
{
  cacheCopy = cache;
  v33 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  upPreferencesCopy = upPreferences;
  v26 = [(BYChronicle *)self init];
  if (v26)
  {
    v10 = [(BYChronicle *)v26 _parseChronicleFeaturesFromPreferences:preferencesCopy includeCache:cacheCopy];
    v11 = [(BYChronicle *)v26 _parseChronicleFeaturesFromPreferences:upPreferencesCopy includeCache:cacheCopy];
    if ([v10 count] || objc_msgSend(v11, "count"))
    {
      v24 = upPreferencesCopy;
      v25 = preferencesCopy;
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count") + objc_msgSend(v10, "count")}];
      [v12 addObjectsFromArray:v10];
      v23 = v11;
      [v12 addObjectsFromArray:v11];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            v19 = [v18 objectForKeyedSubscript:@"type"];
            v20 = [v18 objectForKeyedSubscript:@"data"];
            v21 = [[BYChronicleEntry alloc] initWithDictionary:v20];
            [(NSMutableDictionary *)v26->_featureEntries setObject:v21 forKeyedSubscript:v19];
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      upPreferencesCopy = v24;
      preferencesCopy = v25;
      v11 = v23;
    }

    else
    {
      v13 = _BYLoggingFacility(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, "Creating new chronicle...", buf, 2u);
      }
    }
  }

  return v26;
}

- (void)recordFeatureShown:(unint64_t)shown
{
  obj = [(BYChronicle *)self featureEntries];
  objc_sync_enter(obj);
  v5 = objc_alloc_init(BYChronicleEntry);
  [(BYChronicle *)self addEntry:v5 forFeature:shown];

  objc_sync_exit(obj);
}

- (void)setProductVersion:(id)version forFeature:(unint64_t)feature
{
  versionCopy = version;
  v7 = [[BYChronicleEntry alloc] initWithProductVersion:versionCopy];

  [(BYChronicle *)self addEntry:v7 forFeature:feature];
}

- (void)removeRecordForFeature:(unint64_t)feature
{
  obj = [(BYChronicle *)self featureEntries];
  objc_sync_enter(obj);
  featureEntries = [(BYChronicle *)self featureEntries];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
  [featureEntries removeObjectForKey:v6];

  objc_sync_exit(obj);
}

- (void)addEntry:(id)entry forFeature:(unint64_t)feature
{
  entryCopy = entry;
  featureEntries = [(BYChronicle *)self featureEntries];
  objc_sync_enter(featureEntries);
  featureEntries2 = [(BYChronicle *)self featureEntries];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
  [featureEntries2 setObject:entryCopy forKeyedSubscript:v8];

  objc_sync_exit(featureEntries);
}

- (id)entryForFeature:(unint64_t)feature
{
  featureEntries = [(BYChronicle *)self featureEntries];
  objc_sync_enter(featureEntries);
  featureEntries2 = [(BYChronicle *)self featureEntries];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
  v8 = [featureEntries2 objectForKeyedSubscript:v7];

  objc_sync_exit(featureEntries);

  return v8;
}

- (void)persistBackedUpFeaturesInPreferences:(id)preferences andNotBackedFeaturesInPreferences:(id)inPreferences persistImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  inPreferencesCopy = inPreferences;
  preferencesCopy = preferences;
  v11 = [(BYChronicle *)self _dictionaryRepresentationForBackedUpFeatures:1];
  [preferencesCopy setObject:v11 forKey:@"chronicle" persistImmediately:immediatelyCopy];

  v10 = [(BYChronicle *)self _dictionaryRepresentationForBackedUpFeatures:0];
  [inPreferencesCopy setObject:v10 forKey:@"chronicle" persistImmediately:immediatelyCopy];
}

- (id)_dictionaryRepresentationForBackedUpFeatures:(BOOL)features
{
  featuresCopy = features;
  v27 = *MEMORY[0x1E69E9840];
  featureEntries = [(BYChronicle *)self featureEntries];
  objc_sync_enter(featureEntries);
  featureEntries2 = [(BYChronicle *)self featureEntries];
  v7 = [featureEntries2 copy];

  objc_sync_exit(featureEntries);
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v7;
  allKeys = [v7 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (-[BYChronicle _isBackedUpFeature:](self, "_isBackedUpFeature:", [v13 unsignedIntValue]) == featuresCopy)
        {
          v14 = [v19 objectForKeyedSubscript:v13];
          v24[0] = @"type";
          v24[1] = @"data";
          v25[0] = v13;
          dictionaryRepresentation = [v14 dictionaryRepresentation];
          v25[1] = dictionaryRepresentation;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
          [v8 addObject:v16];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  [v18 setObject:v8 forKeyedSubscript:@"features"];

  return v18;
}

- (id)_parseChronicleFeaturesFromPreferences:(id)preferences includeCache:(BOOL)cache
{
  if (!preferences)
  {
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_11;
  }

  cacheCopy = cache;
  v5 = MEMORY[0x1E695DF70];
  preferencesCopy = preferences;
  v7 = objc_alloc_init(v5);
  v8 = [preferencesCopy objectForKey:@"chronicle" includeCache:cacheCopy];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = [v8 objectForKeyedSubscript:@"features"];
    if (v10)
    {
      [v7 addObjectsFromArray:v10];
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v8)
  {
    v10 = _BYLoggingFacility(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BYChronicle _parseChronicleFeaturesFromPreferences:v8 includeCache:v10];
    }

    goto LABEL_9;
  }

LABEL_10:

LABEL_11:

  return v7;
}

- (void)_parseChronicleFeaturesFromPreferences:(uint64_t)a1 includeCache:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Unable to read chronicle data; found %@, expected NSDictionary!", &v5, 0xCu);
}

@end