@interface _GEOSimpleTileRequesterOperation
- (GEOSimpleTileRequesterOperationDelegate)delegate;
- (NSURL)URL;
- (NSURL)downloadedFileURL;
- (int)httpResponseStatusCode;
- (unint64_t)contentLength;
- (void)clearAllRelatedOperations;
- (void)start;
@end

@implementation _GEOSimpleTileRequesterOperation

- (NSURL)URL
{
  request = [(_GEOSimpleTileRequesterOperation *)self request];
  v3 = [request URL];

  return v3;
}

- (NSURL)downloadedFileURL
{
  task = [(_GEOSimpleTileRequesterOperation *)self task];
  downloadedFileURL = [task downloadedFileURL];

  return downloadedFileURL;
}

- (void)start
{
  v41 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_activity, &state);
  priority = [(_GEOSimpleTileRequesterOperation *)self priority];
  baseTile = [(_GEOSimpleTileRequesterOperation *)self baseTile];
  v5 = baseTile == 0;

  if (v5)
  {
    v10 = GEOGetTileLoadingLog();
    v7 = v10;
    signpostID = self->_signpostID;
    if (signpostID - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
    {
      goto LABEL_9;
    }

    *buf = 134217984;
    v40 = priority / 4294967290.0;
    v9 = "RequestFromNetwork";
  }

  else
  {
    v6 = GEOGetTileLoadingLog();
    v7 = v6;
    signpostID = self->_signpostID;
    if (signpostID - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v6))
    {
      goto LABEL_9;
    }

    *buf = 134217984;
    v40 = priority / 4294967290.0;
    v9 = "Loc.RequestFromNetwork";
  }

  _os_signpost_emit_with_name_impl(&dword_18660C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, v9, "Priority=%{signpost.description:attribute}f", buf, 0xCu);
LABEL_9:

  GEOMachAbsoluteTimeGetCurrent();
  self->_startTime = v11;
  delegate = [(_GEOSimpleTileRequesterOperation *)self delegate];
  self->_checksumMethod = [delegate checksumMethodForIncomingTileDataWithKey:&self->_key];

  v13 = MEMORY[0x1E696AF68];
  v14 = +[GEOPlatform sharedPlatform];
  if ([v14 isInternalInstall])
  {
    BOOL = GEOConfigGetBOOL(167, &GeoServicesConfig_AllowNonEVCerts_Metadata);
  }

  else
  {
    BOOL = 0;
  }

  v16 = [(_GEOSimpleTileRequesterOperation *)self URL];
  host = [v16 host];
  [v13 setAllowsAnyHTTPSCertificate:BOOL forHost:host];

  dataSession = self->_dataSession;
  if (dataSession)
  {
    v19 = dataSession;
  }

  else
  {
    v19 = +[GEODataURLSession sharedDataURLSession];
  }

  v20 = v19;
  if (self->_shouldDownloadToDisk)
  {
    request = [(_GEOSimpleTileRequesterOperation *)self request];
    v22 = fmaxf(fminf((vcvts_n_f32_u32(priority, 0x20uLL) * 0.78456) + 0.21544, 1.0), 0.21544);
    *&v23 = v22 * (v22 * v22);
    [(GEODataURLSession *)v20 downloadTaskWithRequest:request priority:self delegate:self->_delegateQueue delegateQueue:v23];
  }

  else
  {
    request = [(_GEOSimpleTileRequesterOperation *)self request];
    v25 = fmaxf(fminf((vcvts_n_f32_u32(priority, 0x20uLL) * 0.78456) + 0.21544, 1.0), 0.21544);
    *&v26 = v25 * (v25 * v25);
    [(GEODataURLSession *)v20 taskWithRequest:request priority:self delegate:self->_delegateQueue delegateQueue:v26];
  }
  v24 = ;
  [(_GEOSimpleTileRequesterOperation *)self setTask:v24];

  task = [(_GEOSimpleTileRequesterOperation *)self task];
  LOBYTE(v24) = task == 0;

  if (v24)
  {
    baseTile2 = [(_GEOSimpleTileRequesterOperation *)self baseTile];
    v30 = baseTile2 == 0;

    if (v30)
    {
      v35 = GEOGetTileLoadingLog();
      v32 = v35;
      v33 = self->_signpostID;
      if (v33 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v35))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v34 = "RequestFromNetwork";
    }

    else
    {
      v31 = GEOGetTileLoadingLog();
      v32 = v31;
      v33 = self->_signpostID;
      if (v33 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v31))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v34 = "Loc.RequestFromNetwork";
    }

    _os_signpost_emit_with_name_impl(&dword_18660C000, v32, OS_SIGNPOST_INTERVAL_END, v33, v34, "Result=Error", buf, 2u);
LABEL_28:

    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41___GEOSimpleTileRequesterOperation_start__block_invoke;
    block[3] = &unk_1E7071900;
    block[4] = self;
    dispatch_async(delegateQueue, block);
    goto LABEL_29;
  }

  self->_isRunning = 1;
  task2 = [(_GEOSimpleTileRequesterOperation *)self task];
  [task2 start];

LABEL_29:
  os_activity_scope_leave(&state);
}

- (GEOSimpleTileRequesterOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)clearAllRelatedOperations
{
  [(_GEOSimpleTileRequesterOperation *)self setBaseTile:0];

  [(_GEOSimpleTileRequesterOperation *)self setLocalizationTile:0];
}

- (int)httpResponseStatusCode
{
  task = [(_GEOSimpleTileRequesterOperation *)self task];
  clientMetrics = [task clientMetrics];
  networkMetrics = [clientMetrics networkMetrics];
  httpResponseCode = [networkMetrics httpResponseCode];

  return httpResponseCode;
}

- (unint64_t)contentLength
{
  data = [(_GEOSimpleTileRequesterOperation *)self data];
  v3 = data;
  if (data)
  {
    v4 = [data length];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

@end