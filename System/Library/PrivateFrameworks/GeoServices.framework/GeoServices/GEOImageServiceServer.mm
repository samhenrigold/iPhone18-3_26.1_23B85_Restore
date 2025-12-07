@interface GEOImageServiceServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOImageServiceServer)initWithDaemon:(id)daemon;
- (void)calculateFreeableWithRequest:(id)request;
- (void)cancelImageServiceRequestWithRequest:(id)request;
- (void)purgeDiskCacheWithRequest:(id)request;
- (void)startImageServiceRequestWithRequest:(id)request;
@end

@implementation GEOImageServiceServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 > 2506)
  {
    if (v13 == 2563)
    {
      v22 = objc_opt_class();
      v23 = sub_100001388(@"ImageService", messageCopy, objectCopy, v22, peerCopy);
      v17 = v23;
      if (v23)
      {
        [v23 setSignpostId:id];
        [(GEOImageServiceServer *)self cancelImageServiceRequestWithRequest:v17];
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (v13 == 2507)
    {
      v18 = objc_opt_class();
      v19 = sub_100001388(@"ImageService", messageCopy, objectCopy, v18, peerCopy);
      v17 = v19;
      if (v19)
      {
        [v19 setSignpostId:id];
        [(GEOImageServiceServer *)self startImageServiceRequestWithRequest:v17];
        goto LABEL_16;
      }

LABEL_19:
      v14 = 0;
      goto LABEL_17;
    }
  }

  else if (v13 == 1410)
  {
    v14 = 1;
    if (sub_100001B78(peerCopy, objectCopy, @"ImageService", messageCopy, &off_100088B80, 1))
    {
      v20 = objc_opt_class();
      v21 = sub_100001388(@"ImageService", messageCopy, objectCopy, v20, peerCopy);
      v17 = v21;
      if (v21)
      {
        [v21 setSignpostId:id];
        [(GEOImageServiceServer *)self purgeDiskCacheWithRequest:v17];
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else if (v13 == 1732)
  {
    v14 = 1;
    if (sub_100001B78(peerCopy, objectCopy, @"ImageService", messageCopy, &off_100088B68, 1))
    {
      v15 = objc_opt_class();
      v16 = sub_100001388(@"ImageService", messageCopy, objectCopy, v15, peerCopy);
      v17 = v16;
      if (v16)
      {
        [v16 setSignpostId:id];
        [(GEOImageServiceServer *)self calculateFreeableWithRequest:v17];
LABEL_16:
        v14 = 1;
LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

LABEL_18:

  return v14;
}

- (void)purgeDiskCacheWithRequest:(id)request
{
  requestCopy = request;
  v7 = [[GEOImageServicePurgeCacheToSizeReply alloc] initWithRequest:requestCopy];
  persistence = self->_persistence;
  targetSize = [requestCopy targetSize];

  [v7 setAmountDeleted:{-[GEOImageServicePersistence shrinkToSize:](persistence, "shrinkToSize:", targetSize)}];
  [v7 send];
}

- (void)calculateFreeableWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOImageServiceCalculateFreeableSizeReply alloc] initWithRequest:requestCopy];

  [v5 setSize:{-[GEOImageServicePersistence calculateFreeableSize](self->_persistence, "calculateFreeableSize")}];
  [v5 send];
}

- (void)cancelImageServiceRequestWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOImageServiceReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10002DF04;
    v13 = sub_10002DF14;
    v14 = 0;
    v8 = requestCopy;
    geo_isolate_sync_data();
    if (v10[5])
    {
      v6 = +[GEOImageServiceServerRequester sharedRequester];
      [v6 cancelSimpleImageServiceRequest:v10[5]];
    }

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v7 = [NSError GEOErrorWithCode:-10];
    [v4 setError:v7];

    [v4 send];
  }
}

- (void)startImageServiceRequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOImageServiceReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    v27 = v5;
    request2 = [requestCopy request];
    imageIds = [request2 imageIds];
    v32 = [imageIds mutableCopy];

    request3 = [requestCopy request];
    width = [request3 width];

    request4 = [requestCopy request];
    height = [request4 height];

    v31 = +[NSMutableArray array];
    v46 = _NSConcreteStackBlock;
    v47 = 3221225472;
    v48 = sub_10002E3E0;
    v49 = &unk_100083940;
    selfCopy = self;
    v28 = requestCopy;
    v51 = requestCopy;
    geo_isolate_sync_data();
    v12 = dispatch_group_create();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = v51;
    request5 = [v51 request];
    imageIds2 = [request5 imageIds];

    obj = imageIds2;
    v15 = [imageIds2 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      do
      {
        v18 = 0;
        do
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v42 + 1) + 8 * v18);
          dispatch_group_enter(v12);
          persistence = self->_persistence;
          global_queue = geo_get_global_queue();
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10002E440;
          v38[3] = &unk_100082748;
          v38[4] = v19;
          v38[5] = self;
          v39 = v32;
          v40 = v31;
          v41 = v12;
          [(GEOImageServicePersistence *)persistence getDataForIdentifier:v19 width:width height:height callbackQueue:global_queue callback:v38];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v16);
    }

    v22 = geo_get_global_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E550;
    block[3] = &unk_100083288;
    block[4] = self;
    v34 = v26;
    v35 = v32;
    v36 = v31;
    v5 = v27;
    v37 = v27;
    v23 = v31;
    v24 = v32;
    dispatch_group_notify(v12, v22, block);

    requestCopy = v28;
  }

  else
  {
    v25 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v25];

    [v5 send];
  }
}

- (GEOImageServiceServer)initWithDaemon:(id)daemon
{
  v18.receiver = self;
  v18.super_class = GEOImageServiceServer;
  v3 = [(GEOImageServiceServer *)&v18 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_isolater_create();
    isolater = v3->_isolater;
    v3->_isolater = v4;

    v6 = +[NSMutableArray array];
    requestsConsultingPersistence = v3->_requestsConsultingPersistence;
    v3->_requestsConsultingPersistence = v6;

    v8 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:512];
    originalRequestToPendingRequest = v3->_originalRequestToPendingRequest;
    v3->_originalRequestToPendingRequest = v8;

    v10 = [GEOImageServicePersistence alloc];
    v11 = [GEOFilePaths urlFor:28];
    v12 = [(GEOImageServicePersistence *)v10 initWithDBFileURL:v11];
    persistence = v3->_persistence;
    v3->_persistence = v12;

    v14 = +[GEODiskSpaceManager sharedManager];
    v15 = [v14 diskSpaceProviderForIdentifier:@"com.apple.geod.ImageService"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 setPersistence:v3->_persistence];
    }

    v16 = v3;
  }

  return v3;
}

@end