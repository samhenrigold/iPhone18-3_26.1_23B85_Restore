@interface PBFPosterExtensionDataStoreMigrator
+ (BOOL)migrateDataStoreAtBaseURL:(id)l fromVersion:(unint64_t)version toVersion:(unint64_t)toVersion cleanupAfterMigrationSucceeds:(BOOL)succeeds error:(id *)error;
- (BOOL)isDataStoreUpToDateForCurrentVersion;
- (BOOL)validateDataStoreIntegrity:(id *)integrity;
- (NSIndexSet)availableDataStoreVersions;
- (PBFPosterExtensionDataStoreMigrator)initWithBaseURL:(id)l;
- (unint64_t)_mostUpToDateValidDataStoreToMigrateFrom;
- (unint64_t)migrateDataStoreToCurrentVersion:(id *)version;
- (void)archiveDataStoresBeforeCurrentDataStoreVersion;
- (void)markDataStoreArchivesAsPurgable;
- (void)removeArchivedDataStores;
- (void)removeDataStoresBeforeCurrentDataStoreVersion;
@end

@implementation PBFPosterExtensionDataStoreMigrator

- (PBFPosterExtensionDataStoreMigrator)initWithBaseURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = PBFPosterExtensionDataStoreMigrator;
  v5 = [(PBFPosterExtensionDataStoreMigrator *)&v10 init];
  if (v5)
  {
    standardizedURL = [lCopy standardizedURL];
    v7 = [standardizedURL copy];
    baseURL = v5->_baseURL;
    v5->_baseURL = v7;

    v5->_shouldCleanupAfterMigration = 0;
  }

  return v5;
}

- (BOOL)validateDataStoreIntegrity:(id *)integrity
{
  v5 = +[PBFPosterExtensionDataStore dataStoreVersion];
  baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  LOBYTE(integrity) = _PBFDetermineDataStoreViabilityForVersionWithinBaseURL(baseURL, v5, integrity);

  return integrity;
}

- (BOOL)isDataStoreUpToDateForCurrentVersion
{
  v3 = +[PBFPosterExtensionDataStore dataStoreVersion];
  baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  if (_PBFDetermineDataStoreViabilityForVersionWithinBaseURL(baseURL, v3, 0))
  {
    v5 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:baseURL version:v3];
    v6 = [[PBFPosterExtensionDataStoreSQLiteDatabase alloc] initWithURL:v5 options:4 error:0];
    v7 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)v6 version]== 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)migrateDataStoreToCurrentVersion:(id *)version
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (![(PBFPosterExtensionDataStoreMigrator *)self isDataStoreUpToDateForCurrentVersion])
  {
    v6 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
    v7 = +[PBFPosterExtensionDataStore dataStoreVersion];
    baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
    v9 = [MEMORY[0x277CBEBC0] pbf_dataStoreVersionContainingURLForBaseURL:baseURL];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v9 path];
    v12 = [defaultManager fileExistsAtPath:path isDirectory:0];

    if (!v12)
    {
LABEL_6:
      if ([(PBFPosterExtensionDataStoreMigrator *)self isDataStoreUpToDateForCurrentVersion])
      {
        v5 = 2;
LABEL_30:

        return v5;
      }

      _mostUpToDateValidDataStoreToMigrateFrom = [(PBFPosterExtensionDataStoreMigrator *)self _mostUpToDateValidDataStoreToMigrateFrom];
      if (_mostUpToDateValidDataStoreToMigrateFrom == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = v6;
      }

      else
      {
        v21 = _mostUpToDateValidDataStoreToMigrateFrom;
      }

      v22 = objc_autoreleasePoolPush();
      v31 = 0;
      v23 = [PBFPosterExtensionDataStoreMigrator migrateDataStoreAtBaseURL:baseURL fromVersion:v21 toVersion:v7 cleanupAfterMigrationSucceeds:[(PBFPosterExtensionDataStoreMigrator *)self shouldCleanupAfterMigration] error:&v31];
      v19 = v31;
      objc_autoreleasePoolPop(v22);
      if (v23)
      {
        v5 = 4;
      }

      else
      {
        v5 = 0;
        if (version && v19)
        {
          v25 = v19;
          v5 = 0;
          *version = v19;
        }
      }

LABEL_29:

      goto LABEL_30;
    }

    v30 = v7;
    v13 = *MEMORY[0x277CBE800];
    v14 = *MEMORY[0x277CBE8A0];
    v37[0] = *MEMORY[0x277CBE7F8];
    v37[1] = v14;
    v38[0] = v13;
    v38[1] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v33 = 0;
    v34 = 0;
    v16 = [v9 pbf_recursivelyValidateContentsAreReachableAndConformToResourceValues:v15 URLsNotConformingToAttributes:&v34 error:&v33];
    v17 = v34;
    v18 = v33;
    v19 = v18;
    if (v16)
    {
LABEL_5:

      v7 = v30;
      goto LABEL_6;
    }

    if (v18)
    {
      v24 = PBFLogMigration(v18);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStoreMigrator migrateDataStoreToCurrentVersion:];
      }
    }

    else
    {
      v32 = 0;
      v26 = [baseURL pbf_recursivelyUpdateResourceValues:v15 error:&v32];
      v19 = v32;
      v27 = PBFLogMigration(v19);
      v24 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v36 = baseURL;
          _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_INFO, "Success updating file attributes for URL '%{public}@'", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStoreMigrator migrateDataStoreToCurrentVersion:];
      }
    }

    if (version && v19)
    {
      v28 = v19;
      *version = v19;
    }

    else if (!v19)
    {
      goto LABEL_5;
    }

    v5 = 1;
    goto LABEL_29;
  }

  return 3;
}

- (unint64_t)_mostUpToDateValidDataStoreToMigrateFrom
{
  baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v3 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
  v4 = +[PBFPosterExtensionDataStore dataStoreVersion];
  if (v4 < v3)
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
    while ((_PBFDetermineDataStoreViabilityForVersionWithinBaseURL(baseURL, v5, 0) & 1) == 0)
    {
      if (--v5 < v3)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (NSIndexSet)availableDataStoreVersions
{
  v3 = objc_opt_new();
  baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v5 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
  v6 = +[PBFPosterExtensionDataStore dataStoreVersion];
  if (v6 >= v5)
  {
    v7 = v6;
    do
    {
      if (_PBFDetermineDataStoreViabilityForVersionWithinBaseURL(baseURL, v7, 0))
      {
        [v3 addIndex:v7];
      }

      --v7;
    }

    while (v7 >= v5);
  }

  return v3;
}

- (void)removeDataStoresBeforeCurrentDataStoreVersion
{
  v22 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  pbf_keynoteModeEnabled = [MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled];
  if (pbf_keynoteModeEnabled)
  {
    v6 = PBFLogMigration(pbf_keynoteModeEnabled);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "Keynote mode; not cleaning up old data stores.", buf, 2u);
    }
  }

  else
  {
    v7 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
    v8 = +[PBFPosterExtensionDataStore dataStoreVersion]- 1;
    if (v8 >= v7)
    {
      *&v9 = 138543618;
      v16 = v9;
      do
      {
        v10 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:baseURL version:{v8, v16}];
        v11 = [v10 checkResourceIsReachableAndReturnError:0];
        if (v11)
        {
          v17 = 0;
          v12 = [defaultManager removeItemAtURL:v10 error:&v17];
          v13 = v17;
          v14 = PBFLogMigration(v13);
          v15 = v14;
          if (v12)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v19 = v10;
              _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "Cleaned up abandoned data store url '%{public}@'", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v19 = v10;
            v20 = 2114;
            v21 = v13;
            _os_log_error_impl(&dword_21B526000, v15, OS_LOG_TYPE_ERROR, "Error cleaning up abandoned data store url %{public}@, error:%{public}@", buf, 0x16u);
          }
        }

        else
        {
          v15 = PBFLogMigration(v11);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v19 = v10;
            _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "No data store @ '%{public}@'", buf, 0xCu);
          }

          v13 = 0;
        }

        --v8;
      }

      while (v8 >= v7);
    }
  }
}

- (void)archiveDataStoresBeforeCurrentDataStoreVersion
{
  v27 = *MEMORY[0x277D85DE8];
  baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  pbf_keynoteModeEnabled = [MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled];
  v4 = pbf_keynoteModeEnabled;
  v5 = PBFLogMigration(pbf_keynoteModeEnabled);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Keynote mode; not archiving old data stores.", buf, 2u);
    }

    goto LABEL_17;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Archived data store directory is ready...", buf, 2u);
  }

  v7 = [PBFDataStoreArchiveAdjudicator alloc];
  pbf_archivedDataStoreBaseURL = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v5 = [(PBFDataStoreArchiveAdjudicator *)v7 initWithDataStoreBaseURL:baseURL archiveBaseURL:pbf_archivedDataStoreBaseURL];

  v9 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
  v10 = +[PBFPosterExtensionDataStore dataStoreVersion]- 1;
  if (v10 >= v9)
  {
    *&v11 = 134218242;
    v21 = v11;
    while (1)
    {
      v12 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:baseURL version:{v10, v21}];
      if ([v12 checkResourceIsReachableAndReturnError:0])
      {
        break;
      }

LABEL_16:

      if (--v10 < v9)
      {
        goto LABEL_17;
      }
    }

    v22 = 0;
    v13 = [v5 archiveDataStoreVersion:v10 name:@"ArchiveDataStoresBeforeCurrentDataStoreVersion" options:0 removeAfterSuccess:1 error:&v22];
    v14 = v22;

    v16 = PBFLogMigration(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v17)
      {
        *buf = 134217984;
        v24 = v10;
        v18 = v16;
        v19 = "Successfully archived data store %lu";
        v20 = 12;
LABEL_14:
        _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
      }
    }

    else if (v17)
    {
      *buf = v21;
      v24 = v10;
      v25 = 2114;
      v26 = v14;
      v18 = v16;
      v19 = "Failed to archive data store %lu: %{public}@";
      v20 = 22;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)markDataStoreArchivesAsPurgable
{
  v3 = PBFLogMigration(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "marking archives as purgable", v8, 2u);
  }

  baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v5 = [PBFDataStoreArchiveAdjudicator alloc];
  pbf_archivedDataStoreBaseURL = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v7 = [(PBFDataStoreArchiveAdjudicator *)v5 initWithDataStoreBaseURL:baseURL archiveBaseURL:pbf_archivedDataStoreBaseURL];

  [(PBFDataStoreArchiveAdjudicator *)v7 markArchivesAsPurgable:0];
}

- (void)removeArchivedDataStores
{
  v3 = PBFLogMigration(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "purging archived data stores", v8, 2u);
  }

  baseURL = [(PBFPosterExtensionDataStoreMigrator *)self baseURL];
  v5 = [PBFDataStoreArchiveAdjudicator alloc];
  pbf_archivedDataStoreBaseURL = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v7 = [(PBFDataStoreArchiveAdjudicator *)v5 initWithDataStoreBaseURL:baseURL archiveBaseURL:pbf_archivedDataStoreBaseURL];

  [(PBFDataStoreArchiveAdjudicator *)v7 markArchivesAsPurgable:0];
}

+ (BOOL)migrateDataStoreAtBaseURL:(id)l fromVersion:(unint64_t)version toVersion:(unint64_t)toVersion cleanupAfterMigrationSucceeds:(BOOL)succeeds error:(id *)error
{
  succeedsCopy = succeeds;
  v266[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v172 = +[PBFPosterExtensionDataStore minimumDataStoreVersion];
  v174 = +[PBFPosterExtensionDataStore dataStoreVersion];
  v185 = lCopy;
  if (version == toVersion && toVersion >= 0x3D)
  {
    v10 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:lCopy version:version];
    v11 = [[PBFPosterExtensionDataStoreSQLiteDatabase alloc] initWithURL:v10 options:8 error:error];
    v12 = v11 != 0;
    [(PBFPosterExtensionDataStoreSQLiteDatabase *)v11 invalidate];

    goto LABEL_209;
  }

  if (v172 <= version && v174 >= toVersion)
  {
    v247 = 0;
    v248 = &v247;
    v249 = 0x3032000000;
    v250 = __Block_byref_object_copy__4;
    v251 = __Block_byref_object_dispose__4;
    v252 = 0;
    v243 = 0;
    v244 = &v243;
    v245 = 0x2020000000;
    v246 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v168 = objc_opt_new();
    v19 = objc_opt_new();
    v169 = v19;
    if (version > toVersion)
    {
      goto LABEL_168;
    }

    *&v20 = 134217984;
    v163 = v20;
    versionCopy = version;
    toVersionCopy = toVersion;
    while (1)
    {
      v22 = PBFLogMigration(v19);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = versionCopy;
        *&buf[12] = 2112;
        *&buf[14] = lCopy;
        _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "Beginning migration to Version %lu (%@)", buf, 0x16u);
      }

      v180 = versionCopy;

      v23 = versionCopy - 1;
      v24 = v185;
      v177 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v185 version:versionCopy - 1];
      v179 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v185 version:versionCopy];
      if (versionCopy != v174)
      {
        [v168 addObject:v179];
      }

      if (versionCopy != version)
      {
        [v169 addObject:v179];
      }

      if (_PBFDetermineDataStoreViabilityForVersionWithinBaseURL(v185, versionCopy, 0))
      {
        v25 = v244 + 3;
        goto LABEL_65;
      }

      if ([v177 checkResourceIsReachableAndReturnError:0])
      {
        [defaultManager removeItemAtURL:v179 error:0];
        v26 = [defaultManager copyItemAtURL:v177 toURL:v179 error:error];
        if ((v26 & 1) == 0)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v27 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v185 version:versionCopy];
        v28 = [MEMORY[0x277CBEBC0] pbf_galleryCacheURLForBaseURL:v185 version:versionCopy];
        v264[0] = v179;
        v264[1] = v27;
        v183 = v27;
        v187 = v28;
        v264[2] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v264 count:3];
        v241 = 0u;
        v242 = 0u;
        v239 = 0u;
        v240 = 0u;
        v30 = v29;
        v31 = [v30 countByEnumeratingWithState:&v239 objects:v263 count:16];
        if (v31)
        {
          v32 = *v240;
LABEL_25:
          v33 = 0;
          while (1)
          {
            if (*v240 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v239 + 1) + 8 * v33);
            if (([v34 checkResourceIsReachableAndReturnError:{0, v163}] & 1) == 0)
            {
              v35 = PFFileProtectionNoneAttributes();
              v36 = v248 + 5;
              obj = v248[5];
              v37 = [defaultManager createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:v35 error:&obj];
              objc_storeStrong(v36, obj);

              if ((v37 & 1) == 0)
              {
                break;
              }
            }

            v38 = PFPosterPathURLResourceValues();
            [v34 pbf_recursivelyUpdateResourceValues:v38 error:0];

            if (v31 == ++v33)
            {
              v31 = [v30 countByEnumeratingWithState:&v239 objects:v263 count:16];
              if (v31)
              {
                goto LABEL_25;
              }

              break;
            }
          }
        }

        v39 = _PBFDetermineDataStoreViabilityForVersionWithinBaseURL(v185, v180, 0);
        *(v244 + 24) = v39;

        v24 = v185;
        versionCopy = v180;
      }

      if (versionCopy == 60)
      {
        break;
      }

      if (versionCopy == 61)
      {
        v40 = PBFLogMigration(v26);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "Kicking off 61 migration", buf, 2u);
        }

        v170 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v185 version:61];
        v41 = [PBFPosterExtensionDataStoreSQLiteDatabase alloc];
        v42 = v248;
        v237 = 0;
        v184 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)v41 initWithURL:v170 options:9 error:&v237];
        objc_storeStrong(v42 + 5, v237);
        if (v184 && !v248[5])
        {
          v43 = objc_opt_new();
          v44 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v185 version:61];
          v45 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v44, 0);

          strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          v235[0] = MEMORY[0x277D85DD0];
          v235[1] = 3221225472;
          v235[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke;
          v235[3] = &unk_2782C7E28;
          v47 = strongToStrongObjectsMapTable;
          v236 = v47;
          [v45 enumerateObjectsUsingBlock:v235];
          v233 = 0u;
          v234 = 0u;
          v231 = 0u;
          v232 = 0u;
          v48 = v45;
          v49 = [v48 countByEnumeratingWithState:&v231 objects:v262 count:16];
          if (v49)
          {
            v50 = *v232;
            do
            {
              for (i = 0; i != v49; ++i)
              {
                if (*v232 != v50)
                {
                  objc_enumerationMutation(v48);
                }

                v52 = *(*(&v231 + 1) + 8 * i);
                [v52 enumerateDescriptorStoreCoordinators:{&__block_literal_global_41, v163}];
                v53 = PBFLogMigration([v52 enumerateConfigurationStoreCoordinators:&__block_literal_global_43]);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_21B526000, v53, OS_LOG_TYPE_DEFAULT, "Begin attribute migration", buf, 2u);
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v259 = __Block_byref_object_copy__4;
                v260 = __Block_byref_object_dispose__4;
                v261 = 0;
                v222[0] = MEMORY[0x277D85DD0];
                v222[1] = 3221225472;
                v222[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44;
                v222[3] = &unk_2782C7EB8;
                v223 = v184;
                v224 = v43;
                v225 = v47;
                v229 = toVersionCopy;
                v230 = 61;
                v226 = v185;
                v227 = &v243;
                v228 = buf;
                [v52 enumerateConfigurationStoreCoordinators:v222];
                v54 = *(*&buf[8] + 40);
                if (v54)
                {
                  objc_storeStrong(v248 + 5, v54);
                  v56 = PBFLogMigration(v55);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    +[PBFPosterExtensionDataStoreMigrator migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:];
                  }
                }

                _Block_object_dispose(buf, 8);
              }

              v49 = [v48 countByEnumeratingWithState:&v231 objects:v262 count:16];
            }

            while (v49);
          }

LABEL_61:
LABEL_62:

          v24 = v185;
          versionCopy = v180;
          goto LABEL_63;
        }

LABEL_60:
        *(v244 + 24) = 0;
        goto LABEL_61;
      }

LABEL_63:
      if (v248[5] || (v25 = v244 + 3, (v244[3] & 1) == 0))
      {
        v135 = PBFLogMigration(v26);
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          *&buf[4] = toVersionCopy;
          *&buf[12] = 2048;
          *&buf[14] = versionCopy;
          *&buf[22] = 2112;
          v259 = v24;
          _os_log_impl(&dword_21B526000, v135, OS_LOG_TYPE_DEFAULT, "Failed to migrate to Version %lu from %lu (%@)", buf, 0x20u);
        }

        *(v244 + 24) = 0;
LABEL_167:

        lCopy = v185;
LABEL_168:
        if (v248[5])
        {
          v136 = PBFLogMigration(v19);
          if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
          {
            +[PBFPosterExtensionDataStoreMigrator migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:];
          }
        }

        else
        {
          v136 = PBFLogMigration(v19);
          if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = lCopy;
            _os_log_impl(&dword_21B526000, v136, OS_LOG_TYPE_DEFAULT, "Successfuly setup data store @ baseURL '%@'", buf, 0xCu);
          }
        }

        if (v248[5])
        {
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v138 = v169;
          v139 = [v138 countByEnumeratingWithState:&v194 objects:v254 count:16];
          v140 = v139;
          if (v139)
          {
            v141 = *v195;
            do
            {
              v142 = 0;
              do
              {
                if (*v195 != v141)
                {
                  objc_enumerationMutation(v138);
                }

                v143 = *(*(&v194 + 1) + 8 * v142);
                v144 = PBFLogMigration(v139);
                if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v143;
                  _os_log_impl(&dword_21B526000, v144, OS_LOG_TYPE_DEFAULT, "Cleaning up failed data store URL '%@'", buf, 0xCu);
                }

                v139 = [defaultManager removeItemAtURL:v143 error:0];
                ++v142;
              }

              while (v140 != v142);
              v139 = [v138 countByEnumeratingWithState:&v194 objects:v254 count:16];
              v140 = v139;
            }

            while (v139);
          }

          v146 = PBFLogMigration(v145);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v185;
            v147 = "Cleaned up failed data store URL '%@'";
            v148 = v146;
            v149 = 12;
            goto LABEL_204;
          }
        }

        else if (succeedsCopy)
        {
          v150 = PBFLogMigration(v137);
          if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v185;
            _os_log_impl(&dword_21B526000, v150, OS_LOG_TYPE_DEFAULT, "Cleaned up after successful data store migration '%@'", buf, 0xCu);
          }

          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v146 = v168;
          v151 = [v146 countByEnumeratingWithState:&v190 objects:v253 count:16];
          v152 = v151;
          if (v151)
          {
            v153 = *v191;
            do
            {
              v154 = 0;
              do
              {
                if (*v191 != v153)
                {
                  objc_enumerationMutation(v146);
                }

                v155 = *(*(&v190 + 1) + 8 * v154);
                v156 = PBFLogMigration(v151);
                if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v155;
                  _os_log_impl(&dword_21B526000, v156, OS_LOG_TYPE_DEFAULT, "Cleaning up successful data store URL '%@'", buf, 0xCu);
                }

                v189 = 0;
                v157 = [defaultManager removeItemAtURL:v155 error:&v189];
                v158 = v189;
                v159 = v158;
                if ((v157 & 1) == 0)
                {
                  v160 = PBFLogMigration(v158);
                  if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *&buf[4] = v155;
                    *&buf[12] = 2112;
                    *&buf[14] = v159;
                    _os_log_error_impl(&dword_21B526000, v160, OS_LOG_TYPE_ERROR, "Failed to cleanup after '%@': %@", buf, 0x16u);
                  }
                }

                ++v154;
              }

              while (v152 != v154);
              v151 = [v146 countByEnumeratingWithState:&v190 objects:v253 count:16];
              v152 = v151;
            }

            while (v151);
          }
        }

        else
        {
          v146 = PBFLogMigration(v137);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v147 = "Not cleaning up after successful data store migration.";
            v148 = v146;
            v149 = 2;
LABEL_204:
            _os_log_impl(&dword_21B526000, v148, OS_LOG_TYPE_DEFAULT, v147, buf, v149);
          }
        }

        if (error)
        {
          v161 = v248[5];
          if (v161)
          {
            *error = v161;
          }
        }

        v12 = *(v244 + 24);

        _Block_object_dispose(&v243, 8);
        _Block_object_dispose(&v247, 8);

LABEL_209:
        lCopy = v185;
        goto LABEL_210;
      }

LABEL_65:
      *v25 = 1;

      versionCopy = v180 + 1;
      lCopy = v185;
      if (v180 + 1 > toVersionCopy)
      {
        goto LABEL_168;
      }
    }

    v57 = PBFLogMigration(v26);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v57, OS_LOG_TYPE_DEFAULT, "Kicking off 60 migration", buf, 2u);
    }

    v170 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v185 version:60];
    v58 = [PBFPosterExtensionDataStoreSQLiteDatabase alloc];
    v59 = v248;
    v221 = 0;
    v184 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)v58 initWithURL:v170 options:10 error:&v221];
    objc_storeStrong(v59 + 5, v221);
    if (!v184 || v248[5])
    {
      v61 = PBFLogMigration(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        +[PBFPosterExtensionDataStoreMigrator migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:];
      }

      goto LABEL_60;
    }

    v62 = PBFLogMigration(v60);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v62, OS_LOG_TYPE_DEFAULT, "Setting up poster configurations for lock screen role", buf, 2u);
    }

    v63 = v185;
    v64 = [MEMORY[0x277CBEBC0] pbf_switcherConfigurationOrderingURLForBaseURL:v185 version:60];
    v65 = [v64 checkResourceIsReachableAndReturnError:0];
    v166 = v64;
    if (v65)
    {
      v66 = PBFLogMigration(v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v66, OS_LOG_TYPE_DEFAULT, "going w/ existing poster uuid ordering file", buf, 2u);
      }
    }

    else
    {
      if (v172 > 0x3B)
      {
LABEL_84:
        v73 = MEMORY[0x277CBEB70];
        v74 = [v64 pf_loadFromPlistWithError:{0, v163}];
        v75 = objc_opt_class();
        v76 = v74;
        if (v75)
        {
          if (objc_opt_isKindOfClass())
          {
            v77 = v76;
          }

          else
          {
            v77 = 0;
          }
        }

        else
        {
          v77 = 0;
        }

        v78 = v77;

        if (v78)
        {
          v79 = v78;
        }

        else
        {
          v79 = MEMORY[0x277CBEBF8];
        }

        v178 = [v73 orderedSetWithArray:v79];

        v81 = PBFLogMigration(v80);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v178;
          _os_log_impl(&dword_21B526000, v81, OS_LOG_TYPE_DEFAULT, "posterUUIDOrdering: %{public}@", buf, 0xCu);
        }

        v82 = v185;
        v83 = [MEMORY[0x277CBEBC0] pbf_switcherSelectedConfigurationURLForBaseURL:v185 version:60];
        v84 = [v83 checkResourceIsReachableAndReturnError:0];
        v165 = v83;
        if (v23 < v172)
        {
          v85 = 1;
        }

        else
        {
          v85 = v84;
        }

        if ((v85 & 1) == 0)
        {
          while (1)
          {
            v86 = [MEMORY[0x277CBEBC0] pbf_switcherSelectedConfigurationURLForBaseURL:v82 version:v23];
            if ([v86 checkResourceIsReachableAndReturnError:0])
            {
              break;
            }

            --v23;
            v82 = v185;
            if (v23 < v172)
            {
              goto LABEL_107;
            }
          }

          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v88 = [defaultManager2 copyItemAtURL:v86 toURL:v165 error:0];

          if (v88)
          {
            v90 = PBFLogMigration(v89);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v163;
              *&buf[4] = v23;
              _os_log_impl(&dword_21B526000, v90, OS_LOG_TYPE_DEFAULT, "restored selected poster uuid ordering from %lu", buf, 0xCu);
            }
          }

          else
          {
            v90 = PBFLogMigration(v89);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v23;
              *&buf[12] = 2114;
              *&buf[14] = 0;
              _os_log_error_impl(&dword_21B526000, v90, OS_LOG_TYPE_ERROR, "FAILED restored selected poster uuid from %lu: %{public}@", buf, 0x16u);
            }
          }
        }

LABEL_107:
        v91 = [v165 pf_loadFromPlistWithError:0];
        v92 = objc_opt_class();
        v93 = v91;
        if (v92)
        {
          if (objc_opt_isKindOfClass())
          {
            v94 = v93;
          }

          else
          {
            v94 = 0;
          }
        }

        else
        {
          v94 = 0;
        }

        v95 = v94;

        v164 = [v95 objectForKey:@"selectedConfigurationIdentifier"];

        v97 = PBFLogMigration(v96);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v164;
          _os_log_impl(&dword_21B526000, v97, OS_LOG_TYPE_DEFAULT, "selected poster uuid: %{public}@", buf, 0xCu);
        }

        v98 = [v178 count];
        v99 = v185;
        if (!v98)
        {
          v100 = PBFLogMigration(0);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v100, OS_LOG_TYPE_DEFAULT, "posterUUIDOrdering is empty; building a new one from the date added of each CSC", buf, 2u);
          }

          v101 = objc_opt_new();
          v188 = objc_opt_new();
          v102 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v185 version:60];
          v103 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v102, 0);

          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          v171 = v103;
          v176 = [v171 countByEnumeratingWithState:&v216 objects:v257 count:16];
          if (v176)
          {
            v175 = *v217;
            do
            {
              for (j = 0; j != v176; ++j)
              {
                if (*v217 != v175)
                {
                  objc_enumerationMutation(v171);
                }

                v104 = *(*(&v216 + 1) + 8 * j);
                v212 = 0u;
                v213 = 0u;
                v214 = 0u;
                v215 = 0u;
                v105 = [v104 configurationStoreCoordinatorsWithError:0];
                v106 = [v105 countByEnumeratingWithState:&v212 objects:v256 count:16];
                if (v106)
                {
                  v107 = *v213;
                  do
                  {
                    for (k = 0; k != v106; ++k)
                    {
                      if (*v213 != v107)
                      {
                        objc_enumerationMutation(v105);
                      }

                      v109 = *(*(&v212 + 1) + 8 * k);
                      v110 = [v109 objectForKeyedSubscript:@"kConfigurationAssociatedPosterUUIDKey"];
                      if (!v110)
                      {
                        posterUUID = [v109 posterUUID];
                        uUIDString = [posterUUID UUIDString];

                        if (uUIDString)
                        {
                          [v188 addObject:uUIDString];
                          [v101 setObject:v109 forKey:uUIDString];
                        }
                      }
                    }

                    v106 = [v105 countByEnumeratingWithState:&v212 objects:v256 count:16];
                  }

                  while (v106);
                }
              }

              v176 = [v171 countByEnumeratingWithState:&v216 objects:v257 count:16];
            }

            while (v176);
          }

          v210[0] = MEMORY[0x277D85DD0];
          v210[1] = 3221225472;
          v210[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_57;
          v210[3] = &unk_2782C7EE0;
          v113 = v101;
          v211 = v113;
          [v188 sortUsingComparator:v210];
          if ([v188 count])
          {
            v114 = [v178 mutableCopy];
            v115 = v114;
            if (v114)
            {
              v116 = v114;
            }

            else
            {
              v116 = objc_opt_new();
            }

            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v117 = v188;
            v118 = [v117 countByEnumeratingWithState:&v206 objects:v255 count:16];
            if (v118)
            {
              v119 = *v207;
              do
              {
                for (m = 0; m != v118; ++m)
                {
                  if (*v207 != v119)
                  {
                    objc_enumerationMutation(v117);
                  }

                  v121 = *(*(&v206 + 1) + 8 * m);
                  v122 = [v178 containsObject:v121];
                  if ((v122 & 1) == 0)
                  {
                    v123 = PBFLogMigration(v122);
                    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      *&buf[4] = v121;
                      _os_log_impl(&dword_21B526000, v123, OS_LOG_TYPE_DEFAULT, "Recovering posterUUID %{public}@", buf, 0xCu);
                    }

                    [v116 addObject:v121];
                  }
                }

                v118 = [v117 countByEnumeratingWithState:&v206 objects:v255 count:16];
              }

              while (v118);
            }

            v204[0] = MEMORY[0x277D85DD0];
            v204[1] = 3221225472;
            v204[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_59;
            v204[3] = &unk_2782C7EE0;
            v205 = v113;
            v124 = PBFLogMigration([v116 sortUsingComparator:v204]);
            if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v116;
              _os_log_impl(&dword_21B526000, v124, OS_LOG_TYPE_DEFAULT, "posterUUIDOrdering replaced with new %{public}@", buf, 0xCu);
            }

            v125 = [v116 copy];
            v178 = v125;
          }

          else
          {
            v116 = PBFLogMigration(0);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B526000, v116, OS_LOG_TYPE_DEFAULT, "no posters to restore; maybe not upgrading", buf, 2u);
            }
          }

          v99 = v185;
        }

        v126 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:v99 version:60];
        v127 = _PBFProvidersForPosterUUIDFromDataStoreExtensionContainerURL(v126);

        v199[0] = MEMORY[0x277D85DD0];
        v199[1] = 3221225472;
        v199[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_60;
        v199[3] = &unk_2782C7F08;
        v128 = v178;
        v200 = v128;
        v129 = v127;
        v201 = v129;
        v203 = &v247;
        v130 = v164;
        v202 = v130;
        v198 = 0;
        [(PBFPosterExtensionDataStoreSQLiteDatabase *)v184 performChanges:v199 error:&v198];
        v131 = v198;
        v132 = v198;
        v133 = v132;
        if (v132 && (v132 = v248 + 5, !v248[5]))
        {
          objc_storeStrong(v132, v131);
        }

        else
        {
          v134 = PBFLogMigration(v132);
          if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v134, OS_LOG_TYPE_INFO, "cleaning up poster configuration ordering url / poster selected configuration identifier plist url", buf, 2u);
          }

          [defaultManager removeItemAtURL:v166 error:0];
          [defaultManager removeItemAtURL:v165 error:0];
        }

        [(PBFPosterExtensionDataStoreSQLiteDatabase *)v184 invalidate];

        goto LABEL_62;
      }

      v67 = 59;
      while (1)
      {
        v66 = [MEMORY[0x277CBEBC0] pbf_switcherConfigurationOrderingURLForBaseURL:v63 version:{v67, v163}];
        if ([v66 checkResourceIsReachableAndReturnError:0])
        {
          break;
        }

        --v67;
        v63 = v185;
        v64 = v166;
        if (v67 < v172)
        {
          goto LABEL_84;
        }
      }

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v220 = 0;
      v69 = [defaultManager3 copyItemAtURL:v66 toURL:v166 error:&v220];
      v70 = v220;

      if (v69)
      {
        v72 = PBFLogMigration(v71);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v163;
          *&buf[4] = v67;
          _os_log_impl(&dword_21B526000, v72, OS_LOG_TYPE_DEFAULT, "restored poster uuid ordering from %lu", buf, 0xCu);
        }
      }

      else
      {
        v72 = PBFLogMigration(v71);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = v67;
          *&buf[12] = 2114;
          *&buf[14] = v70;
          _os_log_error_impl(&dword_21B526000, v72, OS_LOG_TYPE_ERROR, "FAILED restored poster uuid ordering from %lu: %{public}@", buf, 0x16u);
        }
      }
    }

    v64 = v166;
    goto LABEL_84;
  }

  if (error)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA470];
    v266[0] = @"fromVersion < minimumDataStoreVersion || toVersion > currentDataStoreVersion";
    v265[0] = v15;
    v265[1] = @"fromVersion";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    v266[1] = v16;
    v265[2] = @"toVersion";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:toVersion];
    v266[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v266 forKeys:v265 count:3];
    *error = [v14 pbf_generalErrorWithCode:1 userInfo:v18];

    v12 = 0;
    goto LABEL_209;
  }

  v12 = 0;
LABEL_210:

  return v12 & 1;
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_2;
  v3[3] = &unk_2782C7E00;
  v4 = *(a1 + 32);
  [a2 enumerateConfigurationStoreCoordinators:v3];
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"kConfigurationAssociatedPosterUUIDKey"];
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKey:v3];
  }
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 reapEverythingExceptLatestVersion];
  [v2 reapSnapshots];
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 reapEverythingExceptLatestVersion];
  [v2 reapSnapshots];
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44(uint64_t a1, void *a2, _BYTE *a3)
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 posterUUID];
  v7 = [v4 pathOfLatestVersion];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"kConfigurationAssociatedPosterUUIDKey"];
    if (!v8)
    {
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x277CBEB98] setWithObject:v6];
      LODWORD(v9) = [v9 checkIfPosterUUIDs:v10 belongToRole:*MEMORY[0x277D3EEF0] error:0];

      if (v9)
      {
        [*(a1 + 40) removeAllObjects];
        v65 = [*(a1 + 48) objectForKey:v6];
        if (v65)
        {
          v11 = objc_alloc(MEMORY[0x277D3EC68]);
          v12 = [v65 posterUUID];
          v13 = [MEMORY[0x277CBEAA8] date];
          v14 = [v65 extensionIdentifier];
          v15 = [v11 initWithChildPosterUUID:v12 dateCreated:v13 providerIdentifier:v14];

          v16 = *(a1 + 40);
          v17 = [v15 encodeJSON];
          v18 = [v15 attributeType];
          [v16 setObject:v17 forKey:v18];

          v20 = PBFLogMigration(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v65 posterUUID];
            *buf = 138543618;
            *&buf[4] = 0;
            *&buf[12] = 2114;
            *&buf[14] = v21;
            _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "Setup child poster attribute for parent %{public}@ -> child %{public}@", buf, 0x16u);
          }
        }

        v76 = 0;
        v22 = [MEMORY[0x277D3EDE8] loadFocusConfigurationForPath:v7 error:&v76];
        v23 = v76;
        v63 = v23;
        if (v23 || !v22)
        {
          v24 = PBFLogMigration(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_1();
          }
        }

        else
        {
          v24 = [v22 encodeJSON];
          v25 = [v24 length];
          if (v25)
          {
            v25 = [*(a1 + 40) setObject:v24 forKeyedSubscript:*MEMORY[0x277D3EEB8]];
          }

          v26 = PBFLogMigration(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "ported focus configuration to attribute", buf, 2u);
          }
        }

        v75 = 0;
        v66 = [MEMORY[0x277D3EDE8] loadSuggestionMetadataForPath:v7 error:&v75];
        v27 = v75;
        v62 = v27;
        if (v27 || !v66)
        {
          v28 = PBFLogMigration(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_2();
          }
        }

        else
        {
          v28 = [v66 encodeJSON];
          v29 = [v28 length];
          if (v29)
          {
            v29 = [*(a1 + 40) setObject:v28 forKeyedSubscript:*MEMORY[0x277D3EED0]];
          }

          v30 = PBFLogMigration(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "ported suggestion metadata to attribute", buf, 2u);
          }
        }

        v31 = objc_opt_new();
        v64 = [v4 objectForKeyedSubscript:@"kConfigurationLastUseDateKey"];
        if (v64)
        {
          v32 = [v31 usageMetadataForUpdatedLastActivatedDate:?];

          v31 = v32;
        }

        v33 = [v66 lastModifiedDate];

        if (v33)
        {
          v34 = [v66 lastModifiedDate];
          v35 = [v31 usageMetadataForUpdatedLastModifiedDate:v34];

          v31 = v35;
        }

        v36 = *(a1 + 40);
        v37 = [v31 encodeJSON];
        v38 = [v31 attributeType];
        [v36 setObject:v37 forKey:v38];

        v74 = 0;
        v39 = [MEMORY[0x277D3EDE8] loadOtherMetadataForPath:v7 error:&v74];
        v40 = v74;
        v61 = v40;
        if (v40 || !v39)
        {
          v41 = PBFLogMigration(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_3();
          }
        }

        else
        {
          v41 = [v39 encodeJSON];
          v42 = [v41 length];
          if (v42)
          {
            v42 = [*(a1 + 40) setObject:v41 forKeyedSubscript:*MEMORY[0x277D3EEC8]];
          }

          v43 = PBFLogMigration(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "ported other metadata to attribute", buf, 2u);
          }
        }

        v73 = 0;
        v44 = [MEMORY[0x277D3EDE8] loadHomeScreenConfigurationForPath:v7 error:&v73];
        v45 = v73;
        v60 = v45;
        if (v45 || !v44)
        {
          v46 = PBFLogMigration(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_4();
          }
        }

        else
        {
          v46 = [v44 encodeJSON];
          v47 = [v46 length];
          if (v47)
          {
            v47 = [*(a1 + 40) setObject:v46 forKeyedSubscript:*MEMORY[0x277D3EEC0]];
          }

          v48 = PBFLogMigration(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B526000, v48, OS_LOG_TYPE_DEFAULT, "ported home screen config to attribute", buf, 2u);
          }
        }

        v49 = [*(a1 + 40) count];
        if (v49)
        {
          v50 = PBFLogMigration(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v6;
            _os_log_impl(&dword_21B526000, v50, OS_LOG_TYPE_DEFAULT, "updating attributes for poster %{public}@", buf, 0xCu);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v78 = __Block_byref_object_copy__4;
          v79 = __Block_byref_object_dispose__4;
          v80 = 0;
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_50;
          v69[3] = &unk_2782C7E90;
          v51 = *(a1 + 32);
          v70 = *(a1 + 40);
          v71 = v6;
          v72 = buf;
          v68 = 0;
          v52 = [v51 performChanges:v69 error:&v68];
          v53 = v68;
          v54 = v53;
          *(*(*(a1 + 64) + 8) + 24) = v52;
          if (*(*(*(a1 + 64) + 8) + 24) != 1 || v53 || *(*&buf[8] + 40))
          {
            v55 = *(*(a1 + 72) + 8);
            v57 = *(v55 + 40);
            v56 = (v55 + 40);
            if (!v57)
            {
              v58 = *(*&buf[8] + 40);
              if (v54 | v58)
              {
                if (v58)
                {
                  v59 = *(*&buf[8] + 40);
                }

                else
                {
                  v59 = v54;
                }

                objc_storeStrong(v56, v59);
              }
            }

            *a3 = 1;

            _Block_object_dispose(buf, 8);
          }

          else
          {

            _Block_object_dispose(buf, 8);
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_50(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [*(a1 + 32) keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x277D3EEF0];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
        v12 = *(a1 + 40);
        v13 = *(*(a1 + 48) + 8);
        obj = 0;
        LODWORD(v10) = [v3 mutateAttributeForPoster:v12 roleId:v8 attributeId:v10 attributePayload:v11 error:&obj];
        objc_storeStrong((v13 + 40), obj);
        if (!v10 || *(*(*(a1 + 48) + 8) + 40))
        {

          v14 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v14 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_13:

  return v14;
}

uint64_t __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_57(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 identifierURL];
  v10 = [v9 pbf_creationDate];

  v11 = [v8 identifierURL];
  v12 = [v11 pbf_creationDate];

  v13 = [v10 compare:v12];
  return v13;
}

uint64_t __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_59(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 identifierURL];
  v10 = [v9 pbf_creationDate];

  v11 = [v8 identifierURL];
  v12 = [v11 pbf_creationDate];

  v13 = [v10 compare:v12];
  return v13;
}

uint64_t __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_60(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v55 objects:v63 count:16];
  v6 = MEMORY[0x277D3EEF0];
  v51 = v5;
  if (v5)
  {
    v7 = *v56;
    v8 = *MEMORY[0x277D3EEF0];
    v50 = *v56;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v55 + 1) + 8 * v9);
        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
        if (!v11)
        {
          v12 = PBFLogMigration(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v60 = v10;
            _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "Unable to create UUID from posterUUIDString: %{public}@; not-fatal; continuing.", buf, 0xCu);
          }

          goto LABEL_46;
        }

        v12 = v11;
        v13 = [v3 sortedPosterUUIDsForRole:v8 error:0];
        v14 = [v13 containsObject:v12];

        if (v14)
        {
          v16 = PBFLogMigration(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v60 = v12;
            _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "poster uuid %{public}@ already added; continuing", buf, 0xCu);
          }
        }

        else
        {
          v16 = [*(a1 + 40) objectForKey:v10];
          if (v16)
          {
            v54 = 0;
            v17 = [v3 addPosterUUID:v12 provider:v16 error:&v54];
            v18 = v54;
            v19 = v18;
            if (!v17)
            {
              goto LABEL_42;
            }

            v20 = a1;
            v21 = v4;
            v22 = PBFLogMigration(v18);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v60 = v12;
              _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_INFO, "poster uuid %{public}@  added", buf, 0xCu);
            }

            v53 = 0;
            v23 = [v3 assignPosterUUID:v12 toRole:v8 error:&v53];
            v24 = v53;

            if (!v23)
            {
              v19 = v24;
              v4 = v21;
              a1 = v20;
LABEL_42:
              v43 = *(*(a1 + 56) + 8);
              v46 = *(v43 + 40);
              v44 = (v43 + 40);
              v45 = v46;
              if (v46)
              {
                v47 = v45;
              }

              else
              {
                v47 = v19;
              }

              objc_storeStrong(v44, v47);

LABEL_46:
              v48 = 0;
              goto LABEL_52;
            }

            v26 = PBFLogMigration(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v60 = v12;
              _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_INFO, "poster uuid %{public}@ assigned to lock screen", buf, 0xCu);
            }

            v4 = v21;
            a1 = v20;
            v7 = v50;
          }

          else
          {
            v24 = PBFLogMigration(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v60 = v10;
              _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "Unable to find provider for posterUUID: %{public}@; not-fatal; continuing.", buf, 0xCu);
            }
          }
        }

        ++v9;
      }

      while (v51 != v9);
      v27 = [v4 countByEnumeratingWithState:&v55 objects:v63 count:16];
      v6 = MEMORY[0x277D3EEF0];
      v51 = v27;
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 48))
  {
    v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 48)];
  }

  else
  {
    v28 = 0;
  }

  v29 = *v6;
  v30 = [v3 sortedPosterUUIDsForRole:*v6 error:0];
  v31 = v30;
  if (v28 && (v30 = [v30 containsObject:v28], (v30 & 1) != 0))
  {
    v12 = v28;
  }

  else
  {
    v32 = PBFLogMigration(v30);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v60 = v28;
      v61 = 2114;
      v62 = v31;
      _os_log_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEFAULT, "selected posterUUID not valid (%{public}@); current posters: %{public}@", buf, 0x16u);
    }

    v12 = [v31 firstObject];

    v34 = PBFLogMigration(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v60 = v12;
      _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_INFO, "replacing selected posterUUID w/ first poster uuid %{public}@", buf, 0xCu);
    }

    if (!v12)
    {
      v4 = 0;
      goto LABEL_48;
    }
  }

  v52 = 0;
  v36 = [v3 markPosterUUIDAsSelected:v12 roleId:v29 error:&v52];
  v35 = v52;
  v4 = v35;
  if ((v36 & 1) == 0)
  {
    v37 = PBFLogMigration(v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_60_cold_1();
    }

    v39 = PBFLogMigration(v38);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v40 = "Migration will continue.";
    v41 = v39;
    v42 = 2;
    goto LABEL_50;
  }

LABEL_48:
  v39 = PBFLogMigration(v35);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v60 = v12;
    v40 = "successfully selected posterUUID %{public}@";
    v41 = v39;
    v42 = 12;
LABEL_50:
    _os_log_impl(&dword_21B526000, v41, OS_LOG_TYPE_INFO, v40, buf, v42);
  }

LABEL_51:

  v48 = 1;
LABEL_52:

  return v48;
}

- (void)migrateDataStoreToCurrentVersion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)migrateDataStoreToCurrentVersion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:.cold.1()
{
  OUTLINED_FUNCTION_4_2();
  *v0 = 138543362;
  *v1 = v2;
  _os_log_error_impl(&dword_21B526000, v4, OS_LOG_TYPE_ERROR, "no database? %{public}@", v3, 0xCu);
}

+ (void)migrateDataStoreAtBaseURL:fromVersion:toVersion:cleanupAfterMigrationSucceeds:error:.cold.2()
{
  OUTLINED_FUNCTION_4_2();
  *v0 = 138543362;
  *v1 = v2;
  _os_log_error_impl(&dword_21B526000, v4, OS_LOG_TYPE_ERROR, "error updating to 61: %{public}@", v3, 0xCu);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_2()
{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_3()
{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_44_cold_4()
{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __123__PBFPosterExtensionDataStoreMigrator_migrateDataStoreAtBaseURL_fromVersion_toVersion_cleanupAfterMigrationSucceeds_error___block_invoke_60_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end