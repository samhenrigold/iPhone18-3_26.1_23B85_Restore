@interface W5RapportServer
- (BOOL)_configureCompaionLinkClient;
- (W5RapportServer)initWithRequestListeners:(id)listeners;
- (void)_registerRequestsForListener:(id)listener rapportClient:(id)client;
- (void)invalidateDiscoveryClient;
@end

@implementation W5RapportServer

- (W5RapportServer)initWithRequestListeners:(id)listeners
{
  listenersCopy = listeners;
  if (_os_feature_enabled_impl())
  {
    if ((+[W5FeatureAvailability diagnosticsModeEnabled]& 1) != 0)
    {
      v12.receiver = self;
      v12.super_class = W5RapportServer;
      self = [(W5RapportServer *)&v12 init];
      if (!self)
      {
        goto LABEL_17;
      }

      v6 = dispatch_queue_create("com.apple.wifi.W5RapportServer", 0);
      queue = self->_queue;
      self->_queue = v6;

      if (!self->_queue)
      {
        goto LABEL_17;
      }

      objc_storeStrong(&self->_listeners, listeners);
      if (self->_listeners)
      {
        if ([(W5RapportServer *)self _configureCompaionLinkClient])
        {
          goto LABEL_7;
        }

        v9 = sub_100098A04();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315650;
          v14 = "[W5RapportServer initWithRequestListeners:]";
          v15 = 2080;
          v16 = "W5RapportServer.m";
          v17 = 1024;
          v18 = 56;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) failed to configure link client", &v13, 28);
        }
      }

      else
      {
        v9 = sub_100098A04();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315650;
          v14 = "[W5RapportServer initWithRequestListeners:]";
          v15 = 2080;
          v16 = "W5RapportServer.m";
          v17 = 1024;
          v18 = 54;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) rapport listeners is nil", &v13, 28);
        }
      }
    }

    else
    {
      v9 = sub_100098A04();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "[W5RapportServer initWithRequestListeners:]";
        v15 = 2080;
        v16 = "W5RapportServer.m";
        v17 = 1024;
        v18 = 44;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) rapport server is not available.", &v13, 28);
      }
    }
  }

  else
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[W5RapportServer initWithRequestListeners:]";
      v15 = 2080;
      v16 = "W5RapportServer.m";
      v17 = 1024;
      v18 = 43;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) rapport server feature flag is off.", &v13, 28);
    }
  }

LABEL_17:
  v10 = sub_100098A04();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[W5RapportServer initWithRequestListeners:]";
    v15 = 2080;
    v16 = "W5RapportServer.m";
    v17 = 1024;
    v18 = 63;
    LODWORD(v11) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] %s (%s:%u) init error!", &v13, v11, LODWORD(v12.receiver));
  }

  self = 0;
LABEL_7:

  return self;
}

- (BOOL)_configureCompaionLinkClient
{
  v3 = objc_alloc_init(RPCompanionLinkClient);
  v4 = v3;
  if (v3)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10008BF78;
    v17[3] = &unk_1000E1270;
    v17[4] = self;
    [v3 setInvalidationHandler:v17];
    [v4 setDispatchQueue:self->_queue];
    [v4 setServiceType:@"com.apple.wifivelocityd.rapportWake"];
    v5 = sub_100098A04();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "[W5RapportServer _configureCompaionLinkClient]";
      v21 = 2080;
      v22 = "W5RapportServer.m";
      v23 = 1024;
      v24 = 87;
      LODWORD(v12) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v5, 0, "[wifivelocity] %s (%s:%u) companion link client activated successfully", &v19, v12, v13);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    listeners = [(W5RapportServer *)self listeners];
    v7 = [listeners countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(listeners);
          }

          [(W5RapportServer *)self _registerRequestsForListener:*(*(&v13 + 1) + 8 * v10) rapportClient:v4];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [listeners countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }

    [(W5RapportServer *)self setRapportClient:v4];
  }

  return v4 != 0;
}

- (void)_registerRequestsForListener:(id)listener rapportClient:(id)client
{
  listenerCopy = listener;
  clientCopy = client;
  v8 = clientCopy;
  if (listenerCopy)
  {
    if (clientCopy)
    {
      v9 = [listenerCopy conformsToProtocol:&OBJC_PROTOCOL___W5PeerRequestListener];
      v10 = sub_100098A04();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          identifier = [listenerCopy identifier];
          v16 = 138543618;
          v17 = listenerCopy;
          v18 = 2114;
          v19 = identifier;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] Registering listener='%{public}@' for identifier='%{public}@'", &v16, 22);
        }

        identifier2 = [listenerCopy identifier];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10008C2F0;
        v14[3] = &unk_1000E34B0;
        v15 = listenerCopy;
        [v8 registerRequestID:identifier2 options:0 handler:v14];

        [(RPCompanionLinkClient *)self->_rapportClient activateWithCompletion:&stru_1000E34D0];
        v10 = v15;
      }

      else if (v11)
      {
        v16 = 138543362;
        v17 = listenerCopy;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] listener='%{public}@' doesn't conform to protocol", &v16, 12);
      }
    }

    else
    {
      v10 = sub_100098A04();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] nil rapport client", &v16, 2);
      }
    }
  }

  else
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] nil rapport listener", &v16, 2);
    }
  }
}

- (void)invalidateDiscoveryClient
{
  [(RPCompanionLinkClient *)self->_rapportClient invalidate];
  rapportClient = self->_rapportClient;
  self->_rapportClient = 0;
}

@end