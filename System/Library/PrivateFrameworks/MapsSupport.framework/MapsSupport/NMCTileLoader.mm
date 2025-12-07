@interface NMCTileLoader
- (NMCTileLoader)initWithRequestIdentifier:(id)identifier manifestConfiguration:(id)configuration tileRequests:(id)requests auditToken:(id)token;
- (void)_finish;
- (void)_handleTile:(__int128 *)tile tile:(void *)a4 ETag:(void *)tag error:(void *)error userInfo:(void *)info populateCombinedBaseLocalizationData:(int)data;
- (void)_requestTiles;
- (void)cancel;
- (void)startWithCallbackQueue:(id)queue tileHandler:(id)handler completionHandler:(id)completionHandler;
- (void)tileRequester:(uint64_t)requester receivedData:(uint64_t)data tileEdition:(uint64_t)edition tileSetDB:(uint64_t)b tileSet:(uint64_t)set etag:(uint64_t)etag forKey:(uint64_t)key userInfo:(uint64_t)self0;
- (void)tileRequester:(uint64_t)requester receivedError:(uint64_t)error forKey:(uint64_t)key;
@end

@implementation NMCTileLoader

- (NMCTileLoader)initWithRequestIdentifier:(id)identifier manifestConfiguration:(id)configuration tileRequests:(id)requests auditToken:(id)token
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  requestsCopy = requests;
  tokenCopy = token;
  v22.receiver = self;
  v22.super_class = NMCTileLoader;
  v14 = [(NMCTileLoader *)&v22 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("NMCTileLoader", v15);
    workQueue = v14->_workQueue;
    v14->_workQueue = v16;

    objc_storeStrong(&v14->_manifestConfiguration, configuration);
    objc_storeStrong(&v14->_requests, requests);
    objc_storeStrong(&v14->_auditToken, token);
    v18 = [identifierCopy copy];
    requestIdentifier = v14->_requestIdentifier;
    v14->_requestIdentifier = v18;

    v20 = v14;
  }

  return v14;
}

- (void)startWithCallbackQueue:(id)queue tileHandler:(id)handler completionHandler:(id)completionHandler
{
  queueCopy = queue;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009F0C;
  v15[3] = &unk_100085018;
  v15[4] = self;
  v16 = queueCopy;
  v17 = handlerCopy;
  v18 = completionHandlerCopy;
  v12 = completionHandlerCopy;
  v13 = handlerCopy;
  v14 = queueCopy;
  dispatch_async(workQueue, v15);
}

- (void)cancel
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A21C;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_requestTiles
{
  v3 = sub_10000A164(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(GEOTileKeyList *)self->_tileKeys count];
    *buf = 134349056;
    v64 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Loading %{public}llu tiles from the network", buf, 0xCu);
  }

  v45 = [[GEOTileKeyMap alloc] initWithMapType:0];
  v5 = [[GEOTileKeyMap alloc] initWithMapType:0];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v6 = self->_tileKeys;
  v7 = [(GEOTileKeyList *)v6 countByEnumeratingWithState:&v57 objects:v62 count:16];
  v47 = v5;
  if (!v7)
  {

LABEL_31:
    LOWORD(v40) = 1;
    v35 = v45;
    v36 = [[GEOTileRequest alloc] initWithKeyList:self->_tileKeys manifestConfiguration:self->_manifestConfiguration locale:0 cachedEtags:v45 cachedData:0 priorities:v5 signpostIDs:0 createTimes:0 additionalInfos:0 cacheInfos:0 auditToken:self->_auditToken constraints:0 backgroundSessionIdentifier:0 shouldParticipateInBalancer:v40 reason:?];
    v37 = [[_NMCSimpleTileRequester alloc] initWithTileRequest:v36 forOriginalRequests:self->_keyToRequest delegateQueue:self->_workQueue delegate:self];
    tileRequester = self->_tileRequester;
    self->_tileRequester = v37;

    v39 = self->_tileRequester;
    v34 = v36;
    v5 = v47;
    [(_NMCSimpleTileRequester *)v39 start];
    goto LABEL_32;
  }

  v8 = v7;
  v9 = 0;
  IsOffline = 0;
  v11 = *v58;
  do
  {
    v12 = 0;
    v13 = IsOffline;
    do
    {
      if (*v58 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v57 + 1) + 8 * v12);
      IsOffline = GEOTileKeyIsOffline();
      if (v9 & (v13 ^ IsOffline))
      {
        sub_1000558F0(buf, &buf[1]);
      }

      v15 = [(GEOTileKeyMap *)self->_keyToRequest objectForKey:v14];
      if ([v15 hasCachedETag])
      {
        cachedETag = [v15 cachedETag];
        [v45 setObject:cachedETag forKey:v14];
      }

      if ([v15 hasPriority])
      {
        v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 priority]);
        [v5 setObject:v17 forKey:v14];
      }

      else
      {
        [v5 setObject:&off_10008BF10 forKey:v14];
      }

      v12 = v12 + 1;
      v9 = 1;
      v13 = IsOffline;
    }

    while (v8 != v12);
    v8 = [(GEOTileKeyList *)v6 countByEnumeratingWithState:&v57 objects:v62 count:16];
  }

  while (v8);

  if (!IsOffline)
  {
    goto LABEL_31;
  }

  group = dispatch_group_create();
  v18 = GEOTileLoaderClientIdentifier();
  tileLoaderClientIdentifier = self->_tileLoaderClientIdentifier;
  self->_tileLoaderClientIdentifier = v18;

  v20 = +[GEOTileLoader modernLoader];
  tileLoaderForOfflineTiles = self->_tileLoaderForOfflineTiles;
  self->_tileLoaderForOfflineTiles = v20;

  [(GEOTileLoader *)self->_tileLoaderForOfflineTiles openForClient:self->_tileLoaderClientIdentifier];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_tileKeys;
  v44 = [(GEOTileKeyList *)obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v44)
  {
    v42 = *v54;
    do
    {
      v22 = 0;
      do
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v53 + 1) + 8 * v22);
        if (GEOTileKeyIsOffline())
        {
          dispatch_group_enter(group);
          v24 = [v47 objectForKey:v23];
          unsignedIntValue = [v24 unsignedIntValue];

          v25 = self->_tileLoaderForOfflineTiles;
          v26 = self->_tileLoaderClientIdentifier;
          v27 = qos_class_self();
          auditToken = self->_auditToken;
          GEOMachAbsoluteTimeGetCurrent();
          v30 = v29;
          workQueue = self->_workQueue;
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_10000A7B0;
          v49[3] = &unk_100085040;
          v49[4] = self;
          v50 = group;
          [(GEOTileLoader *)v25 loadKey:v23 priority:unsignedIntValue forClient:v26 options:1027 reason:0 qos:v27 signpostID:v30 auditToken:0 createTime:auditToken callbackQ:workQueue beginNetwork:0 callback:v49];
        }

        else
        {
          sub_10005595C(&v51, v52);
        }

        v22 = v22 + 1;
        v5 = v47;
      }

      while (v44 != v22);
      v32 = [(GEOTileKeyList *)obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      v44 = v32;
    }

    while (v32);
  }

  v33 = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A804;
  block[3] = &unk_100084F10;
  block[4] = self;
  v34 = group;
  dispatch_group_notify(group, v33, block);
  v35 = v45;
LABEL_32:
}

- (void)_finish
{
  v3 = [(GEOTileKeyList *)self->_remainingKeys count];
  if (v3)
  {
    v4 = sub_10000A164(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(GEOTileKeyList *)self->_remainingKeys count];
      *buf = 134217984;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Requester claimed to be finished, but still have %llu keys remaining.", buf, 0xCu);
    }

    v6 = [NSError GEOErrorWithCode:-13 reason:@"Requester claimed to be finished without handling key"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_remainingKeys;
    v8 = [(GEOTileKeyList *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NMCTileLoader *)self _handleTile:*(*(&v15 + 1) + 8 * v11) tile:0 ETag:0 error:v6 userInfo:0 populateCombinedBaseLocalizationData:0, v15];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(GEOTileKeyList *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v12 = objc_retainBlock(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  tileHandler = self->_tileHandler;
  self->_tileHandler = 0;

  dispatch_async(self->_callbackQueue, v12);
}

- (void)tileRequester:(uint64_t)requester receivedData:(uint64_t)data tileEdition:(uint64_t)edition tileSetDB:(uint64_t)b tileSet:(uint64_t)set etag:(uint64_t)etag forKey:(uint64_t)key userInfo:(uint64_t)self0
{
  v12[0] = key;
  v12[1] = info;
  return [self _handleTile:v12 tile:data ETag:etag error:0 userInfo:a11 populateCombinedBaseLocalizationData:0];
}

- (void)tileRequester:(uint64_t)requester receivedError:(uint64_t)error forKey:(uint64_t)key
{
  v7[0] = key;
  v7[1] = a6;
  return [self _handleTile:v7 tile:0 ETag:0 error:error userInfo:0 populateCombinedBaseLocalizationData:0];
}

- (void)_handleTile:(__int128 *)tile tile:(void *)a4 ETag:(void *)tag error:(void *)error userInfo:(void *)info populateCombinedBaseLocalizationData:(int)data
{
  v14 = a4;
  tagCopy = tag;
  errorCopy = error;
  infoCopy = info;
  dispatch_assert_queue_V2(*(self + 8));
  v79 = *tile;
  if (v14)
  {
    v19 = sub_10000A164(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68157955;
      LODWORD(v81) = 16;
      sub_10000AE3C();
      v20 = "Successfully loaded tile key %{private,geo:TileKey}.*P";
      v21 = v19;
      v22 = OS_LOG_TYPE_DEBUG;
      v23 = 18;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
    }
  }

  else
  {
    if (!errorCopy)
    {
      goto LABEL_9;
    }

    v19 = sub_10000A164(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158211;
      LODWORD(v81) = 16;
      sub_10000AE3C();
      v82 = 2114;
      v83 = errorCopy;
      v20 = "Error loading tile key %{private,geo:TileKey}.*P: %{public}@";
      v21 = v19;
      v22 = OS_LOG_TYPE_ERROR;
      v23 = 28;
      goto LABEL_7;
    }
  }

LABEL_9:
  [*(self + 56) removeKey:tile];
  v24 = [*(self + 64) objectForKey:tile];
  if (v24)
  {
    v25 = objc_retainBlock(*(self + 88));
    v26 = v25;
    if (!v25)
    {
LABEL_16:

      goto LABEL_17;
    }

    dataCopy = data;
    v68 = v25;
    v28 = v14;
    v29 = infoCopy;
    v71 = tagCopy;
    v30 = objc_alloc_init(NMMessage);
    [(NMMessage *)v30 setType:4];
    v31 = objc_alloc_init(NMArgument);
    [(NMArgument *)v31 setTag:103];
    [(NMArgument *)v31 setStringValue:*(self + 24)];
    sub_10000AE24();
    data = objc_alloc_init(NMArgument);

    [(NMArgument *)data setTag:100];
    v70 = v24;
    tileKey = [v24 tileKey];
    [(NMArgument *)data setDataValue:tileKey];

    [(NMMessage *)v30 addArgument:data];
    if (errorCopy)
    {
      v34 = [[NMArgument alloc] _nm_initWithErrorValue:errorCopy tag:3];
      v14 = v28;
      v26 = v68;
      goto LABEL_13;
    }

    if (dataCopy)
    {
      if ([v71 length])
      {
        v37 = objc_alloc_init(NMArgument);

        [(NMArgument *)v37 setTag:101];
        [(NMArgument *)v37 setStringValue:v71];
        sub_10000AE24();
        data = v37;
      }

      v14 = v28;
      v38 = [infoCopy objectForKeyedSubscript:GEOTileLoadStaleCachedDataWasCurrentKey];
      objc_opt_class();
      v26 = v68;
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v38 BOOLValue])
      {
        v39 = &OBJC_IVAR___NMTileRequest__localizationURL;
LABEL_54:

        if (!infoCopy)
        {
          goto LABEL_15;
        }

        v34 = objc_alloc_init((v39 + 894));

        [(NMArgument *)v34 setTag:2];
        v57 = GEOTileLoadResultSourceKey;
        v58 = [infoCopy objectForKeyedSubscript:GEOTileLoadResultSourceKey];

        if (!v58)
        {
LABEL_14:
          [(NMMessage *)v30 addArgument:v34];
          data = v34;
LABEL_15:
          v35 = *(self + 80);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000A844;
          block[3] = &unk_100085068;
          v73 = v30;
          v74 = v26;
          v36 = v30;
          dispatch_async(v35, block);

          v24 = v70;
          tagCopy = v71;
          goto LABEL_16;
        }

        data = objc_alloc_init(NMStringToObjectTuple);
        [(NMArgument *)data setKey:v57];
        v59 = [infoCopy objectForKeyedSubscript:v57];
        -[NMArgument setIntValue:](data, "setIntValue:", [v59 unsignedLongLongValue]);

        [(NMArgument *)v34 addStringToObjectMap:data];
LABEL_13:

        goto LABEL_14;
      }

      v65 = v38;
      v78 = 0;
      v43 = [v14 readDataWithError:&v78];
      v44 = v78;
      v39 = &OBJC_IVAR___NMTileRequest__localizationURL;
      v66 = v44;
      v67 = v43;
      if (v43)
      {
        v45 = objc_alloc_init(NMArgument);

        [(NMArgument *)v45 setTag:1];
        data = [v14 data];
        [(NMArgument *)v45 setDataValue:data];
      }

      else
      {
        v45 = [[NMArgument alloc] _nm_initWithErrorValue:v44 tag:3];
      }

      sub_10000AE24();
      data = v45;
      v38 = v65;
LABEL_53:

      goto LABEL_54;
    }

    v77[1] = 0;
    v77[2] = 0;
    GEOSimpleTileRequesterUnpackETag();
    v40 = 0;
    v67 = 0;
    cachedBaseETag = [v24 cachedBaseETag];
    cachedLocalizationETag = [v70 cachedLocalizationETag];
    v38 = v40;
    v42 = [v40 length];
    infoCopy = v29;
    v66 = cachedBaseETag;
    if (v42)
    {
      v14 = v28;
      if ([cachedBaseETag length])
      {
        v62 = [v38 isEqualToString:cachedBaseETag];
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v62 = 0;
      v14 = v28;
    }

    v26 = v68;
    if ([v67 length] && objc_msgSend(cachedLocalizationETag, "length"))
    {
      v46 = v67;
      v69 = [v67 isEqualToString:cachedLocalizationETag];
    }

    else
    {
      v69 = 0;
      v46 = v67;
    }

    if ([v38 length])
    {
      v47 = objc_alloc_init(NMArgument);

      [(NMArgument *)v47 setTag:105];
      [(NMArgument *)v47 setStringValue:v38];
      sub_10000AE24();
      data = v47;
      v46 = v67;
    }

    if ([v46 length])
    {
      v48 = v46;
      v49 = objc_alloc_init(NMArgument);

      [(NMArgument *)v49 setTag:107];
      [(NMArgument *)v49 setStringValue:v48];
      sub_10000AE24();
      data = v49;
    }

    v50 = v62;
    v77[0] = 0;
    v51 = [v14 readDataWithError:v77];
    v52 = v77[0];
    v60 = v52;
    v63 = v51;
    if (!v51)
    {
      v53 = sub_10000A164(v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v81 = v60;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Error reading tile data: %{public}@", buf, 0xCu);
      }
    }

    if (v50 & v69)
    {
      v61 = 0;
      v54 = 0;
      if (v50)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v75 = 0;
      v76 = 0;
      GEOTileUnpackageBaseAndLocalization();
      v61 = 0;
      v54 = 0;
      if (v50)
      {
LABEL_50:
        if ((v69 & 1) == 0)
        {
          v56 = objc_alloc_init(NMArgument);

          [(NMArgument *)v56 setTag:106];
          [(NMArgument *)v56 setDataValue:v54];
          [(NMMessage *)v30 addArgument:v56];
          data = v56;
        }

        v39 = &OBJC_IVAR___NMTileRequest__localizationURL;
        goto LABEL_53;
      }
    }

    v55 = objc_alloc_init(NMArgument);

    [(NMArgument *)v55 setTag:104];
    [(NMArgument *)v55 setDataValue:v61];
    [(NMMessage *)v30 addArgument:v55];
    data = v55;
    goto LABEL_50;
  }

LABEL_17:
}

@end