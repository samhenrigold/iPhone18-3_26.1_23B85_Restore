@interface MapsConnectionBrokerServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MapsConnectionBrokerServer)init;
- (void)dealloc;
- (void)listenerEndpointDidChange:(id)change forIdentifier:(id)identifier;
- (void)listenerEndpointForIdentifer:(id)identifer reply:(id)reply;
@end

@implementation MapsConnectionBrokerServer

- (MapsConnectionBrokerServer)init
{
  v20.receiver = self;
  v20.super_class = MapsConnectionBrokerServer;
  v2 = [(MapsConnectionBrokerServer *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Maps.MapsConnectionBrokerServer.connections", v3);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.Maps.MapsConnectionBrokerServer.endpoints", v6);
    endpointQueue = v2->_endpointQueue;
    v2->_endpointQueue = v7;

    v9 = objc_alloc_init(NSMutableArray);
    endpointSourceConnections = v2->_endpointSourceConnections;
    v2->_endpointSourceConnections = v9;

    v11 = objc_alloc_init(NSMutableArray);
    endpointConsumerConnections = v2->_endpointConsumerConnections;
    v2->_endpointConsumerConnections = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    endpoints = v2->_endpoints;
    v2->_endpoints = v13;

    v15 = +[NSXPCListener _maps_mapsConnectionBrokerEndpointSourceListener];
    endpointSourceListener = v2->_endpointSourceListener;
    v2->_endpointSourceListener = v15;

    [(NSXPCListener *)v2->_endpointSourceListener setDelegate:v2];
    [(NSXPCListener *)v2->_endpointSourceListener resume];
    v17 = +[NSXPCListener _maps_mapsConnectionBrokerEndpointConsumerListener];
    endpointConsumerListener = v2->_endpointConsumerListener;
    v2->_endpointConsumerListener = v17;

    [(NSXPCListener *)v2->_endpointConsumerListener setDelegate:v2];
    [(NSXPCListener *)v2->_endpointConsumerListener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_endpointSourceListener invalidate];
  [(NSXPCListener *)self->_endpointConsumerListener invalidate];
  [(NSXPCListener *)self->_endpointSourceListener setDelegate:0];
  [(NSXPCListener *)self->_endpointConsumerListener setDelegate:0];
  v3.receiver = self;
  v3.super_class = MapsConnectionBrokerServer;
  [(MapsConnectionBrokerServer *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_1000124D8(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v38 = "[MapsConnectionBrokerServer listener:shouldAcceptNewConnection:]";
    v39 = 2112;
    v40 = listenerCopy;
    v41 = 2112;
    v42 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer %s %@ %@", buf, 0x20u);
  }

  if (self->_endpointSourceListener == listenerCopy)
  {
    v11 = sub_1000124D8(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer Received new endpoint source connection: %@", buf, 0xCu);
    }

    [connectionCopy setExportedObject:self];
    v12 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointRecorderInterface];
    [connectionCopy setExportedInterface:v12];

    v13 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointSourceInterface];
    [connectionCopy setRemoteObjectInterface:v13];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000AC1C;
    v33[3] = &unk_10003CC90;
    objc_copyWeak(&v34, &location);
    objc_copyWeak(&v35, buf);
    [connectionCopy setInvalidationHandler:v33];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000AD74;
    v31[3] = &unk_10003CCB8;
    objc_copyWeak(&v32, &location);
    [connectionCopy setInterruptionHandler:v31];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AE28;
    block[3] = &unk_10003C9D8;
    block[4] = self;
    v15 = connectionCopy;
    v30 = v15;
    dispatch_async(connectionQueue, block);
    [v15 resume];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    goto LABEL_12;
  }

  if (self->_endpointConsumerListener == listenerCopy)
  {
    v16 = sub_1000124D8(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer Received new endpoint consumer connection: %@", buf, 0xCu);
    }

    [connectionCopy setExportedObject:self];
    v17 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointProviderInterface];
    [connectionCopy setExportedInterface:v17];

    v18 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointConsumerInterface];
    [connectionCopy setRemoteObjectInterface:v18];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000AE34;
    v26[3] = &unk_10003CC90;
    objc_copyWeak(&v27, &location);
    objc_copyWeak(&v28, buf);
    [connectionCopy setInvalidationHandler:v26];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000AF8C;
    v24[3] = &unk_10003CCB8;
    objc_copyWeak(&v25, &location);
    [connectionCopy setInterruptionHandler:v24];
    v19 = self->_connectionQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000B040;
    v22[3] = &unk_10003C9D8;
    v22[4] = self;
    v20 = connectionCopy;
    v23 = v20;
    dispatch_async(v19, v22);
    [v20 resume];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)listenerEndpointForIdentifer:(id)identifer reply:(id)reply
{
  identiferCopy = identifer;
  replyCopy = reply;
  endpointQueue = self->_endpointQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B110;
  block[3] = &unk_10003CB40;
  block[4] = self;
  v12 = identiferCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = identiferCopy;
  dispatch_async(endpointQueue, block);
}

- (void)listenerEndpointDidChange:(id)change forIdentifier:(id)identifier
{
  changeCopy = change;
  identifierCopy = identifier;
  v8 = sub_1000124D8(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[MapsConnectionBrokerServer listenerEndpointDidChange:forIdentifier:]";
    v17 = 2112;
    v18 = changeCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer %s %@ %@", buf, 0x20u);
  }

  endpointQueue = self->_endpointQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B2D4;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v13 = identifierCopy;
  v14 = changeCopy;
  v10 = changeCopy;
  v11 = identifierCopy;
  dispatch_async(endpointQueue, block);
}

@end