@interface MTRCommissioningOperation
- (BOOL)stop;
- (MTRCommissioningOperation)initWithParameters:(id)parameters setupPayload:(id)payload commissioningID:(id)d isInternallyCreated:(BOOL)created delegate:(id)delegate queue:(id)queue;
- (MTRCommissioningOperation)initWithParameters:(id)parameters setupPayload:(id)payload delegate:(id)delegate queue:(id)queue;
- (id)_internalDelegate;
- (void)_dispatchCommissioningCHIPError:(ChipError)error;
- (void)_dispatchCommissioningError:(id)error;
- (void)_dispatchCommissioningError:(id)error forCommissioningID:(id)d withMetrics:(id)metrics;
- (void)_earlyFailCommissioning:(ChipError)commissioning;
- (void)controller:(id)controller commissioneeHasReceivedNetworkCredentials:(id)credentials;
- (void)controller:(id)controller commissioningComplete:(id)complete nodeID:(id)d metrics:(id)metrics;
- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done;
- (void)controller:(id)controller readCommissioneeInfo:(id)info;
- (void)controller:(id)controller scannedThreadNetworks:(id)networks error:(id)error;
- (void)controller:(id)controller scannedWiFiNetworks:(id)networks error:(id)error;
- (void)controller:(id)controller statusUpdate:(int64_t)update;
- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error;
- (void)startWithController:(id)controller;
@end

@implementation MTRCommissioningOperation

- (MTRCommissioningOperation)initWithParameters:(id)parameters setupPayload:(id)payload delegate:(id)delegate queue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  payloadCopy = payload;
  delegateCopy = delegate;
  queueCopy = queue;
  v20 = 0;
  if (sub_2394F4614(&v20))
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_2393C9138();
      *buf = 136315138;
      v22 = v15;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Unable to generate a commissioning identifier: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v16 = sub_2393C9138();
      sub_2393D5320(0, 1, "Unable to generate a commissioning identifier: %s", v16);
    }

    selfCopy = 0;
  }

  else
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
    self = [(MTRCommissioningOperation *)self initWithParameters:parametersCopy setupPayload:payloadCopy commissioningID:v18 isInternallyCreated:0 delegate:delegateCopy queue:queueCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (MTRCommissioningOperation)initWithParameters:(id)parameters setupPayload:(id)payload commissioningID:(id)d isInternallyCreated:(BOOL)created delegate:(id)delegate queue:(id)queue
{
  v28 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  payloadCopy = payload;
  dCopy = d;
  obj = delegate;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = MTRCommissioningOperation;
  v17 = [(MTRCommissioningOperation *)&v25 init];
  if (!v17)
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if (!parametersCopy || !payloadCopy || !dCopy || !queueCopy)
  {
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%@ Invalid nil argument to initWithParameters", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Invalid nil argument to initWithParameters", v17);
    }

    goto LABEL_11;
  }

  v18 = [parametersCopy copy];
  parameters = v17->_parameters;
  v17->_parameters = v18;

  objc_storeStrong(&v17->_setupPayload, payload);
  objc_storeStrong(&v17->_commissioningID, d);
  v17->_isInternallyCreated = created;
  objc_storeWeak(&v17->_delegate, obj);
  objc_storeStrong(&v17->_delegateQueue, queue);
  [(MTRCommissioningParameters *)v17->_parameters setDeviceAttestationDelegate:0];
  v20 = v17;
LABEL_12:

  return v20;
}

- (void)startWithController:(id)controller
{
  v38 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = controllerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = controllerCopy;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ Cannot start commissioning with a non-concrete controller: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Cannot start commissioning with a non-concrete controller: %@", self, controllerCopy);
    }

    v8 = 0x850000002FLL;
    goto LABEL_22;
  }

  objc_storeWeak(&self->_controller, v6);
  if ([controllerCopy isSuspended])
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = controllerCopy;
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ suspended: can't start commissioning %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ suspended: can't start commissioning %@", controllerCopy, self);
    }

    v8 = 0x8D00000003;
LABEL_22:
    [(MTRCommissioningOperation *)self _earlyFailCommissioning:v8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCommissioningOperation.mm"];
    goto LABEL_23;
  }

  currentCommissioning = [v6 currentCommissioning];

  v11 = sub_2393D9044(0);
  v12 = v11;
  if (currentCommissioning)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      currentCommissioning2 = [v6 currentCommissioning];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = currentCommissioning2;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ Cannot start commissioning because commissioning %@ already in progress", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      currentCommissioning3 = [v6 currentCommissioning];
      sub_2393D5320(0, 1, "%@ Cannot start commissioning because commissioning %@ already in progress", self, currentCommissioning3);
    }

    v8 = 0x93000000DBLL;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = WeakRetained;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ starting commissioning with controller %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    v16 = objc_loadWeakRetained(&self->_controller);
    sub_2393D5320(0, 2, "%@ starting commissioning with controller %@", self, v16);
  }

  if (!self->_isInternallyCreated)
  {
    v17 = +[MTRMetricsCollector sharedInstance];
    [v17 resetMetrics];

    *buf = 0;
    *&buf[8] = "dwnfw_device_commissioning";
    buf[20] = 0;
    sub_23948BD20(buf);
    v18 = self->_setupPayload;
    memset(buf, 0, sizeof(buf));
    v19 = v18;
    uTF8String = [(NSString *)v18 UTF8String];
    v21 = strlen(uTF8String);
    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_238DCEB40();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      operator new();
    }

    v36 = v21;
    if (v21)
    {
      memmove(&__dst, uTF8String, v21);
    }

    *(&__dst + v22) = 0;
    v23 = sub_239490924(&__dst, buf);
    if (v36 < 0)
    {
      operator delete(__dst);
    }

    if (v23)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Unable to parse setup payload to extract VID/PID", v31, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Unable to parse setup payload to extract VID/PID");
      }
    }

    else if (*buf == *&buf[8])
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Setup payload parsing succeeded but somehow did not create any payloads we can get a VID/PID from", v31, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Setup payload parsing succeeded but somehow did not create any payloads we can get a VID/PID from");
      }
    }

    else
    {
      v24 = *(*buf + 2);
      *v31 = 2;
      v32 = "dwnfw_device_vendor_id";
      v33 = v24;
      v34 = 2;
      sub_23948BD20(v31);
      v25 = *(*buf + 4);
      *v31 = 2;
      v32 = "dwnfw_device_product_id";
      v33 = v25;
      v34 = 2;
      sub_23948BD20(v31);
    }

    *v31 = buf;
    sub_239227730(v31);
  }

  v27 = [v6 startCommissioning:self withCommissioningID:self->_commissioningID];
  if (v27)
  {
    v28 = v26;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_loadWeakRetained(&self->_controller);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ failed to start commissioning with controller %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v30 = objc_loadWeakRetained(&self->_controller);
      sub_2393D5320(0, 1, "%@ failed to start commissioning with controller %@", self, v30);
    }

    [(MTRCommissioningOperation *)self _dispatchCommissioningCHIPError:v27, v28];
  }

LABEL_23:
}

- (BOOL)stop
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained stopCommissioning:self forCommissioningID:self->_commissioningID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_earlyFailCommissioning:(ChipError)commissioning
{
  mFile = commissioning.mFile;
  v4 = *&commissioning.mError;
  v7 = [[MTRMetrics alloc] initWithCapacity:0];
  v6 = sub_23921C1E4(MTRError, v4, mFile);
  [(MTRCommissioningOperation *)self _dispatchCommissioningError:v6 withMetrics:v7];
}

- (void)_dispatchCommissioningCHIPError:(ChipError)error
{
  mFile = error.mFile;
  v4 = *&error.mError;
  v9 = 1;
  v10 = "dwnfw_device_commissioning";
  mError = error.mError;
  v12 = 3;
  sub_23948BD20(&v9);
  v6 = +[MTRMetricsCollector sharedInstance];
  v7 = [v6 metricSnapshotForCommissioning:1];

  v8 = sub_23921C1E4(MTRError, v4, mFile);
  [(MTRCommissioningOperation *)self _dispatchCommissioningError:v8 withMetrics:v7];
}

- (void)_dispatchCommissioningError:(id)error
{
  errorCopy = error;
  v7 = 1;
  v8 = "dwnfw_device_commissioning";
  v9 = sub_23921D408(MTRError, errorCopy);
  v10 = 3;
  sub_23948BD20(&v7);
  v5 = +[MTRMetricsCollector sharedInstance];
  v6 = [v5 metricSnapshotForCommissioning:1];

  [(MTRCommissioningOperation *)self _dispatchCommissioningError:errorCopy withMetrics:v6];
}

- (void)_dispatchCommissioningError:(id)error forCommissioningID:(id)d withMetrics:(id)metrics
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dCopy = d;
  metricsCopy = metrics;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v27 = 2112;
    v28 = WeakRetained;
    v29 = 2112;
    v30 = metricsCopy;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ Device commissioning failed with controller %@ metrics %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ Device commissioning failed with controller %@ metrics %@", self, WeakRetained, metricsCopy);
  }

  _internalDelegate = [(MTRCommissioningOperation *)self _internalDelegate];
  objc_storeWeak(&self->_delegate, 0);
  [WeakRetained commissioningDone:self];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239226164;
  block[3] = &unk_278A723D0;
  v20 = _internalDelegate;
  selfCopy2 = self;
  v22 = errorCopy;
  v23 = dCopy;
  v24 = metricsCopy;
  v15 = metricsCopy;
  v16 = dCopy;
  v17 = errorCopy;
  v18 = _internalDelegate;
  dispatch_async(delegateQueue, block);
}

- (id)_internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)controller:(id)controller statusUpdate:(int64_t)update
{
  _internalDelegate = [(MTRCommissioningOperation *)self _internalDelegate];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392262D4;
  block[3] = &unk_278A715B0;
  v10 = _internalDelegate;
  selfCopy = self;
  updateCopy = update;
  v8 = _internalDelegate;
  dispatch_async(delegateQueue, block);
}

- (void)controller:(id)controller commissioningSessionEstablishmentDone:(id)done
{
  v28 = *MEMORY[0x277D85DE8];
  doneCopy = done;
  _internalDelegate = [(MTRCommissioningOperation *)self _internalDelegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2392265A8;
    block[3] = &unk_278A71650;
    block[4] = self;
    v18 = _internalDelegate;
    v19 = doneCopy;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    if (WeakRetained)
    {
      v9 = objc_alloc_init(MTRCommissioningOperationDeviceAttestationDelegate);
      [(MTRCommissioningOperationDeviceAttestationDelegate *)v9 setCommissioningOperation:self];
      [(MTRCommissioningParameters *)self->_parameters setDeviceAttestationDelegate:v9];
      parameters = self->_parameters;
      commissioningID = self->_commissioningID;
      v16 = 0;
      v12 = [WeakRetained commission:self withCommissioningID:commissioningID commissioningParams:parameters error:&v16];
      v13 = v16;
      if ((v12 & 1) == 0)
      {
        v14 = sub_2393D9044(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_parameters;
          *buf = 138413058;
          selfCopy = self;
          v22 = 2112;
          v23 = WeakRetained;
          v24 = 2112;
          v25 = v15;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ attempt to start commissioning with controller %@ and parameters %@ failed: %@", buf, 0x2Au);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "%@ attempt to start commissioning with controller %@ and parameters %@ failed: %@", self, WeakRetained, self->_parameters, v13);
        }

        [(MTRCommissioningOperation *)self _dispatchCommissioningError:v13];
        [(MTRCommissioningOperation *)self stop];
      }
    }
  }
}

- (void)controller:(id)controller commissioningComplete:(id)complete nodeID:(id)d metrics:(id)metrics
{
  completeCopy = complete;
  dCopy = d;
  metricsCopy = metrics;
  if (completeCopy)
  {
    [(MTRCommissioningOperation *)self _dispatchCommissioningError:completeCopy forCommissioningID:dCopy withMetrics:metricsCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_loadWeakRetained(&self->_controller);
    objc_storeWeak(&self->_delegate, 0);
    [v13 commissioningDone:self];
    delegateQueue = self->_delegateQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_23922675C;
    v16[3] = &unk_278A73AC8;
    v17 = WeakRetained;
    selfCopy = self;
    v19 = dCopy;
    v20 = metricsCopy;
    v15 = WeakRetained;
    dispatch_async(delegateQueue, v16);
  }
}

- (void)controller:(id)controller readCommissioneeInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922687C;
  block[3] = &unk_278A71650;
  v11 = WeakRetained;
  selfCopy = self;
  v13 = infoCopy;
  v8 = infoCopy;
  v9 = WeakRetained;
  dispatch_async(delegateQueue, block);
}

- (void)controller:(id)controller commissioneeHasReceivedNetworkCredentials:(id)credentials
{
  credentialsCopy = credentials;
  _internalDelegate = [(MTRCommissioningOperation *)self _internalDelegate];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392269B0;
  block[3] = &unk_278A71650;
  v11 = _internalDelegate;
  selfCopy = self;
  v13 = credentialsCopy;
  v8 = credentialsCopy;
  v9 = _internalDelegate;
  dispatch_async(delegateQueue, block);
}

- (void)controller:(id)controller scannedWiFiNetworks:(id)networks error:(id)error
{
  networksCopy = networks;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  delegateQueue = self->_delegateQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_239226B30;
  v14[3] = &unk_278A73AC8;
  v14[4] = self;
  v15 = WeakRetained;
  v16 = networksCopy;
  v17 = errorCopy;
  v11 = errorCopy;
  v12 = networksCopy;
  v13 = WeakRetained;
  dispatch_async(delegateQueue, v14);
}

- (void)controller:(id)controller scannedThreadNetworks:(id)networks error:(id)error
{
  networksCopy = networks;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  delegateQueue = self->_delegateQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_239226F0C;
  v14[3] = &unk_278A73AC8;
  v14[4] = self;
  v15 = WeakRetained;
  v16 = networksCopy;
  v17 = errorCopy;
  v11 = errorCopy;
  v12 = networksCopy;
  v13 = WeakRetained;
  dispatch_async(delegateQueue, v14);
}

- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392272D8;
  block[3] = &unk_278A73E58;
  block[4] = self;
  v17 = WeakRetained;
  v18 = infoCopy;
  v19 = errorCopy;
  handleCopy = handle;
  v13 = errorCopy;
  v14 = infoCopy;
  v15 = WeakRetained;
  dispatch_async(delegateQueue, block);
}

@end