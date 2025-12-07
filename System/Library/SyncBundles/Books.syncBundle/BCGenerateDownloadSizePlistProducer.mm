@interface BCGenerateDownloadSizePlistProducer
- (BOOL)_addDownloadSizeFromITunesMetadataToEntry:(id)entry;
- (id)_addEstimatedDownloadSizeFromITunesMetadataDictionary:(id)dictionary assetPath:(id)path toEntry:(id)entry;
- (id)_addSizeOnDiskFromITunesMetadataDictionary:(id)dictionary toEntry:(id)entry;
- (id)_artworkFileSizeForAssetPath:(id)path isDirectory:(BOOL)directory;
- (id)_fileSizeForPath:(id)path;
- (id)_metadataAssetFileSize:(id)size book:(id)book;
- (id)produceData;
- (void)_addComputedSizeOnDiskToEntries:(id)entries;
@end

@implementation BCGenerateDownloadSizePlistProducer

- (id)_metadataAssetFileSize:(id)size book:(id)book
{
  if (!size)
  {
    return 0;
  }

  v5 = objc_opt_class();
  v6 = BCDynamicCast(v5, [size objectForKeyedSubscript:@"asset-info"]);
  if (!v6 || (result = [v6 objectForKeyedSubscript:@"file-size"]) == 0)
  {

    return [size objectForKeyedSubscript:@"file-size"];
  }

  return result;
}

- (id)_fileSizeForPath:(id)path
{
  v8 = 0;
  v4 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:path, &v8];
  if (v4)
  {
    return [(NSDictionary *)v4 objectForKeyedSubscript:NSFileSize];
  }

  v7 = BCDefaultLog(0, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_13398(path, &v8, v7);
  }

  return 0;
}

- (id)_artworkFileSizeForAssetPath:(id)path isDirectory:(BOOL)directory
{
  if (directory)
  {
    v5 = [path stringByAppendingPathComponent:@"iTunesArtwork"];
  }

  else
  {
    v5 = [objc_msgSend(path "stringByDeletingPathExtension")];
  }

  return [(BCGenerateDownloadSizePlistProducer *)self _fileSizeForPath:v5];
}

- (id)_addEstimatedDownloadSizeFromITunesMetadataDictionary:(id)dictionary assetPath:(id)path toEntry:(id)entry
{
  v8 = [(BCGenerateDownloadSizePlistProducer *)self _metadataAssetFileSize:dictionary book:entry];
  if (!v8)
  {
    return 0;
  }

  unsignedLongLongValue = [v8 unsignedLongLongValue];
  v10 = [(BCGenerateDownloadSizePlistProducer *)self _artworkFileSizeForAssetPath:path isDirectory:1];
  if (v10)
  {
    unsignedLongLongValue = &unsignedLongLongValue[[v10 unsignedLongLongValue]];
  }

  v11 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue];
  v13 = v11;
  if (v11)
  {
    v14 = BCDefaultLog(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = [entry objectForKeyedSubscript:@"Artist"];
      v18 = 2112;
      v19 = [entry objectForKeyedSubscript:@"Name"];
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[BCGenerateDownloadSizePlistProducer] Adding 'Estimated Download Size' for {%@ - %@}: %@", &v16, 0x20u);
    }

    [entry setObject:v13 forKeyedSubscript:@"Estimated Download Size"];
  }

  return v13;
}

- (id)_addSizeOnDiskFromITunesMetadataDictionary:(id)dictionary toEntry:(id)entry
{
  v5 = [dictionary objectForKeyedSubscript:@"BKAllocatedSize"];
  v7 = v5;
  if (v5)
  {
    v8 = BCDefaultLog(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138544130;
      v11 = @"BKAllocatedSize";
      v12 = 2112;
      v13 = [entry objectForKeyedSubscript:@"Artist"];
      v14 = 2112;
      v15 = [entry objectForKeyedSubscript:@"Name"];
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[BCGenerateDownloadSizePlistProducer] Adding 'Size On Disk' based on %{public}@ for {%@ - %@}: %@", &v10, 0x2Au);
    }

    [entry setObject:v7 forKeyedSubscript:@"Size On Disk"];
  }

  return v7;
}

- (void)_addComputedSizeOnDiskToEntries:(id)entries
{
  entriesCopy = entries;
  if ([entries count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = [entriesCopy countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v40;
      v9 = @"Path";
      v10 = @"Size On Disk";
      *&v6 = 138412546;
      v37 = v6;
      do
      {
        v11 = 0;
        v38 = v7;
        do
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(entriesCopy);
          }

          v12 = *(*(&v39 + 1) + 8 * v11);
          v13 = objc_opt_class();
          v14 = BCDynamicCast(v13, [v12 objectForKeyedSubscript:v9]);
          if (!v14)
          {
            v28 = BCDefaultLog(0, v15);
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            v29 = [v12 objectForKeyedSubscript:@"Artist"];
            v30 = [v12 objectForKeyedSubscript:@"Name"];
            *buf = v37;
            v44 = v29;
            v45 = 2112;
            v46 = v30;
            v31 = v28;
            v32 = "[BCGenerateDownloadSizePlistProducer] Path not found before getting disk usage for {%@ - %@}";
LABEL_18:
            _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
            goto LABEL_15;
          }

          v16 = v14;
          if (![v14 length])
          {
            v33 = BCDefaultLog(0, v17);
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            v34 = [v12 objectForKeyedSubscript:@"Artist"];
            v35 = [v12 objectForKeyedSubscript:@"Name"];
            *buf = v37;
            v44 = v34;
            v45 = 2112;
            v46 = v35;
            v31 = v33;
            v32 = "[BCGenerateDownloadSizePlistProducer] Path is empty before getting disk usage for {%@ - %@}";
            goto LABEL_18;
          }

          [[(NSString *)self->super._path stringByDeletingLastPathComponent] stringByAppendingPathComponent:v16];
          v18 = ATGetDiskUsageForPath();
          v20 = BCDefaultLog(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v9;
            v22 = v8;
            v23 = v10;
            v24 = entriesCopy;
            selfCopy = self;
            v26 = [v12 objectForKeyedSubscript:@"Artist"];
            v27 = [v12 objectForKeyedSubscript:@"Name"];
            *buf = 138412802;
            v44 = v26;
            self = selfCopy;
            entriesCopy = v24;
            v10 = v23;
            v8 = v22;
            v9 = v21;
            v7 = v38;
            v45 = 2112;
            v46 = v27;
            v47 = 2048;
            v48 = v18;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "[BCGenerateDownloadSizePlistProducer] Adding 'Size On Disk' based on disk usage for {%@ - %@}: %llu", buf, 0x20u);
          }

          [v12 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", v18, v37), v10}];
LABEL_15:
          v11 = v11 + 1;
        }

        while (v7 != v11);
        v36 = [entriesCopy countByEnumeratingWithState:&v39 objects:v49 count:16];
        v7 = v36;
      }

      while (v36);
    }
  }
}

- (BOOL)_addDownloadSizeFromITunesMetadataToEntry:(id)entry
{
  v5 = +[NSFileManager defaultManager];
  v6 = objc_opt_class();
  v7 = BCDynamicCast(v6, [entry objectForKeyedSubscript:@"Path"]);
  if (!v7)
  {
    v16 = BCDefaultLog(0, v8);
    v12 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    sub_13574(entry);
LABEL_13:
    LOBYTE(v12) = 0;
    return v12;
  }

  v9 = v7;
  if (![v7 length])
  {
    v17 = BCDefaultLog(0, v10);
    v12 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    sub_134CC(entry);
    goto LABEL_13;
  }

  v11 = [[(NSString *)self->super._path stringByDeletingLastPathComponent] stringByAppendingPathComponent:v9];
  v12 = [(NSFileManager *)v5 isDirectoryPath:v11];
  if (!v12)
  {
    return v12;
  }

  v13 = [NSDictionary dictionaryWithContentsOfFile:[(NSString *)v11 stringByAppendingPathComponent:@"iTunesMetadata.plist"]];
  if (!v13)
  {
    v18 = BCDefaultLog(0, v14);
    v12 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    sub_13424(entry);
    goto LABEL_13;
  }

  v15 = v13;
  if ([(BCGenerateDownloadSizePlistProducer *)self _addEstimatedDownloadSizeFromITunesMetadataDictionary:v13 assetPath:v11 toEntry:entry])
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    LOBYTE(v12) = [(BCGenerateDownloadSizePlistProducer *)self _addSizeOnDiskFromITunesMetadataDictionary:v15 toEntry:entry]!= 0;
  }

  return v12;
}

- (id)produceData
{
  v3 = +[NSMutableArray array];
  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
  v5 = objc_opt_class();
  v6 = BCDynamicCast(v5, [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"Books"]);
  if (![v6 count])
  {
    goto LABEL_17;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {
    [(BCGenerateDownloadSizePlistProducer *)self _addComputedSizeOnDiskToEntries:v7];

LABEL_17:
    self->super._dataUnchanged = 1;
    return v4;
  }

  v9 = v8;
  selfCopy = self;
  obj = v6;
  v20 = v4;
  v21 = v7;
  v22 = 0;
  v10 = *v26;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v25 + 1) + 8 * i);
      v13 = objc_opt_class();
      v14 = BCDynamicCast(v13, v12);
      v15 = objc_opt_class();
      v16 = BCDynamicCast(v15, [v14 objectForKeyedSubscript:@"Estimated Download Size"]);
      v17 = objc_opt_class();
      if (v16 | BCDynamicCast(v17, [v14 objectForKeyedSubscript:@"Size On Disk"]))
      {
        [v3 addObject:v14];
      }

      else
      {
        v18 = [[NSMutableDictionary alloc] initWithDictionary:v14];
        [v3 addObject:v18];
        if (![(BCGenerateDownloadSizePlistProducer *)selfCopy _addDownloadSizeFromITunesMetadataToEntry:v18])
        {
          [v21 addObject:v18];
        }

        v22 = 1;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v9);
  self = selfCopy;
  [(BCGenerateDownloadSizePlistProducer *)selfCopy _addComputedSizeOnDiskToEntries:v21];

  v4 = v20;
  if ((v22 & 1) == 0)
  {
    goto LABEL_17;
  }

  [(NSMutableDictionary *)v20 setObject:v3 forKeyedSubscript:@"Books"];
  return v4;
}

@end