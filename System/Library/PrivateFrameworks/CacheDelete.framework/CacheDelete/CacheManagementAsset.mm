@interface CacheManagementAsset
+ (id)assetFromData:(id)data;
+ (id)assetFromFile:(id)file withIdentifier:(id)identifier;
+ (id)assetFromPath:(id)path withIdentifier:(id)identifier createIfAbsent:(BOOL)absent;
+ (id)assetWithRelativePath:(id)path identifier:(id)identifier expirationDate:(id)date contentType:(id)type metadata:(id)metadata priority:(int)priority;
- ($62504CD8620D4E4BE208444870B73508)createFlattenedAsset:(int64_t *)asset;
- (CacheManagementAsset)initWithCoder:(id)coder;
- (CacheManagementAsset)initWithFlattenedAsset:(id *)asset;
- (CacheManagementAsset)initWithRelativePath:(id)path identifier:(id)identifier expirationDate:(id)date contentType:(id)type metadata:(id)metadata priority:(int)priority;
- (id)consumedDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)downloadCompletionDate;
- (id)downloadStartDate;
- (id)expirationDate;
- (id)fullPath;
- (id)lastViewedDate;
- (int)purgeabilityScoreAtUrgency:(int)urgency;
- (int64_t)size;
- (int64_t)sizeCached:(BOOL)cached;
- (void)commit;
- (void)encodeWithCoder:(id)coder;
- (void)setConsumedDate:(id)date;
- (void)setDownloadCompletionDate:(id)date;
- (void)setDownloadStartDate:(id)date;
- (void)setExpirationDate:(id)date;
- (void)setLastViewedDate:(id)date;
@end

@implementation CacheManagementAsset

- (CacheManagementAsset)initWithRelativePath:(id)path identifier:(id)identifier expirationDate:(id)date contentType:(id)type metadata:(id)metadata priority:(int)priority
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  dateCopy = date;
  typeCopy = type;
  metadataCopy = metadata;
  if (pathCopy && [pathCopy length])
  {
    v27.receiver = self;
    v27.super_class = CacheManagementAsset;
    v19 = [(CacheManagementAsset *)&v27 init];
    v20 = v19;
    if (v19)
    {
      v19->_assetVersion = 2;
      if (dateCopy)
      {
        [dateCopy timeIntervalSinceReferenceDate];
      }

      else
      {
        v21 = nan("");
      }

      v20->_expiration_date = v21;
      objc_storeStrong(&v20->_contentType, type);
      objc_storeStrong(&v20->_metadata, metadata);
      v20->_priority = priority;
      objc_storeStrong(&v20->_relativePath, path);
      objc_storeStrong(&v20->_identifier, identifier);
      v20->_consumed_date = nan("");
      v20->_download_start_date = nan("");
      v20->_download_completion_date = nan("");
      v20->_last_viewed_date = nan("");
      displayName = v20->_displayName;
      v20->_displayName = 0;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    v22 = CDGetLogHandle("client");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = pathCopy;
      _os_log_error_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_ERROR, "parameter error relativePath: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CacheManagementAsset)initWithFlattenedAsset:(id *)asset
{
  v62 = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = CacheManagementAsset;
  v4 = [(CacheManagementAsset *)&v53 init];
  if (!v4)
  {
    goto LABEL_59;
  }

  if (!asset)
  {
    v6 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v22 = "Parameter error, asset is NULL";
    goto LABEL_21;
  }

  if ((*(&asset->var10 + 1) & 0x8000000000000000) == 0 && (*(&asset->var9 + 1) & 0x8000000000000000) == 0 && (*(&asset->var8 + 1) & 0x8000000000000000) == 0 && (*(&asset->var6 + 1) & 0x8000000000000000) == 0 && *(&asset->var11 + 1) < 1025)
  {
    v8 = CDGetLogHandle("client");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = flattenedAssetDescription(&asset->var0);
      *buf = 138412290;
      *v55 = v9;
      _os_log_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_DEFAULT, "initWithFlattenedAsset: %@", buf, 0xCu);
    }

    *(v4 + 3) = asset->var0;
    *(v4 + 7) = *(&asset->var0 + 1);
    *(v4 + 8) = *(&asset->var1 + 4);
    *(v4 + 9) = *(&asset->var2 + 4);
    *(v4 + 10) = *(&asset->var3 + 4);
    *(v4 + 11) = *(&asset->var4 + 4);
    *(v4 + 2) = HIDWORD(asset->var5);
    if (*(&asset->var6 + 1) < 1)
    {
      v13 = 0;
    }

    else
    {
      v10 = &asset->var12 + 1;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:&asset->var12 + 1 encoding:4];
      v12 = *(v4 + 3);
      *(v4 + 3) = v11;

      if (!*(v4 + 3))
      {
        v6 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        *v55 = v10;
        v22 = "stringWithCString failed for %s";
        v23 = v6;
        v24 = 12;
        goto LABEL_22;
      }

      v13 = *(&asset->var6 + 1);
    }

    if (*(&asset->var8 + 1) >= 1)
    {
      v25 = &asset->var12 + v13 + 1;
      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:4];
      v27 = *(v4 + 4);
      *(v4 + 4) = v26;

      if (!*(v4 + 4))
      {
        v6 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v37 = __error();
        v38 = strerror(*v37);
        *buf = 136315394;
        *v55 = v25;
        *&v55[8] = 2080;
        *&v55[10] = v38;
        v22 = "stringWithCString failed for %s : %s";
        v23 = v6;
        v24 = 22;
        goto LABEL_22;
      }

      v13 += *(&asset->var8 + 1);
    }

    if (*(&asset->var9 + 1) >= 1)
    {
      v28 = &asset->var12 + v13 + 1;
      v29 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
      v30 = *(v4 + 5);
      *(v4 + 5) = v29;

      if (!*(v4 + 5))
      {
        v39 = CDGetLogHandle("client");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v51 = *(&asset->var9 + 1);
          *buf = 134218242;
          *v55 = v51;
          *&v55[8] = 2080;
          *&v55[10] = v28;
          _os_log_error_impl(&dword_1BA7F1000, v39, OS_LOG_TYPE_ERROR, "stringWithCString failed for content type: [len: %zd] %s", buf, 0x16u);
        }

        goto LABEL_12;
      }

      v13 += *(&asset->var9 + 1);
    }

    if (*(&asset->var10 + 1) >= 1)
    {
      v31 = [MEMORY[0x1E695DEF0] dataWithBytes:&asset->var12 + v13 + 1 length:?];
      v32 = *(v4 + 6);
      *(v4 + 6) = v31;

      if (!*(v4 + 6))
      {
        v6 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 0;
        v22 = "dataWithBytes failed for metadata";
LABEL_21:
        v23 = v6;
        v24 = 2;
LABEL_22:
        _os_log_error_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
        goto LABEL_11;
      }

      v13 += *(&asset->var10 + 1);
    }

    if (*(&asset->var11 + 1) >= 1)
    {
      v33 = CDGetLogHandle("client");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        var0 = asset->var0;
        v35 = *(&asset->var11 + 1);
        *buf = 67109376;
        *v55 = var0;
        *&v55[4] = 2048;
        *&v55[6] = v35;
        _os_log_impl(&dword_1BA7F1000, v33, OS_LOG_TYPE_DEFAULT, "asserversion %u, display_name_len %ld", buf, 0x12u);
      }

      v36 = *(&asset->var11 + 1);
      if (v36 == 1)
      {
        v6 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 0;
        v22 = "display_name_len is 1 for display name";
        goto LABEL_21;
      }

      if (v36 >= 1025)
      {
        v5 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        v40 = *(&asset->var11 + 1);
        *buf = 134217984;
        *v55 = v40;
        v19 = "display name length is too large : %ld";
        goto LABEL_63;
      }

      v41 = &asset->var12 + v13 + 1;
      v42 = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:4];
      v43 = *(v4 + 2);
      *(v4 + 2) = v42;

      if (!*(v4 + 2))
      {
        v5 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 136315138;
        *v55 = v41;
        v19 = "stringWithCString failed for display name: %s";
LABEL_63:
        v20 = v5;
        v21 = 12;
        goto LABEL_19;
      }
    }

    fullPath = [v4 fullPath];
    v45 = fullPath;
    if (fullPath)
    {
      if ([fullPath fileSystemRepresentation])
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v45, "fileSystemRepresentation")}];
        v47 = *(v4 + 12);
        *(v4 + 12) = v46;
LABEL_58:

LABEL_59:
        v7 = v4;
        goto LABEL_60;
      }

      v47 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v52 = *(v4 + 4);
      *buf = 138412290;
      *v55 = v52;
      v49 = "Unable to get absolute path (fileSystemRepresentation) for %@";
    }

    else
    {
      v47 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v48 = *(v4 + 4);
      *buf = 138412290;
      *v55 = v48;
      v49 = "Unable to get absolute path (NSURL) for %@";
    }

    _os_log_error_impl(&dword_1BA7F1000, v47, OS_LOG_TYPE_ERROR, v49, buf, 0xCu);
    goto LABEL_58;
  }

  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v14 = *(&asset->var10 + 1);
    v15 = *(&asset->var9 + 1);
    v16 = *(&asset->var8 + 1);
    v17 = *(&asset->var6 + 1);
    v18 = *(&asset->var11 + 1);
    *buf = 134219008;
    *v55 = v14;
    *&v55[8] = 2048;
    *&v55[10] = v15;
    v56 = 2048;
    v57 = v16;
    v58 = 2048;
    v59 = v17;
    v60 = 2048;
    v61 = v18;
    v19 = "Parameter error: asset values are invalid: metadata_len: %ld, content_type_len: %ld, relative_path_len: %ld, identifier_len: %ld display_name_len %ld ";
    v20 = v5;
    v21 = 52;
LABEL_19:
    _os_log_error_impl(&dword_1BA7F1000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
  }

LABEL_9:

LABEL_12:
  v7 = 0;
LABEL_60:

  return v7;
}

- ($62504CD8620D4E4BE208444870B73508)createFlattenedAsset:(int64_t *)asset
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CacheManagementAsset *)self description];
    v55 = 138412290;
    v56 = v6;
    _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "flattening %@", &v55, 0xCu);
  }

  identifier = [(CacheManagementAsset *)self identifier];

  if (identifier)
  {
    identifier2 = [(CacheManagementAsset *)self identifier];
    v9 = [identifier2 maximumLengthOfBytesUsingEncoding:4];

    if (v9 <= -2)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v55 = 134217984;
        v56 = 0;
        v11 = "identifier is too long: %ld";
LABEL_42:
        _os_log_error_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_ERROR, v11, &v55, 0xCu);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v12 = v9 + 1;
    v13 = v9 + 90;
  }

  else
  {
    v12 = 0;
    v13 = 89;
  }

  relativePath = [(CacheManagementAsset *)self relativePath];

  if (relativePath)
  {
    relativePath2 = [(CacheManagementAsset *)self relativePath];
    v16 = strlen([relativePath2 fileSystemRepresentation]);
    v17 = v16 + 1;

    if (v16 <= -2)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v55 = 134217984;
        v56 = v16 + 1;
        v11 = "relative_path_len too long: %ld";
        goto LABEL_42;
      }

LABEL_43:

      return 0;
    }

    v13 += v17;
  }

  else
  {
    v17 = 0;
  }

  contentType = [(CacheManagementAsset *)self contentType];

  if (contentType)
  {
    contentType2 = [(CacheManagementAsset *)self contentType];
    v20 = [contentType2 maximumLengthOfBytesUsingEncoding:4];
    v21 = v20 + 1;

    if (v20 <= -2)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v55 = 134217984;
        v56 = v20 + 1;
        v11 = "content type too long: %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v13 += v21;
  }

  else
  {
    v21 = 0;
  }

  metadata = [(CacheManagementAsset *)self metadata];

  if (metadata)
  {
    metadata2 = [(CacheManagementAsset *)self metadata];
    v24 = [metadata2 length];

    if (v24 < 0)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v55 = 134217984;
        v56 = v24;
        v11 = "metadata too long: %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v13 += v24;
  }

  else
  {
    v24 = 0;
  }

  displayName = [(CacheManagementAsset *)self displayName];

  if (displayName)
  {
    displayName2 = [(CacheManagementAsset *)self displayName];
    v27 = [displayName2 maximumLengthOfBytesUsingEncoding:4];
    v28 = v27 + 1;

    v29 = CDGetLogHandle("client");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v55 = 134217984;
      v56 = v27 + 1;
      _os_log_impl(&dword_1BA7F1000, v29, OS_LOG_TYPE_DEFAULT, "display_name_len is %ld", &v55, 0xCu);
    }

    if (v27 <= -2)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v55 = 134217984;
        v56 = v27 + 1;
        v11 = "display name too long: %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (!v27)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v55 = 134217984;
        v56 = 1;
        v11 = "display name length is undefined : %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v27 >= 1024)
    {
      v10 = CDGetLogHandle("client");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v55 = 134217984;
        v56 = v27 + 1;
        v11 = "display name length is too large : %ld";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v13 += v28;
  }

  else
  {
    v30 = CDGetLogHandle("client");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v55) = 0;
      _os_log_impl(&dword_1BA7F1000, v30, OS_LOG_TYPE_DEFAULT, "no display name ", &v55, 2u);
    }

    v28 = 0;
  }

  v31 = malloc_type_malloc(v13, 0x66F0B906uLL);
  if (v31)
  {
    *v31 = [(CacheManagementAsset *)self assetVersion];
    [(CacheManagementAsset *)self expiration_date];
    *(v31 + 4) = v33;
    [(CacheManagementAsset *)self consumed_date];
    *(v31 + 12) = v34;
    [(CacheManagementAsset *)self download_start_date];
    *(v31 + 20) = v35;
    [(CacheManagementAsset *)self download_completion_date];
    *(v31 + 28) = v36;
    [(CacheManagementAsset *)self last_viewed_date];
    *(v31 + 36) = v37;
    *(v31 + 11) = [(CacheManagementAsset *)self priority];
    *(v31 + 49) = v12;
    *(v31 + 57) = v17;
    *(v31 + 65) = v21;
    *(v31 + 73) = v24;
    *(v31 + 81) = v28;
    if (v12)
    {
      identifier3 = [(CacheManagementAsset *)self identifier];
      v39 = [identifier3 getCString:v31 + 89 maxLength:*(v31 + 49) encoding:4];

      if ((v39 & 1) == 0)
      {
        v40 = CDGetLogHandle("client");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          identifier4 = [(CacheManagementAsset *)self identifier];
          v55 = 138412290;
          v56 = identifier4;
          _os_log_error_impl(&dword_1BA7F1000, v40, OS_LOG_TYPE_ERROR, "unable to copy identifier: %@", &v55, 0xCu);
        }
      }

      LODWORD(v12) = *(v31 + 49);
      v17 = *(v31 + 57);
    }

    if (v17 >= 1)
    {
      relativePath3 = [(CacheManagementAsset *)self relativePath];
      v42 = strlcpy(&v31[v12 + 89], [relativePath3 fileSystemRepresentation], *(v31 + 57));

      if (v17 <= v42)
      {
        v43 = CDGetLogHandle("client");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          relativePath4 = [(CacheManagementAsset *)self relativePath];
          v55 = 138412290;
          v56 = relativePath4;
          _os_log_error_impl(&dword_1BA7F1000, v43, OS_LOG_TYPE_ERROR, "unable to copy relative path: %@", &v55, 0xCu);
        }
      }

      LODWORD(v12) = v12 + *(v31 + 57);
    }

    if (*(v31 + 65) >= 1)
    {
      contentType3 = [(CacheManagementAsset *)self contentType];
      v45 = [contentType3 getCString:&v31[v12 + 89] maxLength:*(v31 + 65) encoding:4];

      if ((v45 & 1) == 0)
      {
        v46 = CDGetLogHandle("client");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          contentType4 = [(CacheManagementAsset *)self contentType];
          v55 = 138412290;
          v56 = contentType4;
          _os_log_error_impl(&dword_1BA7F1000, v46, OS_LOG_TYPE_ERROR, "unable to copy contentType: %@", &v55, 0xCu);
        }
      }

      LODWORD(v12) = v12 + *(v31 + 65);
    }

    if (*(v31 + 73) >= 1)
    {
      metadata3 = [(CacheManagementAsset *)self metadata];
      memcpy(&v31[v12 + 89], [metadata3 bytes], *(v31 + 73));

      LODWORD(v12) = v12 + *(v31 + 73);
    }

    if (*(v31 + 81) >= 1)
    {
      displayName3 = [(CacheManagementAsset *)self displayName];
      v49 = [displayName3 getCString:&v31[v12 + 89] maxLength:*(v31 + 81) encoding:4];

      if ((v49 & 1) == 0)
      {
        v50 = CDGetLogHandle("client");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          displayName4 = [(CacheManagementAsset *)self displayName];
          v55 = 138412290;
          v56 = displayName4;
          _os_log_error_impl(&dword_1BA7F1000, v50, OS_LOG_TYPE_ERROR, "unable to copy displayName: %@", &v55, 0xCu);
        }

        *(v31 + 81) = 0;
      }
    }

    if (asset)
    {
      *asset = v13;
    }
  }

  return v31;
}

+ (id)assetWithRelativePath:(id)path identifier:(id)identifier expirationDate:(id)date contentType:(id)type metadata:(id)metadata priority:(int)priority
{
  v8 = *&priority;
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  dateCopy = date;
  typeCopy = type;
  metadataCopy = metadata;
  if (pathCopy && [pathCopy length])
  {
    v18 = stripScheme(pathCopy);
    if (v18)
    {
LABEL_4:
      v19 = [[CacheManagementAsset alloc] initWithRelativePath:pathCopy identifier:identifierCopy expirationDate:dateCopy contentType:typeCopy metadata:metadataCopy priority:v8];
      goto LABEL_8;
    }

    v21 = fullPathToAsset(pathCopy, identifierCopy);
    if (v21)
    {
      v22 = v21;
      bzero(buf, 0x400uLL);
      if (realpath_DARWIN_EXTSN([v22 fileSystemRepresentation], buf))
      {

        goto LABEL_4;
      }

      v23 = CDGetLogHandle("client");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        fileSystemRepresentation = [v22 fileSystemRepresentation];
        v25 = __error();
        v26 = strerror(*v25);
        v27 = 136446466;
        v28 = fileSystemRepresentation;
        v29 = 2082;
        v30 = v26;
        _os_log_error_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_ERROR, "realpath failed for %{public}s : %{public}s", &v27, 0x16u);
      }
    }

    v18 = 0;
  }

  else
  {
    v18 = CDGetLogHandle("client");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = pathCopy;
      _os_log_error_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_ERROR, "parameter error relativePath: %@", buf, 0xCu);
    }
  }

  v19 = 0;
LABEL_8:

  return v19;
}

+ (id)assetFromData:(id)data
{
  v3 = -[CacheManagementAsset initWithFlattenedAsset:]([CacheManagementAsset alloc], "initWithFlattenedAsset:", [data bytes]);

  return v3;
}

+ (id)assetFromFile:(id)file withIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  identifierCopy = identifier;
  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = fileCopy;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_debug_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEBUG, "assetFromFile: (%@) %@ withIdentifier: %@", &v16, 0x20u);
  }

  if (!fileCopy || ![fileCopy length])
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = fileCopy;
      _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "parameter error relativePath: %{public}@", &v16, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = stripScheme(fileCopy);
  if (v8)
  {
    v9 = v8;
    v10 = [CacheManagementAsset assetFromPath:v8 withIdentifier:identifierCopy];
    goto LABEL_10;
  }

  v12 = fullPathToAsset(fileCopy, identifierCopy);
  if (!v12)
  {
    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      v17 = fileCopy;
      v18 = 2114;
      v19 = identifierCopy;
      _os_log_error_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_ERROR, "unable to create full path for relativePath: %{public}@, and identifier: %{public}@", &v16, 0x16u);
    }

    v9 = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v12, "fileSystemRepresentation")}];
  v10 = [CacheManagementAsset assetFromPath:v14 withIdentifier:identifierCopy];

  v9 = 0;
LABEL_10:

  return v10;
}

+ (id)assetFromPath:(id)path withIdentifier:(id)identifier createIfAbsent:(BOOL)absent
{
  absentCopy = absent;
  v86 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  if (pathCopy && [pathCopy length])
  {
    v9 = stripScheme(pathCopy);
    v10 = nonContainerForID(identifierCopy);
    bzero(v84, 0x400uLL);
    if (!v9)
    {
      v9 = pathCopy;
    }

    if (realpath_DARWIN_EXTSN([v9 fileSystemRepresentation], v84))
    {
      if (!v10)
      {
        v16 = 0;
LABEL_15:
        XAttr = getXAttr(v84, "com.apple.CacheManagementAsset", 0);
        v24 = XAttr;
        if (XAttr)
        {
          if (*XAttr == 2)
          {
            v25 = [[CacheManagementAsset alloc] initWithFlattenedAsset:XAttr];
            if (v25)
            {
              v26 = v25;
              [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
              v28 = v27 = v24;
              [v26 setAbsolutePath:v28];

              v29 = v27;
              array = 0;
              v31 = 0;
LABEL_81:
              free(v29);
              goto LABEL_82;
            }

            v32 = CDGetLogHandle("client");
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = v84;
              _os_log_error_impl(&dword_1BA7F1000, v32, OS_LOG_TYPE_ERROR, "unable to create asset from file: %{public}s", buf, 0xCu);
            }

LABEL_30:
            v76 = v24;

            if (v16)
            {
              v31 = 0;
              array = 0;
            }

            else
            {
              v74 = v10;
              v75 = identifierCopy;
              array = [MEMORY[0x1E695DF70] array];
              v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
              v38 = [v37 componentsSeparatedByString:@"/"];

              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v31 = v38;
              v39 = [v31 countByEnumeratingWithState:&v77 objects:v81 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = 0;
                v42 = *v78;
                do
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (*v78 != v42)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v44 = *(*(&v77 + 1) + 8 * i);
                    if (v41)
                    {
                      [array addObject:*(*(&v77 + 1) + 8 * i)];
                      v41 = 1;
                    }

                    else
                    {
                      v45 = [*(*(&v77 + 1) + 8 * i) rangeOfString:@"com.apple.UserManagedAssets."];
                      if (v46 == 28)
                      {
                        v47 = v45;
                        v41 = [v44 length] == 34 && v47 == 0;
                      }

                      else
                      {
                        v41 = 0;
                      }
                    }
                  }

                  v40 = [v31 countByEnumeratingWithState:&v77 objects:v81 count:16];
                }

                while (v40);
              }

              v16 = [array componentsJoinedByString:@"/"];
              v10 = v74;
              identifierCopy = v75;
            }

            v49 = [v16 length];
            v50 = CDGetLogHandle("client");
            v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
            if (v49)
            {
              if (v51)
              {
                *buf = 138543362;
                *&buf[4] = v16;
                _os_log_impl(&dword_1BA7F1000, v50, OS_LOG_TYPE_DEFAULT, "got relative path: %{public}@", buf, 0xCu);
              }

              v52 = 0x1E696A000;
            }

            else
            {
              if (v51)
              {
                v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
                *buf = 138543362;
                *&buf[4] = v53;
                _os_log_impl(&dword_1BA7F1000, v50, OS_LOG_TYPE_DEFAULT, "relative path is zero length, using path: %{public}@", buf, 0xCu);
              }

              v52 = 0x1E696A000uLL;
              [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
              v16 = v50 = v16;
            }

            v26 = [CacheManagementAsset assetWithRelativePath:v16 identifier:identifierCopy expirationDate:0 contentType:0 metadata:0 priority:0];
            v54 = [*(v52 + 3776) stringWithUTF8String:v84];
            [v26 setAbsolutePath:v54];

            if (v26)
            {
              displayName = [v26 displayName];

              if (!displayName)
              {
                v56 = CDGetLogHandle("client");
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  relativePath = [v26 relativePath];
                  *buf = 138543362;
                  *&buf[4] = relativePath;
                  _os_log_impl(&dword_1BA7F1000, v56, OS_LOG_TYPE_DEFAULT, "looking for legacy display name in %{public}@", buf, 0xCu);
                }

                v58 = getXAttr(v84, "com.apple.coremedia.asset.name", 0);
                if (v58)
                {
                  v59 = v58;
                  v60 = CDGetLogHandle("client");
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446210;
                    *&buf[4] = v59;
                    _os_log_impl(&dword_1BA7F1000, v60, OS_LOG_TYPE_DEFAULT, "legacy display name: %{public}s", buf, 0xCu);
                  }

                  v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v59];
                  free(v59);
                }

                else
                {
                  v61 = 0;
                }

                [v26 setDisplayName:v61];

                displayName2 = [v26 displayName];

                if (displayName2)
                {
                  v63 = CDGetLogHandle("client");
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                  {
                    displayName3 = [v26 displayName];
                    *buf = 138543362;
                    *&buf[4] = displayName3;
                    _os_log_impl(&dword_1BA7F1000, v63, OS_LOG_TYPE_DEFAULT, "using legacy display name: %{public}@", buf, 0xCu);
                  }
                }
              }

              metadata = [v26 metadata];

              if (!metadata)
              {
                v66 = CDGetLogHandle("client");
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  relativePath2 = [v26 relativePath];
                  *buf = 138543362;
                  *&buf[4] = relativePath2;
                  _os_log_impl(&dword_1BA7F1000, v66, OS_LOG_TYPE_DEFAULT, "looking for legacy metadata in %{public}@", buf, 0xCu);
                }

                *buf = 0;
                v68 = getXAttr(v84, "com.apple.coremedia.asset.image", buf);
                if (v68)
                {
                  v69 = v68;
                  v70 = [MEMORY[0x1E695DEF0] dataWithBytes:v68 length:*buf];
                  free(v69);
                }

                else
                {
                  v70 = 0;
                }

                [v26 setMetadata:v70];

                metadata2 = [v26 metadata];

                if (metadata2)
                {
                  v72 = CDGetLogHandle("client");
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1BA7F1000, v72, OS_LOG_TYPE_DEFAULT, "using legacy metadata", buf, 2u);
                  }
                }
              }
            }

            v29 = v76;
            if (!v76)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          }

          v32 = CDGetLogHandle("client");
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v36 = *v24;
          *buf = 67109634;
          *&buf[4] = v36;
          *&buf[8] = 1024;
          *&buf[10] = 2;
          *v83 = 2082;
          *&v83[2] = v84;
          v33 = "asset version (%u) is not compatible with this version of CacheManagementAsset(%u). file: %{public}s. Will create a new asset.";
          v34 = v32;
          v35 = 24;
        }

        else
        {
          if (!absentCopy)
          {
            v26 = 0;
            array = 0;
            v31 = 0;
LABEL_82:
            v18 = v26;

            v17 = v18;
            goto LABEL_83;
          }

          v32 = CDGetLogHandle("client");
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          *buf = 0;
          v33 = "no asset on the file, will try to create one";
          v34 = v32;
          v35 = 2;
        }

        _os_log_impl(&dword_1BA7F1000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
        goto LABEL_30;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v10, "fileSystemRepresentation")}];
      [v11 rangeOfString:v12];
      v14 = v13;

      if (v14)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
        v16 = [v15 substringFromIndex:v14];

        goto LABEL_15;
      }

      v18 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        v17 = 0;
LABEL_83:

        goto LABEL_84;
      }

      *buf = 136446466;
      *&buf[4] = [v10 fileSystemRepresentation];
      *&buf[12] = 2082;
      *v83 = v84;
      v22 = "Asset is not in expected location: %{public}s asset: %{public}s";
    }

    else
    {
      v18 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      fileSystemRepresentation = [v9 fileSystemRepresentation];
      v20 = __error();
      v21 = strerror(*v20);
      *buf = 136446466;
      *&buf[4] = fileSystemRepresentation;
      *&buf[12] = 2082;
      *v83 = v21;
      v22 = "realpath failed for %{public}s : %{public}s";
    }

    _os_log_error_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
    goto LABEL_26;
  }

  v9 = CDGetLogHandle("client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v84 = 138412290;
    v85 = pathCopy;
    _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "parameter error absolutePath: %@", v84, 0xCu);
  }

  v17 = 0;
LABEL_84:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(CacheManagementAsset *)self createFlattenedAsset:0];
  v5 = [CacheManagementAsset allocWithZone:zone];

  return [(CacheManagementAsset *)v5 initWithFlattenedAsset:v4];
}

- (CacheManagementAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self)
  {
    goto LABEL_4;
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_MANAGEMENT_ASSET_DATA"];
  selfCopy = v5;
  if (v5)
  {
    self = [(CacheManagementAsset *)self initWithFlattenedAsset:[(CacheManagementAsset *)v5 bytes]];

LABEL_4:
    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = 0;
  v5 = [(CacheManagementAsset *)self createFlattenedAsset:&v7];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:v7];
    [coderCopy encodeObject:v6 forKey:@"CACHE_MANAGEMENT_ASSET_DATA"];
  }
}

- (void)setExpirationDate:(id)date
{
  v9 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = dateCopy;
    _os_log_debug_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEBUG, "setExpirationDate: %@", &v7, 0xCu);
  }

  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = nan("");
  }

  [(CacheManagementAsset *)self setExpiration_date:v6];
}

- (id)expirationDate
{
  [(CacheManagementAsset *)self expiration_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self expiration_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setConsumedDate:(id)date
{
  v9 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = dateCopy;
    _os_log_debug_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEBUG, "setConsumedDate: %@", &v7, 0xCu);
  }

  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = nan("");
  }

  [(CacheManagementAsset *)self setConsumed_date:v6];
}

- (id)consumedDate
{
  [(CacheManagementAsset *)self consumed_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self consumed_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setDownloadStartDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = nan("");
  }

  [(CacheManagementAsset *)self setDownload_start_date:v4];
}

- (id)downloadStartDate
{
  [(CacheManagementAsset *)self download_start_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self download_start_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setDownloadCompletionDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = nan("");
  }

  [(CacheManagementAsset *)self setDownload_completion_date:v4];
}

- (id)downloadCompletionDate
{
  [(CacheManagementAsset *)self download_completion_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self download_completion_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (void)setLastViewedDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = nan("");
  }

  [(CacheManagementAsset *)self setLast_viewed_date:v4];
}

- (id)lastViewedDate
{
  [(CacheManagementAsset *)self last_viewed_date];
  v3 = MEMORY[0x1E695DF00];
  [(CacheManagementAsset *)self last_viewed_date];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (id)fullPath
{
  v17 = *MEMORY[0x1E69E9840];
  absolutePath = [(CacheManagementAsset *)self absolutePath];

  if (absolutePath)
  {
    v4 = [(CacheManagementAsset *)self absolutePath:0];
    v5 = stat([v4 fileSystemRepresentation], &v16);

    if (!v5)
    {
      v13 = MEMORY[0x1E695DFF8];
      absolutePath2 = [(CacheManagementAsset *)self absolutePath];
      fileSystemRepresentation = [absolutePath2 fileSystemRepresentation];
      v11 = [v13 fileURLWithFileSystemRepresentation:fileSystemRepresentation isDirectory:(v16.st_mode & 0xF000) == 0x4000 relativeToURL:0];
      goto LABEL_10;
    }

    [(CacheManagementAsset *)self setAbsolutePath:0];
  }

  else
  {
    v6 = CDGetLogHandle("client");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(CacheManagementAsset *)self identifier];
      relativePath = [(CacheManagementAsset *)self relativePath];
      v16.st_dev = 138412546;
      *&v16.st_mode = identifier;
      WORD2(v16.st_ino) = 2112;
      *(&v16.st_ino + 6) = relativePath;
      _os_log_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_DEFAULT, "[%@] No AbsolutePath, calculating for relativePath: %@", &v16, 0x16u);
    }
  }

  relativePath2 = [(CacheManagementAsset *)self relativePath];
  identifier2 = [(CacheManagementAsset *)self identifier];
  v11 = fullPathToAsset(relativePath2, identifier2);

  if (!v11)
  {
    goto LABEL_11;
  }

  absolutePath2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v11, "fileSystemRepresentation")}];
  [(CacheManagementAsset *)self setAbsolutePath:absolutePath2];
LABEL_10:

LABEL_11:

  return v11;
}

- (void)commit
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v3 = [(CacheManagementAsset *)self createFlattenedAsset:&v30];
  if (!v3)
  {
    return;
  }

  p_var0 = &v3->var0;
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = flattenedAssetDescription(p_var0);
    *buf = 138412290;
    v32 = v6;
    _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "attempting to commit flattenedAsset: %@", buf, 0xCu);
  }

  fullPath = [(CacheManagementAsset *)self fullPath];
  absolutePath = [(CacheManagementAsset *)self absolutePath];

  if (!absolutePath)
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = [(CacheManagementAsset *)self description];
      *buf = 138412290;
      v32 = v17;
      _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "Unable to get absolute path for: %@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v9 = flattenedAssetDescription(p_var0);
  absolutePath2 = [(CacheManagementAsset *)self absolutePath];
  fileSystemRepresentation = [absolutePath2 fileSystemRepresentation];
  v12 = v30;
  if (v30 < 1)
  {
    v18 = CDGetLogHandle("client");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = v12;
      _os_log_error_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_ERROR, "parameter error: buflen is less than zero (%ld)", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v13 = fileSystemRepresentation;
  v14 = openFile(fileSystemRepresentation);
  if (v14 != -1)
  {
    v15 = v14;
    if (fsetxattr(v14, "com.apple.CacheManagementAsset", p_var0, v12, 0, 0))
    {
      v16 = CDGetLogHandle("client");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v28 = __error();
        v29 = strerror(*v28);
        *buf = 136315394;
        v32 = v13;
        v33 = 2080;
        v34 = v29;
        _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, "fsetxattr(%s) failed: %s", buf, 0x16u);
      }

      close(v15);
      goto LABEL_16;
    }

    close(v15);

    absolutePath3 = [(CacheManagementAsset *)self absolutePath];
    removexattr([absolutePath3 fileSystemRepresentation], "com.apple.coremedia.asset.name", 1);

    absolutePath4 = [(CacheManagementAsset *)self absolutePath];
    removexattr([absolutePath4 fileSystemRepresentation], "com.apple.coremedia.asset.image", 1);

    v22 = CDGetLogHandle("client");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v30;
      absolutePath5 = [(CacheManagementAsset *)self absolutePath];
      fileSystemRepresentation2 = [absolutePath5 fileSystemRepresentation];
      v26 = @"no asset description available";
      *buf = 134218498;
      v32 = v23;
      if (v9)
      {
        v26 = v9;
      }

      v33 = 2080;
      v34 = fileSystemRepresentation2;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_DEFAULT, "wrote asset (%ld bytes) to file: %s %@", buf, 0x20u);
    }

LABEL_23:
    free(p_var0);
    return;
  }

LABEL_16:

  v19 = CDGetLogHandle("client");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v27 = @"no asset description available";
    if (v9)
    {
      v27 = v9;
    }

    *buf = 138412290;
    v32 = v27;
    _os_log_error_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_ERROR, "setXAttr failed, unable to commit the asset to disk. %@", buf, 0xCu);
  }

  free(p_var0);
}

- (int)purgeabilityScoreAtUrgency:(int)urgency
{
  v45 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v7 = v6;

  expirationDate = [(CacheManagementAsset *)self expirationDate];
  if (expirationDate)
  {
    v9 = expirationDate;
    expirationDate2 = [(CacheManagementAsset *)self expirationDate];
    [expirationDate2 timeIntervalSinceReferenceDate];
    v12 = v11;

    if (v7 > v12)
    {
      goto LABEL_8;
    }
  }

  v13 = CDGetLogHandle("client");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    relativePath = [(CacheManagementAsset *)self relativePath];
    expirationDate3 = [(CacheManagementAsset *)self expirationDate];
    [expirationDate3 timeIntervalSinceReferenceDate];
    v40 = 138412802;
    v41 = relativePath;
    v42 = 2048;
    *v43 = v16;
    *&v43[8] = 2048;
    v44 = v7;
    _os_log_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_DEFAULT, "%@ CacheManagementAssetPurgeabilityScore expirationDate: %f, now: %f", &v40, 0x20u);
  }

  if ([(CacheManagementAsset *)self priority]> urgency || ![(CacheManagementAsset *)self priority])
  {
    goto LABEL_22;
  }

  if ([(CacheManagementAsset *)self priority]== 1 || urgency >= 2 && [(CacheManagementAsset *)self priority]<= urgency)
  {
LABEL_8:
    v17 = 1;
    goto LABEL_23;
  }

  consumedDate = [(CacheManagementAsset *)self consumedDate];
  if (consumedDate)
  {
    v19 = consumedDate;
    consumedDate2 = [(CacheManagementAsset *)self consumedDate];
    [consumedDate2 timeIntervalSinceReferenceDate];
    v22 = v21;

    if (v7 > v22)
    {
      v17 = 2;
      goto LABEL_23;
    }
  }

  v23 = CDGetLogHandle("client");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    relativePath2 = [(CacheManagementAsset *)self relativePath];
    downloadStartDate = [(CacheManagementAsset *)self downloadStartDate];
    [downloadStartDate timeIntervalSinceReferenceDate];
    v40 = 138412802;
    v41 = relativePath2;
    v42 = 2048;
    *v43 = v26;
    *&v43[8] = 2048;
    v44 = v7;
    _os_log_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_DEFAULT, "%@ CacheManagementAssetPurgeabilityScore downloadStartDate: %f, now: %f", &v40, 0x20u);
  }

  downloadStartDate2 = [(CacheManagementAsset *)self downloadStartDate];
  if (downloadStartDate2)
  {
    v28 = downloadStartDate2;
    downloadStartDate3 = [(CacheManagementAsset *)self downloadStartDate];
    [downloadStartDate3 timeIntervalSinceReferenceDate];
    v31 = v7 - v30;

    if (v31 > 129600.0)
    {
      v17 = 4;
      goto LABEL_23;
    }
  }

  v32 = CDGetLogHandle("client");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    relativePath3 = [(CacheManagementAsset *)self relativePath];
    downloadStartDate4 = [(CacheManagementAsset *)self downloadStartDate];
    [downloadStartDate4 timeIntervalSinceReferenceDate];
    v40 = 138412802;
    v41 = relativePath3;
    v42 = 2048;
    *v43 = v35;
    *&v43[8] = 2048;
    v44 = v7;
    _os_log_impl(&dword_1BA7F1000, v32, OS_LOG_TYPE_DEFAULT, "%@ CacheManagementAssetPurgeabilityScore downloadStartDate: %f, now: %f", &v40, 0x20u);
  }

LABEL_22:
  v17 = 0;
LABEL_23:
  v36 = CDGetLogHandle("client");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    relativePath4 = [(CacheManagementAsset *)self relativePath];
    priority = [(CacheManagementAsset *)self priority];
    v40 = 138413058;
    v41 = relativePath4;
    v42 = 1024;
    *v43 = v17;
    *&v43[4] = 1024;
    *&v43[6] = priority;
    LOWORD(v44) = 1024;
    *(&v44 + 2) = urgency;
    _os_log_impl(&dword_1BA7F1000, v36, OS_LOG_TYPE_DEFAULT, "%@ CacheManagementAssetPurgeabilityScore assigning score %d, priority: %d, urgency: %d", &v40, 0x1Eu);
  }

  return v17;
}

- (int64_t)size
{
  fullPath = [(CacheManagementAsset *)self fullPath];
  absolutePath = [(CacheManagementAsset *)self absolutePath];

  if (!absolutePath)
  {
    return -1;
  }

  absolutePath2 = [(CacheManagementAsset *)self absolutePath];
  v6 = diskUsageList(absolutePath2, 0);

  return v6;
}

- (int64_t)sizeCached:(BOOL)cached
{
  cachedCopy = cached;
  if (qword_1ED769FB0 != -1)
  {
    dispatch_once(&qword_1ED769FB0, &__block_literal_global);
  }

  if (cachedCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    if (v6 - *&_MergedGlobals_0 <= 300.0)
    {
      v7 = sizeCached__result;

      if (v7 != -1)
      {
        return sizeCached__result;
      }
    }

    else
    {
    }
  }

  result = [(CacheManagementAsset *)self size];
  sizeCached__result = result;
  return result;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  displayName = [(CacheManagementAsset *)self displayName];
  relativePath = [(CacheManagementAsset *)self relativePath];
  fileSystemRepresentation = [relativePath fileSystemRepresentation];
  identifier = [(CacheManagementAsset *)self identifier];
  contentType = [(CacheManagementAsset *)self contentType];
  priority = [(CacheManagementAsset *)self priority];
  v4 = [(CacheManagementAsset *)self purgeabilityScoreAtUrgency:2];
  thumbnailData = [(CacheManagementAsset *)self thumbnailData];
  if (thumbnailData)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  v6 = [(CacheManagementAsset *)self size];
  expirationDate = [(CacheManagementAsset *)self expirationDate];
  downloadStartDate = [(CacheManagementAsset *)self downloadStartDate];
  downloadCompletionDate = [(CacheManagementAsset *)self downloadCompletionDate];
  consumedDate = [(CacheManagementAsset *)self consumedDate];
  lastViewedDate = [(CacheManagementAsset *)self lastViewedDate];
  absolutePath = [(CacheManagementAsset *)self absolutePath];
  v13 = [v20 stringWithFormat:@"CacheManagementAsset displayName: %@, relativePath: %s, identifier: %@, contentType: %@\npriority: %d, purgeabilityScore [u:2]: %d, has thumbnail: %s, size: %lld\nexpirationDate: %@\ndownloadStartDate: %@\ndownloadCompletionDate: %@\nconsumedDate: %@\nlastViewedDate: %@\nabsolutePath: %@", displayName, fileSystemRepresentation, identifier, contentType, priority, v4, v5, v6, expirationDate, downloadStartDate, downloadCompletionDate, consumedDate, lastViewedDate, absolutePath];

  return v13;
}

@end