@interface _GEONetworkDefaultsLocalProxy
- (id)_urlRequestForNetworkDefaults;
- (void)_updateNetworkDefaults;
@end

@implementation _GEONetworkDefaultsLocalProxy

- (void)_updateNetworkDefaults
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __55___GEONetworkDefaultsLocalProxy__updateNetworkDefaults__block_invoke;
  v29 = &unk_1E7071448;
  selfCopy = self;
  v31 = &v32;
  geo_isolate_sync_data();
  if ((v33[3] & 1) == 0)
  {
    _urlRequestForNetworkDefaults = [(_GEONetworkDefaultsLocalProxy *)self _urlRequestForNetworkDefaults];
    ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration _geo_setTLSMinimumSupportedProtocolVersion];
    v5 = [MEMORY[0x1E696AF78] sessionWithConfiguration:ephemeralSessionConfiguration];
    v6 = +[GEORequestCounter sharedCounter];
    v7 = +[GEOApplicationAuditToken currentProcessAuditToken];
    v8 = [v6 requestCounterTicketForType:6 auditToken:v7 traits:0];

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__76712;
    v24 = __Block_byref_object_dispose__76713;
    v25 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55___GEONetworkDefaultsLocalProxy__updateNetworkDefaults__block_invoke_2;
    v14[3] = &unk_1E7059998;
    v19 = &v20;
    v9 = v8;
    v15 = v9;
    selfCopy2 = self;
    v10 = _urlRequestForNetworkDefaults;
    v17 = v10;
    v11 = v5;
    v18 = v11;
    v12 = [v11 dataTaskWithRequest:v10 completionHandler:v14];
    v13 = v21[5];
    v21[5] = v12;

    [v9 startingRequestWithTask:v21[5]];
    [v21[5] resume];
    _Block_object_dispose(&v20, 8);
  }

  _Block_object_dispose(&v32, 8);
}

- (id)_urlRequestForNetworkDefaults
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _networkDefaultsURL();
  v3 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v2 cachePolicy:1 timeoutInterval:60.0];
  v4 = _getValue(84, &GeoServicesConfig_LastNetworkDefaultsURL_Metadata, 1, 0, 0, 0);
  v5 = _getValue(85, &GeoServicesConfig_LastNetworkDefaultsETag_Metadata, 1, 0, 0, 0);
  v6 = [GEOFilePaths urlFor:23];
  if (v5)
  {
    absoluteString = [v2 absoluteString];
    v8 = [v4 isEqualToString:absoluteString];

    if (v8)
    {
      [v6 removeAllCachedResourceValues];
      v18 = 0;
      v9 = [v6 getResourceValue:&v18 forKey:*MEMORY[0x1E695DBB0] error:0];
      v10 = v18;
      v11 = v10;
      if (v9 && [v10 BOOLValue])
      {
        [v3 setValue:v5 forHTTPHeaderField:@"If-None-Match"];
        v12 = GEOGetNetworkDefaultsLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v20 = v5;
          v13 = "Using ETag for request: %{private}@";
          v14 = v12;
          v15 = OS_LOG_TYPE_DEBUG;
          v16 = 12;
LABEL_9:
          _os_log_impl(&dword_18660C000, v14, v15, v13, buf, v16);
        }
      }

      else
      {
        v12 = GEOGetNetworkDefaultsLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v13 = "Cached file is missing/unreadable on-disk. Ignoring stored ETag.";
          v14 = v12;
          v15 = OS_LOG_TYPE_ERROR;
          v16 = 2;
          goto LABEL_9;
        }
      }
    }
  }

  [v3 setValue:0 forHTTPHeaderField:@"Accept-Language"];

  return v3;
}

@end