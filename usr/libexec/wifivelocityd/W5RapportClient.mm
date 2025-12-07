@interface W5RapportClient
- (BOOL)_configureDiscoveryClient;
- (W5RapportClient)init;
- (id)sendMessageToDevice:(id)device request:(id)request;
- (void)_handleDeviceFound:(id)found;
- (void)_handleDeviceLost:(id)lost;
- (void)_invalidateRapportClient;
- (void)startDiscoveringDevices;
- (void)stopDiscoveryingDevices;
@end

@implementation W5RapportClient

- (W5RapportClient)init
{
  v9.receiver = self;
  v9.super_class = W5RapportClient;
  v2 = [(W5RapportClient *)&v9 init];
  if (v2)
  {
    if ((+[W5FeatureAvailability diagnosticsModeEnabled]& 1) != 0)
    {
      v3 = dispatch_queue_create("com.apple.wifi.W5RapportClient", 0);
      queue = v2->_queue;
      v2->_queue = v3;

      if (v2->_queue)
      {
        v2->_discoveringDevices = 0;
        return v2;
      }
    }

    else
    {
      v6 = sub_100098A04();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = "[W5RapportClient init]";
        v12 = 2080;
        v13 = "W5RapportClient.m";
        v14 = 1024;
        v15 = 59;
        LODWORD(v8) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v6, 0, "[wifivelocity] %s (%s:%u) rapport client is not available", &v10, v8, LODWORD(v9.receiver));
      }
    }
  }

  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[W5RapportClient init]";
    v12 = 2080;
    v13 = "W5RapportClient.m";
    v14 = 1024;
    v15 = 72;
    LODWORD(v8) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) init error!", &v10, v8, LODWORD(v9.receiver));
  }

  return 0;
}

- (BOOL)_configureDiscoveryClient
{
  discoveryClient = [(W5RapportClient *)self discoveryClient];

  if (discoveryClient)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = objc_alloc_init(RPCompanionLinkClient);
    v4 = v5 != 0;
    if (v5)
    {
      queue = [(W5RapportClient *)self queue];
      [v5 setDispatchQueue:queue];

      [v5 setControlFlags:{objc_msgSend(v5, "controlFlags") | 0x818126}];
      [v5 setServiceType:@"com.apple.wifivelocityd.rapportWake"];
      objc_initWeak(&location, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10004CC0C;
      v16[3] = &unk_1000E2950;
      objc_copyWeak(&v17, &location);
      [v5 setInvalidationHandler:v16];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10004CD08;
      v14[3] = &unk_1000E29A0;
      v14[4] = self;
      objc_copyWeak(&v15, &location);
      [v5 setDeviceFoundHandler:v14];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10004CE28;
      v12[3] = &unk_1000E29C8;
      objc_copyWeak(&v13, &location);
      [v5 setDeviceLostHandler:v12];
      [v5 setDeviceChangedHandler:&stru_1000E2A08];
      [v5 setLocalDeviceUpdatedHandler:&stru_1000E2A48];
      v7 = sub_100098A04();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = "[W5RapportClient _configureDiscoveryClient]";
        v21 = 2080;
        v22 = "W5RapportClient.m";
        v23 = 1024;
        v24 = 125;
        LODWORD(v10) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) companion link client activated successfully", &v19, v10, v11);
      }

      [(W5RapportClient *)self setDiscoveryClient:v5];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = "[W5RapportClient _configureDiscoveryClient]";
        v21 = 2080;
        v22 = "W5RapportClient.m";
        v23 = 1024;
        v24 = 85;
        LODWORD(v10) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) failed to init rapport client", &v19, v10, v11);
      }
    }
  }

  return v4;
}

- (void)_invalidateRapportClient
{
  discoveryClient = [(W5RapportClient *)self discoveryClient];
  [discoveryClient invalidate];

  [(W5RapportClient *)self setDiscoveryClient:0];
}

- (void)_handleDeviceFound:(id)found
{
  foundCopy = found;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (([foundCopy statusFlags] & 2) != 0)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if (([foundCopy statusFlags] & 4) != 0)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    serviceTypes = [foundCopy serviceTypes];
    if ([serviceTypes containsObject:@"com.apple.wifivelocityd.rapportWake"])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (foundCopy)
    {
      objc_msgSend_operatingSystemVersion(foundCopy);
      v10 = v22;
      objc_msgSend_operatingSystemVersion(foundCopy);
      v11 = v20;
      objc_msgSend_operatingSystemVersion(foundCopy);
      v12 = v18;
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v10 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v20 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
    }

    v13 = [NSString stringWithFormat:@"%ld.%ld.%ld", v10, v11, v12, v16, v17, v18, v19, v20, v21, v22, v23, v24];
    v26 = "[W5RapportClient _handleDeviceFound:]";
    v27 = 2080;
    v25 = 136316930;
    v28 = "W5RapportClient.m";
    v29 = 1024;
    v30 = 145;
    v31 = 2114;
    v32 = foundCopy;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v36 = v7;
    v37 = 2112;
    v38 = v9;
    v39 = 2112;
    v40 = v13;
    LODWORD(v15) = 78;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v5, 0, "[wifivelocity] %s (%s:%u) rapport device found='%{public}@', BLE: %@, Infra: %@, hasVelocityServiceType: %@, osVersion: %@", &v25, v15);
  }

  deviceFoundHandler = self->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, foundCopy);
  }
}

- (void)_handleDeviceLost:(id)lost
{
  lostCopy = lost;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[W5RapportClient _handleDeviceLost:]";
    v10 = 2080;
    v11 = "W5RapportClient.m";
    v12 = 1024;
    v13 = 154;
    v14 = 2114;
    v15 = lostCopy;
    v7 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v5, 0, "[wifivelocity] %s (%s:%u) rapport device lost='%{public}@'", &v8, v7);
  }

  deviceFoundHandler = self->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, lostCopy);
  }
}

- (void)startDiscoveringDevices
{
  if (self->_discoveringDevices)
  {
    v2 = sub_100098A04();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315650;
      *&location[4] = "[W5RapportClient startDiscoveringDevices]";
      v12 = 2080;
      v13 = "W5RapportClient.m";
      v14 = 1024;
      v15 = 164;
      LODWORD(v7) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v2, 0, "[wifivelocity] %s (%s:%u) discovery is already active", location, v7, v8);
    }

LABEL_11:

    return;
  }

  _configureDiscoveryClient = [(W5RapportClient *)self _configureDiscoveryClient];
  v2 = sub_100098A04();
  v5 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if ((_configureDiscoveryClient & 1) == 0)
  {
    if (v5)
    {
      *location = 136315650;
      *&location[4] = "[W5RapportClient startDiscoveringDevices]";
      v12 = 2080;
      v13 = "W5RapportClient.m";
      v14 = 1024;
      v15 = 169;
      LODWORD(v7) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v2, 0, "[wifivelocity] %s (%s:%u) failed to configure discovery client", location, v7, v8);
    }

    goto LABEL_11;
  }

  if (v5)
  {
    *location = 136315650;
    *&location[4] = "[W5RapportClient startDiscoveringDevices]";
    v12 = 2080;
    v13 = "W5RapportClient.m";
    v14 = 1024;
    v15 = 173;
    LODWORD(v7) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v2, 0, "[wifivelocity] %s (%s:%u) starting device discovery", location, v7, v8);
  }

  self->_discoveringDevices = 1;
  objc_initWeak(location, self);
  discoveryClient = [(W5RapportClient *)self discoveryClient];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004D610;
  v9[3] = &unk_1000E2A70;
  objc_copyWeak(&v10, location);
  [discoveryClient activateWithCompletion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
}

- (void)stopDiscoveryingDevices
{
  discoveringDevices = self->_discoveringDevices;
  v4 = sub_100098A04();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (discoveringDevices)
  {
    if (v5)
    {
      v6 = 136315650;
      v7 = "[W5RapportClient stopDiscoveryingDevices]";
      v8 = 2080;
      v9 = "W5RapportClient.m";
      v10 = 1024;
      v11 = 189;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v4, 0, "[wifivelocity] %s (%s:%u) stoping device discovery", &v6, 28);
    }

    [(W5RapportClient *)self _invalidateRapportClient];
    self->_discoveringDevices = 0;
  }

  else
  {
    if (v5)
    {
      v6 = 136315650;
      v7 = "[W5RapportClient stopDiscoveryingDevices]";
      v8 = 2080;
      v9 = "W5RapportClient.m";
      v10 = 1024;
      v11 = 193;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v4, 0, "[wifivelocity] %s (%s:%u) discovery is not active", &v6, 28);
    }
  }
}

- (id)sendMessageToDevice:(id)device request:(id)request
{
  deviceCopy = device;
  requestCopy = request;
  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setDestinationDevice:deviceCopy];
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136316162;
    *&location[4] = "[W5RapportClient sendMessageToDevice:request:]";
    v24 = 2080;
    v25 = "W5RapportClient.m";
    v26 = 1024;
    v27 = 204;
    v28 = 2112;
    v29 = requestCopy;
    v30 = 2112;
    v31 = deviceCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) [Rapport] Request: %@, Destination: %@", location, 48);
  }

  model = [deviceCopy model];
  if ([model containsString:@"Mac"])
  {
  }

  else
  {
    peer = [requestCopy peer];
    model2 = [peer model];
    v12 = [model2 containsString:@"Mac"];

    if ((v12 & 1) == 0)
    {
      [v7 setServiceType:@"com.apple.wifivelocityd.rapportWake"];
    }
  }

  v13 = ([requestCopy controlFlags] & 1) == 0;
  controlFlags = [v7 controlFlags];
  v15 = 6291712;
  if (v13)
  {
    v15 = 4227334;
  }

  [v7 setControlFlags:v15 | controlFlags];
  [v7 setInvalidationHandler:&stru_1000E2A90];
  objc_initWeak(location, v7);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004DC74;
  v19[3] = &unk_1000E2AE0;
  objc_copyWeak(&v22, location);
  v16 = requestCopy;
  v20 = v16;
  v17 = deviceCopy;
  v21 = v17;
  [v7 activateWithCompletion:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(location);

  return 0;
}

@end