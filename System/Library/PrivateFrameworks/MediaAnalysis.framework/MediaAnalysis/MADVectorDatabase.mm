@interface MADVectorDatabase
+ (id)_vectorDatabaseAttributes;
+ (id)_vectorDatabaseVersion;
+ (id)databaseDirectoryURLForPhotoLibrary:(id)library;
+ (id)databaseWithPhotoLibrary:(id)library readyOnly:(BOOL)only;
+ (id)historicalFolderNames;
+ (int64_t)_vectorDatabaseMetric;
- (MADVectorDatabase)initWithPhotoLibrary:(id)library readyOnly:(BOOL)only;
- (id)_vectorDatabaseReadOnlyConfigWithError:(id *)error;
- (id)_vectorDatabaseReadWriteConfigWithError:(id *)error;
- (id)fetchAllAssetsWithLimit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error;
- (id)fetchAssetsWithEmbeddingType:(unint64_t)type limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error;
- (id)fetchAssetsWithLocalIdentifiers:(id)identifiers embeddingType:(unint64_t)type error:(id *)error;
- (id)fetchAssetsWithLocalIdentifiers:(id)identifiers error:(id *)error;
- (id)searchWithEmbeddings:(id)embeddings localIdentifiers:(id)identifiers attributeFilters:(id)filters limit:(int)limit fullScan:(BOOL)scan includePayload:(BOOL)payload numberOfProbes:(id)probes batchSize:(id)self0 numConcurrentReaders:(id)self1 error:(id *)self2;
- (int)_openVSKClientWithError:(id *)error;
- (int)insertOrReplaceAssetsEmbeddings:(id)embeddings error:(id *)error;
- (int)rebuildWithForce:(BOOL)force cancelBlock:(id)block extendTimeoutBlock:(id)timeoutBlock totalEmbeddingCount:(int64_t *)count;
- (int)removeEmbeddingsWithLocalIdentifiers:(id)identifiers embeddingType:(unint64_t)type error:(id *)error;
- (int)removeEmbeddingsWithLocalIdentifiers:(id)identifiers error:(id *)error;
- (unint64_t)assetCountForEmbeddingType:(unint64_t)type error:(id *)error;
- (unint64_t)assetCountWithError:(id *)error;
- (unint64_t)deltaStoreCount;
- (unint64_t)embeddingCountWithError:(id *)error;
- (void)_purgeHistoricalData;
- (void)prewarmSearchWithConcurrencyLimit:(unint64_t)limit;
@end

@implementation MADVectorDatabase

- (MADVectorDatabase)initWithPhotoLibrary:(id)library readyOnly:(BOOL)only
{
  v26 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v21.receiver = self;
  v21.super_class = MADVectorDatabase;
  v8 = [(MADVectorDatabase *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoLibrary, library);
    v10 = [objc_opt_class() databaseDirectoryURLForPhotoLibrary:v9->_photoLibrary];
    directoryURL = v9->_directoryURL;
    v9->_directoryURL = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.mediaanalysis.sql.vector", v12);
    vskClientQueue = v9->_vskClientQueue;
    v9->_vskClientQueue = v13;

    v9->_readOnly = only;
    v20 = 0;
    LODWORD(v12) = [(MADVectorDatabase *)v9 _openVSKClientWithError:&v20];
    v15 = v20;
    v16 = v9;
    if (v12)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = @"read-write";
        if (v9->_readOnly)
        {
          v17 = @"read-only";
        }

        *buf = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKDB] Failed to initialize %@ database - %@", buf, 0x16u);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = v16;

  return v18;
}

+ (id)databaseWithPhotoLibrary:(id)library readyOnly:(BOOL)only
{
  onlyCopy = only;
  libraryCopy = library;
  v6 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy readyOnly:onlyCopy];

  return v6;
}

+ (id)databaseDirectoryURLForPhotoLibrary:(id)library
{
  v15 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v4 = MEMORY[0x1E695DFF8];
  vcp_mediaAnalysisDirectory = [libraryCopy vcp_mediaAnalysisDirectory];
  v6 = [v4 fileURLWithPath:vcp_mediaAnalysisDirectory isDirectory:1];

  if (v6)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    path = [v6 path];
    v9 = [defaultManager fileExistsAtPath:path isDirectory:&v12];

    if (v12 & v9)
    {
      v10 = [v6 URLByAppendingPathComponent:@"vector_database"];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKDB] Invalid media analysis directory %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = libraryCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKDB] Failed to retrieve path for Photo Library %@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)historicalFolderNames
{
  v6[8] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v6[0] = @"vskdata";
  v6[1] = @"vskdata_MD2";
  v6[2] = @"vskdata_MD3";
  v6[3] = @"vskdataMD2";
  v6[4] = @"vskdataMD3";
  v6[5] = @"vskdataMD4";
  v6[6] = @"vskdataMD3_1";
  v6[7] = @"vskdataMD4_1";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

- (void)_purgeHistoricalData
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  vcp_mediaAnalysisDirectory = [(PHPhotoLibrary *)self->_photoLibrary vcp_mediaAnalysisDirectory];
  v4 = [v2 fileURLWithPath:vcp_mediaAnalysisDirectory isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [objc_opt_class() historicalFolderNames];
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v4 URLByAppendingPathComponent:v10];
        path = [v12 path];
        LODWORD(v10) = [defaultManager fileExistsAtPath:path isDirectory:0];

        if (v10)
        {
          v23 = v6;
          v14 = [defaultManager removeItemAtURL:v12 error:&v23];
          v15 = v23;

          if (v14)
          {
            if (MediaAnalysisLogLevel() >= 6)
            {
              v16 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v29 = v12;
                v17 = v16;
                v18 = OS_LOG_TYPE_INFO;
                v19 = "[VSKDB] Removed %@";
                v20 = 12;
                goto LABEL_14;
              }
            }
          }

          else if (MediaAnalysisLogLevel() >= 3)
          {
            v21 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v29 = v12;
              v30 = 2112;
              v31 = v15;
              v17 = v21;
              v18 = OS_LOG_TYPE_ERROR;
              v19 = "[VSKDB] Failed to remove %@ - %@";
              v20 = 22;
LABEL_14:
              _os_log_impl(&dword_1C9B70000, v17, v18, v19, buf, v20);
            }
          }

          v6 = v15;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }
}

+ (id)_vectorDatabaseAttributes
{
  v5[1] = *MEMORY[0x1E69E9840];
  mad_embeddingVersionAttribute = [MEMORY[0x1E69DF600] mad_embeddingVersionAttribute];
  v5[0] = mad_embeddingVersionAttribute;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)_vectorDatabaseVersion
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[MADEmbeddingStore includeAudioFusedVideoEmbeddings])
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  v5 = 5;
  if (v3)
  {
    v5 = 8;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u.%u", v5, v4];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VSKDB] Target version: %@", buf, 0xCu);
  }

  return v6;
}

+ (int64_t)_vectorDatabaseMetric
{
  if (_os_feature_enabled_impl())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_vectorDatabaseReadWriteConfigWithError:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  _vectorDatabaseVersion = [objc_opt_class() _vectorDatabaseVersion];
  v5 = VCPSignPostLog(_vectorDatabaseVersion);
  v6 = os_signpost_id_generate(v5);

  v8 = VCPSignPostLog(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MAD_VSKConfigAbbreviatedInit", "", buf, 2u);
  }

  v10 = objc_alloc(MEMORY[0x1E69DF618]);
  directoryURL = self->_directoryURL;
  v61 = 0;
  v12 = [v10 initWithBaseDirectory:directoryURL readOnly:0 perConnectionPeakMemory:0 error:&v61];
  v13 = v61;
  v14 = VCPSignPostLog(v13);
  v15 = v14;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v6, "MAD_VSKConfigAbbreviatedInit", "", buf, 2u);
  }

  clientVersion = [v12 clientVersion];
  v17 = [clientVersion isEqualToString:_vectorDatabaseVersion];

  if (!v17)
  {
    if (v13)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VSKDB] Unable to initialize vector database with abbreviated initializer: %@", buf, 0xCu);
      }
    }

    else
    {
      clientVersion2 = [v12 clientVersion];
      v21 = [clientVersion2 isEqualToString:_vectorDatabaseVersion];

      if ((v21 & 1) == 0 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        clientVersion3 = [v12 clientVersion];
        *buf = 138412546;
        v65 = clientVersion3;
        v66 = 2112;
        v67 = _vectorDatabaseVersion;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VSKDB] Existing version %@, upgrading to %@", buf, 0x16u);
      }
    }

    self->_hasMigration = 1;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [(NSURL *)self->_directoryURL path];
    v25 = [defaultManager fileExistsAtPath:path isDirectory:0];

    if (v25)
    {
      v26 = self->_directoryURL;
      v60 = 0;
      v27 = [defaultManager removeItemAtURL:v26 error:&v60];
      v28 = v60;
      v13 = v28;
      if ((v27 & 1) == 0)
      {
        if (error)
        {
          *error = [(NSURL *)v28 copy];
        }

        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        v52 = self->_directoryURL;
        *buf = 138412546;
        v65 = v52;
        v66 = 2112;
        v67 = v13;
        v49 = MEMORY[0x1E69E9C10];
        v50 = "[VSKDB] Failed to remove %@ - %@";
        v51 = 22;
        goto LABEL_50;
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v29 = self->_directoryURL;
        *buf = 138412290;
        v65 = v29;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VSKDB] Removed %@", buf, 0xCu);
      }
    }

    else
    {
      v13 = 0;
    }

    path2 = [(NSURL *)self->_directoryURL path];
    v62 = *MEMORY[0x1E696A370];
    v31 = [MEMORY[0x1E696AD98] numberWithShort:493];
    v63 = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v59 = v13;
    v33 = [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:v32 error:&v59];
    v34 = v59;

    v13 = v34;
    if (v33)
    {
      v36 = VCPSignPostLog(v35);
      spid = os_signpost_id_generate(v36);

      v38 = VCPSignPostLog(v37);
      v39 = v38;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v39, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MAD_VSKConfigFullInit", "", buf, 2u);
      }

      v40 = objc_alloc(MEMORY[0x1E69DF618]);
      v41 = self->_directoryURL;
      _vectorDatabaseMetric = [objc_opt_class() _vectorDatabaseMetric];
      _vectorDatabaseAttributes = [objc_opt_class() _vectorDatabaseAttributes];
      v58 = v13;
      LOWORD(v55) = 0;
      LOBYTE(v54) = 1;
      v44 = [v40 initWithBaseDirectory:v41 distanceMetric:_vectorDatabaseMetric filterableAttributes:_vectorDatabaseAttributes dimension:512 averagePartitionSize:0 batchSize:0 batchFactor:0 tradeOffParameterBetweenClusteringAndBalance:0 enableFTS:v54 dataType:0 maxIndexConstructionBatches:0 readOnly:v55 pretokenizationEnabled:MEMORY[0x1E695E0F0] prefixIndices:0 perConnectionPeakMemory:_vectorDatabaseVersion clientVersion:&v58 error:?];
      v45 = v58;

      v47 = VCPSignPostLog(v46);
      v48 = v47;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v48, OS_SIGNPOST_INTERVAL_END, spid, "MAD_VSKConfigFullInit", "", buf, 2u);
      }

      if (v45)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v65 = v45;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKDB] Failed to setup VSKConfig - %@", buf, 0xCu);
        }

        v19 = 0;
        if (error)
        {
          *error = [(NSURL *)v45 copy];
        }
      }

      else
      {
        v19 = v44;
      }

      v13 = v45;
      goto LABEL_54;
    }

    if (error)
    {
      *error = [(NSURL *)v34 copy];
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_51:
      v19 = 0;
LABEL_54:

      goto LABEL_55;
    }

    *buf = 138412290;
    v65 = v34;
    v49 = MEMORY[0x1E69E9C10];
    v50 = "[VSKDB] Failed to create database directory - %@";
    v51 = 12;
LABEL_50:
    _os_log_impl(&dword_1C9B70000, v49, OS_LOG_TYPE_ERROR, v50, buf, v51);
    goto LABEL_51;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    clientVersion4 = [v12 clientVersion];
    *buf = 138412290;
    v65 = clientVersion4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VSKDB] Existing version %@ matches target", buf, 0xCu);
  }

  self->_hasMigration = 0;
  v19 = v12;
LABEL_55:

  return v19;
}

- (id)_vectorDatabaseReadOnlyConfigWithError:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_directoryURL path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if (v7)
  {
    v9 = VCPSignPostLog(v8);
    v10 = os_signpost_id_generate(v9);

    v12 = VCPSignPostLog(v11);
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MAD_VSKConfigReadInitialization_ReadOnly", "", buf, 2u);
    }

    v14 = objc_alloc(MEMORY[0x1E69DF618]);
    directoryURL = self->_directoryURL;
    v25 = 0;
    v16 = [v14 initWithBaseDirectory:directoryURL readOnly:1 perConnectionPeakMemory:0 error:&v25];
    v17 = v25;
    v18 = VCPSignPostLog(v17);
    v19 = v18;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v10, "MAD_VSKConfigReadInitialization_ReadOnly", "", buf, 2u);
    }

    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKDB] Failed to setup read-only VSKConfig - %@", buf, 0xCu);
      }

      v20 = 0;
      if (error)
      {
        *error = [v17 copy];
      }
    }

    else
    {
      v20 = v16;
    }
  }

  else
  {
    if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VSKDB] Database directory does not exist"];
      v29[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *error = [v21 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKDB] Database directory does not exist", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (int)_openVSKClientWithError:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  if (self->_readOnly)
  {
    v5 = @"ReadOnly";
  }

  else
  {
    v5 = @"ReadWrite";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VSKDB][Initialization|%@]", v5];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Start ...", buf, 0xCu);
  }

  [(MADVectorDatabase *)self _purgeHistoricalData];
  if (self->_readOnly)
  {
    v46 = 0;
    v7 = &v46;
    v8 = [(MADVectorDatabase *)self _vectorDatabaseReadOnlyConfigWithError:&v46];
  }

  else
  {
    v45 = 0;
    v7 = &v45;
    v8 = [(MADVectorDatabase *)self _vectorDatabaseReadWriteConfigWithError:&v45];
  }

  v9 = v8;
  v10 = *v7;
  v11 = v10;
  if (!v9)
  {
    if (error)
    {
      *error = [v10 copy];
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138412546;
    v48 = v6;
    v49 = 2112;
    v50 = v11;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "%@ Failed to create vskConfig - %@";
    goto LABEL_42;
  }

  v12 = MediaAnalysisLogLevel();
  if (v12 >= 6)
  {
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    if (v12)
    {
      directoryURL = self->_directoryURL;
      *buf = 138412802;
      v48 = v6;
      v49 = 2112;
      v50 = v9;
      v51 = 2112;
      v52 = directoryURL;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Loaded configuration %@ at directory %@", buf, 0x20u);
    }
  }

  v14 = VCPSignPostLog(v12);
  v15 = os_signpost_id_generate(v14);

  v17 = VCPSignPostLog(v16);
  v18 = v17;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "MAD_VSKClientInitialization", "", buf, 2u);
  }

  v44 = v11;
  v19 = [[MADVSKClient alloc] initWithConfig:v9 error:&v44];
  v20 = v44;

  vskClient = self->_vskClient;
  self->_vskClient = v19;

  v11 = v20;
  if (!self->_vskClient)
  {
    if (error)
    {
      *error = [v20 copy];
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 138412546;
    v48 = v6;
    v49 = 2112;
    v50 = v20;
    v38 = MEMORY[0x1E69E9C10];
    v39 = "%@ Failed to initialize VSKClient - %@";
LABEL_42:
    _os_log_impl(&dword_1C9B70000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0x16u);
LABEL_43:
    v37 = -18;
    goto LABEL_51;
  }

  v23 = VCPSignPostLog(v22);
  v24 = v23;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v15, "MAD_VSKClientInitialization", "", buf, 2u);
  }

  v26 = VCPSignPostLog(v25);
  v27 = os_signpost_id_generate(v26);

  v29 = VCPSignPostLog(v28);
  v30 = v29;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v27, "MAD_VSKWarmUp", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Warming up", buf, 0xCu);
  }

  v31 = VCPSignPostLog([(MADVSKClient *)self->_vskClient warmup]);
  v32 = v31;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v27, "MAD_VSKWarmUp", "", buf, 2u);
  }

  v43 = v20;
  v33 = [(MADVectorDatabase *)self _vectorDatabaseReadOnlyConfigWithError:&v43];
  v34 = v43;

  if (v33)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __45__MADVectorDatabase__openVSKClientWithError___block_invoke;
    v41[3] = &unk_1E834D4C0;
    v42 = v33;
    v35 = [VCPObjectPool objectPoolWithAllocator:v41];
    searchClientPool = self->_searchClientPool;
    self->_searchClientPool = v35;

    v37 = 0;
  }

  else
  {
    if (error)
    {
      *error = [v34 copy];
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v34;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKDB][Initialization|Search] Failed to create read-only vskConfig - %@", buf, 0xCu);
    }

    v37 = -18;
  }

  v11 = v34;
LABEL_51:

  return v37;
}

MADVSKClient *__45__MADVectorDatabase__openVSKClientWithError___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MADVSKClient alloc];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [(MADVSKClient *)v2 initWithConfig:v3 error:&v7];
  v5 = v7;
  if (!v4 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKDB][Initialization|Search] Failed to create read-only VSKClient - %@", buf, 0xCu);
  }

  return v4;
}

- (int)insertOrReplaceAssetsEmbeddings:(id)embeddings error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  v7 = embeddingsCopy;
  if (self->_readOnly)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"[VSKDB][InsertOrReplace]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation not permitted for read-only client", &buf, 0xCu);
    }

    v8 = -18;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2020000000;
    v18 = 0;
    vskClientQueue = self->_vskClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MADVectorDatabase_insertOrReplaceAssetsEmbeddings_error___block_invoke;
    block[3] = &unk_1E834D4E8;
    block[4] = self;
    v12 = embeddingsCopy;
    v13 = @"[VSKDB][InsertOrReplace]";
    p_buf = &buf;
    errorCopy = error;
    dispatch_sync(vskClientQueue, block);
    v8 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  return v8;
}

void __59__MADVectorDatabase_insertOrReplaceAssetsEmbeddings_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKInsertMultipleAssets", "", buf, 2u);
  }

  v7 = [*(*(a1 + 32) + 24) client];
  v8 = *(a1 + 40);
  v15 = 0;
  v9 = [v7 insertAssets:v8 error:&v15];
  v10 = v15;

  if (v10)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 48);
      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation failed - %@", buf, 0x16u);
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = [v10 copy];
    }

    *(*(*(a1 + 56) + 8) + 24) = -18;
  }

  else
  {
    v13 = VCPSignPostLog(v11);
    v14 = v13;
    if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKInsertMultipleAssets", "", buf, 2u);
    }
  }
}

- (int)removeEmbeddingsWithLocalIdentifiers:(id)identifiers error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (self->_readOnly)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"[VSKDB][Remove]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation not permitted for read-only client", &buf, 0xCu);
    }

    v8 = -18;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 0;
    vskClientQueue = self->_vskClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__MADVectorDatabase_removeEmbeddingsWithLocalIdentifiers_error___block_invoke;
    block[3] = &unk_1E834D4E8;
    v12 = identifiersCopy;
    selfCopy = self;
    v14 = @"[VSKDB][Remove]";
    p_buf = &buf;
    errorCopy = error;
    dispatch_sync(vskClientQueue, block);
    v8 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  return v8;
}

void __64__MADVectorDatabase_removeEmbeddingsWithLocalIdentifiers_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [*(a1 + 32) count];
    *buf = 134217984;
    v22 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKDeleteEmbedding", "%ld", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E69DF5F8] mad_stringIdentifiersFromLocalIdentifiers:*(a1 + 32)];
  v9 = [*(*(a1 + 40) + 24) client];
  v20 = 0;
  v10 = [v9 deleteStringIdentifiers:v8 error:&v20];
  v11 = v20;

  if (v11)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 32) count];
      *buf = 138412802;
      v22 = v12;
      v23 = 2048;
      v24 = v13;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to remove embeddings for %lu assets - %@", buf, 0x20u);
    }

    v14 = [v11 code];
    *(*(*(a1 + 56) + 8) + 24) = v14;
    if (*(a1 + 64))
    {
      v14 = [v11 copy];
      **(a1 + 64) = v14;
    }
  }

  else
  {
    v14 = MediaAnalysisLogLevel();
    if (v14 >= 6)
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if (v14)
      {
        v15 = *(a1 + 48);
        v16 = [*(a1 + 32) count];
        *buf = 138412802;
        v22 = v15;
        v23 = 2112;
        v24 = v10;
        v25 = 2048;
        v26 = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Removed %@ embeddings for %lu assets", buf, 0x20u);
      }
    }
  }

  v17 = VCPSignPostLog(v14);
  v18 = v17;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = [*(a1 + 32) count];
    *buf = 134217984;
    v22 = v19;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKDeleteEmbedding", "%ld", buf, 0xCu);
  }
}

- (int)removeEmbeddingsWithLocalIdentifiers:(id)identifiers embeddingType:(unint64_t)type error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v9 = identifiersCopy;
  if (self->_readOnly)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"[VSKDB][RemoveWithEmbeddingType]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation not permitted for read-only client", &buf, 0xCu);
    }

    v10 = -18;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    vskClientQueue = self->_vskClientQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__MADVectorDatabase_removeEmbeddingsWithLocalIdentifiers_embeddingType_error___block_invoke;
    v13[3] = &unk_1E834D510;
    v14 = identifiersCopy;
    selfCopy = self;
    v16 = @"[VSKDB][RemoveWithEmbeddingType]";
    p_buf = &buf;
    typeCopy = type;
    errorCopy = error;
    dispatch_sync(vskClientQueue, v13);
    v10 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  return v10;
}

void __78__MADVectorDatabase_removeEmbeddingsWithLocalIdentifiers_embeddingType_error___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v4)
  {
    v5 = *v34;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [MEMORY[0x1E69DF5F8] mad_stringIdentifierFromLocalIdentifier:v7 embeddingType:*(a1 + 64)];
        [v2 addObject:v9];

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v3 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v4);
  }

  v11 = VCPSignPostLog(v10);
  v12 = os_signpost_id_generate(v11);

  v14 = VCPSignPostLog(v13);
  v15 = v14;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [*(a1 + 32) count];
    v17 = *(a1 + 64);
    *buf = 134218240;
    v38 = v16;
    v39 = 1024;
    *v40 = v17;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MAD_VSKDeleteEmbeddingWithType", "%ld assets, embeddingType %u", buf, 0x12u);
  }

  v18 = [*(*(a1 + 40) + 24) client];
  v32 = 0;
  v19 = [v18 deleteStringIdentifiers:v2 error:&v32];
  v20 = v32;

  if (v20)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 48);
      v22 = *(a1 + 64);
      v23 = [*(a1 + 32) count];
      *buf = 138413058;
      v38 = v21;
      v39 = 1024;
      *v40 = v22;
      *&v40[4] = 2048;
      *&v40[6] = v23;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to remove embeddings (type %u) for %lu assets - %@", buf, 0x26u);
    }

    v24 = [v20 code];
    *(*(*(a1 + 56) + 8) + 24) = v24;
    if (*(a1 + 72))
    {
      v24 = [v20 copy];
      **(a1 + 72) = v24;
    }
  }

  else
  {
    v24 = MediaAnalysisLogLevel();
    if (v24 >= 6)
    {
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if (v24)
      {
        v25 = *(a1 + 48);
        v26 = *(a1 + 64);
        v27 = [*(a1 + 32) count];
        *buf = 138413058;
        v38 = v25;
        v39 = 2112;
        *v40 = v19;
        *&v40[8] = 1024;
        *&v40[10] = v26;
        v41 = 2048;
        v42 = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Removed %@ embeddings (type %u) for %lu assets", buf, 0x26u);
      }
    }
  }

  v28 = VCPSignPostLog(v24);
  v29 = v28;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    v30 = [*(a1 + 32) count];
    v31 = *(a1 + 64);
    *buf = 134218240;
    v38 = v30;
    v39 = 1024;
    *v40 = v31;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v12, "MAD_VSKDeleteEmbeddingWithType", "%ld assets, embeddingType %u", buf, 0x12u);
  }
}

- (unint64_t)deltaStoreCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  vskClientQueue = self->_vskClientQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__MADVectorDatabase_deltaStoreCount__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(vskClientQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __36__MADVectorDatabase_deltaStoreCount__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) client];
  v9 = 0;
  v3 = [v2 statisticsWithError:&v9];
  v4 = v9;

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 deltaStoreCount];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 134217984;
      v11 = v5;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "[VSKDB] Delta embedding count: %lu";
      v8 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&dword_1C9B70000, v6, v8, v7, buf, 0xCu);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[VSKDB] Failed to load VSKStatistics for embedding count - %@";
    v8 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }
}

- (int)rebuildWithForce:(BOOL)force cancelBlock:(id)block extendTimeoutBlock:(id)timeoutBlock totalEmbeddingCount:(int64_t *)count
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  timeoutBlockCopy = timeoutBlock;
  if (self->_readOnly)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"[VSKDB][Rebuild]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation not permitted for read-only client", &buf, 0xCu);
    }

    v12 = -18;
  }

  else if (blockCopy && blockCopy[2](blockCopy))
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"[VSKDB][Rebuild]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Operation canceled before entering client queue", &buf, 0xCu);
    }

    v12 = -128;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x2020000000;
    v25 = 0;
    vskClientQueue = self->_vskClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__MADVectorDatabase_rebuildWithForce_cancelBlock_extendTimeoutBlock_totalEmbeddingCount___block_invoke;
    block[3] = &unk_1E834D5B0;
    v18 = blockCopy;
    v16 = @"[VSKDB][Rebuild]";
    p_buf = &buf;
    v19 = timeoutBlockCopy;
    selfCopy = self;
    countCopy = count;
    forceCopy = force;
    dispatch_sync(vskClientQueue, block);
    v12 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  return v12;
}

void __89__MADVectorDatabase_rebuildWithForce_cancelBlock_extendTimeoutBlock_totalEmbeddingCount___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (!v2 || !(*(v2 + 16))())
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v4 = (*(v4 + 16))();
    }

    v5 = VCPSignPostLog(v4);
    v6 = os_signpost_id_generate(v5);

    v8 = VCPSignPostLog(v7);
    v9 = v8;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MAD_VSKStatistics", "", buf, 2u);
    }

    v10 = [*(*(a1 + 40) + 24) client];
    v59 = 0;
    v11 = [v10 statisticsWithError:&v59];
    v12 = v59;

    if (!v11 || v12)
    {
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      v23 = *(a1 + 32);
      *buf = 138412546;
      v61 = v23;
      v62 = 2112;
      *v63 = v12;
      v21 = MEMORY[0x1E69E9C10];
      v22 = "%@ Failed to query delta embedding count, skip index rebuild: %@";
      v24 = OS_LOG_TYPE_DEFAULT;
      v25 = 22;
    }

    else
    {
      v14 = VCPSignPostLog(v13);
      v15 = v14;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v6, "MAD_VSKStatistics", "", buf, 2u);
      }

      if (*(a1 + 72))
      {
        **(a1 + 72) = [v11 storeCount];
      }

      v16 = [v11 deltaStoreCount];
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = [v11 storeCount];
        *buf = 138412802;
        v61 = v17;
        v62 = 1024;
        *v63 = v16;
        *&v63[4] = 1024;
        *&v63[6] = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@[VSKStatistics] deltaStoreCount: %d, storeCount: %d", buf, 0x18u);
      }

      v19 = *(a1 + 80);
      if (v19 == 1 && v16 <= 0x3E7)
      {
        if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          goto LABEL_55;
        }

        v20 = *(a1 + 32);
        *buf = 138412802;
        v61 = v20;
        v62 = 2048;
        *v63 = v16;
        *&v63[8] = 2048;
        v64 = 1000;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%@ delta embedding count %lu less than force limit %lu; skip index rebuild";
      }

      else
      {
        if ((v19 & 1) != 0 || v16 >> 3 > 0x270)
        {
          v27 = *(a1 + 48);
          if (v27 && (*(v27 + 16))())
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a1 + 32);
              *buf = 138412290;
              v61 = v28;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Operation canceled before rebuilding", buf, 0xCu);
            }

            *(*(*(a1 + 64) + 8) + 24) = -128;
          }

          else
          {
            v29 = *(a1 + 56);
            if (v29)
            {
              v29 = (*(v29 + 16))();
            }

            v30 = VCPSignPostPersistentLog(v29);
            v31 = os_signpost_id_generate(v30);

            v33 = VCPSignPostPersistentLog(v32);
            v34 = v33;
            if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v31, "MAD_vectorDatabaseRebuild", " enableTelemetry=YES ", buf, 2u);
            }

            v49 = objc_opt_new();
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __89__MADVectorDatabase_rebuildWithForce_cancelBlock_extendTimeoutBlock_totalEmbeddingCount___block_invoke_449;
            aBlock[3] = &unk_1E834D560;
            v57 = *(a1 + 48);
            v58 = *(a1 + 56);
            v50 = _Block_copy(aBlock);
            v35 = dispatch_semaphore_create(0);
            v36 = [*(*(a1 + 40) + 24) client];
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __89__MADVectorDatabase_rebuildWithForce_cancelBlock_extendTimeoutBlock_totalEmbeddingCount___block_invoke_2;
            v51[3] = &unk_1E834D588;
            v54 = *(a1 + 48);
            v37 = *(a1 + 32);
            v38 = *(a1 + 64);
            v52 = v37;
            v55 = v38;
            v39 = v35;
            v53 = v39;
            [v36 rebuildWithProgress:v49 checkCancellationIntervalInMilliseconds:500 shouldCancel:v50 completionHandler:v51];

            v40 = dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
            v41 = VCPSignPostPersistentLog(v40);
            v42 = v41;
            if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
            {
              if (*(a1 + 80))
              {
                v43 = "No";
              }

              else
              {
                v43 = "Yes";
              }

              v44 = qos_class_self();
              v45 = VCPMAQoSDescription(v44);
              v46 = v45;
              v47 = [v45 UTF8String];
              v48 = [v11 storeCount];
              *buf = 136446978;
              v61 = v43;
              v62 = 2082;
              *v63 = v47;
              *&v63[8] = 2050;
              v64 = v16;
              v65 = 2050;
              v66 = v48;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, v31, "MAD_vectorDatabaseRebuild", "IsFast=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s DeltaEmbeddingCount=%{public, signpost.telemetry:number1}lld TotalEmbeddingCount=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x2Au);
            }
          }

          goto LABEL_55;
        }

        if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
LABEL_55:

          return;
        }

        v26 = *(a1 + 32);
        *buf = 138412802;
        v61 = v26;
        v62 = 2048;
        *v63 = v16;
        *&v63[8] = 2048;
        v64 = 5000;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%@ delta embedding count %lu less than limit %lu; skip index rebuild";
      }

      v24 = OS_LOG_TYPE_INFO;
      v25 = 32;
    }

    _os_log_impl(&dword_1C9B70000, v21, v24, v22, buf, v25);
    goto LABEL_55;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v61 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Operation canceled after entering client queue", buf, 0xCu);
  }

  *(*(*(a1 + 64) + 8) + 24) = -128;
}

uint64_t __89__MADVectorDatabase_rebuildWithForce_cancelBlock_extendTimeoutBlock_totalEmbeddingCount___block_invoke_449(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ((*(v2 + 16))() & 1) != 0)
  {
    return 1;
  }

  result = *(a1 + 40);
  if (result)
  {
    (*(result + 16))();
    return 0;
  }

  return result;
}

void __89__MADVectorDatabase_rebuildWithForce_cancelBlock_extendTimeoutBlock_totalEmbeddingCount___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4 && (*(v4 + 16))())
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Rebuild VSK DB cancelled - %@", &v8, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = -128;
  }

  else if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Rebuild VSK DB failed - %@", &v8, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = [v3 code];
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Rebuild VSK DB completed", &v8, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (unint64_t)assetCountWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  vskClientQueue = self->_vskClientQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__MADVectorDatabase_assetCountWithError___block_invoke;
  v6[3] = &unk_1E834D5D8;
  v6[4] = self;
  v7 = @"[VSKDB][AssetCount]";
  v8 = &v10;
  errorCopy = error;
  dispatch_sync(vskClientQueue, v6);
  v4 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __41__MADVectorDatabase_assetCountWithError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKAssetCount", "", buf, 2u);
  }

  v7 = [*(*(a1 + 32) + 24) client];
  v16 = 0;
  v8 = [v7 countWithError:&v16];
  v9 = v16;

  if (v8)
  {
    v10 = [v8 unsignedIntegerValue];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation failed - %@", buf, 0x16u);
    }

    if (*(a1 + 56))
    {
      v12 = [v9 copy];
      v13 = v12;
      v10 = 0;
      **(a1 + 56) = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;
  v14 = VCPSignPostLog(v10);
  v15 = v14;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKAssetCount", "", buf, 2u);
  }
}

- (unint64_t)assetCountForEmbeddingType:(unint64_t)type error:(id *)error
{
  errorCopy = error;
  v29[1] = *MEMORY[0x1E69E9840];
  if (type - 3 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = [MEMORY[0x1E69DF5F8] mad_embeddingTypeFilter:type];
    type2 = v10;
    if (v10)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      vskClientQueue = self->_vskClientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__MADVectorDatabase_assetCountForEmbeddingType_error___block_invoke;
      block[3] = &unk_1E834D510;
      typeCopy = type;
      block[4] = self;
      type2 = v10;
      v17 = type2;
      v18 = @"[VSKDB][AssetCountByEmbeddingType]";
      v21 = errorCopy;
      v19 = &v22;
      dispatch_sync(vskClientQueue, block);
      errorCopy = v23[3];

      _Block_object_dispose(&v22, 8);
    }

    else if (errorCopy)
    {
      v12 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      type = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Operation failed - Failed to create filter for embedding type %d", @"[VSKDB][AssetCountByEmbeddingType]", type];
      v27 = type;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *errorCopy = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];

      goto LABEL_8;
    }

LABEL_9:

    return errorCopy;
  }

  if (error)
  {
    v6 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    type2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Operation failed - Unknown embedding type %d", @"[VSKDB][AssetCountByEmbeddingType]", type];
    v29[0] = type2;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *errorCopy = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v8];

LABEL_8:
    errorCopy = 0;
    goto LABEL_9;
  }

  return errorCopy;
}

void __54__MADVectorDatabase_assetCountForEmbeddingType_error___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = *(a1 + 64);
    *buf = 67109120;
    LODWORD(v21) = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKAssetCountByEmbeddingType", "_%d", buf, 8u);
  }

  v8 = [*(*(a1 + 32) + 24) client];
  v24[0] = *(a1 + 40);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v19 = 0;
  v10 = [v8 countWithAttributeFilters:v9 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = [v10 unsignedIntegerValue];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      *buf = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation failed - %@", buf, 0x16u);
    }

    if (*(a1 + 72))
    {
      v14 = [v11 copy];
      v15 = v14;
      v12 = 0;
      **(a1 + 72) = v14;
    }

    else
    {
      v12 = 0;
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = v12;
  v16 = VCPSignPostLog(v12);
  v17 = v16;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = *(a1 + 64);
    *buf = 67109120;
    LODWORD(v21) = v18;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKAssetCountByEmbeddingType", "_%d", buf, 8u);
  }
}

- (unint64_t)embeddingCountWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  vskClientQueue = self->_vskClientQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MADVectorDatabase_embeddingCountWithError___block_invoke;
  v6[3] = &unk_1E834D5D8;
  v6[4] = self;
  v7 = @"[VSKDB][EmbeddingCount]";
  v8 = &v10;
  errorCopy = error;
  dispatch_sync(vskClientQueue, v6);
  v4 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __45__MADVectorDatabase_embeddingCountWithError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKEmbeddingCount", "", buf, 2u);
  }

  v7 = [*(*(a1 + 32) + 24) client];
  v16 = 0;
  v8 = [v7 embeddingCountWithError:&v16];
  v9 = v16;

  if (v8)
  {
    v10 = [v8 unsignedIntegerValue];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation failed - %@", buf, 0x16u);
    }

    if (*(a1 + 56))
    {
      v12 = [v9 copy];
      v13 = v12;
      v10 = 0;
      **(a1 + 56) = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;
  v14 = VCPSignPostLog(v10);
  v15 = v14;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKEmbeddingCount", "", buf, 2u);
  }
}

- (id)fetchAllAssetsWithLimit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = 0;
  vskClientQueue = self->_vskClientQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__MADVectorDatabase_fetchAllAssetsWithLimit_offset_error___block_invoke;
  v8[3] = &unk_1E834D600;
  v10 = &v14;
  limitCopy = limit;
  v8[4] = self;
  v9 = @"[VSKDB][FetchAllAssets]";
  offsetCopy = offset;
  errorCopy = error;
  dispatch_sync(vskClientQueue, v8);
  v6 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v6;
}

void __58__MADVectorDatabase_fetchAllAssetsWithLimit_offset_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKFetchAllAssets", "", buf, 2u);
  }

  v7 = [*(*(a1 + 32) + 24) client];
  v8 = [objc_alloc(MEMORY[0x1E69DF638]) initWithLimit:*(a1 + 56) offset:*(a1 + 64)];
  v19 = 0;
  v9 = [v7 stringIdentifiedAssetsWithIdentifiers:0 attributeFilters:MEMORY[0x1E695E0F0] pagination:v8 error:&v19];
  v10 = v19;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  if (v10)
  {
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    v13 = MediaAnalysisLogLevel();
    if (v13 >= 3)
    {
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v13)
      {
        v16 = *(a1 + 40);
        *buf = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation failed - %@", buf, 0x16u);
      }
    }

    if (*(a1 + 72))
    {
      v13 = [v10 copy];
      **(a1 + 72) = v13;
    }
  }

  v17 = VCPSignPostLog(v13);
  v18 = v17;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKFetchAllAssets", "", buf, 2u);
  }
}

- (id)fetchAssetsWithEmbeddingType:(unint64_t)type limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error
{
  errorCopy = error;
  v37[1] = *MEMORY[0x1E69E9840];
  if (type - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v8 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Operation failed - Unknown embedding type %d", limit, offset, @"[VSKDB][FetchAssetsByEmbeddingType]", type];
    v37[0] = type;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    *errorCopy = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v10];

    goto LABEL_8;
  }

  v14 = [MEMORY[0x1E69DF5F8] mad_embeddingTypeFilter:type];
  type = v14;
  if (v14)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__15;
    v32 = __Block_byref_object_dispose__15;
    v33 = 0;
    vskClientQueue = self->_vskClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MADVectorDatabase_fetchAssetsWithEmbeddingType_limit_offset_error___block_invoke;
    block[3] = &unk_1E834D628;
    v23 = &v28;
    typeCopy = type;
    block[4] = self;
    type = v14;
    limitCopy = limit;
    offsetCopy = offset;
    v21 = type;
    v22 = @"[VSKDB][FetchAssetsByEmbeddingType]";
    v27 = errorCopy;
    dispatch_sync(vskClientQueue, block);
    errorCopy = v29[5];

    _Block_object_dispose(&v28, 8);
  }

  else if (errorCopy)
  {
    v16 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    type2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Operation failed - Failed to create filter for embedding type %d", @"[VSKDB][FetchAssetsByEmbeddingType]", type];
    v35 = type2;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    *errorCopy = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v18];

LABEL_8:
    errorCopy = 0;
  }

LABEL_10:

  return errorCopy;
}

void __69__MADVectorDatabase_fetchAssetsWithEmbeddingType_limit_offset_error___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = *(a1 + 64);
    *buf = 67109120;
    LODWORD(v24) = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKFetchAssetsByEmbeddingType", "_%d", buf, 8u);
  }

  v8 = [*(*(a1 + 32) + 24) client];
  v27[0] = *(a1 + 40);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v10 = [objc_alloc(MEMORY[0x1E69DF638]) initWithLimit:*(a1 + 72) offset:*(a1 + 80)];
  v22 = 0;
  v11 = [v8 stringIdentifiedAssetsWithIdentifiers:0 attributeFilters:v9 pagination:v10 error:&v22];
  v12 = v22;
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  if (v12)
  {
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    v15 = MediaAnalysisLogLevel();
    if (v15 >= 3)
    {
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v15)
      {
        v18 = *(a1 + 48);
        *buf = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation failed - %@", buf, 0x16u);
      }
    }

    if (*(a1 + 88))
    {
      v15 = [v12 copy];
      **(a1 + 88) = v15;
    }
  }

  v19 = VCPSignPostLog(v15);
  v20 = v19;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = *(a1 + 64);
    *buf = 67109120;
    LODWORD(v24) = v21;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKFetchAssetsByEmbeddingType", "_%d", buf, 8u);
  }
}

- (id)fetchAssetsWithLocalIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__15;
  v21 = __Block_byref_object_dispose__15;
  v22 = 0;
  vskClientQueue = self->_vskClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MADVectorDatabase_fetchAssetsWithLocalIdentifiers_error___block_invoke;
  block[3] = &unk_1E834D650;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = @"[VSKDB][FetchAssets]";
  v15 = &v17;
  errorCopy = error;
  v8 = identifiersCopy;
  dispatch_sync(vskClientQueue, block);
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __59__MADVectorDatabase_fetchAssetsWithLocalIdentifiers_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [*(a1 + 32) count];
    *buf = 134217984;
    v23 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKFetchAssets", "%lu assets", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E69DF5F8] mad_stringIdentifiersFromLocalIdentifiers:*(a1 + 32)];
  v9 = [*(*(a1 + 40) + 24) client];
  v21 = 0;
  v10 = [v9 stringIdentifiedAssetsWithIdentifiers:v8 attributeFilters:MEMORY[0x1E695E0F0] pagination:0 error:&v21];
  v11 = v21;
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  if (v11)
  {
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    v14 = MediaAnalysisLogLevel();
    if (v14 >= 3)
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        v17 = *(a1 + 48);
        *buf = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation failed - %@", buf, 0x16u);
      }
    }

    if (*(a1 + 64))
    {
      v14 = [v11 copy];
      **(a1 + 64) = v14;
    }
  }

  v18 = VCPSignPostLog(v14);
  v19 = v18;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v20 = [*(a1 + 32) count];
    *buf = 134217984;
    v23 = v20;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKFetchAssets", "%lu assets", buf, 0xCu);
  }
}

- (id)fetchAssetsWithLocalIdentifiers:(id)identifiers embeddingType:(unint64_t)type error:(id *)error
{
  identifiersCopy = identifiers;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__15;
  v24 = __Block_byref_object_dispose__15;
  v25 = 0;
  vskClientQueue = self->_vskClientQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__MADVectorDatabase_fetchAssetsWithLocalIdentifiers_embeddingType_error___block_invoke;
  v13[3] = &unk_1E834D678;
  v14 = identifiersCopy;
  selfCopy = self;
  v16 = @"[VSKDB][FetchAssets]";
  v17 = &v20;
  typeCopy = type;
  errorCopy = error;
  v10 = identifiersCopy;
  dispatch_sync(vskClientQueue, v13);
  v11 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __73__MADVectorDatabase_fetchAssetsWithLocalIdentifiers_embeddingType_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [*(a1 + 32) count];
    *buf = 134217984;
    v32 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MAD_VSKFetchAssets", "%lu assets", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [MEMORY[0x1E69DF5F8] mad_stringIdentifierFromLocalIdentifier:*(*(&v27 + 1) + 8 * i) embeddingType:*(a1 + 64)];
        [v8 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v10);
  }

  v14 = [*(*(a1 + 40) + 24) client];
  v26 = 0;
  v15 = [v14 stringIdentifiedAssetsWithIdentifiers:v8 attributeFilters:MEMORY[0x1E695E0F0] pagination:0 error:&v26];
  v16 = v26;
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v15;

  if (v16)
  {
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;

    v19 = MediaAnalysisLogLevel();
    if (v19 >= 3)
    {
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v22 = *(a1 + 48);
        *buf = 138412546;
        v32 = v22;
        v33 = 2112;
        v34 = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Operation failed - %@", buf, 0x16u);
      }
    }

    if (*(a1 + 72))
    {
      v19 = [v16 copy];
      **(a1 + 72) = v19;
    }
  }

  v23 = VCPSignPostLog(v19);
  v24 = v23;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = [*(a1 + 32) count];
    *buf = 134217984;
    v32 = v25;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v3, "MAD_VSKFetchAssets", "%lu assets", buf, 0xCu);
  }
}

- (void)prewarmSearchWithConcurrencyLimit:(unint64_t)limit
{
  for (i = [MEMORY[0x1E695DF70] array];
  {
    getObject = [(VCPObjectPool *)self->_searchClientPool getObject];
    object = [getObject object];
    [object warmup];

    [i addObject:getObject];
  }
}

- (id)searchWithEmbeddings:(id)embeddings localIdentifiers:(id)identifiers attributeFilters:(id)filters limit:(int)limit fullScan:(BOOL)scan includePayload:(BOOL)payload numberOfProbes:(id)probes batchSize:(id)self0 numConcurrentReaders:(id)self1 error:(id *)self2
{
  payloadCopy = payload;
  scanCopy = scan;
  v14 = *&limit;
  embeddingsCopy = embeddings;
  identifiersCopy = identifiers;
  filtersCopy = filters;
  probesCopy = probes;
  sizeCopy = size;
  readersCopy = readers;
  v18 = VCPSignPostLog(readersCopy);
  v19 = os_signpost_id_generate(v18);

  v21 = VCPSignPostLog(v20);
  v22 = v21;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "MAD_VSKSearchGetVSKClient", "", buf, 2u);
  }

  getObject = [(VCPObjectPool *)self->_searchClientPool getObject];
  v24 = VCPSignPostLog(getObject);
  v25 = v24;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v19, "MAD_VSKSearchGetVSKClient", "", buf, 2u);
  }

  object = [getObject object];
  [object warmup];

  v27 = [MEMORY[0x1E69DF5F8] mad_stringIdentifiersFromLocalIdentifiers:identifiersCopy];
  v28 = v27;
  v29 = MEMORY[0x1E695E0F0];
  if (v27)
  {
    v29 = v27;
  }

  v30 = v29;

  v32 = VCPSignPostLog(v31);
  v33 = os_signpost_id_generate(v32);

  v35 = VCPSignPostLog(v34);
  v36 = v35;
  if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v33, "MAD_VSKSearchBatchSearch", "", buf, 2u);
  }

  object2 = [getObject object];
  client = [object2 client];
  v51 = 0;
  v39 = [client searchByBatch:embeddingsCopy stringIdentifiers:v30 attributeFilters:filtersCopy limit:v14 fullScan:scanCopy includePayload:payloadCopy numberOfProbes:probesCopy batchSize:sizeCopy numConcurrentReaders:readersCopy error:&v51];
  v40 = v51;

  v42 = VCPSignPostLog(v41);
  v43 = v42;
  if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_END, v33, "MAD_VSKSearchBatchSearch", "", buf, 2u);
  }

  if (error && v40)
  {
    *error = [v40 copy];
  }

  return v39;
}

@end