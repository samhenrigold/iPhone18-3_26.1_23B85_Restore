@interface DownloadAssetEntity
+ (id)copyDatabaseDictionaryWithRequestProperties:(id)properties;
+ (id)databasePropertyToSetClientProperty:(id)property;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)newDownloadKeyCookieWithValue:(id)value URL:(id)l;
+ (void)initialize;
- (BOOL)deleteFromDatabase;
- (NSArray)sinfs;
- (id)copyStoreDownloadKeyCookie;
- (id)copyURLRequestProperties;
@end

@implementation DownloadAssetEntity

+ (id)copyDatabaseDictionaryWithRequestProperties:(id)properties
{
  v4 = objc_alloc_init(NSMutableDictionary);
  if (properties)
  {
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(properties, "allowedRetryCount")), @"retry_count"}];
    [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(properties, "isITunesStoreRequest") ^ 1), @"is_external"}];
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(properties, "networkServiceType")), @"service_type"}];
    [properties timeoutInterval];
    [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"timeout_interval"}];
    hTTPBody = [properties HTTPBody];
    if (hTTPBody)
    {
      [v4 setObject:hTTPBody forKey:@"body_data"];
    }

    hTTPHeaders = [properties HTTPHeaders];
    if (hTTPHeaders)
    {
      v7 = [NSPropertyListSerialization dataWithPropertyList:hTTPHeaders format:200 options:0 error:0];
      if (v7)
      {
        [v4 setObject:v7 forKey:@"http_headers"];
      }
    }

    hTTPMethod = [properties HTTPMethod];
    if (hTTPMethod)
    {
      [v4 setObject:hTTPMethod forKey:@"http_method"];
    }

    requestParameters = [properties requestParameters];
    if (requestParameters)
    {
      v10 = [NSPropertyListSerialization dataWithPropertyList:requestParameters format:200 options:0 error:0];
      if (v10)
      {
        [v4 setObject:v10 forKey:@"request_parameters"];
      }
    }

    v11 = [properties URL];
    absoluteString = [v11 absoluteString];
    if (absoluteString)
    {
      v13 = absoluteString;
      v14 = [objc_msgSend(v11 "path")];
      if (v14)
      {
        [v4 setObject:v14 forKey:@"path_extension"];
      }

      [v4 setObject:v13 forKey:@"url"];
    }
  }

  return v4;
}

+ (id)newDownloadKeyCookieWithValue:(id)value URL:(id)l
{
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 604800), NSHTTPCookieMaximumAge}];
  [v6 setObject:objc_msgSend(l forKey:{"host"), NSHTTPCookieDomain}];
  [v6 setObject:@"downloadKey" forKey:NSHTTPCookieName];
  [v6 setObject:objc_msgSend(l forKey:{"path"), NSHTTPCookiePath}];
  [v6 setObject:l forKey:NSHTTPCookieOriginURL];
  [v6 setObject:value forKey:NSHTTPCookieValue];
  v7 = [[NSHTTPCookie alloc] initWithProperties:v6];

  return v7;
}

- (id)copyStoreDownloadKeyCookie
{
  v10[0] = @"download_id";
  v10[1] = @"store_download_key";
  v10[2] = @"asset_type";
  v10[3] = @"url";
  [(DownloadAssetEntity *)self getValues:&v6 forProperties:v10 count:4];
  if (!v7 && [v8 isEqualToString:SSDownloadAssetTypeMedia])
  {
    v3 = [DownloadEntity alloc];
    v4 = -[DownloadEntity initWithPersistentID:inDatabase:](v3, "initWithPersistentID:inDatabase:", [v6 longLongValue], -[DownloadAssetEntity database](self, "database"));
    v7 = [(DownloadEntity *)v4 valueForProperty:@"store_download_key"];
  }

  result = 0;
  if (v7)
  {
    if (v9)
    {
      return [DownloadAssetEntity newDownloadKeyCookieWithValue:v7 URL:[NSURL URLWithString:?]];
    }
  }

  return result;
}

- (id)copyURLRequestProperties
{
  v3 = objc_alloc_init(SSMutableURLRequestProperties);
  [v3 setRequiresExtendedValidationCertificates:0];
  v42[0] = @"retry_count";
  v42[1] = @"bytes_total";
  v42[2] = @"body_data";
  v42[3] = @"body_data_file_path";
  v42[4] = @"http_headers";
  v42[5] = @"http_method";
  v42[6] = @"is_external";
  v42[7] = @"is_local_cache_server";
  v42[8] = @"service_type";
  v42[9] = @"request_parameters";
  v42[10] = @"timeout_interval";
  v42[11] = @"asset_type";
  v42[12] = @"url";
  [(DownloadAssetEntity *)self getValues:&v31 forProperties:v42 count:13];
  [v3 setAllowedRetryCount:{objc_msgSend(v31, "integerValue")}];
  [v3 setCachePolicy:1];
  [v3 setHTTPMethod:v36];
  [v3 setNetworkServiceType:{objc_msgSend(v38, "integerValue")}];
  [v40 doubleValue];
  if (v4 > 2.22044605e-16)
  {
    [v40 doubleValue];
    [v3 setTimeoutInterval:?];
  }

  if ([v34 length])
  {
    v5 = objc_alloc_init(NSFileManager);
    v6 = [v5 fileExistsAtPath:v34];
    v7 = +[SSLogConfig sharedDaemonConfig];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        LODWORD(v10) = shouldLog | 2;
      }

      else
      {
        LODWORD(v10) = shouldLog;
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v10 = v10;
      }

      else
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v27 = 138412546;
        v28 = objc_opt_class();
        v29 = 2112;
        v30 = v34;
        v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "[%@] Using HTTPBodyDataFilePath: %@", &v27, 22);
        if (v12)
        {
          v13 = v12;
          v14 = [NSString stringWithCString:v12 encoding:4];
          free(v13);
          v26 = v14;
          SSFileLog();
        }
      }

      v15 = [NSInputStream alloc];
      v16 = [v15 initWithFileAtPath:v34];
      [v3 setHTTPBodyStream:v16];
    }

    else
    {
      if (!v7)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog2;
      }

      oSLogObject2 = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v27 = 138412546;
        v28 = objc_opt_class();
        v29 = 2112;
        v30 = v34;
        v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "[%@] HTTPBodyDataFilePath is present but does not exist on disk: %@", &v27, 22);
        if (v20)
        {
          v21 = v20;
          v22 = [NSString stringWithCString:v20 encoding:4];
          free(v21);
          v26 = v22;
          SSFileLog();
        }
      }
    }
  }

  else
  {
    [v3 setHTTPBody:v33];
  }

  bOOLValue = [v37 BOOLValue];
  if (bOOLValue)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  [v3 setITunesStoreRequest:bOOLValue ^ 1];
  [v3 setURLBagType:v24];
  if (v35)
  {
    [v3 setHTTPHeaders:{+[NSPropertyListSerialization propertyListWithData:options:format:error:](NSPropertyListSerialization, "propertyListWithData:options:format:error:", v35, 0, 0, 0)}];
  }

  if (v39)
  {
    [v3 setRequestParameters:{+[NSPropertyListSerialization propertyListWithData:options:format:error:](NSPropertyListSerialization, "propertyListWithData:options:format:error:", v39, 0, 0, 0)}];
  }

  if (v41)
  {
    [v3 setURL:{+[NSURL URLWithString:](NSURL, "URLWithString:")}];
  }

  if (v32)
  {
    [v3 setExpectedContentLength:{objc_msgSend(v32, "longLongValue")}];
  }

  return v3;
}

- (NSArray)sinfs
{
  v11[0] = @"download_id";
  v11[1] = @"sinfs_data";
  v11[2] = @"asset_type";
  [(DownloadAssetEntity *)self getValues:&v8 forProperties:v11 count:3];
  if (v9)
  {
    return [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:0];
  }

  if (![v10 isEqualToString:SSDownloadAssetTypeMedia])
  {
    return 0;
  }

  v4 = [DownloadEntity alloc];
  v5 = -[DownloadEntity initWithPersistentID:inDatabase:](v4, "initWithPersistentID:inDatabase:", [v8 longLongValue], -[DownloadAssetEntity database](self, "database"));
  copyStoreDownloadMetadata = [(DownloadEntity *)v5 copyStoreDownloadMetadata];
  sinfs = [copyStoreDownloadMetadata sinfs];

  return sinfs;
}

+ (id)databasePropertyToSetClientProperty:(id)property
{
  result = [qword_100383EC0 objectForKey:?];
  if (!result)
  {
    v5 = qword_100383EB8;

    return [v5 objectForKey:property];
  }

  return result;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  result = [qword_100383EC8 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___DownloadAssetEntity;
    return objc_msgSendSuper2(&v6, "disambiguatedSQLForProperty:", property);
  }

  return result;
}

- (BOOL)deleteFromDatabase
{
  v6.receiver = self;
  v6.super_class = DownloadAssetEntity;
  deleteFromDatabase = [(DownloadAssetEntity *)&v6 deleteFromDatabase];
  if (deleteFromDatabase)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100122918;
    v5[3] = &unk_100329198;
    v5[4] = self;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  }

  return deleteFromDatabase;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"IFNULL(asset.local_path, ITSDGetAssetPath(asset.download_id, asset.ROWID))", @"IFNULL(asset.blocked_reason, 0)", @"IFNULL(asset.blocked_reason, 0)", 0}];
    v4 = [[NSArray alloc] initWithObjects:{@"retry_count", @"asset_order", @"avfoundation_blocked", @"bytes_total", @"destination_url", @"download_id", @"download_token", @"dpinfo_data", @"uncompressed_size", @"file_protection", @"hash_array", @"hash_type", @"body_data", @"body_data_file_path", @"http_headers", @"http_method", @"is_discretionary", @"is_downloaded", @"is_drm_free", @"is_external", @"is_hls", @"is_local_cache_server", @"is_zip_streamable", @"local_path", @"service_type", @"bytes_to_hash", @"path_extension", @"processing_types", @"protection_type", @"request_parameters", @"server_guid", @"sinfs_data", @"store_flavor", @"timeout_interval", @"asset_type", @"url", @"video_dimensions", 0}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 setObject:objc_msgSend(self forKey:{"disambiguatedSQLForProperty:", *(*(&v11 + 1) + 8 * i)), *(*(&v11 + 1) + 8 * i)}];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    qword_100383EC8 = [v3 copy];

    v10 = [NSDictionary alloc];
    v9 = SSDownloadAssetPropertyLocalPath;
    qword_100383EB8 = [v10 initWithObjectsAndKeys:{@"retry_count", SSDownloadAssetPropertyAllowedRetryCount, @"bytes_total", SSDownloadAssetPropertyBytesTotal, @"destination_url", SSDownloadAssetPropertyDestinationURL, @"download_token", SSDownloadAssetPropertyDownloadToken, @"dpinfo_data", SSDownloadAssetPropertyDPInfo, @"file_protection", SSDownloadAssetPropertyFileProtectionType, @"uncompressed_size", SSDownloadAssetPropertyExpectedDiskSpace, @"hash_array", SSDownloadAssetPropertyHashes, @"hash_type", SSDownloadAssetPropertyHashType, @"body_data", SSDownloadAssetPropertyHTTPBodyData, @"body_data_file_path", SSDownloadAssetPropertyHTTPBodyDataFilePath, @"http_headers", SSDownloadAssetPropertyHTTPHeaderData, @"http_method", SSDownloadAssetPropertyHTTPMethod, @"initial_odr_size", SSDownloadAssetPropertyInitialODRSize, @"is_discretionary", SSDownloadAssetPropertyIsDiscretionary, @"is_drm_free", SSDownloadAssetPropertyIsDRMFree, @"is_external", SSDownloadAssetPropertyIsExternal, @"is_hls", SSDownloadAssetPropertyIsHLS, @"is_zip_streamable", SSDownloadAssetPropertyIsZipStreamable, @"is_local_cache_server", SSDownloadAssetPropertyIsLocalCacheServer, @"bytes_to_hash", SSDownloadAssetPropertyNumberOfBytesToHash, @"path_extension", SSDownloadAssetPropertyPathExtension, @"processing_types", SSDownloadAssetPropertyProcessingTypes, @"request_parameters", SSDownloadAssetPropertyRequestParameterData, @"IFNULL(asset.local_path, ITSDGetAssetPath(asset.download_id, asset.ROWID))", SSDownloadAssetPropertyLocalPath, @"sinfs_data", SSDownloadAssetPropertySINFData, @"store_flavor", SSDownloadAssetPropertyStoreFlavor, @"timeout_interval", SSDownloadAssetPropertyTimeoutInterval, @"asset_type", SSDownloadAssetPropertyType, @"url", SSDownloadAssetPropertyURL, @"video_dimensions"}];
    qword_100383EC0 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"local_path", v9, 0}];
  }
}

@end