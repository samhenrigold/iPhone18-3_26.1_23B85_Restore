@interface GEOTransitUpdateServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOTransitUpdateServer)initWithDaemon:(id)daemon;
- (void)cancelTransitRouteUpdateRequestWithRequest:(id)request;
- (void)startTransitRouteUpdateRequestWithRequest:(id)request;
@end

@implementation GEOTransitUpdateServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  if (v13 == 3238)
  {
    v17 = objc_opt_class();
    v18 = sub_100001388(@"TransitUpdate", messageCopy, objectCopy, v17, peerCopy);
    v16 = v18;
    if (v18)
    {
      [v18 setSignpostId:id];
      [(GEOTransitUpdateServer *)self cancelTransitRouteUpdateRequestWithRequest:v16];
      goto LABEL_7;
    }

LABEL_11:
    v19 = 0;
    goto LABEL_8;
  }

  if (v13 != 3182)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v14 = objc_opt_class();
  v15 = sub_100001388(@"TransitUpdate", messageCopy, objectCopy, v14, peerCopy);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_11;
  }

  [v15 setSignpostId:id];
  [(GEOTransitUpdateServer *)self startTransitRouteUpdateRequestWithRequest:v16];
LABEL_7:
  v19 = 1;
LABEL_8:

LABEL_10:
  return v19;
}

- (void)cancelTransitRouteUpdateRequestWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOTransitRouteUpdateReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000268F4;
    v13 = sub_100026904;
    v14 = 0;
    v8 = requestCopy;
    geo_isolate_sync_data();
    if (v10[5])
    {
      v6 = +[GEOTransitUpdateServerRequester sharedRequester];
      [v6 cancelSimpleTransitRouteUpdateRequest:v10[5]];
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

- (void)startTransitRouteUpdateRequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOTransitRouteUpdateReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100026B70;
    v17 = &unk_100083940;
    selfCopy = self;
    v19 = requestCopy;
    geo_isolate_sync_data();
    v7 = +[GEOTransitUpdateServerRequester sharedRequester];
    request2 = [v19 request];
    preferredAuditToken = [v19 preferredAuditToken];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026BD0;
    v11[3] = &unk_100082338;
    v11[4] = self;
    v12 = v19;
    v13 = v5;
    [v7 startSimpleTransitRouteUpdateRequest:request2 auditToken:preferredAuditToken networkActivity:0 completion:v11];
  }

  else
  {
    v10 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v10];

    [v5 send];
  }
}

- (GEOTransitUpdateServer)initWithDaemon:(id)daemon
{
  v10.receiver = self;
  v10.super_class = GEOTransitUpdateServer;
  v3 = [(GEOTransitUpdateServer *)&v10 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_isolater_create();
    isolater = v3->_isolater;
    v3->_isolater = v4;

    v6 = objc_alloc_init(NSMutableSet);
    originalRequests = v3->_originalRequests;
    v3->_originalRequests = v6;

    v8 = v3;
  }

  return v3;
}

@end