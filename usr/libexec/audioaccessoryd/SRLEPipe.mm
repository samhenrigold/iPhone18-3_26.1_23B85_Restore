@interface SRLEPipe
- (SRLEPipe)init;
- (void)_pipeCleanup;
- (void)_pipeDone;
- (void)_pipeEnsureStarted;
- (void)_pipeEnsureStopped;
- (void)_pipeReceivedRouteRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_pipeRequestCompleted:(id)completed error:(id)error;
- (void)_runPipeStates;
- (void)activateWithDispatch:(id)dispatch;
- (void)invalidate;
- (void)pipeConnectionComplete:(id)complete andWxHeadset:(id)headset isSender:(BOOL)sender;
- (void)pipeRequestResponse:(id)response error:(id)error;
- (void)pipeSendRouteRequestToSFDevice:(id)device andWxHeadset:(id)headset newPipe:(BOOL)pipe connectionResult:(id)result completion:(id)completion;
@end

@implementation SRLEPipe

- (SRLEPipe)init
{
  v6.receiver = self;
  v6.super_class = SRLEPipe;
  v2 = [(SRLEPipe *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)activateWithDispatch:(id)dispatch
{
  objc_storeStrong(&self->_dispatchQueue, dispatch);

  [(SRLEPipe *)self _pipeEnsureStarted];
}

- (void)invalidate
{
  selfCopy = self;
  if (dword_1002F7228 <= 30)
  {
    if (dword_1002F7228 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001F83E8(self, a2, v2);
    }
  }

  selfCopy->_invalidateCalled = 1;

  [(SRLEPipe *)selfCopy _pipeCleanup];
}

- (void)_runPipeStates
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    state = self->_state;
    switch(state)
    {
      case 12:
        if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
        {
          sub_1001F8404(selfCopy);
        }

        [(SRLEPipe *)selfCopy _pipeCleanup];
        break;
      case 11:
        if (dword_1002F7228 <= 30)
        {
          if (dword_1002F7228 != -1 || (self = _LogCategory_Initialize(), self))
          {
            sub_1001F8448(self, a2, v2);
          }
        }

        [(SRLEPipe *)selfCopy _pipeDone];
        break;
      case 10:
        self->_state = 11;
        break;
    }

    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      if (state > 10)
      {
        if (state != 11)
        {
          if (state == 12)
          {
            v5 = "BTSmartRoutingPipeError";
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        v5 = "BTSmartRoutingPipeDone";
      }

      else
      {
        if (state)
        {
          if (state == 10)
          {
            v5 = "BTSmartRoutingPipeRequest";
            goto LABEL_28;
          }

LABEL_25:
          v5 = "?";
          goto LABEL_28;
        }

        v5 = "Init";
      }

LABEL_28:
      v6 = selfCopy->_state;
      if (v6 > 10)
      {
        if (v6 == 11)
        {
          v7 = "BTSmartRoutingPipeDone";
          goto LABEL_38;
        }

        if (v6 == 12)
        {
          v7 = "BTSmartRoutingPipeError";
          goto LABEL_38;
        }
      }

      else
      {
        if (!v6)
        {
          v7 = "Init";
          goto LABEL_38;
        }

        if (v6 == 10)
        {
          v7 = "BTSmartRoutingPipeRequest";
LABEL_38:
          LogPrintF(&dword_1002F7228, "[SRLEPipe _runPipeStates]", 30, "State: %s -> %s", v5, v7);
          return;
        }
      }

      v7 = "?";
      goto LABEL_38;
    }
  }
}

- (void)_pipeEnsureStarted
{
  v3 = self->_pipeResponder;
  v6 = v3;
  if (!v3)
  {
    if (dword_1002F7228 <= 30)
    {
      if (dword_1002F7228 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001F8464(v3, v4, v5);
      }
    }

    v6 = objc_alloc_init(RPCompanionLinkClient);
    pipeResponder = self->_pipeResponder;
    self->_pipeResponder = v6;

    [(RPCompanionLinkClient *)v6 setControlFlags:[(RPCompanionLinkClient *)v6 controlFlags]| 2];
    [(RPCompanionLinkClient *)v6 setDispatchQueue:self->_dispatchQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000CB17C;
    v9[3] = &unk_1002B6A38;
    v9[4] = self;
    [(RPCompanionLinkClient *)v6 activateWithCompletion:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000CB218;
    v8[3] = &unk_1002BAFE0;
    v8[4] = self;
    [(RPCompanionLinkClient *)v6 registerRequestID:@"com.apple.SmartRoutingRequest" options:0 handler:v8];
  }
}

- (void)_pipeEnsureStopped
{
  selfCopy = self;
  if (self->_pipeResponder)
  {
    if (dword_1002F7228 <= 30)
    {
      if (dword_1002F7228 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001F84C0(self, a2, v2);
      }
    }

    [(RPCompanionLinkClient *)selfCopy->_pipeResponder invalidate];
    pipeResponder = selfCopy->_pipeResponder;
    selfCopy->_pipeResponder = 0;
  }

  [(SRLEPipe *)selfCopy _pipeCleanup];
  client = selfCopy->_client;
  if (client)
  {
    selfCopy->_client = 0;
  }
}

- (void)_pipeCleanup
{
  inCompletion = self->_inCompletion;
  if (inCompletion)
  {
    if (self->_inError)
    {
      inCompletion[2](self->_inCompletion);
    }

    else
    {
      v4 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "Cleanup before done");
      (inCompletion[2])(inCompletion, v4);
    }

    v5 = self->_inCompletion;
    self->_inCompletion = 0;
  }

  self->_invalidateCalled = 0;
  senderIDS = self->_senderIDS;
  if (senderIDS)
  {
    self->_senderIDS = 0;
  }

  self->_score = 0;
  client = self->_client;
  if (client)
  {
    [(RPCompanionLinkClient *)client invalidate];
    v8 = self->_client;
    self->_client = 0;
  }
}

- (void)pipeConnectionComplete:(id)complete andWxHeadset:(id)headset isSender:(BOOL)sender
{
  senderCopy = sender;
  headsetCopy = headset;
  if (complete)
  {
    v8 = 12;
  }

  else
  {
    v8 = 11;
  }

  selfCopy = self;
  self->_state = v8;
  completeCopy = complete;
  v10 = CUPrintNSError();
  v11 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  pipePendingRequest = [v11 pipePendingRequest];
  timer = [pipePendingRequest timer];

  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  pipePendingRequest2 = [v11 pipePendingRequest];
  [pipePendingRequest2 setTimer:0];

  [v11 setPipePendingRequest:0];
  [v11 _setTipiElectionInProgress:0];
  [v11 _setTipiElectionReceivedLePipe:&stru_1002C1358];
  [v11 _startTipiSetupTicks];
  if (!complete)
  {
    [v11 _setIsFirstConnentionAfterSREnable:0 forDevice:headsetCopy];
  }

  if (headsetCopy)
  {
    v15 = headsetCopy;
  }

  else
  {
    v15 = &stru_1002C1358;
  }

  v16 = v15;
  v17 = [v11 _getWxFWVersion:v16];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1002C1358;
  }

  v20 = v19;

  v21 = [v11 _getWxProductID:v16];
  v31[0] = @"pipeError";
  v31[1] = @"pipeError2";
  v32[0] = v10;
  v32[1] = v10;
  v31[2] = @"pipeErrorCode";
  v28 = v10;
  code = [completeCopy code];

  v23 = [NSNumber numberWithInteger:code];
  v32[2] = v23;
  v32[3] = v20;
  v31[3] = @"wxBuildVersion";
  v31[4] = @"wxPD";
  v24 = [NSNumber numberWithUnsignedInt:v21];
  v32[4] = v24;
  v31[5] = @"isSender";
  v25 = [NSNumber numberWithBool:senderCopy];
  v32[5] = v25;
  v31[6] = @"isSender2";
  v26 = [NSNumber numberWithBool:senderCopy];
  v32[6] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:7];

  CUMetricsLogEx();
  [(SRLEPipe *)selfCopy _runPipeStates];
}

- (void)pipeSendRouteRequestToSFDevice:(id)device andWxHeadset:(id)headset newPipe:(BOOL)pipe connectionResult:(id)result completion:(id)completion
{
  pipeCopy = pipe;
  deviceCopy = device;
  headsetCopy = headset;
  resultCopy = result;
  completionCopy = completion;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = pipeCopy;
  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = v16;
  if (pipeCopy)
  {
    v18 = objc_alloc_init(RPCompanionLinkDevice);
    [v18 setIdentifier:deviceCopy];
    inError = self->_inError;
    self->_inError = 0;

    v20 = objc_retainBlock(completionCopy);
    inCompletion = self->_inCompletion;
    self->_inCompletion = v20;

    objc_storeStrong(&self->_senderIDS, device);
    v22 = objc_alloc_init(RPCompanionLinkClient);
    objc_storeStrong(&self->_client, v22);
    [v22 setControlFlags:{objc_msgSend(v22, "controlFlags") | 0x600100}];
    [v22 setDestinationDevice:v18];
    [v22 setDispatchQueue:self->_dispatchQueue];
    if (objc_opt_respondsToSelector())
    {
      [v22 setBleClientUseCase:18];
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000CBB54;
    v40[3] = &unk_1002B68A8;
    v40[4] = self;
    v23 = headsetCopy;
    v41 = v23;
    [v22 activateWithCompletion:v40];
    self->_state = 10;
    v24 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    _myBluetoothAddressString = [v24 _myBluetoothAddressString];
    [v17 setObject:_myBluetoothAddressString forKeyedSubscript:@"btAddress"];

    v26 = GestaltCopyAnswer();
    [v17 setObject:v26 forKeyedSubscript:@"btName"];

    v27 = [NSNumber numberWithUnsignedInt:arc4random()];
    [v17 setObject:v27 forKeyedSubscript:@"btXID"];

    [v17 setObject:v23 forKeyedSubscript:@"wxAddress"];
    [v17 setObject:&off_1002CB638 forKeyedSubscript:@"version"];
  }

  else
  {
    [v16 setObject:resultCopy forKeyedSubscript:@"btConnectionResult"];
    [v17 setObject:&off_1002CB638 forKeyedSubscript:@"version"];
    [v17 setObject:headsetCopy forKeyedSubscript:@"wxAddress"];
  }

  v28 = self->_client;
  if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F7228, "[SRLEPipe pipeSendRouteRequestToSFDevice:andWxHeadset:newPipe:connectionResult:completion:]", 30, "Send route request start: peer %@, %##@", deviceCopy, v17);
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = mach_absolute_time();
  v44 = RPOptionTimeoutSeconds;
  v45 = &off_1002CB8B8;
  v29 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000CBBE4;
  v33[3] = &unk_1002BB008;
  v30 = deviceCopy;
  v34 = v30;
  selfCopy = self;
  v31 = headsetCopy;
  v36 = v31;
  v37 = v39;
  v38 = v42;
  [(RPCompanionLinkClient *)v28 sendRequestID:@"com.apple.SmartRoutingRequest" request:v17 options:v29 responseHandler:v33];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v42, 8);
}

- (void)_pipeReceivedRouteRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  CFStringGetTypeID();
  v69 = optionsCopy;
  v10 = CFDictionaryGetTypedValue();
  v11 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  pipePendingRequest = [v11 pipePendingRequest];
  if (!pipePendingRequest || ([v11 pipePendingRequest], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "senderIDS"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v10), v14, v13, pipePendingRequest, (v15 & 1) != 0))
  {
    v16 = objc_alloc_init(SRPipeRequest);
    v17 = NSDictionaryGetNSNumber();
    [(SRPipeRequest *)v16 setBtXID:v17];

    [(SRPipeRequest *)v16 setRequest:requestCopy];
    [(SRPipeRequest *)v16 setResponseHandler:handlerCopy];
    [(SRPipeRequest *)v16 setSenderIDS:v10];
    v91 = 0;
    v92 = &v91;
    v93 = 0x3032000000;
    v94 = sub_1000039A8;
    v95 = sub_100003880;
    v96 = 0;
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_1000CCC9C;
    v85[3] = &unk_1002BB030;
    v90 = &v91;
    v18 = v10;
    v86 = v18;
    v19 = requestCopy;
    v87 = v19;
    selfCopy = self;
    v89 = v16;
    v20 = objc_retainBlock(v85);
    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeReceivedRouteRequest:options:responseHandler:]", 30, "Received route request: from %@, %##@", v18, v19);
    }

    [v11 _powerLogSmartIncomingConnection];
    v21 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    _isForceRejectPipe = [v21 _isForceRejectPipe];

    if (_isForceRejectPipe)
    {
      if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeReceivedRouteRequest:options:responseHandler:]", 30, "Reject any LE pipe because default write is enabled");
      }

      v23 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "The device is forced to reject any LE pipe as default write enabled");
      v24 = v92[5];
      v92[5] = v23;
      goto LABEL_57;
    }

    CFStringGetTypeID();
    v66 = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v67 = CFDictionaryGetTypedValue();
    v68 = [v19 objectForKey:@"version"];
    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeReceivedRouteRequest:options:responseHandler:]", 30, "Version %@", v68);
    }

    [(SRPipeRequest *)v16 setVersion:v68];
    [v68 doubleValue];
    if (v25 >= 1.2)
    {
      if (v66)
      {
        pipePendingRequest2 = [v11 pipePendingRequest];
        v27 = pipePendingRequest2 == 0;

        if (!v27)
        {
          pipePendingRequest3 = [v11 pipePendingRequest];
          progressStarted = [pipePendingRequest3 progressStarted];

          if (progressStarted)
          {
            pipePendingRequest4 = [v11 pipePendingRequest];
            [pipePendingRequest4 setProgressStarted:0];

            [v11 _setTipiElectionInProgress:0];
            [v11 _setTipiElectionReceivedLePipe:&stru_1002C1358];
            [(SRLEPipe *)self _pipeRequestCompleted:v16 error:0];
            if ([v66 isEqual:@"connectionResultError"])
            {
              if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeReceivedRouteRequest:options:responseHandler:]", 90, "Connection result is failure. Remove knowledge of other %@", v68);
              }

              pipePendingRequest5 = [v11 pipePendingRequest];
              wxAddress = [pipePendingRequest5 wxAddress];

              v49 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
              v50 = NSErrorF(NSOSStatusErrorDomain, 4294960595, "Connection failed");
              [v49 _updateOtherTipiDevice:wxAddress otherAddress:0 otherName:0 otherVersion:0 withResult:v50];

              v60 = NSErrorF(NSOSStatusErrorDomain, 4294960595, "Connection failed");
              [(SRLEPipe *)self pipeConnectionComplete:v60 andWxHeadset:wxAddress isSender:0];

              goto LABEL_55;
            }

            [(SRLEPipe *)self pipeConnectionComplete:0 andWxHeadset:v67 isSender:0];
            [v11 _sendAudioCategoryViaWx:v67];
            v45 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
            [v45 _updateOtherTipiBuildVersion:v67];

            v63 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
            [v63 _notifyOtherTipiDeviceTipiScoreChanged:0 andNewScore:0];
          }

LABEL_56:

          v24 = v66;
LABEL_57:

          (v20[2])(v20);
          _Block_object_dispose(&v91, 8);

          goto LABEL_58;
        }
      }
    }

    pipePendingRequest6 = [v11 pipePendingRequest];

    if (pipePendingRequest6)
    {
      if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeReceivedRouteRequest:options:responseHandler:]", 30, "Previous pipe request exists, clean it up");
      }

      pipePendingRequest7 = [v11 pipePendingRequest];
      timer = [pipePendingRequest7 timer];

      if (timer)
      {
        dispatch_source_cancel(timer);
      }

      pipePendingRequest8 = [v11 pipePendingRequest];
      [pipePendingRequest8 setTimer:0];

      [v11 setPipePendingRequest:0];
    }

    CFStringGetTypeID();
    wxAddress = CFDictionaryGetTypedValue();
    if (!wxAddress)
    {
      v51 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "No device address");
      v61 = v92[5];
      v92[5] = v51;

      goto LABEL_55;
    }

    CFStringGetTypeID();
    v59 = CFDictionaryGetTypedValue();
    if (v59)
    {
      if (![v11 _isUSBPluggedIn:v67])
      {
        v64 = [v11 _verifyWxConnectedBTAddress:v67 withVersion:v68];
        identifier = [v64 identifier];
        v37 = [identifier isEqualToString:@"FF:FF:FF:FF:FF:FF"];

        if (v37)
        {
          v38 = NSErrorF(NSOSStatusErrorDomain, 4294960587, "Source has SR disabled!!! BACK OFF!");
          v39 = v92[5];
          v92[5] = v38;
        }

        else
        {
          btAddressData = [v64 btAddressData];
          v58 = CUPrintNSDataAddress();

          if ([v11 _verifyWxConnectedRouted:v58])
          {
            v41 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
            [(SRPipeRequest *)v16 setTimer:v41];
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_1000CCD64;
            handler[3] = &unk_1002BB058;
            v79 = v18;
            v80 = v19;
            selfCopy2 = self;
            v82 = v16;
            v83 = v11;
            v42 = v64;
            v84 = v42;
            dispatch_source_set_event_handler(v41, handler);
            CUDispatchTimerSet();
            dispatch_activate(v41);
            [(SRPipeRequest *)v16 setWxAddress:v58];
            v55 = v41;
            v43 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
            _myBluetoothAddressString = [v43 _myBluetoothAddressString];

            if (_myBluetoothAddressString)
            {
              v97[0] = _myBluetoothAddressString;
              v97[1] = wxAddress;
              v44 = [NSArray arrayWithObjects:v97 count:2];
              if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeReceivedRouteRequest:options:responseHandler:]", 30, "Route request update Tipi table: Wx %@, addresses %##@", v42, v44);
              }

              [v11 setPipePendingRequest:v16];
              [v11 _setTipiElectionInProgress:1];
              [v11 _setTipiElectionReceivedLePipe:v58];
              [(SRPipeRequest *)v16 setProgressStarted:1];
              [v11 _startTipiSetupTicks];
              btAddressData2 = [v42 btAddressData];
              v47 = CUPrintNSDataAddress();
              [v11 _updateOtherTipiDevice:v47 otherAddress:wxAddress otherName:v59 otherVersion:v68 withResult:0];

              v71[0] = _NSConcreteStackBlock;
              v71[1] = 3221225472;
              v71[2] = sub_1000CCE84;
              v71[3] = &unk_1002BB080;
              v72 = v67;
              v73 = v44;
              v74 = v11;
              v75 = v42;
              selfCopy3 = self;
              v77 = v16;
              [v11 _updateAccessoryID:v75 connectionDeviceAddresses:v44 completion:v71];
            }

            else
            {
              v54 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "No self Bluetooth address.");
              v44 = v92[5];
              v92[5] = v54;
            }
          }

          else
          {
            v53 = NSErrorF(NSOSStatusErrorDomain, 4294960576, "Wx device is not routed... reject incoming pipe!");
            v56 = v92[5];
            v92[5] = v53;
          }

          v39 = v58;
        }

        goto LABEL_54;
      }

      v52 = NSErrorF(NSOSStatusErrorDomain, 4294960587, "Wx device is USB plugged in!!! BACK OFF!");
    }

    else
    {
      v52 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "No device name");
    }

    v65 = v92[5];
    v92[5] = v52;

LABEL_54:
LABEL_55:

    goto LABEL_56;
  }

  if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8538(v11, v10);
  }

  v32 = NSErrorF(NSOSStatusErrorDomain, 4294960595, "Reject connection already have pending request.");
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v32);

LABEL_58:
}

- (void)_pipeRequestCompleted:(id)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = v6;
  if (errorCopy)
  {
    v8 = @"NO";
  }

  else
  {
    v8 = @"YES";
  }

  [v6 setObject:v8 forKeyedSubscript:@"connectionResultACK"];
  wxAddress = [completedCopy wxAddress];
  [v7 setObject:wxAddress forKeyedSubscript:@"wxAddress"];

  [v7 setObject:&off_1002CB638 forKeyedSubscript:@"version"];
  btXID = [completedCopy btXID];
  [v7 setObject:btXID forKeyedSubscript:@"btXID"];

  if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F865C(completedCopy, v7);
  }

  responseHandler = [completedCopy responseHandler];
  v12 = responseHandler;
  if (responseHandler)
  {
    (*(responseHandler + 16))(responseHandler, v7, 0, errorCopy);
  }

  [completedCopy setResponseHandler:0];
  timer = [completedCopy timer];
  v14 = timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  [completedCopy setTimer:0];
}

- (void)pipeRequestResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F86F4(responseCopy, errorCopy);
    }

    responseHandler = [responseCopy responseHandler];
    v8 = responseHandler;
    if (responseHandler)
    {
      (*(responseHandler + 16))(responseHandler, 0, 0, errorCopy);
    }

    [responseCopy setResponseHandler:0];
    timer = [responseCopy timer];
    v10 = timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
    }

    [responseCopy setTimer:0];
    wxAddress = [responseCopy wxAddress];
    [(SRLEPipe *)self pipeConnectionComplete:errorCopy andWxHeadset:wxAddress isSender:0];
  }

  else
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v12 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    _myBluetoothAddressString = [v12 _myBluetoothAddressString];
    [v10 setObject:_myBluetoothAddressString forKeyedSubscript:@"btAddress"];

    v14 = GestaltCopyAnswer();
    [v10 setObject:v14 forKeyedSubscript:@"btName"];

    [v10 setObject:&off_1002CB638 forKeyedSubscript:@"version"];
    btXID = [responseCopy btXID];
    [v10 setObject:btXID forKeyedSubscript:@"btXID"];

    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8780(responseCopy, v10);
    }

    responseHandler2 = [responseCopy responseHandler];
    v17 = responseHandler2;
    if (responseHandler2)
    {
      (*(responseHandler2 + 16))(responseHandler2, v10, 0, 0);
    }

    [responseCopy setResponseHandler:0];
  }
}

- (void)_pipeDone
{
  inCompletion = self->_inCompletion;
  if (inCompletion)
  {
    inCompletion[2](inCompletion, 0);
    v4 = self->_inCompletion;
    self->_inCompletion = 0;
  }

  [(SRLEPipe *)self _pipeCleanup];
}

@end