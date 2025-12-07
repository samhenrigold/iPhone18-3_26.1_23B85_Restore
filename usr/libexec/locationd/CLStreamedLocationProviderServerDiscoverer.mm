@interface CLStreamedLocationProviderServerDiscoverer
+ (BOOL)iOSSourceVersionNewEnough:(id *)enough;
+ (BOOL)macOSSourceVersionNewEnough:(id *)enough;
+ (BOOL)validateRemoteDeviceForStreaming:(id)streaming;
- (id)deviceWithEffectiveID:(id)d;
- (id)initOnQueue:(id)queue;
- (void)dealloc;
- (void)findCandidateServersWithCompletion:(id)completion;
- (void)invalidate;
- (void)invalidateAndReleaseProbeClients;
@end

@implementation CLStreamedLocationProviderServerDiscoverer

- (id)initOnQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = CLStreamedLocationProviderServerDiscoverer;
  v4 = [(CLStreamedLocationProviderServerDiscoverer *)&v9 init];
  if (v4)
  {
    v4->_workQ = dispatch_queue_create("CLStreamedLocationProviderServerDiscoverer.workQueue", 0);
    v4->_requestQ = dispatch_queue_create("CLStreamedLocationProviderServerDiscoverer.requestQueue", 0);
    v5 = objc_alloc_init(RPCompanionLinkClient);
    v4->_nearbyDeviceListener = v5;
    sub_10001A3E8(v5, v6);
    if (sub_100717D04())
    {
      [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setFlags:1];
      v7 = 4;
    }

    else
    {
      v7 = 65538;
    }

    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setControlFlags:v7];
    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setDispatchQueue:queue];
    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setDeviceFoundHandler:&stru_102456648];
    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener setDeviceLostHandler:&stru_102456668];
    [(RPCompanionLinkClient *)v4->_nearbyDeviceListener activateWithCompletion:&stru_1024566A8];
  }

  return v4;
}

- (void)dealloc
{
  [(CLStreamedLocationProviderServerDiscoverer *)self invalidate];
  v3.receiver = self;
  v3.super_class = CLStreamedLocationProviderServerDiscoverer;
  [(CLStreamedLocationProviderServerDiscoverer *)&v3 dealloc];
}

- (void)invalidate
{
  [(RPCompanionLinkClient *)self->_nearbyDeviceListener invalidate];

  self->_nearbyDeviceListener = 0;

  [(CLStreamedLocationProviderServerDiscoverer *)self invalidateAndReleaseProbeClients];
}

- (void)invalidateAndReleaseProbeClients
{
  probeClients = self->_probeClients;
  if (probeClients)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(probeClients, a2, &v8, v12, 16);
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(probeClients);
          }

          [*(*(&v8 + 1) + 8 * v7) invalidate];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(probeClients);
      }

      while (v5);
    }
  }

  self->_probeClients = 0;
}

- (id)deviceWithEffectiveID:(id)d
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeDevices = [(RPCompanionLinkClient *)[(CLStreamedLocationProviderServerDiscoverer *)self nearbyDeviceListener] activeDevices];
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(activeDevices);
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(activeDevices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v9 "effectiveIdentifier")])
        {
          if (qword_1025D47B0 != -1)
          {
            sub_10188FE40();
          }

          v10 = qword_1025D47B8;
          if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
          {
            uTF8String = [d UTF8String];
            *buf = 68289283;
            v18 = 0;
            v19 = 2082;
            v20 = "";
            v21 = 2081;
            v22 = uTF8String;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Multiclient found an active device with effective ID, effectiveID:%{private, location:escape_only}s}", buf, 0x1Cu);
          }

          return v9;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(activeDevices);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

+ (BOOL)iOSSourceVersionNewEnough:(id *)enough
{
  if (enough->var0 < 16)
  {
    return 0;
  }

  if (enough->var0 == 16)
  {
    return enough->var1 > 3;
  }

  return 1;
}

+ (BOOL)macOSSourceVersionNewEnough:(id *)enough
{
  if (enough->var0 < 14)
  {
    return 0;
  }

  if (enough->var0 == 14)
  {
    return enough->var1 > 3;
  }

  return 1;
}

+ (BOOL)validateRemoteDeviceForStreaming:(id)streaming
{
  statusFlags = [streaming statusFlags];
  v5 = [objc_msgSend(streaming "model")];
  if (v5)
  {
    sub_10001A3E8(v5, v6);
    if (!sub_100717D04())
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE2C();
      }

      v9 = qword_1025D47B8;
      if (!os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *v27 = 2082;
      *&v27[2] = "";
      v10 = "{msg%{public}.0s:#Multiclient not a VM, so not using mac}";
      v11 = v9;
      v12 = 18;
      goto LABEL_42;
    }

    if (streaming)
    {
      objc_msgSend_operatingSystemVersion(streaming);
    }

    else
    {
      *buf = 0;
      *v27 = 0;
      *&v27[8] = 0;
    }

    if (![CLStreamedLocationProviderServerDiscoverer macOSSourceVersionNewEnough:buf])
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }

      v16 = qword_1025D47B8;
      if (!os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      name = [streaming name];
      if (streaming)
      {
        objc_msgSend_operatingSystemVersion(streaming);
        v18 = v25;
        objc_msgSend_operatingSystemVersion(streaming);
        v19 = v24;
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      *buf = 68289795;
      *&buf[4] = 0;
      *v27 = 2082;
      *&v27[2] = "";
      *&v27[10] = 2113;
      *&v27[12] = name;
      v28 = 2050;
      model = v18;
      v30 = 2050;
      v31 = v19;
      v10 = "{msg%{public}.0s:#Multiclient macOS device running too-old software, ignoring, name:%{private, location:escape_only}@, major:%{public}ld, minor:%{public}ld}";
      goto LABEL_41;
    }

    return 1;
  }

  v7 = [objc_msgSend(streaming "model")];
  if (v7)
  {
    if (streaming)
    {
      objc_msgSend_operatingSystemVersion(streaming);
    }

    else
    {
      *buf = 0;
      *v27 = 0;
      *&v27[8] = 0;
    }

    if (![CLStreamedLocationProviderServerDiscoverer iOSSourceVersionNewEnough:buf])
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }

      v16 = qword_1025D47B8;
      if (!os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      name2 = [streaming name];
      if (streaming)
      {
        objc_msgSend_operatingSystemVersion(streaming);
        v21 = v25;
        objc_msgSend_operatingSystemVersion(streaming);
        v22 = v24;
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      *buf = 68289795;
      *&buf[4] = 0;
      *v27 = 2082;
      *&v27[2] = "";
      *&v27[10] = 2113;
      *&v27[12] = name2;
      v28 = 2050;
      model = v21;
      v30 = 2050;
      v31 = v22;
      v10 = "{msg%{public}.0s:#Multiclient iOS device running too-old software, ignoring, name:%{private, location:escape_only}@, major:%{public}ld, minor:%{public}ld}";
LABEL_41:
      v11 = v16;
      v12 = 48;
LABEL_42:
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
      return 0;
    }

    return 1;
  }

  sub_10001A3E8(v7, v8);
  if (!sub_100717D04() || (statusFlags & 0x1000000) == 0)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE2C();
    }

    v15 = qword_1025D47B8;
    if (!os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 68289795;
    *&buf[4] = 0;
    *v27 = 2082;
    *&v27[2] = "";
    *&v27[10] = 2113;
    *&v27[12] = [streaming name];
    v28 = 2114;
    model = [streaming model];
    v30 = 1026;
    LODWORD(v31) = (statusFlags >> 24) & 1;
    v10 = "{msg%{public}.0s:#Multiclient candidate is neither a phone nor a mac host, skipping, name:%{private, location:escape_only}@, model:%{public, location:escape_only}@, USB?:%{public}hhd}";
    v11 = v15;
    v12 = 44;
    goto LABEL_42;
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10188FE2C();
  }

  v13 = qword_1025D47B8;
  v14 = 1;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *v27 = 2082;
    *&v27[2] = "";
    *&v27[10] = 2113;
    *&v27[12] = [streaming name];
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient accepting this device because it looks like it's our host, name:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  return v14;
}

- (void)findCandidateServersWithCompletion:(id)completion
{
  v29 = +[NSMutableDictionary dictionary];
  v28 = +[NSMutableDictionary dictionary];
  v4 = [v28 setObject:objc_msgSend(-[RPCompanionLinkClient localDevice](-[CLStreamedLocationProviderServerDiscoverer nearbyDeviceListener](self forKeyedSubscript:{"nearbyDeviceListener"), "localDevice"), "effectiveIdentifier"), @"kCLLocationSTreamingMessageRapportDeviceIDKey"}];
  if (!self->_probeClients)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(-[RPCompanionLinkClient activeDevices](-[CLStreamedLocationProviderServerDiscoverer nearbyDeviceListener](self, "nearbyDeviceListener"), "activeDevices"), "count")}];
    self->_probeClients = v4;
  }

  sub_10001A3E8(v4, v5);
  v32 = 0u;
  if (sub_100717D04())
  {
    v6 = 0x380000103C04;
  }

  else
  {
    v6 = 532482;
  }

  v33 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  activeDevices = [(RPCompanionLinkClient *)[(CLStreamedLocationProviderServerDiscoverer *)self nearbyDeviceListener] activeDevices];
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(activeDevices);
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v26 = RPOptionStatusFlags;
    v27 = RPOptionTimeoutSeconds;
    v25 = RPOptionAllowUnauthenticated;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(activeDevices);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        statusFlags = [v12 statusFlags];
        v14 = statusFlags;
        sub_10001A3E8(statusFlags, v15);
        if (!sub_100717D04() || (v14 & 0x1000000) != 0)
        {
          if ([CLStreamedLocationProviderServerDiscoverer validateRemoteDeviceForStreaming:v12])
          {
            v19 = objc_alloc_init(RPCompanionLinkClient);
            v20 = [v19 setDispatchQueue:{-[CLStreamedLocationProviderServerDiscoverer workQ](self, "workQ")}];
            sub_10001A3E8(v20, v21);
            if (sub_100717D04())
            {
              [v19 setControlFlags:v6];
              [v19 setFlags:1];
              v38[0] = v27;
              v38[1] = v25;
              v39[0] = &off_10254E960;
              v39[1] = &__kCFBooleanTrue;
              v38[2] = v26;
              v39[2] = [NSNumber numberWithUnsignedLongLong:v6];
              v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
            }

            else
            {
              [v19 setControlFlags:2];
              v36[0] = v27;
              v36[1] = v26;
              v37[0] = &off_10254E960;
              v37[1] = [NSNumber numberWithUnsignedLongLong:v6];
              v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
              [v19 setControlFlags:{objc_msgSend(v19, "controlFlags") | 0x100}];
            }

            [v19 setDestinationDevice:v12];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_10048F630;
            v31[3] = &unk_102456720;
            v31[4] = v19;
            v31[5] = self;
            v31[6] = v28;
            v31[7] = v22;
            v31[8] = v29;
            [v19 activateWithCompletion:v31];
            [(NSMutableArray *)[(CLStreamedLocationProviderServerDiscoverer *)self probeClients] addObject:v19];
          }
        }

        else
        {
          if (qword_1025D47B0 != -1)
          {
            sub_10188FE40();
          }

          v16 = qword_1025D47B8;
          if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
          {
            name = [v12 name];
            model = [v12 model];
            *buf = 68289538;
            v41 = 0;
            v42 = 2082;
            v43 = "";
            v44 = 2114;
            v45 = name;
            v46 = 2114;
            v47 = model;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Multiclient skipping this device because it's not the host, name:%{public, location:escape_only}@, model:%{public, location:escape_only}@}", buf, 0x26u);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(activeDevices);
    }

    while (v9);
  }

  v23 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10048FC0C;
  block[3] = &unk_102456748;
  block[4] = v29;
  block[5] = completion;
  dispatch_after(v23, [(RPCompanionLinkClient *)[(CLStreamedLocationProviderServerDiscoverer *)self nearbyDeviceListener] dispatchQueue], block);
}

@end