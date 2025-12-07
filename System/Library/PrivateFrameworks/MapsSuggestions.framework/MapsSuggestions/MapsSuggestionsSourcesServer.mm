@interface MapsSuggestionsSourcesServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MapsSuggestionsSourcesServer)initWithMemory:(id)memory;
- (NSString)uniqueName;
- (void)dealloc;
- (void)didUpdateLocation:(id)location;
@end

@implementation MapsSuggestionsSourcesServer

- (MapsSuggestionsSourcesServer)initWithMemory:(id)memory
{
  objc_initWeak(&location, memory);
  v58.receiver = self;
  v58.super_class = MapsSuggestionsSourcesServer;
  v4 = [(MapsSuggestionsSourcesServer *)&v58 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("MapsSuggestionsSourcesServerQueue", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v8 = objc_loadWeakRetained(&location);
    v9 = v8;
    if (!v8)
    {
      v43 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v75 = "MapsSuggestionsSourcesServer.m";
        v76 = 1026;
        v77 = 312;
        v78 = 2082;
        v79 = "[MapsSuggestionsSourcesServer initWithMemory:]";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", buf, 0x1Cu);
      }

      v42 = 0;
      goto LABEL_55;
    }

    locationUpdater = [v8 locationUpdater];
    locationUpdater = v4->_locationUpdater;
    v4->_locationUpdater = locationUpdater;

    sourceWrapper = [v9 sourceWrapper];
    wrapper = v4->_wrapper;
    v4->_wrapper = sourceWrapper;

    destinationGraph = [v9 destinationGraph];
    graph = v4->_graph;
    v4->_graph = destinationGraph;

    v16 = objc_alloc_init(NSMutableArray);
    peers = v4->_peers;
    v4->_peers = v16;

    if (!MapsSuggestionsIsDestinationGraphEnabled(v18, v19))
    {
LABEL_48:
      v47 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.maps.destinationd.sources"];
      listener = v4->_listener;
      v4->_listener = v47;

      [(NSXPCListener *)v4->_listener setDelegate:v4];
      v49 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Sources Listener created.", buf, 2u);
      }

      [(NSXPCListener *)v4->_listener resume];
      v50 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Sources Listener resumed.", buf, 2u);
      }

      v51 = [(MapsSuggestionsLocationUpdater *)v4->_locationUpdater startLocationUpdatesForDelegate:v4];
      v52 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "LocationUpdater started.", buf, 2u);
      }

      v42 = v4;
LABEL_55:

      goto LABEL_56;
    }

    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Preloading Graph.", buf, 2u);
    }

    v21 = v4->_graph;
    source = [(MapsSuggestionsSourceWrapper *)v4->_wrapper source];
    v23 = v21;
    v24 = source;
    v25 = v24;
    if (v23)
    {
      if (v24)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v25;
          context = objc_autoreleasePoolPush();
          v57 = MapsSuggestionsCurrentBestLocation();
          if (!v57)
          {
            v26 = GEOFindOrCreateLog();
            if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v75 = "_rebuildGraph";
              _os_log_impl(&_mh_execute_header, &v26->super, OS_LOG_TYPE_ERROR, "Got no current location to work with in %s", buf, 0xCu);
            }

            goto LABEL_46;
          }

          v26 = [[MapsSuggestionsDestinationGraphUpdater alloc] initWithDestinationGraph:v23];
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          children = [v56 children];
          v28 = [children countByEnumeratingWithState:&v68 objects:buf count:16];
          if (v28)
          {
            v54 = v23;
            v29 = 0;
            v30 = *v69;
            do
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v69 != v30)
                {
                  objc_enumerationMutation(children);
                }

                v32 = *(*(&v68 + 1) + 8 * i);
                if ([v32 conformsToProtocol:&OBJC_PROTOCOL___MapsSuggestionsPreloadableSource])
                {
                  [(MapsSuggestionsDestinationGraphUpdater *)v26 addPreloadableSource:v32];
                  v29 = 1;
                }
              }

              v28 = [children countByEnumeratingWithState:&v68 objects:buf count:16];
            }

            while (v28);

            v23 = v54;
            if (v29)
            {
              v66[0] = 0;
              v66[1] = v66;
              v66[2] = 0x2020000000;
              v67 = 0;
              v33 = [NSDateInterval alloc];
              v34 = MapsSuggestionsNow();
              GEOConfigGetDouble();
              v35 = [v33 initWithStartDate:v34 duration:?];

              v36 = dispatch_semaphore_create(0);
              *v60 = _NSConcreteStackBlock;
              v61 = 3221225472;
              v62 = sub_10002A97C;
              v63 = &unk_100075C48;
              v65 = v66;
              v37 = v36;
              v64 = v37;
              if (([(MapsSuggestionsDestinationGraphUpdater *)v26 rebuildForPeriod:v35 location:v57 handler:v60]& 1) != 0)
              {
                GEOConfigGetDouble();
                v39 = dispatch_time(0, (v38 * 1000000000.0));
                if (!dispatch_semaphore_wait(v37, v39))
                {
LABEL_45:

                  _Block_object_dispose(v66, 8);
LABEL_46:

                  objc_autoreleasePoolPop(context);
                  v44 = v56;
                  goto LABEL_47;
                }

                v40 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *v72 = 136315138;
                  v73 = "_rebuildGraph";
                  v41 = "Timeout on %s";
LABEL_43:
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, v41, v72, 0xCu);
                }
              }

              else
              {
                v40 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *v72 = 136315138;
                  v73 = "_rebuildGraph";
                  v41 = "DestinationGraphUpdater did not like our input in %s";
                  goto LABEL_43;
                }
              }

              goto LABEL_45;
            }
          }

          else
          {
          }

          v46 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Our DestinationGraphUpdater doesn't have any Sources to preload", v60, 2u);
          }

          goto LABEL_46;
        }

        v44 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446978;
          v75 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
          v76 = 1024;
          v77 = 34;
          v78 = 2082;
          v79 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
          v80 = 2082;
          v81 = "! [source isKindOfClass:[MapsSuggestionsCompositeSource class]]";
          v45 = "At %{public}s:%d, %{public}s forbids: %{public}s. Only supports CompositeSource at the moment";
          goto LABEL_34;
        }

LABEL_47:

        goto LABEL_48;
      }

      v44 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      *buf = 136446978;
      v75 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v76 = 1024;
      v77 = 33;
      v78 = 2082;
      v79 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
      v80 = 2082;
      v81 = "nil == (source)";
      v45 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source";
    }

    else
    {
      v44 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      *buf = 136446978;
      v75 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v76 = 1024;
      v77 = 32;
      v78 = 2082;
      v79 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
      v80 = 2082;
      v81 = "nil == (graph)";
      v45 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination graph";
    }

LABEL_34:
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, v45, buf, 0x26u);
    goto LABEL_47;
  }

  v42 = 0;
LABEL_56:
  objc_destroyWeak(&location);

  return v42;
}

- (void)dealloc
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "LocationUpdater stopping.", buf, 2u);
  }

  [(MapsSuggestionsLocationUpdater *)self->_locationUpdater stopLocationUpdatesForDelegate:self];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "LocationUpdater stopped.", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = MapsSuggestionsSourcesServer;
  [(MapsSuggestionsSourcesServer *)&v5 dealloc];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (connectionCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Incoming XPC connection %@.", buf, 0xCu);
    }

    v9 = [[MapsSuggestionsSourcesXPCPeer alloc] initWithXPCConnection:connectionCopy sourceWrapper:self->_wrapper graph:self->_graph];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002A18C;
    block[3] = &unk_1000759B8;
    block[4] = self;
    v8 = v9;
    v31 = v8;
    dispatch_sync(queue, block);
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsSourceDelegateProxy];
    v12 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0, listenerCopy}];
    [v11 setClasses:v12 forSelector:"addOrUpdateSuggestionEntriesData:sourceNameData:handler:" argumentIndex:0 ofReply:0];

    v13 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v13 forSelector:"addOrUpdateSuggestionEntriesData:sourceNameData:handler:" argumentIndex:1 ofReply:0];

    [connectionCopy setRemoteObjectInterface:v11];
    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsSourceProxy];
    [connectionCopy setExportedInterface:v14];

    [connectionCopy setExportedObject:v8];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v8);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002A198;
    v25[3] = &unk_100075A08;
    objc_copyWeak(&v27, buf);
    objc_copyWeak(&v28, &location);
    v15 = connectionCopy;
    v26 = v15;
    [v15 setInvalidationHandler:v25];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002A530;
    v21[3] = &unk_100075A08;
    objc_copyWeak(&v23, buf);
    objc_copyWeak(&v24, &location);
    v16 = v15;
    v22 = v16;
    [v16 setInterruptionHandler:v21];
    [v16 resume];
    [(MapsSuggestionsSourcesServer *)self _debugPrintOverviewOfConnections];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Connection resumed.", v20, 2u);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
    v34 = 1024;
    v35 = 356;
    v36 = 2082;
    v37 = "[MapsSuggestionsSourcesServer listener:shouldAcceptNewConnection:]";
    v38 = 2082;
    v39 = "nil == (newConnection)";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a newConnection", buf, 0x26u);
  }

  return connectionCopy != 0;
}

- (void)didUpdateLocation:(id)location
{
  locationCopy = location;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = locationCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received location update: %@", &v5, 0xCu);
    }
  }
}

@end