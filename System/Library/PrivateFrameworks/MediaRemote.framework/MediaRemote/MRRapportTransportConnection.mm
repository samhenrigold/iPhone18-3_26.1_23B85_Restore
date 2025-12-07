@interface MRRapportTransportConnection
- (BOOL)_targetDeviceMatch:(id)match deviceUID:(id)d;
- (MRRapportTransportConnection)initWithCompanionLinkClient:(id)client device:(id)device sessionUID:(id)d;
- (MRRapportTransportConnection)initWithDeviceUID:(id)d sessionUID:(id)iD targetDevice:(id *)device error:(id *)error;
- (unint64_t)sendTransportData:(id)data options:(id)options;
- (void)_registerCallbacks;
- (void)closeWithError:(id)error;
@end

@implementation MRRapportTransportConnection

- (MRRapportTransportConnection)initWithCompanionLinkClient:(id)client device:(id)device sessionUID:(id)d
{
  clientCopy = client;
  deviceCopy = device;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = MRRapportTransportConnection;
  v12 = [(MRExternalDeviceTransportConnection *)&v17 initWithDataSource:self];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionUID, d);
    objc_storeStrong(&v13->_connection, client);
    [(RPCompanionLinkClient *)v13->_connection setDestinationDevice:deviceCopy];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.remotecontrol.event.%@", v13->_sessionUID];
    eventID = v13->_eventID;
    v13->_eventID = v14;

    [(MRRapportTransportConnection *)v13 _registerCallbacks];
  }

  return v13;
}

- (MRRapportTransportConnection)initWithDeviceUID:(id)d sessionUID:(id)iD targetDevice:(id *)device error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__50;
  v59 = __Block_byref_object_dispose__50;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__50;
  v53 = __Block_byref_object_dispose__50;
  v54 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E69C6B70]);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.mediaremote.MRRapportTransportConnection.rapport", v8);
  [v7 setDispatchQueue:v9];

  v10 = dispatch_semaphore_create(0);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __80__MRRapportTransportConnection_initWithDeviceUID_sessionUID_targetDevice_error___block_invoke;
  v46[3] = &unk_1E769A2F0;
  v48 = &v55;
  v11 = v10;
  v47 = v11;
  [v7 activateWithCompletion:v46];
  v12 = dispatch_time(0, 7000000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  if (v13 >= 1)
  {
    v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26 format:{@"Failed to activate companionLinkClient in %d seconds", 7}];
    v15 = v56[5];
    v56[5] = v14;
  }

  if (v56[5])
  {
    goto LABEL_16;
  }

  v16 = dispatch_semaphore_create(0);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __80__MRRapportTransportConnection_initWithDeviceUID_sessionUID_targetDevice_error___block_invoke_2;
  v41[3] = &unk_1E76A47A0;
  selfCopy = self;
  v42 = selfCopy;
  v18 = dCopy;
  v43 = v18;
  v45 = &v49;
  v19 = v16;
  v44 = v19;
  [v7 setDeviceFoundHandler:v41];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  activeDevices = [v7 activeDevices];
  v21 = [activeDevices countByEnumeratingWithState:&v37 objects:v65 count:16];
  if (v21)
  {
    v22 = *v38;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(activeDevices);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        if ([(MRRapportTransportConnection *)selfCopy _targetDeviceMatch:v24 deviceUID:v18])
        {
          objc_storeStrong(v50 + 5, v24);
          dispatch_semaphore_signal(v19);
        }
      }

      v21 = [activeDevices countByEnumeratingWithState:&v37 objects:v65 count:16];
    }

    while (v21);
  }

  v25 = dispatch_time(0, 7000000000);
  if (dispatch_semaphore_wait(v19, v25) >= 1)
  {
    v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26 format:{@"Failed to discover companionLinkDevice for %@ in %d seconds", v18, 7}];
    v27 = v56[5];
    v56[5] = v26;
  }

  if (v56[5])
  {
LABEL_16:
    v28 = MRLogCategoryConnections(v13);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = v56[5];
      *buf = 138543618;
      v62 = v29;
      v63 = 2112;
      v64 = dCopy;
      _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_ERROR, "[MRRapportTransportConnection] Error %{public}@ creating rapportTransportConnection for %@", buf, 0x16u);
    }

    v30 = 0;
    if (error)
    {
      *error = v56[5];
    }
  }

  else
  {
    if (device)
    {
      *device = v50[5];
    }

    v30 = [(MRRapportTransportConnection *)selfCopy initWithCompanionLinkClient:v7 device:v50[5] sessionUID:iDCopy];
    self = v30;
  }

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  return v30;
}

void __80__MRRapportTransportConnection_initWithDeviceUID_sessionUID_targetDevice_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __80__MRRapportTransportConnection_initWithDeviceUID_sessionUID_targetDevice_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) _targetDeviceMatch:? deviceUID:?])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    dispatch_semaphore_signal(*(a1 + 48));
  }
}

- (unint64_t)sendTransportData:(id)data options:(id)options
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = MRLogCategoryConnections([v7 setObject:dataCopy forKeyedSubscript:@"data"]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [dataCopy length];
    destinationDevice = [(RPCompanionLinkClient *)self->_connection destinationDevice];
    effectiveIdentifier = [destinationDevice effectiveIdentifier];
    destinationDevice2 = [(RPCompanionLinkClient *)self->_connection destinationDevice];
    name = [destinationDevice2 name];
    destinationOutputDeviceUID = [(MRExternalDeviceTransportConnection *)self destinationOutputDeviceUID];
    sessionUID = [(MRRapportTransportConnection *)self sessionUID];
    *buf = 134219010;
    v26 = v9;
    v27 = 2114;
    v28 = effectiveIdentifier;
    v29 = 2114;
    v30 = name;
    v31 = 2114;
    v32 = destinationOutputDeviceUID;
    v33 = 2114;
    v34 = sessionUID;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRRapportTransportConnection] Writing %llu bytes to device=%{public}@(%{public}@) destination=%{public}@, session=%{public}@", buf, 0x34u);
  }

  objc_initWeak(buf, self);
  connection = self->_connection;
  eventID = [(MRRapportTransportConnection *)self eventID];
  destinationDevice3 = [(RPCompanionLinkClient *)self->_connection destinationDevice];
  effectiveIdentifier2 = [destinationDevice3 effectiveIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__MRRapportTransportConnection_sendTransportData_options___block_invoke;
  v23[3] = &unk_1E769D2F8;
  objc_copyWeak(&v24, buf);
  [(RPCompanionLinkClient *)connection sendEventID:eventID event:v7 destinationID:effectiveIdentifier2 options:0 completion:v23];

  v19 = [dataCopy length];
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  return v19;
}

void __58__MRRapportTransportConnection_sendTransportData_options___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121 format:{@"companionLinkClient.sendEvent error %@", v5}];
    [WeakRetained closeWithError:v4];
  }
}

- (void)closeWithError:(id)error
{
  connection = self->_connection;
  errorCopy = error;
  [(RPCompanionLinkClient *)connection invalidate];
  [(MRExternalDeviceTransportConnection *)self _notifyDelegateDidCloseWithError:errorCopy];
}

- (BOOL)_targetDeviceMatch:(id)match deviceUID:(id)d
{
  matchCopy = match;
  dCopy = d;
  effectiveIdentifier = [matchCopy effectiveIdentifier];
  if (objc_msgSend_isEqualToString_(effectiveIdentifier))
  {
    isEqualToString = 1;
  }

  else
  {
    mediaRouteIdentifier = [matchCopy mediaRouteIdentifier];
    isEqualToString = objc_msgSend_isEqualToString_(mediaRouteIdentifier);
  }

  return isEqualToString;
}

- (void)_registerCallbacks
{
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__MRRapportTransportConnection__registerCallbacks__block_invoke;
  v9[3] = &unk_1E769B178;
  objc_copyWeak(&v10, &location);
  [(RPCompanionLinkClient *)self->_connection setInvalidationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MRRapportTransportConnection__registerCallbacks__block_invoke_2;
  v7[3] = &unk_1E76A47C8;
  objc_copyWeak(&v8, &location);
  [(RPCompanionLinkClient *)self->_connection setDeviceLostHandler:v7];
  connection = self->_connection;
  eventID = [(MRRapportTransportConnection *)self eventID];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRRapportTransportConnection__registerCallbacks__block_invoke_3;
  v5[3] = &unk_1E76A47F0;
  objc_copyWeak(&v6, &location);
  [(RPCompanionLinkClient *)connection registerEventID:eventID options:0 handler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50__MRRapportTransportConnection__registerCallbacks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121 description:@"companionLinkClient.invalidation"];
    [v3 closeWithError:v2];

    WeakRetained = v3;
  }
}

void __50__MRRapportTransportConnection__registerCallbacks__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[10] destinationDevice];
    v6 = [v5 effectiveIdentifier];
    v7 = [v4 _targetDeviceMatch:v9 deviceUID:v6];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121 description:@"companionLinkClient.deviceLost"];
      [v4 closeWithError:v8];
    }
  }
}

void __50__MRRapportTransportConnection__registerCallbacks__block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 objectForKeyedSubscript:@"data"];
    v6 = v5;
    if (v5)
    {
      v7 = MRLogCategoryConnections(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 length];
        v14 = [WeakRetained[10] destinationDevice];
        v9 = [v14 effectiveIdentifier];
        v10 = [WeakRetained[10] destinationDevice];
        v11 = [v10 name];
        v12 = [WeakRetained destinationOutputDeviceUID];
        v13 = [WeakRetained sessionUID];
        *buf = 134219010;
        v16 = v8;
        v17 = 2114;
        v18 = v9;
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = v12;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRRapportTransportConnection] Reading %llu bytes from device=%{public}@(%{public}@) destination=%{public}@, session=%{public}@", buf, 0x34u);
      }

      [WeakRetained _notifyDelegateDidReceiveData:v6];
    }
  }
}

@end