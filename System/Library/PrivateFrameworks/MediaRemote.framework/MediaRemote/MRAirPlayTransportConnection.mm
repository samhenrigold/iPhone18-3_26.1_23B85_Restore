@interface MRAirPlayTransportConnection
- (BOOL)isValid;
- (MRAirPlayTransportConnection)initWithAPCommunicationChannel:(id)channel;
- (MRAirPlayTransportConnection)initWithOutputContextCommunicationChannel:(id)channel outputContext:(id)context;
- (MRAirPlayTransportConnection)initWithOutputDeviceCommunicationChannel:(id)channel;
- (NSString)debugDescription;
- (NSString)description;
- (id)_init;
- (id)effectiveChannel;
- (unint64_t)_sendTransportData:(id)data;
- (unint64_t)sendTransportData:(id)data options:(id)options;
- (void)closeWithError:(id)error;
- (void)communicationChannelDidClose:(id)close;
- (void)ingestData:(id)data;
@end

@implementation MRAirPlayTransportConnection

- (id)_init
{
  v10.receiver = self;
  v10.super_class = MRAirPlayTransportConnection;
  v2 = [(MRExternalDeviceTransportConnection *)&v10 initWithDataSource:self];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    dateCreated = v2->_dateCreated;
    v2->_dateCreated = v3;

    v5 = [MROSTransaction alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.%@.%p", objc_opt_class(), v2];
    v7 = [(MROSTransaction *)v5 initWithName:v6];
    transaction = v2->_transaction;
    v2->_transaction = v7;

    MRRegisterTransaction(v2->_transaction);
  }

  return v2;
}

- (MRAirPlayTransportConnection)initWithAPCommunicationChannel:(id)channel
{
  v13 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  _init = [(MRAirPlayTransportConnection *)self _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 9, channel);
    v9 = MRLogCategoryConnections(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Creating new connection with APChannel %@", &v11, 0xCu);
    }
  }

  return v7;
}

- (MRAirPlayTransportConnection)initWithOutputContextCommunicationChannel:(id)channel outputContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  contextCopy = context;
  _init = [(MRAirPlayTransportConnection *)self _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 10, channel);
    outputDevices = [contextCopy outputDevices];
    firstObject = [outputDevices firstObject];

    v13 = [firstObject ID];
    [(MRExternalDeviceTransportConnection *)v10 setDestinationOutputDeviceUID:v13];

    v15 = MRLogCategoryConnections(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543874;
      v18 = contextCopy;
      v19 = 2114;
      v20 = firstObject;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Creating new connection with outputContext %{public}@ with pilotOutputDevice <%{public}@> with outputContextChannel %{public}@", &v17, 0x20u);
    }
  }

  return v10;
}

- (MRAirPlayTransportConnection)initWithOutputDeviceCommunicationChannel:(id)channel
{
  v12 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  _init = [(MRAirPlayTransportConnection *)self _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 11, channel);
    v8 = MRLogCategoryConnections([(AVOutputDeviceCommunicationChannel *)v7->_outputDeviceCommunicationChannel setDelegate:v7]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Creating new connection with OutputDeviceChannel %{public}@", &v10, 0xCu);
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  effectiveChannel = [(MRAirPlayTransportConnection *)self effectiveChannel];
  v6 = [v3 initWithFormat:@"<%@:%p %@>\n", v4, self, effectiveChannel];

  return v6;
}

- (NSString)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  effectiveChannel = [(MRAirPlayTransportConnection *)selfCopy effectiveChannel];
  dateCreated = selfCopy->_dateCreated;
  [(NSDate *)dateCreated timeIntervalSinceNow];
  v8 = v7;
  mostRecentMessageSentDate = selfCopy->_mostRecentMessageSentDate;
  [(NSDate *)mostRecentMessageSentDate timeIntervalSinceNow];
  v11 = v10;
  totalMessagesSentCount = selfCopy->_totalMessagesSentCount;
  totalBytesSentCount = selfCopy->_totalBytesSentCount;
  mostRecentMessageReceivedDate = selfCopy->_mostRecentMessageReceivedDate;
  [(NSDate *)mostRecentMessageReceivedDate timeIntervalSinceNow];
  v16 = [v3 initWithFormat:@"<%@:%p {\n  communicationChannel = %@\n  dateCreated = %@ (%lf seconds ago)\n  mostRecentMessageSentDate = %@ (%lf seconds ago)\n  totalMessagesSent = %lu\n  totalBytesSent = %lu\n  mostRecentMessageReceivedDate = %@ (%lf seconds ago)\n  totalMessagesReceived = %lu\n  totalBytesReceived = %lu\n}>", v4, selfCopy, effectiveChannel, dateCreated, -v8, mostRecentMessageSentDate, -v11, totalMessagesSentCount, totalBytesSentCount, mostRecentMessageReceivedDate, -v15, selfCopy->_totalMessagesReceivedCount, selfCopy->_totalBytesReceivedCount];

  objc_sync_exit(selfCopy);

  return v16;
}

- (void)ingestData:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = MRLogCategoryConnections(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = dataCopy;
    v11 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Connection received data %@ from %{public}@", &v9, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  ++selfCopy2->_totalMessagesReceivedCount;
  selfCopy2->_totalBytesReceivedCount += [dataCopy length];
  v7 = [MEMORY[0x1E695DF00] now];
  mostRecentMessageReceivedDate = selfCopy2->_mostRecentMessageReceivedDate;
  selfCopy2->_mostRecentMessageReceivedDate = v7;

  objc_sync_exit(selfCopy2);
  [(MRExternalDeviceTransportConnection *)selfCopy2 _notifyDelegateDidReceiveData:dataCopy];
}

- (BOOL)isValid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  effectiveChannel = [(MRAirPlayTransportConnection *)selfCopy effectiveChannel];
  v4 = effectiveChannel != 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (unint64_t)sendTransportData:(id)data options:(id)options
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  effectiveChannel = [(MRAirPlayTransportConnection *)self effectiveChannel];

  if (effectiveChannel)
  {
    v10 = MRLogCategoryConnections(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = dataCopy;
      v18 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRAirPlayTransportConnection] Connection sent data %@ to %{public}@", &v16, 0x16u);
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    ++selfCopy2->_totalMessagesSentCount;
    selfCopy2->_totalBytesSentCount += [dataCopy length];
    v12 = [MEMORY[0x1E695DF00] now];
    mostRecentMessageSentDate = selfCopy2->_mostRecentMessageSentDate;
    selfCopy2->_mostRecentMessageSentDate = v12;

    objc_sync_exit(selfCopy2);
    v14 = [(MRAirPlayTransportConnection *)selfCopy2 _sendTransportData:dataCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)_sendTransportData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __51__MRAirPlayTransportConnection__sendTransportData___block_invoke;
  v12 = &unk_1E769D2F8;
  objc_copyWeak(&v13, &location);
  v5 = MEMORY[0x1A58E3570](&v9);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(APReceiverMediaRemoteCommunicationChannel *)selfCopy->_apCommunicationChannel sendData:dataCopy completionHandler:v5, v9, v10, v11, v12];
  [(AVOutputContextCommunicationChannel *)selfCopy->_outputContextCommunicationChannel sendData:dataCopy completionHandler:v5];
  [(AVOutputDeviceCommunicationChannel *)selfCopy->_outputDeviceCommunicationChannel sendData:dataCopy completionHandler:v5];
  objc_sync_exit(selfCopy);

  v7 = [dataCopy length];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __51__MRAirPlayTransportConnection__sendTransportData___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = MRLogCategoryConnections(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "[MRAirPlayTransportConnection] Connection error %@ sending data to %{public}@", &v7, 0x16u);
    }
  }
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  effectiveChannel = [(MRAirPlayTransportConnection *)selfCopy effectiveChannel];

  if (effectiveChannel)
  {
    if (selfCopy->_apCommunicationChannel)
    {
      v6 = [[MRSetConnectionStateMessage alloc] initWithConnectionState:3];
      [(MRProtocolMessage *)v6 setError:errorCopy];
      protobufData = [(MRProtocolMessage *)v6 protobufData];
      v8 = [MEMORY[0x1E69B1438] createHeader:{objc_msgSend(protobufData, "length")}];
      v9 = objc_alloc_init(MEMORY[0x1E695DF88]);
      [v9 appendData:v8];
      [v9 appendData:protobufData];
      [(MRAirPlayTransportConnection *)selfCopy _sendTransportData:v9];
    }

    selfCopy->_channelClosed = 1;
    apCommunicationChannel = selfCopy->_apCommunicationChannel;
    selfCopy->_apCommunicationChannel = 0;

    outputContextCommunicationChannel = selfCopy->_outputContextCommunicationChannel;
    selfCopy->_outputContextCommunicationChannel = 0;

    [(AVOutputDeviceCommunicationChannel *)selfCopy->_outputDeviceCommunicationChannel close];
    [(AVOutputDeviceCommunicationChannel *)selfCopy->_outputDeviceCommunicationChannel setDelegate:0];
    outputDeviceCommunicationChannel = selfCopy->_outputDeviceCommunicationChannel;
    selfCopy->_outputDeviceCommunicationChannel = 0;

    objc_sync_exit(selfCopy);
    [(MRExternalDeviceTransportConnection *)selfCopy _notifyDelegateDidCloseWithError:errorCopy];
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

- (void)communicationChannelDidClose:(id)close
{
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:105 description:@"AVOutputDeviceCommunicationChannel.communicationChannelDidClose"];
  [(MRAirPlayTransportConnection *)self closeWithError:v4];
}

- (id)effectiveChannel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  apCommunicationChannel = selfCopy->_apCommunicationChannel;
  if (!apCommunicationChannel)
  {
    apCommunicationChannel = selfCopy->_outputContextCommunicationChannel;
    if (!apCommunicationChannel)
    {
      apCommunicationChannel = selfCopy->_outputDeviceCommunicationChannel;
    }
  }

  v4 = apCommunicationChannel;
  objc_sync_exit(selfCopy);

  return v4;
}

@end