@interface GEOResourceManifestServerLocalProxy
- (GEODownloadMetadata)metadata;
- (GEOResourceManifestDownload)resourceManifest;
- (id)authToken;
- (void)_considerChangingActiveTileGroup;
- (void)_resetCurrentUpdateState;
@end

@implementation GEOResourceManifestServerLocalProxy

- (GEOResourceManifestDownload)resourceManifest
{
  v61 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__65593;
  v51 = __Block_byref_object_dispose__65594;
  v52 = 0;
  v46[1] = MEMORY[0x1E69E9820];
  v46[2] = 3221225472;
  v46[3] = __55__GEOResourceManifestServerLocalProxy_resourceManifest__block_invoke;
  v46[4] = &unk_1E7071448;
  v46[5] = self;
  v46[6] = &v47;
  geo_isolate_sync_data();
  if (v48[5])
  {
    [(GEOCoalescingTimer *)self->_manifestPurgeTimer scheduleRun];
    v3 = v48[5];
    goto LABEL_45;
  }

  v4 = GEOResourceManifestPath(self->_configuration);
  if ([v4 length] && (objc_msgSend(MEMORY[0x1E695DEF0], "dataWithContentsOfFile:options:error:", v4, 1, 0), (v44 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [[GEOResourceManifestDownload alloc] initWithData:v44];
    v6 = v48[5];
    v48[5] = v5;

    resources = [v48[5] resources];
    isValid = [resources isValid];

    if ((isValid & 1) == 0)
    {
      v9 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18660C000, v9, OS_LOG_TYPE_ERROR, "Invalid manifest on-disk. Removing...", buf, 2u);
      }

      v10 = v48[5];
      v48[5] = 0;

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v46[0] = 0;
      [defaultManager removeItemAtPath:v4 error:v46];
      v12 = v46[0];

      if (v12)
      {
        v13 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v60 = v12;
          _os_log_impl(&dword_18660C000, v13, OS_LOG_TYPE_ERROR, "Error removing corrupt resource manifest: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v44 = 0;
  }

  v14 = [@"/System/Library/GeoServicesData" stringByAppendingPathComponent:@"ResourceManifest.json"];
  v58 = 0;
  v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v14 options:0 error:&v58];
  v16 = v58;
  if (v16 || ![v15 length])
  {
    v17 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v60 = v16;
      _os_log_impl(&dword_18660C000, v17, OS_LOG_TYPE_ERROR, "Unable to read GeoServicesData manifest: %{public}@", buf, 0xCu);
    }

    v18 = 0;
    goto LABEL_34;
  }

  v57 = 0;
  v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:&v57];
  v16 = v57;
  if (v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v25 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v60 = v16;
      _os_log_impl(&dword_18660C000, v25, OS_LOG_TYPE_ERROR, "Error parsing GeoServicesData manifest json: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v19 = [[GEOResources alloc] initWithJSON:v17];
    v20 = v19;
    if (v19)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      resources2 = [(GEOResources *)v19 resources];
      v22 = [resources2 countByEnumeratingWithState:&v53 objects:buf count:16];
      v43 = v20;
      if (v22)
      {
        v23 = *v54;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v54 != v23)
            {
              objc_enumerationMutation(resources2);
            }

            [*(*(&v53 + 1) + 8 * i) setResourceSource:{1, v43, v44}];
          }

          v22 = [resources2 countByEnumeratingWithState:&v53 objects:buf count:16];
        }

        while (v22);
      }

      v25 = v43;
      v18 = v25;
      goto LABEL_33;
    }

    v42 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, v42, OS_LOG_TYPE_ERROR, "Unable to parse GeoServicesData manifest", buf, 2u);
    }

    v25 = 0;
  }

  v18 = 0;
LABEL_33:

LABEL_34:
  if (v18)
  {
    v26 = v48[5];
    if (!v26)
    {
      v27 = objc_alloc_init(GEOResourceManifestDownload);
      v28 = v48[5];
      v48[5] = v27;

      v29 = objc_alloc_init(GEODownloadMetadata);
      [v48[5] setMetadata:v29];

      v26 = v48[5];
    }

    osImageResources = [v26 osImageResources];
    if (!osImageResources || ([v48[5] osImageResources], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "tileGroups"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "firstObject"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "identifier"), -[NSObject tileGroups](v18, "tileGroups"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "firstObject"), v36 = objc_claimAutoreleasedReturnValue(), LOBYTE(v34) = v34 == objc_msgSend(v36, "identifier"), v36, v35, v33, v32, v31, osImageResources, (v34 & 1) == 0))
    {
      [v48[5] setOsImageResources:v18];
      [(GEOResourceManifestServerLocalProxy *)self _mergeGeoServicesData:v48[5]];
      v37 = v48[5];
      v45 = 0;
      v38 = [(GEOResourceManifestServerLocalProxy *)self _writeManifestToDisk:v37 error:&v45];
      v39 = v45;
      if (!v38)
      {
        v40 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v60 = v39;
          _os_log_impl(&dword_18660C000, v40, OS_LOG_TYPE_ERROR, "Error saving updated resource manifest: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  geo_isolate_sync_data();
  [(GEOCoalescingTimer *)self->_manifestPurgeTimer scheduleRun];
  v3 = v48[5];

LABEL_45:
  _Block_object_dispose(&v47, 8);

  return v3;
}

- (GEODownloadMetadata)metadata
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__65593;
  v13 = __Block_byref_object_dispose__65594;
  v14 = 0;
  v7 = MEMORY[0x1E69E9820];
  geo_isolate_sync_data();
  v3 = v10[5];
  if (v3)
  {
    metadata = v3;
  }

  else
  {
    v5 = [(GEOResourceManifestServerLocalProxy *)self resourceManifest:v7];
    metadata = [v5 metadata];
  }

  _Block_object_dispose(&v9, 8);

  return metadata;
}

- (id)authToken
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__65593;
  v14 = __Block_byref_object_dispose__65594;
  v15 = 0;
  v8 = MEMORY[0x1E69E9820];
  geo_isolate_sync_data();
  v3 = v11[5];
  if (v3)
  {
    authToken = v3;
  }

  else
  {
    v5 = [(GEOResourceManifestServerLocalProxy *)self resourceManifest:v8];
    resources = [v5 resources];
    authToken = [resources authToken];
  }

  _Block_object_dispose(&v10, 8);

  return authToken;
}

void __55__GEOResourceManifestServerLocalProxy_resourceManifest__block_invoke_47(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 240), *(*(*(a1 + 40) + 8) + 40));
  v2 = [*(*(*(a1 + 40) + 8) + 40) metadata];
  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  *(v3 + 248) = v2;

  v8 = [*(*(*(a1 + 40) + 8) + 40) resources];
  v5 = [v8 authToken];
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  *(v6 + 128) = v5;
}

- (void)_considerChangingActiveTileGroup
{
  v66 = *MEMORY[0x1E69E9840];
  resourceManifest = [(GEOResourceManifestServerLocalProxy *)self resourceManifest];
  self->_wantsTileGroupUpdateOnReachabilityChange = 0;
  osImageResources = [resourceManifest osImageResources];
  tileGroups = [osImageResources tileGroups];
  firstObject = [tileGroups firstObject];
  identifier = [firstObject identifier];

  v8 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18660C000, v8, OS_LOG_TYPE_DEBUG, "Considering changing active tile group", buf, 2u);
  }

  if (identifier || ([resourceManifest resources], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "tileGroupsCount"), v9, v10))
  {
    v11 = [(GEOResourceManifestServerLocalProxy *)self _idealTileGroupToUse:resourceManifest];
    v12 = v11;
    if (!identifier && !v11)
    {
      v13 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v65 = @"Did not find a usable tile group";
        _os_log_impl(&dword_18660C000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      preferredDataSetForMapsABClient = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-11 reason:@"Did not find a usable tile group"];
      [(GEOResourceManifestServerLocalProxy *)self _notifyManifestUpdateCompletionHandlers:preferredDataSetForMapsABClient];
      goto LABEL_62;
    }

    activeTileGroup = self->_activeTileGroup;
    resources = [resourceManifest resources];
    preferredDataSetForMapsABClient = [resources preferredDataSetForMapsABClient];

    metadata = [(GEOResourceManifestServerLocalProxy *)self metadata];
    v18 = [metadata url];
    activeScales = [(GEOResourceFiltersManager *)self->_filtersManager activeScales];
    activeScenarios = [(GEOResourceFiltersManager *)self->_filtersManager activeScenarios];
    v21 = uniqueIdentifierForTileGroup(v12, v18, activeScales, activeScenarios, preferredDataSetForMapsABClient, identifier);

    v22 = v21;
    uniqueIdentifier = [(GEOActiveTileGroup *)self->_activeTileGroup uniqueIdentifier];
    v24 = [uniqueIdentifier isEqualToString:v21] ^ 1;
    if (activeTileGroup)
    {
      v25 = v24;
    }

    else
    {
      v25 = 1;
    }

    identifier2 = [(GEOActiveTileGroup *)self->_activeTileGroup identifier];
    if (identifier2 != [v12 identifier])
    {
      v25 = 1;
    }

    modelVersion = [(GEOActiveTileGroup *)self->_activeTileGroup modelVersion];
    if (_GEOConfigHasValue(94, &GeoServicesConfig_ActiveTileGroupModelVersionOverride_Metadata))
    {
      UInteger = GEOConfigGetUInteger(94, &GeoServicesConfig_ActiveTileGroupModelVersionOverride_Metadata);
    }

    else
    {
      UInteger = 13;
    }

    if (modelVersion != UInteger)
    {
      v25 = 1;
    }

    if ([(GEOActiveTileGroup *)self->_activeTileGroup staleResourcesCount])
    {
      v25 = 1;
    }

    if (preferredDataSetForMapsABClient || [(GEOActiveTileGroup *)self->_activeTileGroup hasDataSet])
    {
      dataSet = [(GEOActiveTileGroup *)self->_activeTileGroup dataSet];
      identifier3 = [dataSet identifier];
      if (identifier3 != [preferredDataSetForMapsABClient identifier])
      {
        v25 = 1;
      }

      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (v25)
    {
LABEL_27:
      v31 = 1;
      goto LABEL_53;
    }

    activeScales2 = [(GEOResourceFiltersManager *)self->_filtersManager activeScales];
    v34 = [MEMORY[0x1E695DFA8] set];
    if ([(GEOActiveTileGroup *)self->_activeTileGroup activeScalesCount])
    {
      v35 = 0;
      do
      {
        v36 = [(GEOActiveTileGroup *)self->_activeTileGroup activeScaleAtIndex:v35];
        v37 = [MEMORY[0x1E696AD98] numberWithInt:v36];
        [v34 addObject:v37];

        ++v35;
      }

      while (v35 < [(GEOActiveTileGroup *)self->_activeTileGroup activeScalesCount]);
    }

    v38 = [v34 isEqualToSet:activeScales2];

    if (!v38)
    {
      goto LABEL_51;
    }

    activeScenarios2 = [(GEOResourceFiltersManager *)self->_filtersManager activeScenarios];
    v40 = [MEMORY[0x1E695DFA8] set];
    if ([(GEOActiveTileGroup *)self->_activeTileGroup activeScenariosCount])
    {
      v41 = 0;
      do
      {
        v42 = [(GEOActiveTileGroup *)self->_activeTileGroup activeScenarioAtIndex:v41];
        v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
        [v40 addObject:v43];

        ++v41;
      }

      while (v41 < [(GEOActiveTileGroup *)self->_activeTileGroup activeScenariosCount]);
    }

    v44 = [v40 isEqualToSet:activeScenarios2];

    if (v44 && (-[GEOResourceFiltersManager activeNames](self->_filtersManager, "activeNames"), v45 = objc_claimAutoreleasedReturnValue(), v46 = MEMORY[0x1E695DFA8], -[GEOActiveTileGroup activeNames](self->_activeTileGroup, "activeNames"), v47 = objc_claimAutoreleasedReturnValue(), [v46 setWithArray:v47], v48 = objc_claimAutoreleasedReturnValue(), v47, LODWORD(v47) = objc_msgSend(v48, "isEqualToSet:", v45), v48, v45, v47))
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = self->_tileGroupMigrators;
      v49 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v60;
        while (2)
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v60 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v53 = *(*(&v59 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              resources2 = [resourceManifest resources];
              v55 = [v53 needsMigrationForNewTileGroup:v12 inResourceManifest:resources2 oldTileGroup:self->_activeTileGroup dataSet:preferredDataSetForMapsABClient];

              if (v55)
              {
                v31 = 1;
                goto LABEL_65;
              }
            }
          }

          v50 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

      v31 = 0;
LABEL_65:
    }

    else
    {
LABEL_51:
      v31 = 1;
    }

    v22 = v57;
LABEL_53:
    if (self->_activeTileGroup && GEOConfigGetBOOL(259, &GeoServicesConfig_DisableUpdatingActiveTileGroup_Metadata))
    {
      v56 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_18660C000, v56, OS_LOG_TYPE_INFO, "Not changing active tile group because GEODisableUpdatingActiveTileGroup is set", buf, 2u);
      }
    }

    else if (v31)
    {
      [(GEOResourceManifestServerLocalProxy *)self _forceChangeActiveTileGroup:v12 flushTileCache:0];
LABEL_61:

LABEL_62:
      goto LABEL_63;
    }

    [(GEOResourceManifestServerLocalProxy *)self _notifyManifestUpdateCompletionHandlers:0];
    goto LABEL_61;
  }

  v32 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v65 = @"No tile groups available";
    _os_log_impl(&dword_18660C000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v12 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-11 reason:@"No tile groups available"];
  [(GEOResourceManifestServerLocalProxy *)self _notifyManifestUpdateCompletionHandlers:v12];
LABEL_63:
}

- (void)_resetCurrentUpdateState
{
  self->_currentManifestUpdateType = 0;
  if ([(NSProgress *)self->_currentUpdateProgress totalUnitCount]< 1)
  {
    totalUnitCount = 1;
  }

  else
  {
    totalUnitCount = [(NSProgress *)self->_currentUpdateProgress totalUnitCount];
  }

  [(NSProgress *)self->_currentUpdateProgress setTotalUnitCount:totalUnitCount];
  [(NSProgress *)self->_currentUpdateProgress setCompletedUnitCount:[(NSProgress *)self->_currentUpdateProgress totalUnitCount]];
  v4 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  currentUpdateProgress = self->_currentUpdateProgress;
  self->_currentUpdateProgress = v4;

  [(NSProgress *)self->_currentUpdateProgress setCompletedUnitCount:1];
  updateProgress = self->_updateProgress;
  v7 = self->_currentUpdateProgress;

  [(NSProgress *)updateProgress _geo_mirroredProgressReplaceObservedProgressWith:v7];
}

@end