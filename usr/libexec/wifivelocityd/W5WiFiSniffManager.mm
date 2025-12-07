@interface W5WiFiSniffManager
- (BOOL)__isCancelled;
- (W5WiFiSniffManager)initWithStatusManager:(id)manager andUserNotificationManager:(id)notificationManager;
- (id)__pendingRequestWithUUID:(id)d;
- (id)fetchFileHandleForInterface:(id)interface;
- (pcap)openPcapForInterface:(id)interface datalinkType:(int)type;
- (void)BhoundBpfFileDescriptor:(id)descriptor errorOccurred:(id)occurred;
- (void)BhoundBpfFileDescriptor:(id)descriptor receivedPacket:(id)packet;
- (void)__nextRequest;
- (void)__setupWatchdogTask;
- (void)addRequest:(id)request;
- (void)cancelRequestWithUUID:(id)d reply:(id)reply;
- (void)dealloc;
- (void)startSniffingWithRequest:(id)request interfaceName:(id)name reply:(id)reply;
- (void)stopSniffingActiveRequestWithError:(id)error;
- (void)teardownAndNotify:(id)notify;
@end

@implementation W5WiFiSniffManager

- (W5WiFiSniffManager)initWithStatusManager:(id)manager andUserNotificationManager:(id)notificationManager
{
  v12.receiver = self;
  v12.super_class = W5WiFiSniffManager;
  v6 = [(W5WiFiSniffManager *)&v12 init];
  v7 = v6;
  if (!manager || !v6 || ((v6->_status = manager, !notificationManager) ? (v8 = 0) : (v8 = notificationManager), (v7->_notification = v8, v9 = dispatch_queue_create("com.apple.wifivelocity.wifi-sniffer", 0), (v7->_queue = v9) == 0) || (v10 = objc_alloc_init(NSMutableArray), (v7->_pendingRequests = v10) == 0)))
  {

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  notification = self->_notification;
  if (notification)
  {
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v5.receiver = self;
  v5.super_class = W5WiFiSniffManager;
  [(W5WiFiSniffManager *)&v5 dealloc];
}

- (void)addRequest:(id)request
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100057F8C;
  v4[3] = &unk_1000E1C98;
  v4[4] = self;
  v4[5] = request;
  dispatch_async(queue, v4);
}

- (id)__pendingRequestWithUUID:(id)d
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pendingRequests = self->_pendingRequests;
  v5 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(pendingRequests);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "uuid")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)cancelRequestWithUUID:(id)d reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005815C;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)__setupWatchdogTask
{
  self->_watchdogTask = 0;
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"while kill -0 %d; do sleep 10; done; kill -9 %d;", [+[NSProcessInfo processIdentifier] processInfo];
  v5[0] = @"-c";
  v5[1] = v3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100058540;
  v4[3] = &unk_1000E1D10;
  v4[4] = self;
  [NSTask runTaskWithLaunchPath:@"/bin/sh" arguments:[NSArray arrayWithObjects:v5 count:2] launchHandler:v4 reply:0];
}

- (void)__nextRequest
{
  if (!self->_activeRequest && [(NSMutableArray *)self->_pendingRequests count])
  {
    self->_activeRequest = objc_alloc_init(W5WiFiActiveSnifferRequest);
    -[W5WiFiActiveSnifferRequest setRequestInfo:](self->_activeRequest, "setRequestInfo:", [-[NSMutableArray firstObject](self->_pendingRequests "firstObject")]);
    v3 = self->_activeRequest;
    [(NSMutableArray *)self->_pendingRequests removeObjectAtIndex:0];
    v27[4] = self;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v29 = sub_100058ED4;
    v30 = &unk_1000E2BE8;
    selfCopy = self;
    v26[4] = self;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000591D0;
    v27[3] = &unk_1000E2BE8;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10005938C;
    v26[3] = &unk_1000E2C10;
    interfaceName = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
    path = [(NSURL *)[(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] outputFile] path];
    if (!interfaceName || (v6 = path) == 0)
    {
      v32 = NSLocalizedFailureReasonErrorKey;
      v33 = @"W5ParamErr";
      v15 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1]];
      v29(v28, 0, v15);
      return;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] setTcpDump:1];
    }

    if (!objc_opt_class())
    {
      [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] setTcpDump:1];
    }

    if ([(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] monitorMode])
    {
      [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] disassociate];
      [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] setChannel:[(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] channel]];
      v7 = sub_100098A04();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        channel = [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] channel];
        v41 = 136315906;
        v42 = "[W5WiFiSniffManager __nextRequest]";
        v43 = 2080;
        v44 = "W5WiFiSniffManager.m";
        v45 = 1024;
        v46 = 469;
        v47 = 2114;
        v48 = channel;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) Setting Channel: %{public}@", &v41, 38);
      }

      tcpDump = [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] tcpDump];
      v10 = sub_100098A04();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (tcpDump)
      {
        if (v11)
        {
          v41 = 136315650;
          v42 = "[W5WiFiSniffManager __nextRequest]";
          v43 = 2080;
          v44 = "W5WiFiSniffManager.m";
          v45 = 1024;
          v46 = 472;
          LODWORD(v25) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] %s (%s:%u) Sniff via tcp dump", &v41, v25, LODWORD(v26[0]));
        }

        if ([(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] noAutoStop])
        {
          v12 = objc_alloc_init(NSMutableArray);
          v40[0] = @"-i";
          v40[1] = interfaceName;
          v40[2] = @"-I";
          v40[3] = @"-G";
          v40[4] = [NSString stringWithFormat:@"%ld", [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] rotationInterval]];
          [(NSArray *)v12 addObjectsFromArray:[NSArray arrayWithObjects:v40 count:5]];
          if ([(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] maxSize]>= 1)
          {
            v39[0] = @"-C";
            v39[1] = [NSString stringWithFormat:@"%ld", [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] maxSize]];
            [(NSArray *)v12 addObjectsFromArray:[NSArray arrayWithObjects:v39 count:2]];
          }

          if ([(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] maxFiles]>= 1)
          {
            v38[0] = @"-W";
            v38[1] = [NSString stringWithFormat:@"%ld", [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] maxFiles]];
            [(NSArray *)v12 addObjectsFromArray:[NSArray arrayWithObjects:v38 count:2]];
          }

          if ([(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] snaplen]>= 1)
          {
            v37[0] = @"-s";
            v37[1] = [NSString stringWithFormat:@"%ld", [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] snaplen]];
            [(NSArray *)v12 addObjectsFromArray:[NSArray arrayWithObjects:v37 count:2]];
          }

          v36[0] = @"-w";
          v36[1] = v6;
          [(NSArray *)v12 addObjectsFromArray:[NSArray arrayWithObjects:v36 count:2]];
          [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] duration];
          v14 = v12;
          goto LABEL_36;
        }

        v35[0] = @"-i";
        v35[1] = interfaceName;
        v35[2] = @"-I";
        v35[3] = @"-G";
        [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] duration];
        LODWORD(v24) = vcvtpd_s64_f64(v23);
        v35[4] = [NSString stringWithFormat:@"%d", v24];
        v35[5] = @"-W";
        v35[6] = @"1";
        v35[7] = @"-w";
        v35[8] = v6;
        v21 = v35;
        v22 = 9;
LABEL_35:
        v14 = [NSArray arrayWithObjects:v21 count:v22];
        v13 = 0.0;
LABEL_36:
        [NSTask runTaskWithLaunchPath:@"/usr/sbin/tcpdump" arguments:v14 timeout:v28 startBlock:0 updateBlock:v27 endBlock:v13];
        return;
      }

      if (v11)
      {
        v41 = 136315650;
        v42 = "[W5WiFiSniffManager __nextRequest]";
        v43 = 2080;
        v44 = "W5WiFiSniffManager.m";
        v45 = 1024;
        v46 = 488;
        LODWORD(v25) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] %s (%s:%u) Sniff via bhound", &v41, v25);
      }
    }

    else
    {
      tcpDump2 = [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] tcpDump];
      v17 = sub_100098A04();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (tcpDump2)
      {
        if (v18)
        {
          v41 = 136315650;
          v42 = "[W5WiFiSniffManager __nextRequest]";
          v43 = 2080;
          v44 = "W5WiFiSniffManager.m";
          v45 = 1024;
          v46 = 512;
          LODWORD(v25) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) Sniff via tcp dump", &v41, v25, LODWORD(v26[0]));
        }

        v34[0] = @"-q";
        v34[1] = @"-n";
        v34[2] = @"-i";
        v34[3] = interfaceName;
        v34[4] = @"-I";
        v34[5] = @"-G";
        [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] duration];
        LODWORD(v20) = vcvtpd_s64_f64(v19);
        v34[6] = [NSString stringWithFormat:@"%d", v20];
        v34[7] = @"-W";
        v34[8] = @"1";
        v34[9] = @"-w";
        v34[10] = v6;
        v21 = v34;
        v22 = 11;
        goto LABEL_35;
      }

      if (v18)
      {
        v41 = 136315650;
        v42 = "[W5WiFiSniffManager __nextRequest]";
        v43 = 2080;
        v44 = "W5WiFiSniffManager.m";
        v45 = 1024;
        v46 = 516;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) Sniff via bhound", &v41, 28);
      }
    }

    [(W5WiFiSniffManager *)self startSniffingWithRequest:[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] interfaceName:interfaceName reply:v26];
  }
}

- (BOOL)__isCancelled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000595A4;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)teardownAndNotify:(id)notify
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059664;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = notify;
  dispatch_async(queue, v4);
}

- (void)startSniffingWithRequest:(id)request interfaceName:(id)name reply:(id)reply
{
  [(W5WiFiActiveSnifferRequest *)self->_activeRequest setActiveFileHandle:[(W5WiFiSniffManager *)self fetchFileHandleForInterface:name]];
  if (![(W5WiFiActiveSnifferRequest *)self->_activeRequest activeFileHandle])
  {
    v20 = sub_100098A04();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "[W5WiFiSniffManager startSniffingWithRequest:interfaceName:reply:]";
      v29 = 2080;
      v30 = "W5WiFiSniffManager.m";
      v31 = 1024;
      v32 = 589;
      LODWORD(v21) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s (%s:%u) Could not open bpf interface", &v27, v21, v23);
    }

    if (!reply)
    {
      return;
    }

    v39 = NSLocalizedFailureReasonErrorKey;
    v40 = @"W5ParamErr";
    v18 = &v40;
    v19 = &v39;
LABEL_16:
    v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:[NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:1]];
    goto LABEL_17;
  }

  -[W5WiFiActiveSnifferRequest setActiveBFD:](self->_activeRequest, "setActiveBFD:", [[BhoundBpfFileDescriptor alloc] initWithFileDescriptor:-[NSFileHandle fileDescriptor](-[W5WiFiActiveSnifferRequest activeFileHandle](self->_activeRequest datalinkType:"activeFileHandle") delegate:"fileDescriptor") delegateQueue:{127, self, self->_queue}]);
  -[W5WiFiActiveSnifferRequest setActivePCap:](self->_activeRequest, "setActivePCap:", [[BhoundPcap alloc] initWithSaveFileName:objc_msgSend(objc_msgSend(request dataLinkTypeValue:"outputFile") sizeLimit:"path") countLimit:127 circularSaveFiles:0 timestampSaveFiles:{0, 0, 0}]);
  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    fileDescriptor = [(NSFileHandle *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest activeFileHandle] fileDescriptor];
    activeBFD = [(W5WiFiActiveSnifferRequest *)self->_activeRequest activeBFD];
    activePCap = [(W5WiFiActiveSnifferRequest *)self->_activeRequest activePCap];
    v27 = 136316418;
    v28 = "[W5WiFiSniffManager startSniffingWithRequest:interfaceName:reply:]";
    v29 = 2080;
    v30 = "W5WiFiSniffManager.m";
    v31 = 1024;
    v32 = 599;
    v33 = 1024;
    v34 = fileDescriptor;
    v35 = 2114;
    v36 = activeBFD;
    v37 = 2114;
    v38 = activePCap;
    v22 = 54;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) ActiveFH descriptor %d, BFD %{public}@, PCAP %{public}@", &v27, v22);
  }

  if (![(W5WiFiActiveSnifferRequest *)self->_activeRequest activeBFD]|| ![(W5WiFiActiveSnifferRequest *)self->_activeRequest activePCap])
  {
    if (!reply)
    {
      return;
    }

    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"W5ParamErr";
    v18 = &v26;
    v19 = &v25;
    goto LABEL_16;
  }

  [request duration];
  if (v12 > 0.0)
  {
    [(W5WiFiActiveSnifferRequest *)self->_activeRequest setTimeoutTimer:dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue)];
    timeoutTimer = [(W5WiFiActiveSnifferRequest *)self->_activeRequest timeoutTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100059BEC;
    handler[3] = &unk_1000E1CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(timeoutTimer, handler);
    timeoutTimer2 = [(W5WiFiActiveSnifferRequest *)self->_activeRequest timeoutTimer];
    [request duration];
    v16 = dispatch_time(0, 1000000000 * v15);
    dispatch_source_set_timer(timeoutTimer2, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate([(W5WiFiActiveSnifferRequest *)self->_activeRequest timeoutTimer]);
  }

  [(BhoundBpfFileDescriptor *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest activeBFD] resume];
  if (reply)
  {
    v17 = 0;
LABEL_17:
    (*(reply + 2))(reply, v17);
  }
}

- (void)stopSniffingActiveRequestWithError:(id)error
{
  activeRequest = self->_activeRequest;
  if (activeRequest && [(W5WiFiActiveSnifferRequest *)activeRequest activeBFD])
  {
    [(BhoundBpfFileDescriptor *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest activeBFD] cancel];
    if ([(W5WiFiActiveSnifferRequest *)self->_activeRequest timeoutTimer]&& !dispatch_source_testcancel([(W5WiFiActiveSnifferRequest *)self->_activeRequest timeoutTimer]))
    {
      dispatch_source_cancel([(W5WiFiActiveSnifferRequest *)self->_activeRequest timeoutTimer]);
    }

    if ([(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] reply])
    {
      reply = [(W5WiFiSnifferRequest *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest requestInfo] reply];
      reply[2](reply, error);
    }

    [(BhoundPcap *)[(W5WiFiActiveSnifferRequest *)self->_activeRequest activePCap] shutdown];

    self->_activeRequest = 0;

    [(W5WiFiSniffManager *)self __nextRequest];
  }
}

- (id)fetchFileHandleForInterface:(id)interface
{
  v3 = [(W5WiFiSniffManager *)self openPcapForInterface:interface datalinkType:127];
  if (!v3)
  {
    return 0;
  }

  selectable_fd = pcap_get_selectable_fd(v3);
  if ((selectable_fd & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = [[NSFileHandle alloc] initWithFileDescriptor:selectable_fd closeOnDealloc:1];

  return v5;
}

- (void)BhoundBpfFileDescriptor:(id)descriptor receivedPacket:(id)packet
{
  if (packet && [(W5WiFiActiveSnifferRequest *)self->_activeRequest activePCap])
  {
    activePCap = [(W5WiFiActiveSnifferRequest *)self->_activeRequest activePCap];

    [(BhoundPcap *)activePCap savePacket:packet];
  }
}

- (void)BhoundBpfFileDescriptor:(id)descriptor errorOccurred:(id)occurred
{
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "[W5WiFiSniffManager BhoundBpfFileDescriptor:errorOccurred:]";
    v10 = 2080;
    v11 = "W5WiFiSniffManager.m";
    v12 = 1024;
    v13 = 668;
    v14 = 2114;
    occurredCopy = occurred;
    v7 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v6, 0, "[wifivelocity] %s (%s:%u) Received new packet error %{public}@", &v8, v7);
  }

  [(W5WiFiSniffManager *)self stopSniffingActiveRequestWithError:occurred];
}

- (pcap)openPcapForInterface:(id)interface datalinkType:(int)type
{
  v5 = pcap_create([interface UTF8String], v9);
  if (pcap_set_snaplen(v5, 0x80000))
  {
    return 0;
  }

  pcap_set_promisc(v5, 1);
  if (pcap_set_timeout(v5, 0) || (type - 105) <= 0x3A && ((1 << (type - 105)) & 0x40000000040C001) != 0 && pcap_set_rfmon(v5, 1))
  {
    return 0;
  }

  pcap_activate(v5);
  if (pcap_set_datalink(v5, type))
  {
    return 0;
  }

  selectable_fd = pcap_get_selectable_fd(v5);
  v8 = 1;
  if (ioctl(selectable_fd, 0x80044270uLL, &v8))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

@end