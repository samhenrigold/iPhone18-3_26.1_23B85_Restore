@interface CLMiLoConnectionInternal
+ (BOOL)_isKnownNonActionableMessage:(void *)message;
- (CLMiLoConnectionInternal)initWithInfo:(id)info delegate:(id)delegate delegateQueue:(id)queue;
- (void)_connectServiceWithIdentifier:(id)identifier;
- (void)_createCustomLocationOfInterestAtCurrentLocationWithRequestIdentifier:(id)identifier;
- (void)_createServiceWithServiceType:(unint64_t)type locationTypes:(id)types;
- (void)_deleteServiceWithIdentifier:(id)identifier;
- (void)_disconnectServiceWithIdentifier:(id)identifier;
- (void)_handleDaemonEvent:(id)event;
- (void)_handleDebugResponseEvent:(id)event;
- (void)_handleGenericEvent:(id)event;
- (void)_handleMiLoConnectionStatusEvent:(id)event;
- (void)_handlePredictionUpdateEvent:(id)event;
- (void)_invalidateLocationClient;
- (void)_labelEventWithRequestIdentifier:(id)identifier placeIdentifier:(id)placeIdentifier observationIdentifier:(id)observationIdentifier;
- (void)_labelEventsWithStartDate:(id)date endDate:(id)endDate placeIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier;
- (void)_notifyClientConnectServiceDidFailWithServiceIdentifier:(id)identifier withError:(id)error;
- (void)_notifyClientCreateServiceDidFailWithError:(id)error;
- (void)_notifyClientDeleteServiceDidFailWithServiceIdentifier:(id)identifier withError:(id)error;
- (void)_notifyClientDidCompleteClientRequest:(id)request withError:(id)error;
- (void)_notifyClientDidCreateServiceWithServiceIdentifier:(id)identifier;
- (void)_notifyClientDidDeleteServiceWithServiceIdentifier:(id)identifier;
- (void)_notifyClientDidExportDatabaseWithResponse:(id)response;
- (void)_notifyClientDidFindMyServicesWithServiceDescriptors:(id)descriptors;
- (void)_notifyClientDidUpdateMiLoConnectionStatus:(id)status;
- (void)_notifyClientDidUpdatePrediction:(id)prediction;
- (void)_notifyClientDidUpdateServiceStatus:(id)status;
- (void)_notifyClientDisconnectServiceDidFailWithError:(id)error serviceIdentifier:(id)identifier;
- (void)_notifyClientOfGenericEventResponse:(id)response;
- (void)_notifyClientQueryMiLoConnectionStatusDidFailWithError:(id)error;
- (void)_notifyClientQueryServiceDidFailWithError:(id)error;
- (void)_notifyClientRecordingMetaInfo:(id)info;
- (void)_purgeAllMiLoDataWithRequestIdentifier:(id)identifier;
- (void)_queryMiLoConnectionStatus;
- (void)_queryMyServices;
- (void)_registerForMiLoConnectionStatusEvents;
- (void)_registerForMiLoDebugResponseEvents;
- (void)_registerForMiLoGenericEvents;
- (void)_registerForMiLoServiceEvents;
- (void)_removeCustomLocationOfInterestFromMonitoringWithIdentifier:(id)identifier withRequestIdentifier:(id)requestIdentifier;
- (void)_removeLabels:(id)labels withRequestIdentifier:(id)identifier;
- (void)_requestExportDatabaseWithRequestIdentifier:(id)identifier;
- (void)_requestMiLoPredictionWithRequestIdentifier:(id)identifier;
- (void)_requestModelLearningWithRequestIdentifier:(id)identifier;
- (void)_requestObservationWithRequestIdentifier:(id)identifier placeIdentifier:(id)placeIdentifier;
- (void)_setHandlerForMiLoPredictionEvents;
- (void)_startUpdatingMicroLocationWithConfiguration:(id)configuration withRequestIdentifier:(id)identifier;
- (void)_stopUpdatingMicroLocationWithRequestIdentifier:(id)identifier;
- (void)_teardown;
- (void)_unregisterForMiLoConnectionStatusEvents;
- (void)_unregisterForMiLoDebugResponseEvents;
- (void)_unregisterForMiLoGenericEvents;
- (void)_unregisterForMiloServiceEvents;
- (void)_unsetHandlerForMiLoPredictionEvents;
- (void)dealloc;
@end

@implementation CLMiLoConnectionInternal

- (CLMiLoConnectionInternal)initWithInfo:(id)info delegate:(id)delegate delegateQueue:(id)queue
{
  v12.receiver = self;
  v12.super_class = CLMiLoConnectionInternal;
  v8 = [(CLMiLoConnectionInternal *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_delegate = delegate;
    if (queue)
    {
      v8->_delegateQueue = queue;
      dispatch_retain(queue);
    }

    else
    {
      v8->_delegateQueue = dispatch_queue_create("com.apple.MiLoConnection.privateQueue", 0);
    }

    v10 = dispatch_queue_create("com.apple.MiLoConnection.internalQueue", 0);
    v9->_sender = info;
    v9->_connectedServiceIdentifier = 0;
    v9->_locationdConnection = 0;
    v9->_internalQueue = v10;
  }

  return v9;
}

+ (BOOL)_isKnownNonActionableMessage:(void *)message
{
  result = 0;
  if (message)
  {
    v4 = CLConnectionMessage::name(message);
    if (!std::string::compare(v4, "LocationManager/kCLConnectionMessageRegistration"))
    {
      return 1;
    }

    v5 = CLConnectionMessage::name(message);
    if (!std::string::compare(v5, "kCLConnectionMessageAuthorizationStatus"))
    {
      return 1;
    }
  }

  return result;
}

- (void)_invalidateLocationClient
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_locationdConnection)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v3 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
    {
      v5[0] = 68289026;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:invalidating location client...}", v5, 0x12u);
    }

    CLConnectionClient::setInterruptionHandler();
    if (self->_locationdConnection)
    {
      v4 = MEMORY[0x19EAE95D0]();
      MEMORY[0x19EAE98C0](v4, 0xB0C40BC2CC919);
    }

    self->_locationdConnection = 0;
  }
}

- (void)dealloc
{
  dispatch_release(self->_delegateQueue);
  dispatch_release(self->_internalQueue);
  v3.receiver = self;
  v3.super_class = CLMiLoConnectionInternal;
  [(CLMiLoConnectionInternal *)&v3 dealloc];
}

- (void)_teardown
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v25[0] = 68289282;
    v25[1] = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = objc_msgSend_UTF8String(v7, v8, v9, v10);
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:tearing down:, class:%{public, location:escape_only}s}", v25, 0x1Cu);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    objc_msgSend__disconnectServiceWithIdentifier_(self, v4, connectedServiceIdentifier, v5);

    self->_connectedServiceIdentifier = 0;
    objc_msgSend__unsetHandlerForMiLoPredictionEvents(self, v12, v13, v14);
  }

  objc_msgSend__unregisterForMiloServiceEvents(self, v4, connectedServiceIdentifier, v5);
  objc_msgSend__unregisterForMiLoDebugResponseEvents(self, v15, v16, v17);
  objc_msgSend__unregisterForMiLoConnectionStatusEvents(self, v18, v19, v20);
  objc_msgSend__unregisterForMiLoGenericEvents(self, v21, v22, v23);
  if (self->_locationdConnection)
  {
    v24 = MEMORY[0x19EAE95D0]();
    MEMORY[0x19EAE98C0](v24, 0xB0C40BC2CC919);
  }

  self->_locationdConnection = 0;
}

- (void)_registerForMiLoServiceEvents
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v9[0] = 2082;
    *&v9[1] = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:registering for kCLConnectionMessageMiLoServiceEvent}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoServiceEvent");
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_19B9FBEA8;
    v5[4] = &unk_1E753EAB8;
    v5[5] = self;
    CLConnectionClient::setHandlerForMessage();
    if (v10 < 0)
    {
      operator delete(*buf);
    }

    v6 = @"kCLConnectionMessageSubscribeKey";
    v7 = MEMORY[0x1E695E118];
    v5[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, &v7, &v6, 1);
    sub_19BA0B5B4(buf, v5);
  }
}

- (void)_unregisterForMiloServiceEvents
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_locationdConnection != 0;
    *buf = 68289282;
    *&buf[4] = 0;
    v10[0] = 2082;
    *&v10[1] = "";
    v10[5] = 1026;
    v11 = v4;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:unregistering for kCLConnectionMessageMiLoServiceEvent, Locationd Connection valid:%{public}hhd}", buf, 0x18u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoServiceEvent");
    CLConnectionClient::setHandlerForMessage();
    if (SHIBYTE(v11) < 0)
    {
      operator delete(*buf);
    }

    v7 = @"kCLConnectionMessageSubscribeKey";
    v8 = MEMORY[0x1E695E110];
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, &v8, &v7, 1);
    sub_19BA0B5B4(buf, &v6);
  }
}

- (void)_setHandlerForMiLoPredictionEvents
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:set handler for kCLConnectionMessageMiLoPredictionEventUpdate}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoPredictionEventUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v7 < 0)
    {
      operator delete(*buf);
    }
  }
}

- (void)_unsetHandlerForMiLoPredictionEvents
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    __p = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unset handler for kCLConnectionMessageRegisterMiLoPredictionEvent}", &__p, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(&__p, "kCLConnectionMessageMiLoPredictionEventUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}

- (void)_registerForMiLoDebugResponseEvents
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:set handler for kCLConnectionMessageMiLoServiceDebugResponse}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoServiceDebugResponse");
    CLConnectionClient::setHandlerForMessage();
    if (v7 < 0)
    {
      operator delete(*buf);
    }
  }
}

- (void)_unregisterForMiLoDebugResponseEvents
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    __p = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unset handler for kCLConnectionMessageMiLoServiceDebugResponse}", &__p, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(&__p, "kCLConnectionMessageMiLoServiceDebugResponse");
    CLConnectionClient::setHandlerForMessage();
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}

- (void)_registerForMiLoGenericEvents
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:set handler for kCLConnectionMessageMiLoGenericEventResponse}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoGenericEventResponse");
    CLConnectionClient::setHandlerForMessage();
    if (v7 < 0)
    {
      operator delete(*buf);
    }
  }
}

- (void)_unregisterForMiLoGenericEvents
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    __p = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unset handler for kCLConnectionMessageMiLoGenericEventResponse}", &__p, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(&__p, "kCLConnectionMessageMiLoGenericEventResponse");
    CLConnectionClient::setHandlerForMessage();
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}

- (void)_registerForMiLoConnectionStatusEvents
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "set handler for kCLConnectionMessageMiLoConnectionStatusEvent", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v9[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "set handler for kCLConnectionMessageMiLoConnectionStatusEvent", v9, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoConnectionStatusEvents]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(buf, "kCLConnectionMessageMiLoConnectionStatusEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v11 < 0)
    {
      operator delete(*buf);
    }

    objc_msgSend__queryMiLoConnectionStatus(self, v6, v7, v8);
  }
}

- (void)_unregisterForMiLoConnectionStatusEvents
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    __p = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unset handler for kCLConnectionMessageMiLoConnectionStatusEvent}", &__p, 0x12u);
  }

  if (self->_locationdConnection)
  {
    sub_19B8759E8(&__p, "kCLConnectionMessageMiLoConnectionStatusEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}

- (void)_notifyClientDidUpdateMiLoConnectionStatus:(id)status
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FD6E8;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = status;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientDidUpdateServiceStatus:(id)status
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FD788;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = status;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientDidCreateServiceWithServiceIdentifier:(id)identifier
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FD828;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = identifier;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientCreateServiceDidFailWithError:(id)error
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FD8C8;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = error;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientDeleteServiceDidFailWithServiceIdentifier:(id)identifier withError:(id)error
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B9FD978;
    block[3] = &unk_1E753D098;
    block[4] = self;
    block[5] = identifier;
    block[6] = error;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyClientDidDeleteServiceWithServiceIdentifier:(id)identifier
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FDA20;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = identifier;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientDidFindMyServicesWithServiceDescriptors:(id)descriptors
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FDAC0;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = descriptors;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientConnectServiceDidFailWithServiceIdentifier:(id)identifier withError:(id)error
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B9FDB70;
    block[3] = &unk_1E753D098;
    block[4] = self;
    block[5] = identifier;
    block[6] = error;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyClientDidUpdatePrediction:(id)prediction
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FDC18;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = prediction;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientQueryServiceDidFailWithError:(id)error
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FDCB8;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = error;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientDisconnectServiceDidFailWithError:(id)error serviceIdentifier:(id)identifier
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B9FDD68;
    block[3] = &unk_1E753D098;
    block[4] = self;
    block[5] = identifier;
    block[6] = error;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyClientDidCompleteClientRequest:(id)request withError:(id)error
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B9FDE20;
    block[3] = &unk_1E753D098;
    block[4] = self;
    block[5] = request;
    block[6] = error;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_notifyClientDidExportDatabaseWithResponse:(id)response
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FDEC8;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = response;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientOfGenericEventResponse:(id)response
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FDFE0;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = response;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientQueryMiLoConnectionStatusDidFailWithError:(id)error
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FE0EC;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = error;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_notifyClientRecordingMetaInfo:(id)info
{
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B9FE18C;
    v6[3] = &unk_1E753CF38;
    v6[4] = self;
    v6[5] = info;
    dispatch_async(delegateQueue, v6);
  }
}

- (void)_handleDaemonEvent:(id)event
{
  v520 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, _handleDaemonEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v491[0] = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoServiceEvent, _handleDaemonEvent", v491, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (!self->_delegate)
  {
    return;
  }

  if (!event)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v34 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_FAULT, "nil service event dictionary received", buf, 2u);
    }

    v35 = sub_19B87DD40();
    if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v491[0] = 0;
      v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "nil service event dictionary received", v491, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    v38 = MEMORY[0x1E696ABC0];
    v508 = *MEMORY[0x1E696A578];
    v509 = @"Empty daemon response dictionary";
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v36, &v509, &v508, 1);
    v41 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v40, @"kCLErrorDomainPrivate", 4, v39);
    goto LABEL_46;
  }

  if (!objc_msgSend_objectForKeyedSubscript_(event, v7, 0x1F0E73DA0, v8))
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v42 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      v46 = objc_msgSend_allKeys(event, v43, v44, v45);
      v49 = objc_msgSend_componentsJoinedByString_(v46, v47, @",", v48);
      v53 = objc_msgSend_UTF8String(v49, v50, v51, v52);
      *buf = 68289282;
      v511 = 0;
      v512 = 2082;
      v513 = "";
      v514 = 2082;
      v515 = v53;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unrecognized service event dictionary received, DictionaryKeys:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v54 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      v58 = objc_msgSend_allKeys(event, v55, v56, v57);
      v61 = objc_msgSend_componentsJoinedByString_(v58, v59, @",", v60);
      v65 = objc_msgSend_UTF8String(v61, v62, v63, v64);
      *buf = 68289282;
      v511 = 0;
      v512 = 2082;
      v513 = "";
      v514 = 2082;
      v515 = v65;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unrecognized service event dictionary received", "{msg%{public}.0s:unrecognized service event dictionary received, DictionaryKeys:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v66 = MEMORY[0x1E696ABC0];
    v492 = *MEMORY[0x1E696A578];
    v493 = @"Internal error";
    v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v55, &v493, &v492, 1);
    v41 = objc_msgSend_errorWithDomain_code_userInfo_(v66, v68, @"kCLErrorDomainPrivate", 0, v67);
LABEL_46:
    v69 = v41;
    v70 = [CLMiLoServiceStatus alloc];
    v72 = objc_msgSend_initWithServiceState_suspendReasons_serviceDescriptor_currentLocationOfInterestUuid_currentLocationOfInterestType_error_serviceQualityInfo_places_metaInfo_(v70, v71, 2, 0, 0, 0, 0, v69, 0, 0, 0);
    objc_msgSend__notifyClientDidUpdateServiceStatus_(self, v73, v72, v74);
    return;
  }

  v12 = objc_msgSend_objectForKeyedSubscript_(event, v10, 0x1F0E73DA0, v11);
  v16 = objc_msgSend_integerValue(v12, v13, v14, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(event, v17, 0x1F0E73DC0, v18);
  v23 = v19;
  if (v16 > 6)
  {
    if (v16 > 9)
    {
      switch(v16)
      {
        case 10:
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v266 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v266, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, handleDidCompleteClientRequest", buf, 2u);
          }

          v267 = sub_19B87DD40();
          if (*(v267 + 160) > 1 || *(v267 + 164) > 1 || *(v267 + 168) > 1 || *(v267 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v491[0] = 0;
            v270 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoServiceEvent, handleDidCompleteClientRequest", v491, 2);
            sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v270);
            if (v270 != buf)
            {
              free(v270);
            }
          }

          v274 = objc_msgSend_objectForKeyedSubscript_(event, v268, 0x1F0E73E60, v269);
          if (v23)
          {
            v275 = MEMORY[0x1E696ABC0];
            v276 = objc_msgSend_integerValue(v23, v271, v272, v273);
            v496 = *MEMORY[0x1E696A578];
            v280 = objc_msgSend_integerValue(v23, v277, v278, v279);
            v497 = sub_19BA007C0(v280);
            v282 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v281, &v497, &v496, 1);
            v284 = objc_msgSend_errorWithDomain_code_userInfo_(v275, v283, @"kCLErrorDomainPrivate", v276, v282);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v285 = qword_1EAFE4730;
            if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
            {
              v289 = objc_msgSend_UUIDString(v274, v286, v287, v288);
              v293 = objc_msgSend_UTF8String(v289, v290, v291, v292);
              v297 = objc_msgSend_integerValue(v23, v294, v295, v296);
              v301 = objc_msgSend_localizedDescription(v284, v298, v299, v300);
              v305 = objc_msgSend_UTF8String(v301, v302, v303, v304);
              *buf = 68289794;
              v511 = 0;
              v512 = 2082;
              v513 = "";
              v514 = 2082;
              v515 = v293;
              v516 = 2050;
              v517 = v297;
              v518 = 2082;
              v519 = v305;
              _os_log_impl(&dword_19B873000, v285, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client request complete with status code, request id:%{public, location:escape_only}s, status code:%{public}ld, status message:%{public, location:escape_only}s}", buf, 0x30u);
            }
          }

          else
          {
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v467 = qword_1EAFE4730;
            if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
            {
              v471 = objc_msgSend_UUIDString(v274, v468, v469, v470);
              v475 = objc_msgSend_UTF8String(v471, v472, v473, v474);
              *buf = 68289282;
              v511 = 0;
              v512 = 2082;
              v513 = "";
              v514 = 2082;
              v515 = v475;
              _os_log_impl(&dword_19B873000, v467, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:client request complete without status code, request id:%{public, location:escape_only}s}", buf, 0x1Cu);
              if (qword_1EAFE4728 != -1)
              {
                dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
              }
            }

            v476 = qword_1EAFE4730;
            if (os_signpost_enabled(qword_1EAFE4730))
            {
              v479 = objc_msgSend_UUIDString(v274, v286, v477, v478);
              v483 = objc_msgSend_UTF8String(v479, v480, v481, v482);
              *buf = 68289282;
              v511 = 0;
              v512 = 2082;
              v513 = "";
              v514 = 2082;
              v515 = v483;
              _os_signpost_emit_with_name_impl(&dword_19B873000, v476, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "client request complete without status code", "{msg%{public}.0s:client request complete without status code, request id:%{public, location:escape_only}s}", buf, 0x1Cu);
            }

            v284 = 0;
          }

          objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v286, v274, v284);
          break;
        case 12:
          if (v19)
          {
            v424 = MEMORY[0x1E696ABC0];
            v425 = objc_msgSend_integerValue(v19, v20, v21, v22);
            v494 = *MEMORY[0x1E696A578];
            v429 = objc_msgSend_integerValue(v23, v426, v427, v428);
            v495 = sub_19BA007C0(v429);
            v431 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v430, &v495, &v494, 1);
            v433 = objc_msgSend_errorWithDomain_code_userInfo_(v424, v432, @"kCLErrorDomainPrivate", v425, v431);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v434 = qword_1EAFE4730;
            if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
            {
              v438 = objc_msgSend_integerValue(v23, v435, v436, v437);
              v442 = objc_msgSend_localizedDescription(v433, v439, v440, v441);
              v446 = objc_msgSend_UTF8String(v442, v443, v444, v445);
              *buf = 68289538;
              v511 = 0;
              v512 = 2082;
              v513 = "";
              v514 = 2050;
              v515 = v438;
              v516 = 2082;
              v517 = v446;
              _os_log_impl(&dword_19B873000, v434, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:query MiLo connection status failed, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
              if (qword_1EAFE4728 != -1)
              {
                dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
              }
            }

            v447 = qword_1EAFE4730;
            if (os_signpost_enabled(qword_1EAFE4730))
            {
              v451 = objc_msgSend_integerValue(v23, v448, v449, v450);
              v455 = objc_msgSend_localizedDescription(v433, v452, v453, v454);
              v459 = objc_msgSend_UTF8String(v455, v456, v457, v458);
              *buf = 68289538;
              v511 = 0;
              v512 = 2082;
              v513 = "";
              v514 = 2050;
              v515 = v451;
              v516 = 2082;
              v517 = v459;
              _os_signpost_emit_with_name_impl(&dword_19B873000, v447, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "query MiLo connection status failed", "{msg%{public}.0s:query MiLo connection status failed, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
            }

            objc_msgSend__notifyClientQueryMiLoConnectionStatusDidFailWithError_(self, v448, v433, v450);
          }

          else
          {
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v488 = qword_1EAFE4730;
            if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v488, OS_LOG_TYPE_FAULT, "query MiLo connection status failed but no error code returned", buf, 2u);
            }

            v489 = sub_19B87DD40();
            if ((*(v489 + 160) & 0x80000000) == 0 || (*(v489 + 164) & 0x80000000) == 0 || (*(v489 + 168) & 0x80000000) == 0 || *(v489 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4728 != -1)
              {
                dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
              }

              v491[0] = 0;
              v462 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "query MiLo connection status failed but no error code returned", v491, 2);
              goto LABEL_275;
            }
          }

          break;
        case 13:
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v174 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v174, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, handleRecordingMetaInfo", buf, 2u);
          }

          v175 = sub_19B87DD40();
          if (*(v175 + 160) > 1 || *(v175 + 164) > 1 || *(v175 + 168) > 1 || *(v175 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v491[0] = 0;
            v178 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoServiceEvent, handleRecordingMetaInfo", v491, 2);
            sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v178);
            if (v178 != buf)
            {
              free(v178);
            }
          }

          v179 = objc_msgSend_objectForKeyedSubscript_(event, v176, 0x1F0E73F80, v177);
          objc_msgSend__notifyClientRecordingMetaInfo_(self, v180, v179, v181);
          break;
      }

      return;
    }

    if (v16 != 7)
    {
      if (v16 == 8)
      {
        if (v19)
        {
          v342 = MEMORY[0x1E696ABC0];
          v343 = objc_msgSend_integerValue(v19, v20, v21, v22);
          v500 = *MEMORY[0x1E696A578];
          v347 = objc_msgSend_integerValue(v23, v344, v345, v346);
          v501 = sub_19BA007C0(v347);
          v349 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v348, &v501, &v500, 1);
          v351 = objc_msgSend_errorWithDomain_code_userInfo_(v342, v350, @"kCLErrorDomainPrivate", v343, v349);
          v354 = objc_msgSend_objectForKeyedSubscript_(event, v352, 0x1F0E73DE0, v353);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v355 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
          {
            v359 = objc_msgSend_integerValue(v23, v356, v357, v358);
            v363 = objc_msgSend_localizedDescription(v351, v360, v361, v362);
            v367 = objc_msgSend_UTF8String(v363, v364, v365, v366);
            v371 = objc_msgSend_UUIDString(v354, v368, v369, v370);
            v375 = objc_msgSend_UTF8String(v371, v372, v373, v374);
            *buf = 68289794;
            v511 = 0;
            v512 = 2082;
            v513 = "";
            v514 = 2050;
            v515 = v359;
            v516 = 2082;
            v517 = v367;
            v518 = 2082;
            v519 = v375;
            _os_log_impl(&dword_19B873000, v355, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:connect to service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }
          }

          v376 = qword_1EAFE4730;
          if (os_signpost_enabled(qword_1EAFE4730))
          {
            v380 = objc_msgSend_integerValue(v23, v377, v378, v379);
            v384 = objc_msgSend_localizedDescription(v351, v381, v382, v383);
            v388 = objc_msgSend_UTF8String(v384, v385, v386, v387);
            v392 = objc_msgSend_UUIDString(v354, v389, v390, v391);
            v396 = objc_msgSend_UTF8String(v392, v393, v394, v395);
            *buf = 68289794;
            v511 = 0;
            v512 = 2082;
            v513 = "";
            v514 = 2050;
            v515 = v380;
            v516 = 2082;
            v517 = v388;
            v518 = 2082;
            v519 = v396;
            _os_signpost_emit_with_name_impl(&dword_19B873000, v376, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "connect to service failed", "{msg%{public}.0s:connect to service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
          }

          if (objc_msgSend_isEqual_(v354, v377, self->_connectedServiceIdentifier, v379))
          {
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v398 = qword_1EAFE4730;
            if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68289026;
              v511 = 0;
              v512 = 2082;
              v513 = "";
              _os_log_impl(&dword_19B873000, v398, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service failed, clear connectedServiceIdentifier}", buf, 0x12u);
            }

            self->_connectedServiceIdentifier = 0;
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v399 = qword_1EAFE4730;
            if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68289026;
              v511 = 0;
              v512 = 2082;
              v513 = "";
              _os_log_impl(&dword_19B873000, v399, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service failed, unset handler for prediction events}", buf, 0x12u);
            }

            objc_msgSend__unsetHandlerForMiLoPredictionEvents(self, v400, v401, v402);
          }

          objc_msgSend__notifyClientConnectServiceDidFailWithServiceIdentifier_withError_(self, v397, v354, v351);
        }

        else
        {
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v486 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v486, OS_LOG_TYPE_FAULT, "connect service failed but no error code returned", buf, 2u);
          }

          v487 = sub_19B87DD40();
          if ((*(v487 + 160) & 0x80000000) == 0 || (*(v487 + 164) & 0x80000000) == 0 || (*(v487 + 168) & 0x80000000) == 0 || *(v487 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4728 != -1)
            {
              dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
            }

            v491[0] = 0;
            v462 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "connect service failed but no error code returned", v491, 2);
            goto LABEL_275;
          }
        }
      }

      else if (v19)
      {
        v75 = MEMORY[0x1E696ABC0];
        v76 = objc_msgSend_integerValue(v19, v20, v21, v22);
        v498 = *MEMORY[0x1E696A578];
        v80 = objc_msgSend_integerValue(v23, v77, v78, v79);
        v499 = sub_19BA007C0(v80);
        v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v81, &v499, &v498, 1);
        v84 = objc_msgSend_errorWithDomain_code_userInfo_(v75, v83, @"kCLErrorDomainPrivate", v76, v82);
        v87 = objc_msgSend_objectForKeyedSubscript_(event, v85, 0x1F0E73DE0, v86);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v88 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
        {
          v92 = objc_msgSend_integerValue(v23, v89, v90, v91);
          v96 = objc_msgSend_localizedDescription(v84, v93, v94, v95);
          v100 = objc_msgSend_UTF8String(v96, v97, v98, v99);
          v104 = objc_msgSend_UUIDString(v87, v101, v102, v103);
          v108 = objc_msgSend_UTF8String(v104, v105, v106, v107);
          *buf = 68289794;
          v511 = 0;
          v512 = 2082;
          v513 = "";
          v514 = 2050;
          v515 = v92;
          v516 = 2082;
          v517 = v100;
          v518 = 2082;
          v519 = v108;
          _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }
        }

        v109 = qword_1EAFE4730;
        if (os_signpost_enabled(qword_1EAFE4730))
        {
          v113 = objc_msgSend_integerValue(v23, v110, v111, v112);
          v117 = objc_msgSend_localizedDescription(v84, v114, v115, v116);
          v121 = objc_msgSend_UTF8String(v117, v118, v119, v120);
          v125 = objc_msgSend_UUIDString(v87, v122, v123, v124);
          v129 = objc_msgSend_UTF8String(v125, v126, v127, v128);
          *buf = 68289794;
          v511 = 0;
          v512 = 2082;
          v513 = "";
          v514 = 2050;
          v515 = v113;
          v516 = 2082;
          v517 = v121;
          v518 = 2082;
          v519 = v129;
          _os_signpost_emit_with_name_impl(&dword_19B873000, v109, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service failed", "{msg%{public}.0s:disconnect to service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
        }

        if (!self->_connectedServiceIdentifier)
        {
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v130 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            v511 = 0;
            v512 = 2082;
            v513 = "";
            _os_log_impl(&dword_19B873000, v130, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to service failed, reset connectedServiceIdentifier}", buf, 0x12u);
          }

          self->_connectedServiceIdentifier = objc_msgSend_copy(v87, v131, v132, v133);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v134 = qword_1EAFE4730;
          if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            v511 = 0;
            v512 = 2082;
            v513 = "";
            _os_log_impl(&dword_19B873000, v134, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to service failed, set handler for prediction events}", buf, 0x12u);
          }

          objc_msgSend__setHandlerForMiLoPredictionEvents(self, v135, v136, v137);
        }

        objc_msgSend__notifyClientDisconnectServiceDidFailWithError_serviceIdentifier_(self, v110, v84, v87);
      }

      else
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v460 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v460, OS_LOG_TYPE_FAULT, "connect to service failed but no error code returned", buf, 2u);
        }

        v461 = sub_19B87DD40();
        if ((*(v461 + 160) & 0x80000000) == 0 || (*(v461 + 164) & 0x80000000) == 0 || (*(v461 + 168) & 0x80000000) == 0 || *(v461 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v491[0] = 0;
          v462 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "connect to service failed but no error code returned", v491, 2);
          goto LABEL_275;
        }
      }

      return;
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v192 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v192, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, handleServiceStatusChanged", buf, 2u);
    }

    v193 = sub_19B87DD40();
    if (*(v193 + 160) > 1 || *(v193 + 164) > 1 || *(v193 + 168) > 1 || *(v193 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v491[0] = 0;
      v196 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoServiceEvent, handleServiceStatusChanged", v491, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v196);
      if (v196 != buf)
      {
        free(v196);
      }
    }

    v197 = objc_msgSend_objectForKeyedSubscript_(event, v194, 0x1F0E73E20, v195);
    if (objc_msgSend_serviceState(v197, v198, v199, v200))
    {
      if (objc_msgSend_serviceState(v197, v201, v202, v203) == 2)
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v207 = qword_1EAFE4730;
        if (!os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_283;
        }

        *buf = 68289026;
        v511 = 0;
        v512 = 2082;
        v513 = "";
        v210 = "{msg%{public}.0s:service state: invalidated}";
      }

      else
      {
        if (objc_msgSend_serviceState(v197, v204, v205, v206) != 1)
        {
          goto LABEL_283;
        }

        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v207 = qword_1EAFE4730;
        if (!os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_283;
        }

        *buf = 68289026;
        v511 = 0;
        v512 = 2082;
        v513 = "";
        v210 = "{msg%{public}.0s:service state: suspended}";
      }
    }

    else
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v207 = qword_1EAFE4730;
      if (!os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_283;
      }

      *buf = 68289026;
      v511 = 0;
      v512 = 2082;
      v513 = "";
      v210 = "{msg%{public}.0s:service state: running}";
    }

    _os_log_impl(&dword_19B873000, v207, OS_LOG_TYPE_DEFAULT, v210, buf, 0x12u);
LABEL_283:
    objc_msgSend__notifyClientDidUpdateServiceStatus_(self, v208, v197, v209);
    return;
  }

  if (v16 > 3)
  {
    if (v16 == 4)
    {
      if (v19)
      {
        v211 = MEMORY[0x1E696ABC0];
        v212 = objc_msgSend_integerValue(v19, v20, v21, v22);
        v504 = *MEMORY[0x1E696A578];
        v216 = objc_msgSend_integerValue(v23, v213, v214, v215);
        v505 = sub_19BA007C0(v216);
        v218 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v217, &v505, &v504, 1);
        v220 = objc_msgSend_errorWithDomain_code_userInfo_(v211, v219, @"kCLErrorDomainPrivate", v212, v218);
        v223 = objc_msgSend_objectForKeyedSubscript_(event, v221, 0x1F0E73DE0, v222);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v224 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
        {
          v228 = objc_msgSend_integerValue(v23, v225, v226, v227);
          v232 = objc_msgSend_localizedDescription(v220, v229, v230, v231);
          v236 = objc_msgSend_UTF8String(v232, v233, v234, v235);
          v240 = objc_msgSend_UUIDString(v223, v237, v238, v239);
          v244 = objc_msgSend_UTF8String(v240, v241, v242, v243);
          *buf = 68289794;
          v511 = 0;
          v512 = 2082;
          v513 = "";
          v514 = 2050;
          v515 = v228;
          v516 = 2082;
          v517 = v236;
          v518 = 2082;
          v519 = v244;
          _os_log_impl(&dword_19B873000, v224, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:delete service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }
        }

        v245 = qword_1EAFE4730;
        if (os_signpost_enabled(qword_1EAFE4730))
        {
          v249 = objc_msgSend_integerValue(v23, v246, v247, v248);
          v253 = objc_msgSend_localizedDescription(v220, v250, v251, v252);
          v257 = objc_msgSend_UTF8String(v253, v254, v255, v256);
          v261 = objc_msgSend_UUIDString(v223, v258, v259, v260);
          v265 = objc_msgSend_UTF8String(v261, v262, v263, v264);
          *buf = 68289794;
          v511 = 0;
          v512 = 2082;
          v513 = "";
          v514 = 2050;
          v515 = v249;
          v516 = 2082;
          v517 = v257;
          v518 = 2082;
          v519 = v265;
          _os_signpost_emit_with_name_impl(&dword_19B873000, v245, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delete service failed", "{msg%{public}.0s:delete service failed, error code:%{public}ld, error message:%{public, location:escape_only}s, service id:%{public, location:escape_only}s}", buf, 0x30u);
        }

        objc_msgSend__notifyClientDeleteServiceDidFailWithServiceIdentifier_withError_(self, v246, v223, v220);
      }

      else
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v465 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v465, OS_LOG_TYPE_FAULT, "delete service failed but no error code returned", buf, 2u);
        }

        v466 = sub_19B87DD40();
        if ((*(v466 + 160) & 0x80000000) == 0 || (*(v466 + 164) & 0x80000000) == 0 || (*(v466 + 168) & 0x80000000) == 0 || *(v466 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }

          v491[0] = 0;
          v462 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "delete service failed but no error code returned", v491, 2);
          goto LABEL_275;
        }
      }
    }

    else if (v16 == 5)
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v403 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v403, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceEvent, handleQueryMyServices", buf, 2u);
      }

      v404 = sub_19B87DD40();
      if (*(v404 + 160) > 1 || *(v404 + 164) > 1 || *(v404 + 168) > 1 || *(v404 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v491[0] = 0;
        v407 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoServiceEvent, handleQueryMyServices", v491, 2);
        sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v407);
        if (v407 != buf)
        {
          free(v407);
        }
      }

      v408 = objc_msgSend_objectForKeyedSubscript_(event, v405, 0x1F0E73E00, v406);
      v411 = objc_msgSend_valueForKey_(v408, v409, @"serviceIdentifier", v410);
      v414 = objc_msgSend_componentsJoinedByString_(v411, v412, @", ", v413);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v415 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
      {
        v419 = objc_msgSend_count(v408, v416, v417, v418);
        v423 = objc_msgSend_UTF8String(v414, v420, v421, v422);
        *buf = 68289538;
        v511 = 0;
        v512 = 2082;
        v513 = "";
        v514 = 2050;
        v515 = v419;
        v516 = 2082;
        v517 = v423;
        _os_log_impl(&dword_19B873000, v415, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:query services success, size:%{public}ld, service descriptors:%{public, location:escape_only}s}", buf, 0x26u);
      }

      objc_msgSend__notifyClientDidFindMyServicesWithServiceDescriptors_(self, v416, v408, v418);
    }

    else if (v19)
    {
      v138 = MEMORY[0x1E696ABC0];
      v139 = objc_msgSend_integerValue(v19, v20, v21, v22);
      v502 = *MEMORY[0x1E696A578];
      v143 = objc_msgSend_integerValue(v23, v140, v141, v142);
      v503 = sub_19BA007C0(v143);
      v145 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v144, &v503, &v502, 1);
      v147 = objc_msgSend_errorWithDomain_code_userInfo_(v138, v146, @"kCLErrorDomainPrivate", v139, v145);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v148 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
      {
        v152 = objc_msgSend_integerValue(v23, v149, v150, v151);
        v156 = objc_msgSend_localizedDescription(v147, v153, v154, v155);
        v160 = objc_msgSend_UTF8String(v156, v157, v158, v159);
        *buf = 68289538;
        v511 = 0;
        v512 = 2082;
        v513 = "";
        v514 = 2050;
        v515 = v152;
        v516 = 2082;
        v517 = v160;
        _os_log_impl(&dword_19B873000, v148, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:query services failed, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }
      }

      v161 = qword_1EAFE4730;
      if (os_signpost_enabled(qword_1EAFE4730))
      {
        v165 = objc_msgSend_integerValue(v23, v162, v163, v164);
        v169 = objc_msgSend_localizedDescription(v147, v166, v167, v168);
        v173 = objc_msgSend_UTF8String(v169, v170, v171, v172);
        *buf = 68289538;
        v511 = 0;
        v512 = 2082;
        v513 = "";
        v514 = 2050;
        v515 = v165;
        v516 = 2082;
        v517 = v173;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v161, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "query services failed", "{msg%{public}.0s:query services failed, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
      }

      objc_msgSend__notifyClientQueryServiceDidFailWithError_(self, v162, v147, v164);
    }

    else
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v463 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v463, OS_LOG_TYPE_FAULT, "query services failed but no error code returned", buf, 2u);
      }

      v464 = sub_19B87DD40();
      if ((*(v464 + 160) & 0x80000000) == 0 || (*(v464 + 164) & 0x80000000) == 0 || (*(v464 + 168) & 0x80000000) == 0 || *(v464 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v491[0] = 0;
        v462 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "query services failed but no error code returned", v491, 2);
        goto LABEL_275;
      }
    }
  }

  else if (v16 == 1)
  {
    v182 = objc_msgSend_objectForKeyedSubscript_(event, v20, 0x1F0E73DE0, v22);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v183 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      v187 = objc_msgSend_UUIDString(v182, v184, v185, v186);
      v191 = objc_msgSend_UTF8String(v187, v188, v189, v190);
      *buf = 68289282;
      v511 = 0;
      v512 = 2082;
      v513 = "";
      v514 = 2082;
      v515 = v191;
      _os_log_impl(&dword_19B873000, v183, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:create service success, service identifier:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    objc_msgSend__notifyClientDidCreateServiceWithServiceIdentifier_(self, v184, v182, v186);
  }

  else
  {
    if (v16 != 2)
    {
      if (v16 == 3)
      {
        v24 = objc_msgSend_objectForKeyedSubscript_(event, v20, 0x1F0E73DE0, v22);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v25 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_msgSend_UUIDString(v24, v26, v27, v28);
          v33 = objc_msgSend_UTF8String(v29, v30, v31, v32);
          *buf = 68289282;
          v511 = 0;
          v512 = 2082;
          v513 = "";
          v514 = 2082;
          v515 = v33;
          _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:delete service success, service identifier:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        objc_msgSend__notifyClientDidDeleteServiceWithServiceIdentifier_(self, v26, v24, v28);
      }

      return;
    }

    if (v19)
    {
      v306 = MEMORY[0x1E696ABC0];
      v307 = objc_msgSend_integerValue(v19, v20, v21, v22);
      v506 = *MEMORY[0x1E696A578];
      v311 = objc_msgSend_integerValue(v23, v308, v309, v310);
      v507 = sub_19BA007C0(v311);
      v313 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v312, &v507, &v506, 1);
      v315 = objc_msgSend_errorWithDomain_code_userInfo_(v306, v314, @"kCLErrorDomainPrivate", v307, v313);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v316 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
      {
        v320 = objc_msgSend_integerValue(v23, v317, v318, v319);
        v324 = objc_msgSend_localizedDescription(v315, v321, v322, v323);
        v328 = objc_msgSend_UTF8String(v324, v325, v326, v327);
        *buf = 68289538;
        v511 = 0;
        v512 = 2082;
        v513 = "";
        v514 = 2050;
        v515 = v320;
        v516 = 2082;
        v517 = v328;
        _os_log_impl(&dword_19B873000, v316, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:create service fail, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }
      }

      v329 = qword_1EAFE4730;
      if (os_signpost_enabled(qword_1EAFE4730))
      {
        v333 = objc_msgSend_integerValue(v23, v330, v331, v332);
        v337 = objc_msgSend_localizedDescription(v315, v334, v335, v336);
        v341 = objc_msgSend_UTF8String(v337, v338, v339, v340);
        *buf = 68289538;
        v511 = 0;
        v512 = 2082;
        v513 = "";
        v514 = 2050;
        v515 = v333;
        v516 = 2082;
        v517 = v341;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v329, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "create service fail", "{msg%{public}.0s:create service fail, error code:%{public}ld, error message:%{public, location:escape_only}s}", buf, 0x26u);
      }

      objc_msgSend__notifyClientCreateServiceDidFailWithError_(self, v330, v315, v332);
      return;
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v484 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v484, OS_LOG_TYPE_FAULT, "create service failed but no error code returned", buf, 2u);
    }

    v485 = sub_19B87DD40();
    if ((*(v485 + 160) & 0x80000000) == 0 || (*(v485 + 164) & 0x80000000) == 0 || (*(v485 + 168) & 0x80000000) == 0 || *(v485 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v491[0] = 0;
      v462 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "create service failed but no error code returned", v491, 2);
LABEL_275:
      v490 = v462;
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v462);
      if (v490 != buf)
      {
        free(v490);
      }
    }
  }
}

- (void)_handlePredictionUpdateEvent:(id)event
{
  v60 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoPredictionEvent, _handlePredictionEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    LOWORD(v54) = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoPredictionEvent, _handlePredictionEvent", &v54, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handlePredictionUpdateEvent:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (event)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(event, v7, 0x1F0E73E40, v8);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_msgSend_requestIdentifier(v10, v12, v13, v14);
      v19 = objc_msgSend_UUIDString(v15, v16, v17, v18);
      v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);
      *buf = 136315138;
      v59 = v23;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "_handlePredictionEvent, requestIdentifier %s", buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v30 = qword_1EAFE4730;
      v31 = objc_msgSend_requestIdentifier(v10, v27, v28, v29);
      v35 = objc_msgSend_UUIDString(v31, v32, v33, v34);
      v39 = objc_msgSend_UTF8String(v35, v36, v37, v38);
      v54 = 136315138;
      v55 = v39;
      v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v30, 0, "_handlePredictionEvent, requestIdentifier %s", &v54, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handlePredictionUpdateEvent:]", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    objc_msgSend__notifyClientDidUpdatePrediction_(self, v25, v10, v26);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v41 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_FAULT, "nil prediction event dictionary received", buf, 2u);
    }

    v42 = sub_19B87DD40();
    if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      LOWORD(v54) = 0;
      v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "nil prediction event dictionary received", &v54, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handlePredictionUpdateEvent:]", "CoreLocation: %s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    v45 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A578];
    v57 = @"Empty daemon response dictionary";
    v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, &v57, &v56, 1);
    v48 = objc_msgSend_errorWithDomain_code_userInfo_(v45, v47, @"kCLErrorDomainPrivate", 4, v46);
    v49 = [CLMiLoServiceStatus alloc];
    v51 = objc_msgSend_initWithServiceState_suspendReasons_serviceDescriptor_currentLocationOfInterestUuid_currentLocationOfInterestType_error_serviceQualityInfo_places_metaInfo_(v49, v50, 2, 0, 0, 0, 0, v48, 0, 0, 0);
    objc_msgSend__notifyClientDidUpdateServiceStatus_(self, v52, v51, v53);
  }
}

- (void)_handleDebugResponseEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoServiceDebugResponse, _handleDebugResponseEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v19[0] = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoServiceDebugResponse, _handleDebugResponseEvent", v19, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleDebugResponseEvent:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (event)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(event, v7, 0x1F0E73F40, v8);
    if (objc_msgSend_exportDatabaseTablesResult(v10, v11, v12, v13))
    {
      objc_msgSend__notifyClientDidExportDatabaseWithResponse_(self, v14, v10, v15);
    }
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "nil debug respoinse event dictionary received", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v19[0] = 0;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "nil debug respoinse event dictionary received", v19, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleDebugResponseEvent:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }
}

- (void)_handleMiLoConnectionStatusEvent:(id)event
{
  v32 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoConnectionStatusEvent, _handleMiLoConnectionStatusEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    LOWORD(v28) = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoConnectionStatusEvent, _handleMiLoConnectionStatusEvent", &v28, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleMiLoConnectionStatusEvent:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (event)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(event, v7, 0x1F0E73F60, v8);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_msgSend_connectionState(v10, v12, v13, v14);
      *buf = 134217984;
      v31 = v15;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "_handleMiLoConnectionStatusEvent, connectionState %lu", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v22 = qword_1EAFE4730;
      v23 = objc_msgSend_connectionState(v10, v19, v20, v21);
      v28 = 134217984;
      v29 = v23;
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v22, 0, "_handleMiLoConnectionStatusEvent, connectionState %lu", &v28, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleMiLoConnectionStatusEvent:]", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    objc_msgSend__notifyClientDidUpdateMiLoConnectionStatus_(self, v17, v10, v18);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v25 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_FAULT, "nil connection status event dictionary received", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      LOWORD(v28) = 0;
      v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "nil connection status event dictionary received", &v28, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleMiLoConnectionStatusEvent:]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }
}

- (void)_handleGenericEvent:(id)event
{
  v51 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "kCLConnectionMessageMiLoGenericEventResponse, _handleGenericEvent", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    LOWORD(v44[0]) = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "kCLConnectionMessageMiLoGenericEventResponse, _handleGenericEvent", v44, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleGenericEvent:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (event)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(event, v7, 0x1F0E73FA0, v8);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_msgSend_eventType(v10, v12, v13, v14);
      v19 = objc_msgSend_genericEventDescription(v10, v16, v17, v18);
      v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);
      *buf = 67109378;
      v48 = v15;
      v49 = 2080;
      v50 = v23;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "_handleGenericEvent, eventType %u, description %s", buf, 0x12u);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v30 = qword_1EAFE4730;
      v31 = objc_msgSend_eventType(v10, v27, v28, v29);
      v35 = objc_msgSend_genericEventDescription(v10, v32, v33, v34);
      v39 = objc_msgSend_UTF8String(v35, v36, v37, v38);
      v44[0] = 67109378;
      v44[1] = v31;
      v45 = 2080;
      v46 = v39;
      v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v30, 0, "_handleGenericEvent, eventType %u, description %s", v44, 18);
      sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _handleGenericEvent:]", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    objc_msgSend__notifyClientOfGenericEventResponse_(self, v25, v10, v26);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v41 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_FAULT, "nil generic event response event dictionary received", buf, 2u);
    }

    v42 = sub_19B87DD40();
    if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      LOWORD(v44[0]) = 0;
      v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 17, "nil generic event response event dictionary received", v44, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _handleGenericEvent:]", "CoreLocation: %s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }
  }
}

- (void)_createServiceWithServiceType:(unint64_t)type locationTypes:(id)types
{
  v40 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v39[0] = 2082;
    *&v39[1] = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, creating a service}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    v9 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v8, types, 1, 0);
    v13 = v9;
    if (!v9 || !objc_msgSend_length(v9, v10, v11, v12))
    {
      v15 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v37 = @"Invalid parameter";
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v37, &v36, 1);
      v18 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"kCLErrorDomainPrivate", 3, v16);
      objc_msgSend__notifyClientCreateServiceDidFailWithError_(self, v19, v18, v20);
    }

    v34[0] = 0x1F0E73D60;
    v34[1] = 0x1F0E73D80;
    v35[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v10, type, v14);
    v35[1] = v13;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v35, v34, 2);
    sub_19BA0B68C(buf, "kCLConnectionMessageMiLoCreateService", &v31);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v22 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v39[0] = 2082;
    *&v39[1] = "";
    _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to create a service with internal error}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v23 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v39[0] = 2082;
    *&v39[1] = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to create a service with internal error", "{msg%{public}.0s:SPI request, failed to create a service with internal error}", buf, 0x12u);
  }

  v25 = MEMORY[0x1E696ABC0];
  v32 = *MEMORY[0x1E696A578];
  v33 = @"Internal error";
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v33, &v32, 1);
  v28 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"kCLErrorDomainPrivate", 0, v26);
  objc_msgSend__notifyClientCreateServiceDidFailWithError_(self, v29, v28, v30);
}

- (void)_deleteServiceWithIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v21[0] = 2082;
    *&v21[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, deleting a service}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    v18 = 0x1F0E73DE0;
    identifierCopy = identifier;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, &identifierCopy, &v18, 1);
    sub_19BA0B68C(buf, "kCLConnectionMessageMiLoDeleteService", &v15);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v21[0] = 2082;
    *&v21[1] = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to delete a service with internal error}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v8 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v21[0] = 2082;
    *&v21[1] = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to delete a service with internal error", "{msg%{public}.0s:SPI request, failed to delete a service with internal error}", buf, 0x12u);
  }

  v10 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A578];
  v17 = @"Internal error";
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v17, &v16, 1);
  v13 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"kCLErrorDomainPrivate", 0, v11);
  objc_msgSend__notifyClientDeleteServiceDidFailWithServiceIdentifier_withError_(self, v14, identifier, v13);
}

- (void)_queryMyServices
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, query my services, kCLConnectionMessageMiLoQueryMyServices}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    operator new();
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to query my services with internal error}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v5 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v16 = 2082;
    v17 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to query my services with internal error", "{msg%{public}.0s:SPI request, failed to query my services with internal error}", buf, 0x12u);
  }

  v7 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A578];
  v14 = @"Internal error";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, &v14, &v13, 1);
  v10 = objc_msgSend_errorWithDomain_code_userInfo_(v7, v9, @"kCLErrorDomainPrivate", 0, v8);
  objc_msgSend__notifyClientQueryServiceDidFailWithError_(self, v11, v10, v12);
}

- (void)_queryMiLoConnectionStatus
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v3 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "SPI request, query MiLo connection status, kCLConnectionMessageMiLoQueryConnectionStatus", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    LOWORD(v16[0]) = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "SPI request, query MiLo connection status, kCLConnectionMessageMiLoQueryConnectionStatus", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _queryMiLoConnectionStatus]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (self->_locationdConnection)
  {
    v16[0] = MEMORY[0x1E695E0F8];
    sub_19BA0B764(buf, "kCLConnectionMessageMiLoQueryConnectionStatus", v16);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v6 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "SPI request, failed to query MiLo connection status with internal error", buf, 2u);
  }

  v7 = sub_19B87DD40();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    LOWORD(v16[0]) = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 16, "SPI request, failed to query MiLo connection status with internal error", v16, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _queryMiLoConnectionStatus]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A578];
  v18 = @"Internal error";
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, &v18, &v17, 1);
  v13 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"kCLErrorDomainPrivate", 0, v11);
  objc_msgSend__notifyClientQueryMiLoConnectionStatusDidFailWithError_(self, v14, v13, v15);
}

- (void)_connectServiceWithIdentifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v37[0] = 2082;
    *&v37[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:SPI request, connect to a service, kCLConnectionMessageMiLoConnectToService}", buf, 0x12u);
  }

  if (self->_connectedServiceIdentifier)
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v6 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v37[0] = 2082;
      *&v37[1] = "";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, failed to connect to service because this connection object is already connected to a service}", buf, 0x12u);
    }

    v8 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35 = @"Already connected to another service";
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, &v35, &v34, 1);
    v11 = objc_msgSend_errorWithDomain_code_userInfo_(v8, v10, @"kCLErrorDomainPrivate", 9, v9);
    objc_msgSend__notifyClientConnectServiceDidFailWithServiceIdentifier_withError_(self, v12, identifier, v11);
  }

  else
  {
    if (self->_locationdConnection)
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v13 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v37[0] = 2082;
        *&v37[1] = "";
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service, set connectedServiceIdentifier}", buf, 0x12u);
      }

      self->_connectedServiceIdentifier = objc_msgSend_copy(identifier, v14, v15, v16);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v17 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v37[0] = 2082;
        *&v37[1] = "";
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service, set handler for prediction updates}", buf, 0x12u);
      }

      objc_msgSend__setHandlerForMiLoPredictionEvents(self, v18, v19, v20);
      v32 = 0x1F0E73DE0;
      identifierCopy = identifier;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &identifierCopy, &v32, 1);
      sub_19B960254();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v22 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v37[0] = 2082;
      *&v37[1] = "";
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to connect to services with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v23 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v37[0] = 2082;
      *&v37[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to connect to services with internal error", "{msg%{public}.0s:SPI request, failed to connect to services with internal error}", buf, 0x12u);
    }

    v25 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Internal error";
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v31, &v30, 1);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"kCLErrorDomainPrivate", 0, v26);
    objc_msgSend__notifyClientConnectServiceDidFailWithServiceIdentifier_withError_(self, v29, identifier, v28);
  }
}

- (void)_disconnectServiceWithIdentifier:(id)identifier
{
  v48 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v46 = 2082;
    v47 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, disconnect to a service, kCLConnectionMessageMiLoDisconnectToService}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (objc_msgSend_isEqual_(identifier, v6, connectedServiceIdentifier, v7))
    {
      if (self->_locationdConnection)
      {
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }

        v9 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
        {
          *buf = 68289026;
          v46 = 2082;
          v47 = "";
          _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:disconnect to service, clear connectedServiceIdentifier}", buf, 0x12u);
          if (qword_1EAFE4728 != -1)
          {
            dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
          }
        }

        v10 = qword_1EAFE4730;
        if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289026;
          v46 = 2082;
          v47 = "";
          _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to service, unset handler for prediction updates}", buf, 0x12u);
        }

        objc_msgSend__unsetHandlerForMiLoPredictionEvents(self, v11, v12, v13);
        v39 = 0x1F0E73DE0;
        identifierCopy = identifier;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, &identifierCopy, &v39, 1);
        operator new();
      }

      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v29 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v46 = 2082;
        v47 = "";
        _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to disconnect service with internal error}", buf, 0x12u);
        if (qword_1EAFE4728 != -1)
        {
          dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
        }
      }

      v30 = qword_1EAFE4730;
      if (os_signpost_enabled(qword_1EAFE4730))
      {
        *buf = 68289026;
        v46 = 2082;
        v47 = "";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to disconnect service with internal error", "{msg%{public}.0s:SPI request, failed to disconnect service with internal error}", buf, 0x12u);
      }

      v32 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v38 = @"Internal error";
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v31, &v38, &v37, 1);
      v35 = objc_msgSend_errorWithDomain_code_userInfo_(v32, v34, @"kCLErrorDomainPrivate", 0, v33);
      objc_msgSend__notifyClientDisconnectServiceDidFailWithError_serviceIdentifier_(self, v36, v35, identifier);
    }

    else
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v22 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v46 = 2082;
        v47 = "";
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, failed to disconnect to a service because connected to a different service}", buf, 0x12u);
      }

      v24 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"Invalid parameter";
      v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, &v42, &v41, 1);
      v27 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v26, @"kCLErrorDomainPrivate", 3, v25);
      objc_msgSend__notifyClientDisconnectServiceDidFailWithError_serviceIdentifier_(self, v28, v27, identifier);
    }
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v15 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v46 = 2082;
      v47 = "";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, failed to disconnect to a service because this connection object hasn't connected to a service}", buf, 0x12u);
    }

    v17 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v44 = @"Not connected to any service";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v44, &v43, 1);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 10, v18);
    objc_msgSend__notifyClientDisconnectServiceDidFailWithError_serviceIdentifier_(self, v21, v20, identifier);
  }
}

- (void)_requestMiLoPredictionWithRequestIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v31 = 2082;
    v32 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, single shot MiLo prediction, kCLConnectionMessageMiLoSingleShotPrediction}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v26[0] = 0x1F0E73DE0;
      v26[1] = 0x1F0E73E60;
      v27[0] = connectedServiceIdentifier;
      v27[1] = identifier;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v27, v26, 2);
      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v31 = 2082;
      v32 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request a single shot prediction with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v17 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v31 = 2082;
      v32 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request a single shot prediction with internal error", "{msg%{public}.0s:SPI request, failed to request a single shot prediction with internal error}", buf, 0x12u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"Internal error";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v25, &v24, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"kCLErrorDomainPrivate", 0, v20);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v23, identifier, v22);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v31 = 2082;
      v32 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request a single shot prediction, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v31 = 2082;
      v32 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request a single shot prediction, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request a single shot prediction, not connected to service yet}", buf, 0x12u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = @"Not connected to any service";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v29, &v28, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"kCLErrorDomainPrivate", 10, v12);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v15, identifier, v14);
  }
}

- (void)_requestObservationWithRequestIdentifier:(id)identifier placeIdentifier:(id)placeIdentifier
{
  v41 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v39 = 2082;
    v40 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, request observation, kCLConnectionMessageRequestObservation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v10 = MEMORY[0x1E695DF90];
      v34[0] = 0x1F0E73DE0;
      v34[1] = 0x1F0E73E60;
      v35[0] = connectedServiceIdentifier;
      v35[1] = identifier;
      v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v35, v34, 2);
      v14 = objc_msgSend_dictionaryWithDictionary_(v10, v12, v11, v13);
      if (placeIdentifier)
      {
        objc_msgSend_setObject_forKey_(v14, v15, placeIdentifier, 0x1F0E73E80);
      }

      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v24 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request observation with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v25 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request observation with internal error", "{msg%{public}.0s:SPI request, failed to request observation with internal error}", buf, 0x12u);
    }

    v27 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33 = @"Internal error";
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, &v33, &v32, 1);
    v30 = objc_msgSend_errorWithDomain_code_userInfo_(v27, v29, @"kCLErrorDomainPrivate", 0, v28);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v31, identifier, v30);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request observation, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v17 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v39 = 2082;
      v40 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request observation, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request observation, not connected to service yet}", buf, 0x12u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37 = @"Not connected to any service";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v37, &v36, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"kCLErrorDomainPrivate", 10, v20);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v23, identifier, v22);
  }
}

- (void)_labelEventWithRequestIdentifier:(id)identifier placeIdentifier:(id)placeIdentifier observationIdentifier:(id)observationIdentifier
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v35 = 2082;
    v36 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, label an observation, kCLConnectionMessageLabelSignleObservation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v30[0] = 0x1F0E73DE0;
      v30[1] = 0x1F0E73E60;
      v31[0] = connectedServiceIdentifier;
      v31[1] = identifier;
      v30[2] = 0x1F0E73E80;
      v30[3] = 0x1F0E73EA0;
      v31[2] = placeIdentifier;
      v31[3] = observationIdentifier;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v31, v30, 4);
      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v20 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v35 = 2082;
      v36 = "";
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label an observation with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v21 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v35 = 2082;
      v36 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label an observation with internal error", "{msg%{public}.0s:SPI request, failed to label an observation with internal error}", buf, 0x12u);
    }

    v23 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = @"Internal error";
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v29, &v28, 1);
    v26 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"kCLErrorDomainPrivate", 0, v24);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v27, identifier, v26);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v12 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v35 = 2082;
      v36 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request observation, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v13 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v35 = 2082;
      v36 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request observation, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request observation, not connected to service yet}", buf, 0x12u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33 = @"Not connected to any service";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, &v33, &v32, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"kCLErrorDomainPrivate", 10, v16);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v19, identifier, v18);
  }
}

- (void)_labelEventsWithStartDate:(id)date endDate:(id)endDate placeIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v11 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v37 = 2082;
    v38 = "";
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, label observations between dates, kCLConnectionMessageLabelObservationsBetweenDates}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v32[0] = 0x1F0E73DE0;
      v32[1] = 0x1F0E73E60;
      v33[0] = connectedServiceIdentifier;
      v33[1] = requestIdentifier;
      v32[2] = 0x1F0E73E80;
      v32[3] = 0x1F0E73EC0;
      v33[2] = identifier;
      v33[3] = date;
      v32[4] = 0x1F0E73EE0;
      v33[4] = endDate;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v33, v32, 5);
      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v22 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v37 = 2082;
      v38 = "";
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label observations between dates with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v23 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v37 = 2082;
      v38 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label observations between dates with internal error", "{msg%{public}.0s:SPI request, failed to label observations between dates with internal error}", buf, 0x12u);
    }

    v25 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Internal error";
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v31, &v30, 1);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"kCLErrorDomainPrivate", 0, v26);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v29, requestIdentifier, v28);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v14 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v37 = 2082;
      v38 = "";
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to label observations between dates, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v15 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v37 = 2082;
      v38 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to label observations between dates, not connected to service yet", "{msg%{public}.0s:SPI request, failed to label observations between dates, not connected to service yet}", buf, 0x12u);
    }

    v17 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35 = @"Not connected to any service";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v35, &v34, 1);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 10, v18);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v21, requestIdentifier, v20);
  }
}

- (void)_removeLabels:(id)labels withRequestIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v33 = 2082;
    v34 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, remove labels, kCLConnectionMessageRemoveLabels}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v28[0] = 0x1F0E73DE0;
      v28[1] = 0x1F0E73E60;
      v29[0] = connectedServiceIdentifier;
      v29[1] = identifier;
      v28[2] = 0x1F0E73F00;
      v29[2] = labels;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v29, v28, 3);
      operator new();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v18 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v33 = 2082;
      v34 = "";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to remove labels with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v19 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v33 = 2082;
      v34 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to remove labels with internal error", "{msg%{public}.0s:SPI request, failed to remove labels with internal error}", buf, 0x12u);
    }

    v21 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"Internal error";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &v27, &v26, 1);
    v24 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"kCLErrorDomainPrivate", 0, v22);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v25, identifier, v24);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v10 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v33 = 2082;
      v34 = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to remove labels, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v11 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v33 = 2082;
      v34 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to remove labels, not connected to service yet", "{msg%{public}.0s:SPI request, failed to remove labels, not connected to service yet}", buf, 0x12u);
    }

    v13 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Not connected to any service";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, &v31, &v30, 1);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"kCLErrorDomainPrivate", 10, v14);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v17, identifier, v16);
  }
}

- (void)_removeCustomLocationOfInterestFromMonitoringWithIdentifier:(id)identifier withRequestIdentifier:(id)requestIdentifier
{
  v34 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v33[0] = 2082;
    *&v33[1] = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, remove a custom LOI, kCLConnectionMessageRemoveCustomLOI}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v28[0] = 0x1F0E73DE0;
      v28[1] = 0x1F0E73E60;
      v29[0] = connectedServiceIdentifier;
      v29[1] = requestIdentifier;
      v28[2] = 0x1F0E73FC0;
      v29[2] = identifier;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v29, v28, 3);
      sub_19B943D9C();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v18 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v33[0] = 2082;
      *&v33[1] = "";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to remove labels with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v19 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v33[0] = 2082;
      *&v33[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to remove labels with internal error", "{msg%{public}.0s:SPI request, failed to remove labels with internal error}", buf, 0x12u);
    }

    v21 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"Internal error";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &v27, &v26, 1);
    v24 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"kCLErrorDomainPrivate", 0, v22);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v25, requestIdentifier, v24);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v10 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v33[0] = 2082;
      *&v33[1] = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to remove a custom LOI, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v11 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v33[0] = 2082;
      *&v33[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to remove a custom LOI, not connected to service yet", "{msg%{public}.0s:SPI request, failed to remove a custom LOI, not connected to service yet}", buf, 0x12u);
    }

    v13 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Not connected to any service";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, &v31, &v30, 1);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"kCLErrorDomainPrivate", 10, v14);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v17, requestIdentifier, v16);
  }
}

- (void)_startUpdatingMicroLocationWithConfiguration:(id)configuration withRequestIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v33[0] = 2082;
    *&v33[1] = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, start updating MicroLocation, kCLConnectionMessageStartUpdatingMicroLocation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v28[0] = 0x1F0E73DE0;
      v28[1] = 0x1F0E73E60;
      v29[0] = connectedServiceIdentifier;
      v29[1] = identifier;
      v28[2] = 0x1F0E73F20;
      v29[2] = configuration;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v29, v28, 3);
      sub_19B952ED0();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v18 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v33[0] = 2082;
      *&v33[1] = "";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to tart updating MicroLocation with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v19 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v33[0] = 2082;
      *&v33[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to tart updating MicroLocation with internal error", "{msg%{public}.0s:SPI request, failed to tart updating MicroLocation with internal error}", buf, 0x12u);
    }

    v21 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"Internal error";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &v27, &v26, 1);
    v24 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"kCLErrorDomainPrivate", 0, v22);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v25, identifier, v24);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v10 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v33[0] = 2082;
      *&v33[1] = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to start updating MicroLocation, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v11 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v33[0] = 2082;
      *&v33[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to start updating MicroLocation, not connected to service yet", "{msg%{public}.0s:SPI request, failed to start updating MicroLocation, not connected to service yet}", buf, 0x12u);
    }

    v13 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Not connected to any service";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, &v31, &v30, 1);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"kCLErrorDomainPrivate", 10, v14);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v17, identifier, v16);
  }
}

- (void)_stopUpdatingMicroLocationWithRequestIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v32[0] = 2082;
    *&v32[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, stop updating MicroLocation, kCLConnectionMessageStopUpdatingMicroLocation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v27[0] = 0x1F0E73DE0;
      v27[1] = 0x1F0E73E60;
      v28[0] = connectedServiceIdentifier;
      v28[1] = identifier;
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v28, v27, 2);
      sub_19BA0B764(buf, "kCLConnectionMessageStopUpdatingMicroLocation", &v24);
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v17 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to stop updating MicroLocation with internal error", "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation with internal error}", buf, 0x12u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"Internal error";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v26, &v25, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"kCLErrorDomainPrivate", 0, v20);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v23, identifier, v22);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to stop updating MicroLocation, not connected to service yet", "{msg%{public}.0s:SPI request, failed to stop updating MicroLocation, not connected to service yet}", buf, 0x12u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Not connected to any service";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v30, &v29, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"kCLErrorDomainPrivate", 10, v12);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v15, identifier, v14);
  }
}

- (void)_requestModelLearningWithRequestIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v31[0] = 2082;
    *&v31[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Request MiLo Learning}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v26[0] = 0x1F0E73DE0;
      v26[1] = 0x1F0E73E60;
      v27[0] = connectedServiceIdentifier;
      v27[1] = identifier;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v27, v26, 2);
      sub_19B960254();
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v31[0] = 2082;
      *&v31[1] = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request MicroLocation learning with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v17 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v31[0] = 2082;
      *&v31[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request MicroLocation learning with internal error", "{msg%{public}.0s:SPI request, failed to request MicroLocation learning with internal error}", buf, 0x12u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"Internal error";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v25, &v24, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"kCLErrorDomainPrivate", 0, v20);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v23, identifier, v22);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v31[0] = 2082;
      *&v31[1] = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request MiLo learning, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v31[0] = 2082;
      *&v31[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request MiLo learning, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request MiLo learning, not connected to service yet}", buf, 0x12u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = @"Not connected to any service";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v29, &v28, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"kCLErrorDomainPrivate", 10, v12);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v15, identifier, v14);
  }
}

- (void)_purgeAllMiLoDataWithRequestIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v20[0] = 2082;
    *&v20[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Request Purge MiLo Data}", buf, 0x12u);
  }

  if (self->_locationdConnection)
  {
    v17 = 0x1F0E73E60;
    identifierCopy = identifier;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, &identifierCopy, &v17, 1);
    sub_19B960254();
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v20[0] = 2082;
    *&v20[1] = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request Purge MiLo Data with internal error}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v8 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v20[0] = 2082;
    *&v20[1] = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request Purge MiLo Data with internal error", "{msg%{public}.0s:SPI request, failed to request Purge MiLo Data with internal error}", buf, 0x12u);
  }

  v10 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v16 = @"Internal error";
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v16, &v15, 1);
  v13 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"kCLErrorDomainPrivate", 0, v11);
  objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v14, identifier, v13);
}

- (void)_requestExportDatabaseWithRequestIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v32[0] = 2082;
    *&v32[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Request Export MiLo Database}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v27[0] = 0x1F0E73DE0;
      v27[1] = 0x1F0E73E60;
      v28[0] = connectedServiceIdentifier;
      v28[1] = identifier;
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v28, v27, 2);
      sub_19BA0B83C(buf, "kCLConnectionMessageRequestMiLoExportDatabaseTables", &v24);
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request Export MiLo Database with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v17 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request Export MiLo Database with internal error", "{msg%{public}.0s:SPI request, failed to request Export MiLo Database with internal error}", buf, 0x12u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"Internal error";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v26, &v25, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"kCLErrorDomainPrivate", 0, v20);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v23, identifier, v22);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to Export MiLo Database, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to Export MiLo Database, not connected to service yet", "{msg%{public}.0s:SPI request, failed to Export MiLo Database, not connected to service yet}", buf, 0x12u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Not connected to any service";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v30, &v29, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"kCLErrorDomainPrivate", 10, v12);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v15, identifier, v14);
  }
}

- (void)_createCustomLocationOfInterestAtCurrentLocationWithRequestIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v5 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v32[0] = 2082;
    *&v32[1] = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SPI request, enable MiLo at current location, kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation}", buf, 0x12u);
  }

  connectedServiceIdentifier = self->_connectedServiceIdentifier;
  if (connectedServiceIdentifier)
  {
    if (self->_locationdConnection)
    {
      v27[0] = 0x1F0E73DE0;
      v27[1] = 0x1F0E73E60;
      v28[0] = connectedServiceIdentifier;
      v28[1] = identifier;
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v28, v27, 2);
      sub_19BA0B83C(buf, "kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation", &v24);
    }

    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to enable MiLo at current location with internal error}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v17 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to enable MiLo at current location with internal error", "{msg%{public}.0s:SPI request, failed to enable MiLo at current location with internal error}", buf, 0x12u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"Internal error";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v26, &v25, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"kCLErrorDomainPrivate", 0, v20);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v23, identifier, v22);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to request enablingMiLo at current location, not connected to service yet}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v32[0] = 2082;
      *&v32[1] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to request enablingMiLo at current location, not connected to service yet", "{msg%{public}.0s:SPI request, failed to request enablingMiLo at current location, not connected to service yet}", buf, 0x12u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Not connected to any service";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v30, &v29, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"kCLErrorDomainPrivate", 10, v12);
    objc_msgSend__notifyClientDidCompleteClientRequest_withError_(self, v15, identifier, v14);
  }
}

@end