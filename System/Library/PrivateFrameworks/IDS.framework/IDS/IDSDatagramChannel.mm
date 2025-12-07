@interface IDSDatagramChannel
- ($8401F4BB0FBBAD626D053E4AC6536F2D)_setWiFiAssist:(BOOL)assist;
- ($B9DA14AB56F58BCD48907D5C6DBDA49C)_makeDirectPacketBufferFromDatagram:(const void *)datagram datagramSize:(unsigned int)size currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount datagramInfo:(id)info datagramOptions:(id *)options linkContext:(id)context supportsQPod:(BOOL)self0;
- ($B9DA14AB56F58BCD48907D5C6DBDA49C)_makePacketBufferFromDatagram:(const void *)datagram datagramSize:(unsigned int)size currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount datagramInfo:(id)info datagramOptions:(id *)options;
- (BOOL)processDatagram:(const char *)datagram datagramSize:(unint64_t)size readHandler:(id)handler readHandlerWithOptions:(id)options;
- (IDSDataChannelLinkContext)defaultLink;
- (IDSDatagramChannel)initWithDestination:(id)destination options:(id)options;
- (IDSDatagramChannel)initWithSocketDescriptor:(int)descriptor;
- (NSArray)connectedLinks;
- (id)_connectionInfoForDictionary:(id)dictionary;
- (id)_createIfNecessaryDirectConnectionForLinkID:(char)d linkContext:(id)context connection:(id)connection readyHandler:(id)handler;
- (id)_createIfNecessaryDirectQPodConnectionForLinkID:(char)d linkContext:(id)context connection:(id)connection parentConnection:(id)parentConnection readyHandler:(id)handler;
- (id)_directConnectionsForLinkID:(char)d;
- (id)_directOrDaemonConnectionForLinkID:(char)d datagramOptions:(id *)options;
- (id)_extractparticipantIDToHashedIDMappingFromData:(id)data;
- (id)_linkContextWithID:(unsigned __int8)d;
- (id)_linkContextsCopy;
- (id)_underlyingLinkContextForLinkID:(char)d;
- (id)connectionForLinkID:(char)d datagramOptions:(id *)options;
- (id)createIfNecessaryDirectConnectionForLinkID:(char)d linkContext:(id)context;
- (id)description;
- (id)getDispatchDataForPacketBuffer:(id *)buffer;
- (id)getIDSDataChannelsQueue;
- (id)protocolStackDescriptionFor:(id)for;
- (int)underlyingFileDescriptor;
- (unint64_t)_translateParticipantID:(unint64_t)d forLinkID:(char)iD;
- (void)_addConnections:(id)connections toLinkContext:(id)context;
- (void)_buildPacketBufferMetaData:(id *)data;
- (void)_dumpLinkContextConnectionsInfo;
- (void)_logFinalStats;
- (void)_periodicTasks;
- (void)_periodicTasksTick;
- (void)_processIncomingDatagram:(const char *)datagram datagramSize:(unsigned int)size linkID:(char)d linkContext:(id)context;
- (void)_removeDirectConnection:(id)connection;
- (void)_removeLinkContextWithID:(unsigned __int8)d;
- (void)_reportDictionary:(id)dictionary forKey:(unsigned __int8)key;
- (void)_reportFirstIncomingPacketTimeForMKI:(id)i time:(id)time participantID:(id)d;
- (void)_reportFirstOutgoingPacketTimeForMKI:(id)i time:(id)time participantID:(id)d;
- (void)_reportMKIArrival:(id)arrival time:(id)time isLocallyGenerated:(BOOL)generated;
- (void)_schedulePeriodicTasks;
- (void)_sendChunkedDataToDaemon:(id)daemon withKey:(unsigned __int8)key shouldTerminateWithEmptyData:(BOOL)data;
- (void)_sendDataChunkToDaemon:(id)daemon offset:(unint64_t)offset length:(unint64_t)length withKey:(unsigned __int8)key;
- (void)_sendSequenceNumberMetadataToDaemon:(unint64_t)daemon;
- (void)_sendStatsRequestViaDaemon;
- (void)_setDirectConnections:(id)connections forLinkID:(char)d;
- (void)_setLinkContext:(id)context forLinkID:(unsigned __int8)d;
- (void)_startStatsTimer;
- (void)_stopStatsTimer;
- (void)_syncLinkQualityMeasurement;
- (void)_writeDatagram:(const void *)datagram datagramSize:(unsigned int)size datagramInfo:(id)info options:(id *)options completionHandler:(id)handler;
- (void)_writeToDirectConnection:(id)connection datagram:(const void *)datagram datagramSize:(unsigned int)size currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount datagramInfo:(id)info datagramOptions:(id *)options completionHandler:(id)self0;
- (void)_writeToNWConnection:(id)connection datagram:(const void *)datagram datagramSize:(unsigned int)size currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount datagramInfo:(id)info datagramOptions:(id *)options completionHandler:(id)self0;
- (void)_writeToNWConnectionArrayOfDatagrams:(const void *)datagrams datagramSizes:(unsigned int *)sizes datagramInfo:(id *)info datagramOptions:(id *)options datagramCount:(int)count completionHandler:(id)handler;
- (void)_writeToOSChannelDatagrams:(const void *)datagrams datagramSizes:(unsigned int *)sizes datagramInfo:(id *)info datagramOptions:(id *)options datagramCount:(int)count completionHandler:(id)handler;
- (void)_writeToSocket:(int)socket datagrams:(const void *)datagrams datagramSizes:(unsigned int *)sizes datagramInfo:(id *)info datagramOptions:(id *)options datagramCount:(int)count completionHandler:(id)handler;
- (void)addConnectionStateChangedHandlerForConnection:(id)connection linkContext:(id)context linkID:(char)d connection:(id)a6 readyHandler:(id)handler;
- (void)addDirectConnectionForLinkID:(char)d linkContext:(id)context;
- (void)addNewIDSDataChannelLinkWithAttributes:(char *)attributes linkAttributesLength:(unsigned __int16)length;
- (void)close;
- (void)dealloc;
- (void)flushLinkProbingStatusWithOptions:(id)options;
- (void)generateMetadataWithDatagramInfo:(id)info options:(id *)options currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount byteBuffer:(id *)buffer;
- (void)handleIncomingDatagram:(const char *)datagram datagramSize:(unsigned int)size datagramInfo:(id)info datagramOptions:(id *)options;
- (void)invalidate;
- (void)invalidateDirectConnections;
- (void)osChannelInfoLog;
- (void)processMetadataForDatagram:(const char *)datagram size:(unint64_t)size datagramInfo:(id *)info options:(id *)options;
- (void)queryStatusWithOptions:(id)options;
- (void)readDatagramWithCompletionHandler:(id)handler;
- (void)readDatagramsWithCompletionHandler:(id)handler;
- (void)readFromNWConnection:(id)connection maximumDatagrams:(unsigned int)datagrams readHandler:(id)handler readHandlerWithOptions:(id)options;
- (void)readFromOSChannel:(channel *)channel ring:(channel_ring_desc *)ring maximumDatagrams:(unsigned int)datagrams readHandler:(id)handler readHandlerWithOptions:(id)options;
- (void)readFromSocketDescriptorWithReadHandler:(id)handler readHandlerWithOptions:(id)options;
- (void)readyToRead;
- (void)removeDirectConnectionsForLinkID:(char)d;
- (void)removeIDSDataChannelLinkContext:(char)context linkUUID:(id)d reason:(unsigned __int8)reason;
- (void)reportEvent:(id)event forLinkID:(unsigned __int8)d;
- (void)reportFirstIncomingPacketTimeForMKI:(id)i participantID:(id)d;
- (void)reportFirstOutgoingPacketTimeForMKI:(id)i participantID:(id)d;
- (void)reportLastPacketReceivedTime:(double)time lastPacketSentTime:(double)sentTime linkID:(unsigned __int8)d;
- (void)reportMKIArrival:(id)arrival isLocallyGenerated:(BOOL)generated;
- (void)requestPMTUEvaluationForLinkID:(char)d;
- (void)requestSessionInfoWithOptions:(id)options;
- (void)requestStatsWithOptions:(id)options;
- (void)scheduleRead;
- (void)selectDefaultLink:(char)link;
- (void)sendEventConnectedWithDummyLinkInfo;
- (void)sendMediaEncryptionInfoWithMKM:(id)m MKS:(id)s MKI:(id)i participantID:(unint64_t)d isLocallyGenerated:(BOOL)generated shortKILength:(unsigned __int8)length encryptionSequenceNumber:(unint64_t)number;
- (void)sendMediaMembershipChangedInfo:(unsigned __int8)info;
- (void)sendMetadata;
- (void)sendPacketLogData:(id)data;
- (void)setChannelPreferences:(id)preferences;
- (void)setEventHandler:(id)handler;
- (void)setLinkIDToParticipantMap:(id)map;
- (void)setReadHandler:(id)handler;
- (void)setReadHandlerWithOptions:(id)options;
- (void)setUPlusOneMode:(BOOL)mode isInitiator:(BOOL)initiator;
- (void)setWiFiAssist:(BOOL)assist;
- (void)setWriteCompletionHandler:(id)handler;
- (void)start;
- (void)startActiveProbingWithOptions:(id)options;
- (void)startInternal;
- (void)startMKMRecoveryForParticipantIDs:(id)ds;
- (void)stopActiveProbingWithOptions:(id)options;
- (void)writeArrayOfDatagrams:(const void *)datagrams datagramSizes:(unsigned int *)sizes datagramInfo:(id *)info datagramOptions:(id *)options datagramCount:(int)count completionHandler:(id)handler;
@end

@implementation IDSDatagramChannel

- (void)_startStatsTimer
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_statsTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internal->_queue);
    statsTimer = self->_statsTimer;
    self->_statsTimer = v3;

    v5 = self->_statsTimer;
    v6 = dispatch_time(0, 4000000000);
    dispatch_source_set_timer(v5, v6, 0xEE6B2800uLL, 0x5F5E100uLL);
    objc_initWeak(&location, self);
    v7 = self->_statsTimer;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = sub_195AEB20C;
    v13 = &unk_1E743EE18;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v7, &v10);
    dispatch_resume(self->_statsTimer);
    v8 = [IDSLogging IDSDataChannels:v10];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_statsTimer;
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "start stats timer %p.", buf, 0xCu);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)_stopStatsTimer
{
  v9 = *MEMORY[0x1E69E9840];
  statsTimer = self->_statsTimer;
  if (statsTimer)
  {
    dispatch_source_cancel(statsTimer);
    v4 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_statsTimer;
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "stop stats timer %p.", &v7, 0xCu);
    }

    v6 = self->_statsTimer;
    self->_statsTimer = 0;
  }
}

- (id)_directConnectionsForLinkID:(char)d
{
  dCopy = d;
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
  v5 = self->_internal->_directConnectionsByLinkID[dCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(IDSDataChannelsDirectConnections);
    objc_storeStrong(&self->_internal->_directConnectionsByLinkID[dCopy], v5);
    v6 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109378;
      v8[1] = dCopy;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "LinkID %d associated with direct connection %@", v8, 0x12u);
    }
  }

  os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);

  return v5;
}

- (void)_setDirectConnections:(id)connections forLinkID:(char)d
{
  dCopy = d;
  v13 = *MEMORY[0x1E69E9840];
  connectionsCopy = connections;
  if (dCopy < 0)
  {
    v8 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSDatagramChannel(DirectConnections) _setDirectConnections:forLinkID:]";
      v11 = 1024;
      v12 = dCopy;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s: Invalid LinkID %d", &v9, 0x12u);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
    objc_storeStrong(&self->_internal->_directConnectionsByLinkID[dCopy], connections);
    os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
  }
}

- (id)_directOrDaemonConnectionForLinkID:(char)d datagramOptions:(id *)options
{
  dCopy = d;
  v7 = [(IDSDatagramChannel *)self _underlyingLinkContextForLinkID:?];
  v8 = [(IDSDatagramChannel *)self _directConnectionsForLinkID:dCopy];
  qpodConnection = [v8 qpodConnection];

  if (qpodConnection && (([v7 isQUICPod] & 1) != 0 || options && options->var11 && objc_msgSend(v7, "isPartialTLEUPlusOneEnabled")))
  {
    qpodConnection2 = [v8 qpodConnection];
  }

  else
  {
    qpodConnection2 = [v8 udpConnection];
  }

  v11 = qpodConnection2;
  if (!qpodConnection2 || (v12 = [v7 directConnectionReady], connection = v11, (v12 & 1) == 0))
  {
    connection = self->_internal->_connection;
  }

  v14 = connection;

  return v14;
}

- (void)_removeDirectConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (connectionCopy)
  {
    os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
    v5 = 0;
    *&v6 = 67109378;
    v14 = v6;
    while (1)
    {
      v7 = self->_internal->_directConnectionsByLinkID[v5];
      udpConnection = [(IDSDataChannelsDirectConnections *)v7 udpConnection];
      v9 = udpConnection;
      if (udpConnection == connectionCopy)
      {
        break;
      }

      qpodConnection = [(IDSDataChannelsDirectConnections *)v7 qpodConnection];

      if (qpodConnection == connectionCopy)
      {
        goto LABEL_7;
      }

LABEL_10:

      if (++v5 == 256)
      {
        os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
        goto LABEL_12;
      }
    }

LABEL_7:
    v11 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v14;
      v16 = v5;
      v17 = 2112;
      v18 = connectionCopy;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "LinkID %d unassociated with direct connection %@", buf, 0x12u);
    }

    directConnectionsByLinkID = self->_internal->_directConnectionsByLinkID;
    v13 = directConnectionsByLinkID[v5];
    directConnectionsByLinkID[v5] = 0;

    goto LABEL_10;
  }

LABEL_12:
}

- (id)_underlyingLinkContextForLinkID:(char)d
{
  v4 = [(IDSDatagramChannel *)self _linkContextWithID:d];
  if ([v4 isVirtualRelayLink])
  {
    v5 = -[IDSDatagramChannel _linkContextWithID:](self, "_linkContextWithID:", [v4 delegatedLinkID]);
    [v4 setDirectConnectionReady:{objc_msgSend(v5, "directConnectionReady")}];
  }

  return v4;
}

- (void)_dumpLinkContextConnectionsInfo
{
  v18 = *MEMORY[0x1E69E9840];
  ids_monotonic_time();
  if (v3 - *&qword_1EAEDC268 > 5.0)
  {
    qword_1EAEDC268 = *&v3;
    v4 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Dumping link contexts and direct connections", buf, 2u);
    }

    os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
    v5 = 0;
    *&v6 = 134218498;
    v11 = v6;
    do
    {
      v7 = [(IDSDatagramChannel *)self _linkContextWithID:v5, v11];
      v8 = [v7 description];

      v9 = [(IDSDataChannelsDirectConnections *)self->_internal->_directConnectionsByLinkID[v5] description];
      if (v8 | v9)
      {
        v10 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v11;
          selfCopy = self;
          v14 = 2112;
          v15 = v9;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "<%p> -- connection %@ link context %@", buf, 0x20u);
        }
      }

      ++v5;
    }

    while (v5 != 256);
    os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
  }
}

- (void)invalidateDirectConnections
{
  v33 = *MEMORY[0x1E69E9840];
  [(IDSDatagramChannel *)self _stopStatsTimer];
  v3 = 0;
  *&v4 = 138412290;
  v27 = v4;
  do
  {
    v5 = [(IDSDatagramChannel *)self _linkContextWithID:v3, v27];
    v6 = v5;
    if (v5 && ([(IDSDataChannelsDirectConnections *)v5 isVirtualRelayLink]& 1) == 0)
    {
      os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
      v7 = self->_internal->_directConnectionsByLinkID[v3];
      os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
      udpConnection = [(IDSDataChannelsDirectConnections *)v7 udpConnection];

      if (udpConnection)
      {
        udpConnection2 = [(IDSDataChannelsDirectConnections *)v7 udpConnection];
        [(IDSDatagramChannel *)self _removeDirectConnection:udpConnection2];

        udpConnection3 = [(IDSDataChannelsDirectConnections *)v7 udpConnection];
        nw_connection_cancel(udpConnection3);
      }

      else
      {
        udpConnection3 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(udpConnection3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v30 = v6;
          _os_log_impl(&dword_1959FF000, udpConnection3, OS_LOG_TYPE_DEFAULT, "Found empty udp connection for link context %@", buf, 0xCu);
        }
      }

      qpodConnection = [(IDSDataChannelsDirectConnections *)v7 qpodConnection];

      if (qpodConnection)
      {
        qpodConnection2 = [(IDSDataChannelsDirectConnections *)v7 qpodConnection];
        [(IDSDatagramChannel *)self _removeDirectConnection:qpodConnection2];

        qpodConnection3 = [(IDSDataChannelsDirectConnections *)v7 qpodConnection];
        nw_connection_cancel(qpodConnection3);
      }

      else
      {
        qpodConnection3 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(qpodConnection3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v30 = v6;
          _os_log_impl(&dword_1959FF000, qpodConnection3, OS_LOG_TYPE_DEFAULT, "Found empty udp connection for link context %@", buf, 0xCu);
        }
      }
    }

    ++v3;
  }

  while (v3 != 256);
  v15 = 0;
  *&v14 = 138412546;
  v28 = v14;
  do
  {
    os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
    internal = self->_internal;
    if (internal->_directConnectionsByLinkID[v15])
    {
      v17 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_internal->_directConnectionsByLinkID[v15];
        v19 = [(IDSDatagramChannel *)self _linkContextWithID:v15];
        *buf = v28;
        v30 = v18;
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Cleaning up left over connection %@ for link context %@", buf, 0x16u);
      }

      v20 = self->_internal->_directConnectionsByLinkID[v15];
      udpConnection4 = [(IDSDataChannelsDirectConnections *)v20 udpConnection];

      if (udpConnection4)
      {
        udpConnection5 = [(IDSDataChannelsDirectConnections *)v20 udpConnection];
        nw_connection_cancel(udpConnection5);
      }

      qpodConnection4 = [(IDSDataChannelsDirectConnections *)v20 qpodConnection];

      if (qpodConnection4)
      {
        qpodConnection5 = [(IDSDataChannelsDirectConnections *)v20 qpodConnection];
        nw_connection_cancel(qpodConnection5);
      }

      directConnectionsByLinkID = self->_internal->_directConnectionsByLinkID;
      v26 = directConnectionsByLinkID[v15];
      directConnectionsByLinkID[v15] = 0;

      internal = self->_internal;
    }

    os_unfair_lock_unlock(&internal->_directConnectionsByLinkIDLock);
    [(IDSDatagramChannel *)self _removeLinkContextWithID:v15++];
  }

  while (v15 != 256);
}

- (unint64_t)_translateParticipantID:(unint64_t)d forLinkID:(char)iD
{
  iDCopy = iD;
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_internal->_linkIDToParticipantMapLock);
  linkIDToParticipantMap = self->_internal->_linkIDToParticipantMap;
  v8 = [MEMORY[0x1E696AD98] numberWithChar:iDCopy];
  v9 = [(NSMutableDictionary *)linkIDToParticipantMap objectForKeyedSubscript:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    unsignedLongLongValue = [v11 unsignedLongLongValue];
  }

  else
  {
    v13 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218498;
      dCopy = d;
      v17 = 1024;
      v18 = iDCopy;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, " Warning ! Could not find mappedParticipant:%llu in linkID %d dictionary:%@", &v15, 0x1Cu);
    }

    unsignedLongLongValue = 0;
  }

  os_unfair_lock_unlock(&self->_internal->_linkIDToParticipantMapLock);

  return unsignedLongLongValue;
}

- (void)_processIncomingDatagram:(const char *)datagram datagramSize:(unsigned int)size linkID:(char)d linkContext:(id)context
{
  dCopy = d;
  v7 = *&size;
  contextCopy = context;
  v11 = objc_alloc_init(_IDSDataChannelLinkConnection);
  sub_195AEC124(self, datagram, v7, dCopy, 0, contextCopy, v11);
}

- (id)createIfNecessaryDirectConnectionForLinkID:(char)d linkContext:(id)context
{
  dCopy = d;
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    v7 = 0;
    goto LABEL_19;
  }

  v7 = [(IDSDatagramChannel *)self _directConnectionsForLinkID:dCopy];
  [(IDSDatagramChannel *)self _setLinkContext:contextCopy forLinkID:dCopy];
  connectionType = [contextCopy connectionType];
  v9 = connectionType == 1;
  qpodConnection = [v7 qpodConnection];

  if (!qpodConnection)
  {
    if (connectionType == 1)
    {
      goto LABEL_12;
    }

    connections = [contextCopy connections];
    qpod = [connections qpod];
    v11 = [(IDSDatagramChannel *)self _createIfNecessaryDirectConnectionForLinkID:dCopy linkContext:contextCopy connection:qpod readyHandler:&unk_1F09E7180];

    [v7 setQpodConnection:v11];
    qpodConnection2 = +[IDSLogging IDSDataChannels];
    if (!os_log_type_enabled(qpodConnection2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 138412290;
    v35 = v11;
    v13 = "createIfNecessaryDirectConnectionForLinkID: created relay qpod connection: %@";
    v14 = qpodConnection2;
LABEL_9:
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
LABEL_10:

    goto LABEL_11;
  }

  v11 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    qpodConnection2 = [v7 qpodConnection];
    *buf = 138412290;
    v35 = qpodConnection2;
    v13 = "createIfNecessaryDirectConnectionForLinkID child qpod connection already created previously: %@";
    v14 = v11;
    goto LABEL_9;
  }

LABEL_11:

LABEL_12:
  udpConnection = [v7 udpConnection];

  if (udpConnection)
  {
    v18 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      udpConnection2 = [v7 udpConnection];
      *buf = 138412290;
      v35 = udpConnection2;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "createIfNecessaryDirectConnectionForLinkID child udp connection already created previously: %@", buf, 0xCu);
    }
  }

  else
  {
    connections2 = [contextCopy connections];
    v21 = [connections2 udp];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = sub_195AED074;
    v28 = &unk_1E7442B08;
    selfCopy = self;
    v7 = v7;
    v30 = v7;
    v32 = v9;
    v33 = dCopy;
    v31 = contextCopy;
    v22 = [(IDSDatagramChannel *)self _createIfNecessaryDirectConnectionForLinkID:dCopy linkContext:v31 connection:v21 readyHandler:&v25];

    [v7 setUdpConnection:{v22, v25, v26, v27, v28, selfCopy}];
    v23 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v22;
      _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "createIfNecessaryDirectConnectionForLinkID: created udp connection: %@", buf, 0xCu);
    }
  }

LABEL_19:

  return v7;
}

- (id)protocolStackDescriptionFor:(id)for
{
  forCopy = for;
  v4 = nw_protocol_stack_copy_internet_protocol(forCopy);
  v5 = nw_protocol_stack_copy_transport_protocol(forCopy);
  v6 = MEMORY[0x1E696AEC0];
  v7 = sub_195AED510(v4);
  v8 = sub_195AED510(v5);
  v9 = [v6 stringWithFormat:@"%@.%@", v7, v8];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A007E4;
  v17 = sub_195A03D98;
  v18 = &stru_1F09E7B80;
  iterate_block[0] = MEMORY[0x1E69E9820];
  iterate_block[1] = 3221225472;
  iterate_block[2] = sub_195AED56C;
  iterate_block[3] = &unk_1E7442B30;
  iterate_block[4] = &v13;
  nw_protocol_stack_iterate_application_protocols(forCopy, iterate_block);
  v10 = [v9 stringByAppendingString:v14[5]];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)_createIfNecessaryDirectQPodConnectionForLinkID:(char)d linkContext:(id)context connection:(id)connection parentConnection:(id)parentConnection readyHandler:(id)handler
{
  dCopy = d;
  v54 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  connectionCopy = connection;
  parentConnectionCopy = parentConnection;
  handlerCopy = handler;
  if (!connectionCopy)
  {
    qpodParameters = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(qpodParameters, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1959FF000, qpodParameters, OS_LOG_TYPE_DEFAULT, "_createIfNecessaryDirectQPodConnectionForLinkID: no connection info", &buf, 2u);
    }

    goto LABEL_25;
  }

  qpodParameters = [connectionCopy qpodParameters];
  if (!qpodParameters)
  {
    v34 = +[IDSLogging IDSDataChannels];
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    LOWORD(buf) = 0;
    v35 = "_createIfNecessaryDirectQPodConnectionForLinkID: no qpod parameters";
LABEL_23:
    _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, v35, &buf, 2u);
    goto LABEL_24;
  }

  if (dCopy <= 0)
  {
    v34 = +[IDSLogging IDSDataChannels];
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    LOWORD(buf) = 0;
    v35 = "_createIfNecessaryDirectQPodConnectionForLinkID: linkID has to be greater than 0.";
    goto LABEL_23;
  }

  if (!parentConnectionCopy)
  {
    v34 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v35 = "_createIfNecessaryDirectQPodConnectionForLinkID: no parent udp connection";
      goto LABEL_23;
    }

LABEL_24:

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v16 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if ([contextCopy connectionType] == 1)
    {
      v17 = 80;
    }

    else
    {
      v17 = 82;
    }

    LODWORD(buf) = 67109378;
    HIDWORD(buf) = v17;
    v46 = 2112;
    *v47 = contextCopy;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "_createIfNecessaryDirectQPodConnectionForLinkID create connection (%c) for linkContext %@", &buf, 0x12u);
  }

  v43 = 64;
  v18 = bswap32([qpodParameters clientConnectionID]);
  v44 = v18;
  v19 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    clientConnectionID = [qpodParameters clientConnectionID];
    buf = 0x4004000600;
    v46 = 1024;
    *v47 = v18;
    *&v47[4] = 1024;
    *&v47[6] = BYTE1(v18);
    v48 = 1024;
    v49 = BYTE2(v18);
    v50 = 1024;
    v51 = HIBYTE(v18);
    v52 = 1024;
    v53 = clientConnectionID;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "_createIfNecessaryDirectQPodConnectionForLinkID: adding demux rule with pattern: %02x%02x%02x%02x%02x (%08x)", &buf, 0x26u);
  }

  LOBYTE(buf) = -32;
  *(&buf + 1) = -1;
  options = nw_qpod_create_options();
  clientSecretDispatchData = [qpodParameters clientSecretDispatchData];
  serverSecretDispatchData = [qpodParameters serverSecretDispatchData];
  [qpodParameters isServer];
  v24 = nw_qpod_set_secrets();

  if (v24)
  {
    clientConnectionIDDispatchData = [qpodParameters clientConnectionIDDispatchData];
    nw_qpod_set_scid();

    serverConnectionIDDispatchData = [qpodParameters serverConnectionIDDispatchData];
    nw_qpod_set_dcid();

    v39 = nw_connection_copy_parameters(parentConnectionCopy);
    v27 = MEMORY[0x19A8BB9D0]();
    v28 = nw_parameters_copy_default_protocol_stack(v27);
    nw_protocol_stack_clear_application_protocols(v28);
    nw_protocol_stack_prepend_application_protocol(v28, options);
    v29 = nw_demux_create_options();
    nw_demux_options_add_pattern();
    nw_protocol_stack_append_application_protocol();
    v40 = v27;
    v30 = nw_connection_create_with_connection();
    v31 = v30;
    if (v30)
    {
      nw_connection_set_queue(v30, self->_internal->_queue);
      [(IDSDatagramChannel *)self addConnectionStateChangedHandlerForConnection:v31 linkContext:contextCopy linkID:dCopy connection:connectionCopy readyHandler:handlerCopy];
      [connectionCopy setClientNWConnectionID:nw_connection_get_id()];
      v32 = [(IDSDatagramChannel *)self protocolStackDescriptionFor:v28];
      [connectionCopy setProtocolStack:v32];

      nw_connection_start(v31);
      v33 = v31;
    }

    else
    {
      v38 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_195B3FB58(parentConnectionCopy, v38);
      }
    }

    v37 = v39;
  }

  else
  {
    v37 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "_createIfNecessaryDirectQPodConnectionForLinkID setup failed", v42, 2u);
    }

    v31 = 0;
  }

LABEL_26:

  return v31;
}

- (void)addConnectionStateChangedHandlerForConnection:(id)connection linkContext:(id)context linkID:(char)d connection:(id)a6 readyHandler:(id)handler
{
  connectionCopy = connection;
  contextCopy = context;
  v14 = a6;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195AEDCAC;
  v20[3] = &unk_1E7442B58;
  v21 = connectionCopy;
  v22 = contextCopy;
  dCopy = d;
  v24 = v14;
  v25 = handlerCopy;
  selfCopy = self;
  v16 = v14;
  v17 = handlerCopy;
  v18 = contextCopy;
  v19 = connectionCopy;
  nw_connection_set_state_changed_handler(v19, v20);
}

- (id)_createIfNecessaryDirectConnectionForLinkID:(char)d linkContext:(id)context connection:(id)connection readyHandler:(id)handler
{
  dCopy = d;
  v37 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  connectionCopy = connection;
  handlerCopy = handler;
  if (!connectionCopy)
  {
    v18 = 0;
    goto LABEL_34;
  }

  childConnectionID = [connectionCopy childConnectionID];
  if (dCopy <= 0)
  {
    v19 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID: linkID has to be greater than 0.", buf, 2u);
    }

    v18 = 0;
    goto LABEL_33;
  }

  *uu = 0;
  v36 = 0;
  if (childConnectionID)
  {
    [childConnectionID getUUIDBytes:uu];
    is_null = uuid_is_null(uu);
    v15 = +[IDSLogging IDSDataChannels];
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!is_null)
    {
      if (v16)
      {
        *buf = 67109634;
        if ([contextCopy connectionType] == 1)
        {
          v20 = 80;
        }

        else
        {
          v20 = 82;
        }

        *v32 = v20;
        *&v32[4] = 2112;
        *&v32[6] = childConnectionID;
        v33 = 2112;
        v34 = contextCopy;
        _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID create connection (%c) with client ID %@ for linkContext %@", buf, 0x1Cu);
      }

      v21 = nw_connection_create_with_client_id();
      v15 = v21;
      if (v21)
      {
        v22 = nw_connection_copy_current_path(v21);
        v23 = v22;
        if (v22 && (MEMORY[0x19A8BBB20](v22) & 1) == 0)
        {
          v27 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v32 = v23;
            _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID: nexus is not supported for path :%@.", buf, 0xCu);
          }

          v18 = 0;
        }

        else
        {
          v30 = v23;
          v24 = nw_connection_copy_parameters(v15);
          v29 = nw_parameters_copy_default_protocol_stack(v24);
          v25 = nw_protocol_stack_copy_internet_protocol(v29);
          nw_ip_options_set_disable_fragmentation(v25, 0);
          nw_connection_set_queue(v15, self->_internal->_queue);
          selfCopy = self;
          v27 = v24;
          v23 = v30;
          [(IDSDatagramChannel *)selfCopy addConnectionStateChangedHandlerForConnection:v15 linkContext:contextCopy linkID:dCopy connection:connectionCopy readyHandler:handlerCopy];
          [connectionCopy setClientNWConnectionID:nw_connection_get_id()];
          nw_connection_start(v15);
          v18 = v15;
        }
      }

      else
      {
        v23 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID failed to create child connection", buf, 2u);
        }

        v18 = 0;
      }

      goto LABEL_32;
    }

    if (v16)
    {
      *buf = 0;
      v17 = "addDirectConnectionForLinkID missing child connection ID - skip for now.";
LABEL_13:
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }
  }

  else
  {
    v15 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "addDirectConnectionForLinkID missing child connection ID - skip for now";
      goto LABEL_13;
    }
  }

  v18 = 0;
LABEL_32:

LABEL_33:
LABEL_34:

  return v18;
}

- (void)addDirectConnectionForLinkID:(char)d linkContext:(id)context
{
  dCopy = d;
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218498;
    selfCopy2 = self;
    v15 = 1024;
    *v16 = dCopy;
    *&v16[4] = 2112;
    *&v16[6] = contextCopy;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "<%p> addDirectConnectionForLinkID linkID: %d %@", &v13, 0x1Cu);
  }

  [(IDSDatagramChannel *)self _startStatsTimer];
  delegatedLinkID = dCopy;
  if ([contextCopy isVirtualRelayLink])
  {
    delegatedLinkID = [contextCopy delegatedLinkID];
  }

  if ([contextCopy isVirtualRelayLink])
  {
    v9 = [(IDSDatagramChannel *)self _underlyingLinkContextForLinkID:delegatedLinkID];
  }

  else
  {
    v9 = contextCopy;
  }

  v10 = v9;
  v11 = [(IDSDatagramChannel *)self createIfNecessaryDirectConnectionForLinkID:delegatedLinkID linkContext:v9];
  if ([contextCopy isVirtualRelayLink])
  {
    v12 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218754;
      selfCopy2 = self;
      v15 = 2112;
      *v16 = v11;
      *&v16[8] = 1024;
      *&v16[10] = delegatedLinkID;
      v17 = 1024;
      v18 = dCopy;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "<%p> addDirectConnectionForLinkID - associating connection %@ from linkID %d with virtual linkID %d", &v13, 0x22u);
    }

    [(IDSDatagramChannel *)self _setLinkContext:contextCopy forLinkID:dCopy];
    [(IDSDatagramChannel *)self _setDirectConnections:v11 forLinkID:dCopy];
  }
}

- (void)removeDirectConnectionsForLinkID:(char)d
{
  dCopy = d;
  v20 = *MEMORY[0x1E69E9840];
  v5 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218240;
    selfCopy = self;
    v18 = 1024;
    v19 = dCopy;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%p> removeDirectConnectionForLinkID linkID: %d", &v16, 0x12u);
  }

  v6 = [(IDSDatagramChannel *)self _directConnectionsForLinkID:dCopy];
  os_unfair_lock_lock(&self->_internal->_directConnectionsByLinkIDLock);
  directConnectionsByLinkID = self->_internal->_directConnectionsByLinkID;
  v8 = directConnectionsByLinkID[dCopy];
  directConnectionsByLinkID[dCopy] = 0;

  os_unfair_lock_unlock(&self->_internal->_directConnectionsByLinkIDLock);
  v9 = [(IDSDatagramChannel *)self _underlyingLinkContextForLinkID:dCopy];
  if (([v9 isVirtualRelayLink] & 1) == 0 && v6)
  {
    udpConnection = [v6 udpConnection];

    if (udpConnection)
    {
      udpConnection2 = [v6 udpConnection];
      [(IDSDatagramChannel *)self _removeDirectConnection:udpConnection2];

      udpConnection3 = [v6 udpConnection];
      nw_connection_cancel(udpConnection3);
    }

    qpodConnection = [v6 qpodConnection];

    if (qpodConnection)
    {
      qpodConnection2 = [v6 qpodConnection];
      [(IDSDatagramChannel *)self _removeDirectConnection:qpodConnection2];

      qpodConnection3 = [v6 qpodConnection];
      nw_connection_cancel(qpodConnection3);
    }

    v6 = 0;
  }
}

- (id)connectionForLinkID:(char)d datagramOptions:(id *)options
{
  internal = self->_internal;
  if (internal->_preferredDataPathType == 1)
  {
    v6 = [(IDSDatagramChannel *)self _directOrDaemonConnectionForLinkID:d datagramOptions:options];
    if (v6)
    {
      goto LABEL_5;
    }

    internal = self->_internal;
  }

  v6 = internal->_connection;
LABEL_5:

  return v6;
}

- ($B9DA14AB56F58BCD48907D5C6DBDA49C)_makeDirectPacketBufferFromDatagram:(const void *)datagram datagramSize:(unsigned int)size currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount datagramInfo:(id)info datagramOptions:(id *)options linkContext:(id)context supportsQPod:(BOOL)self0
{
  v10 = *&info.var0;
  v62 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v15 = _IDSLinkPacketBufferCreate();
  v55 = v15;
  if ([contextCopy isPartialTLEUPlusOneEnabled])
  {
    if (options->var11)
    {
      if (!pod)
      {
        goto LABEL_12;
      }

      var0 = options->var0;
    }

    else
    {
      var0 = options->var0;
      if ((options->var0 & 0x400) == 0 || !pod)
      {
        goto LABEL_12;
      }
    }

    options->var11 = 0;
    options->var0 = var0 & 0xFFFFFBFF;
    v15->var39 = 1;
    internal = self->_internal;
    if (internal && internal->_verboseFunctionalLogging)
    {
      v18 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: send useExplicitQPod packet.", buf, 2u);
      }
    }
  }

LABEL_12:
  if (v15->var1 < size)
  {
    v19 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v57) = size;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: datagramSize is %u, and exceeds IDSLinkPacketBuffer limit", buf, 8u);
    }

    _IDSLinkPacketBufferRelease();
    goto LABEL_58;
  }

  delegatedLinkID = v10;
  sizeCopy = size;
  if (!size)
  {
    v22 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: datagramSize has no data", buf, 2u);
    }
  }

  memcpy(v15->var0, datagram, sizeCopy);
  v15->var2 = sizeCopy;
  if (delegatedLinkID < 1)
  {
    v33 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v57) = v10;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: wrong linkID %d.", buf, 8u);
    }

    goto LABEL_58;
  }

  v15->var25 = v10;
  if (WORD1(v10))
  {
    v15->var21 = WORD1(v10);
  }

  if (BYTE4(v10))
  {
    v15->var22 = BYTE4(v10);
  }

  if ([contextCopy connectionType] != 1)
  {
    if (!options)
    {
LABEL_50:
      [contextCopy connectionType];
      [contextCopy channelNumber];
      v28 = StunUtilPrepareOutgoingChannelData();
      if (self->_internal->_verboseFunctionalLogging)
      {
        v29 = v28;
        v30 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          var2 = v55->var2;
          channelNumber = [contextCopy channelNumber];
          *buf = 134218496;
          v57 = var2;
          v58 = 1024;
          v59 = v29;
          v60 = 1024;
          v61 = channelNumber;
          _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "QuickRelayHeaderDebug _makeDirectPacketBufferFromDatagram: packetBufferSize is %zd, result:%d, channel number:%d", buf, 0x18u);
        }
      }

      v15 = v55;
      goto LABEL_59;
    }

    v23 = options->var0;
    if (options->var0)
    {
      v15->var24[0].var20 |= 1u;
      if ([contextCopy isVirtualRelayLink])
      {
        delegatedLinkID = [contextCopy delegatedLinkID];
      }

      v15->var24[0].var4 = [(IDSDatagramChannel *)self _translateParticipantID:options->var1 forLinkID:delegatedLinkID];
      v23 = options->var0;
    }

    if ((v23 & 2) != 0)
    {
      v15->var24[0].var20 |= 2u;
      var4 = options->var4;
      v15->var24[0].var2 = var4;
      if (var4 >= 1)
      {
        var5 = options->var5;
        var3 = v15->var24[0].var3;
        do
        {
          v27 = *var5++;
          *var3++ = v27;
          --var4;
        }

        while (var4);
      }
    }

    if ((v23 & 0x10) != 0)
    {
      v15->var24[0].var20 |= 0x10u;
      v15->var24[0].var6 = options->var2;
      if ((v23 & 0x40) == 0)
      {
LABEL_37:
        if ((v23 & 8) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_62;
      }
    }

    else if ((v23 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    v15->var24[0].var20 |= 0x40u;
    v15->var24[0].var10 = options->var7;
    if ((v23 & 8) == 0)
    {
LABEL_38:
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_63;
    }

LABEL_62:
    v15->var24[0].var20 |= 8u;
    v15->var24[0].var5 = options->var3;
    if ((v23 & 0x20) == 0)
    {
LABEL_39:
      if ((v23 & 4) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_64;
    }

LABEL_63:
    v15->var24[0].var20 |= 0x20u;
    v15->var24[0].var7 = options->var6;
    if ((v23 & 4) == 0)
    {
LABEL_40:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_65;
    }

LABEL_64:
    v15->var24[0].var20 |= 4u;
    v15->var24[0].var8 = 1;
    if ((v23 & 0x400) == 0)
    {
LABEL_41:
      if ((v23 & 0x100) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_79;
    }

LABEL_65:
    v15->var24[0].var20 |= 0x400u;
    v15->var24[0].var13 = 1;
    hbhEncryptionkey = [contextCopy hbhEncryptionkey];
    v36 = IDSHBHEncryptDataWithKey();

    if (v36)
    {
      var1 = v15->var1;
      if (var1 >= [v36 length])
      {
        v15->var2 = [v36 length];
        memcpy(v15->var0, [v36 bytes], v15->var2);
        v53 = self->_internal;
        if (v53 && v53->_verboseFunctionalLogging)
        {
          v54 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "_makeDirectPacketBufferFromDatagram: send legacy-HBH packet.", buf, 2u);
          }
        }

        v23 = options->var0;
        if ((options->var0 & 0x100) == 0)
        {
LABEL_42:
          if ((v23 & 0x80) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_80;
        }

LABEL_79:
        v15->var24[0].var20 |= 0x100u;
        v15->var24[0].var12 = 1;
        if ((v23 & 0x80) == 0)
        {
LABEL_43:
          if ((v23 & 0x10000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_81;
        }

LABEL_80:
        v15->var24[0].var20 |= 0x80u;
        v15->var24[0].var9 = 1;
        if ((v23 & 0x10000) == 0)
        {
LABEL_44:
          if ((v23 & 0x20000) == 0)
          {
LABEL_46:
            if ([contextCopy isVirtualRelayLink])
            {
              v15->var24[0].var20 |= 0x800u;
              v15->var24[0].var14 = 1;
              v15->var24[0].var15[0] = [contextCopy remoteRelayLinkID];
            }

            if ((options->var0 & 0x8000) != 0)
            {
              [(IDSDatagramChannel *)self _sendSequenceNumberMetadataToDaemon:options->var12];
            }

            goto LABEL_50;
          }

LABEL_45:
          v15->var24[0].var20 |= 0x20000u;
          v15->var24[0].var18 = 1;
          goto LABEL_46;
        }

LABEL_81:
        v15->var24[0].var20 |= 0x10000u;
        v15->var24[0].var17 = 1;
        if ((v23 & 0x20000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v38 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_195B3FC84(v38, v39, v40, v41, v42, v43, v44, v45);
      }
    }

    else
    {
      v38 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_195B3FCBC(v38, v46, v47, v48, v49, v50, v51, v52);
      }
    }

    _IDSLinkPacketBufferRelease();
LABEL_58:
    v15 = 0;
  }

LABEL_59:

  return v15;
}

- (void)_sendStatsRequestViaDaemon
{
  v15 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_readLock);
  if (!self->_internal->_isInvalidated)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:Mutable];
    v6 = v5;
    if (v5)
    {
      if ([v5 length] <= 0x1000)
      {
        [v6 bytes];
        v8 = _IDSLinkPacketBufferCreate();
        v14 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v12 = v9;
        v13 = v9;
        IDSByteBufferInitForWriteWithAllocatedSpace();
        [v6 length];
        IDSByteBufferWriteField();
        v8[2] = v13 - *v8;
        IDSByteBufferRelease();
        [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v8];
        os_unfair_lock_lock(&self->_internal->_writeLock);
        sendingMetadata = self->_internal->_sendingMetadata;
        v11 = [MEMORY[0x1E696B098] valueWithPointer:v8];
        [(NSMutableArray *)sendingMetadata addObject:v11];

        [(IDSDatagramChannel *)self sendMetadata];
        os_unfair_lock_unlock(&self->_internal->_writeLock);
        goto LABEL_11;
      }

      v7 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v12) = 134217984;
        *(&v12 + 4) = [v6 length];
        _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "_sendStatsRequestViaDaemon: serialized metadata size: %lu, greater than max allowed sent size, return", &v12, 0xCu);
      }
    }

    else
    {
      v7 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "_sendStatsRequestViaDaemon: invalid stats data, return", &v12, 2u);
      }
    }

LABEL_11:
  }

  os_unfair_lock_unlock(&internal->_readLock);
}

- (void)_sendSequenceNumberMetadataToDaemon:(unint64_t)daemon
{
  v4 = _IDSLinkPacketBufferCreate();
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v5;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  IDSByteBufferWriteField();
  v4[2] = 0xAAAAAAAAAAAAAAAALL - *v4;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v4, v8];
  os_unfair_lock_assert_owner(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v7 = [MEMORY[0x1E696B098] valueWithPointer:v4];
  [(NSMutableArray *)sendingMetadata addObject:v7];

  [(IDSDatagramChannel *)self sendMetadata];
}

- (void)_writeToDirectConnection:(id)connection datagram:(const void *)datagram datagramSize:(unsigned int)size currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount datagramInfo:(id)info datagramOptions:(id *)options completionHandler:(id)self0
{
  countCopy = count;
  datagramCountCopy = datagramCount;
  v10 = *&size;
  var0 = info.var0;
  connectionCopy = connection;
  v46 = [handler copy];
  v45 = [self->_internal->_writeHandler copy];
  v15 = [(IDSDatagramChannel *)self _underlyingLinkContextForLinkID:var0];
  v16 = [(IDSDatagramChannel *)self _directConnectionsForLinkID:var0];
  connectionType = [v15 connectionType];
  v43 = v16;
  qpodConnection = [v16 qpodConnection];

  v40 = qpodConnection == connectionCopy;
  LOBYTE(v39) = qpodConnection == connectionCopy;
  v44 = v15;
  v19 = [(IDSDatagramChannel *)self _makeDirectPacketBufferFromDatagram:datagram datagramSize:v10 currentDatagramCount:countCopy totalDatagramCount:datagramCountCopy datagramInfo:*&info.var0 datagramOptions:*&info.var4 linkContext:options supportsQPod:v15, v39];
  if (v19)
  {
    v20 = v19;
    v21 = v10;
    if (connectionType != 1 && qpodConnection == connectionCopy)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_195A7FB04(v19, v23);
    v25 = *MEMORY[0x1E6977E88];
    v26 = v25;
    if ((options->var0 & 0x40000) != 0 || (options->var0 & 0x200) != 0 || (*&info.var0 & 0xFFFFFF0000) != 0)
    {
      v27 = nw_content_context_create("IDSDC packet metadata");

      v28 = options->var0;
      if ((options->var0 & 0x40000) != 0)
      {
        nw_content_context_set_packet_id();
        v28 = options->var0;
      }

      if ((v28 & 0x200) != 0)
      {
        nw_content_context_set_expiration_milliseconds(v27, options->var10);
      }

      v29 = sub_195AEF944(info.var1, info.var2);
      if (v29)
      {
        nw_content_context_set_metadata_for_protocol(v27, v29);
      }
    }

    else
    {
      v27 = v25;
    }

    v31 = v45;
    v30 = v46;
    v32 = v44;
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = sub_195AEFA8C;
    completion[3] = &unk_1E7442BA8;
    v55 = v21;
    v48 = v44;
    selfCopy = self;
    v56 = info.var0;
    v57 = v40;
    v54 = v20;
    v50 = connectionCopy;
    v51 = v24;
    v52 = v46;
    v53 = v45;
    v33 = v24;
    nw_connection_send(v50, v33, v27, 1, completion);
  }

  else
  {
    v34 = objc_alloc(MEMORY[0x1E695DF20]);
    v35 = [v34 initWithObjectsAndKeys:{@"Not enough packet buffer space", *MEMORY[0x1E696A578], 0}];
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = [v36 initWithDomain:*MEMORY[0x1E69A4A18] code:6 userInfo:v35];
    v38 = v10;
    v31 = v45;
    v30 = v46;
    sub_195A7FC78(v46, v45, v37, v38);

    v32 = v44;
  }
}

- (void)setLinkIDToParticipantMap:(id)map
{
  v4 = [map mutableCopy];
  internal = self->_internal;
  linkIDToParticipantMap = internal->_linkIDToParticipantMap;
  internal->_linkIDToParticipantMap = v4;

  MEMORY[0x1EEE66BB8](v4, linkIDToParticipantMap);
}

- (id)getDispatchDataForPacketBuffer:(id *)buffer
{
  v3 = sub_195A7FB04(buffer, 0);

  return v3;
}

- (id)getIDSDataChannelsQueue
{
  if (qword_1EAEDBFA8 != -1)
  {
    sub_195B40774();
  }

  v2 = qword_1EAEDBFA0;

  return v2;
}

- (NSArray)connectedLinks
{
  os_unfair_lock_lock(&self->_internal->_linkContextsLock);
  allValues = [(NSMutableDictionary *)self->_internal->_linkContexts allValues];
  os_unfair_lock_unlock(&self->_internal->_linkContextsLock);

  return allValues;
}

- (id)_linkContextsCopy
{
  os_unfair_lock_lock(&self->_internal->_linkContextsLock);
  v3 = [(NSMutableDictionary *)self->_internal->_linkContexts copy];
  os_unfair_lock_unlock(&self->_internal->_linkContextsLock);

  return v3;
}

- (void)_removeLinkContextWithID:(unsigned __int8)d
{
  dCopy = d;
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_linkContextsLock);
  linkContexts = self->_internal->_linkContexts;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:dCopy];
  v8 = [(NSMutableDictionary *)linkContexts objectForKeyedSubscript:v7];

  if (v8)
  {
    qualityMeasurer = self->_internal->_qualityMeasurer;
    testableLink = [v8 testableLink];
    [(IDSLinksQualityMeasurer *)qualityMeasurer removeLink:testableLink completionHandler:&unk_1F09E7220];

    linkEngineUniqueID = [v8 linkEngineUniqueID];
    if (linkEngineUniqueID)
    {
      [(IDSDataChannelLinkEngineHandle *)self->_internal->_linkEngine removeLinkWithUniqueID:linkEngineUniqueID];
    }
  }

  v12 = self->_internal->_linkContexts;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:dCopy];
  [(NSMutableDictionary *)v12 removeObjectForKey:v13];

  os_unfair_lock_unlock(&internal->_linkContextsLock);
}

- (void)_setLinkContext:(id)context forLinkID:(unsigned __int8)d
{
  dCopy = d;
  *&v20[5] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_linkContextsLock);
  linkContexts = self->_internal->_linkContexts;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:dCopy];
  [(NSMutableDictionary *)linkContexts setObject:contextCopy forKey:v9];

  qualityMeasurer = self->_internal->_qualityMeasurer;
  testableLink = [contextCopy testableLink];
  uniqueID = [contextCopy uniqueID];
  [(IDSLinksQualityMeasurer *)qualityMeasurer addLink:testableLink uniqueID:uniqueID completionHandler:&unk_1F09E7240];

  linkEngineUniqueID = [contextCopy linkEngineUniqueID];
  if (linkEngineUniqueID)
  {
    v14 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v20 = linkEngineUniqueID;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "_setLinkContext: adding link to LinkEngine with unique id %@", buf, 0xCu);
    }

    [(IDSDataChannelLinkEngineHandle *)self->_internal->_linkEngine addLinkWithUniqueID:linkEngineUniqueID];
    linkEngine = self->_internal->_linkEngine;
    testableLink2 = [contextCopy testableLink];
    [(IDSDataChannelLinkEngineHandle *)linkEngine setTestableLink:testableLink2 forLinkWithUniqueID:linkEngineUniqueID];
  }

  v17 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v20[0] = dCopy;
    LOWORD(v20[1]) = 2112;
    *(&v20[1] + 2) = contextCopy;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "LinkID %d associated with LinkContext %@", buf, 0x12u);
  }

  v18 = contextCopy;
  cut_dispatch_log_queue();

  os_unfair_lock_unlock(&internal->_linkContextsLock);
}

- (id)_linkContextWithID:(unsigned __int8)d
{
  dCopy = d;
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_linkContextsLock);
  linkContexts = self->_internal->_linkContexts;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:dCopy];
  v8 = [(NSMutableDictionary *)linkContexts objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&internal->_linkContextsLock);

  return v8;
}

- (IDSDataChannelLinkContext)defaultLink
{
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_linkContextsLock);
  v4 = self->_internal;
  linkContexts = v4->_linkContexts;
  v6 = [MEMORY[0x1E696AD98] numberWithChar:v4->_defaultLinkID];
  v7 = [(NSMutableDictionary *)linkContexts objectForKey:v6];

  if (v7 || self->_internal->_socketDescriptor < 1)
  {
    initWithDummyInformation = v7;
  }

  else
  {
    initWithDummyInformation = [[IDSDataChannelLinkContext alloc] initWithDummyInformation];
  }

  v9 = initWithDummyInformation;

  os_unfair_lock_unlock(&internal->_linkContextsLock);

  return v9;
}

- (IDSDatagramChannel)initWithSocketDescriptor:(int)descriptor
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = _IDSRunningInDaemon();
  v6 = +[IDSLogging IDSDataChannels];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8(self, v7);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v32 = 1024;
    descriptorCopy = descriptor;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "<%p> Creating with socket %d", buf, 0x12u);
  }

  v29.receiver = self;
  v29.super_class = IDSDatagramChannel;
  self = [(IDSDatagramChannel *)&v29 init];
  if (!self)
  {
LABEL_13:
    self = self;
    selfCopy2 = self;
    goto LABEL_14;
  }

  v9 = objc_alloc_init(_IDSDatagramChannel);
  internal = self->_internal;
  self->_internal = v9;

  v11 = self->_internal;
  if (v11)
  {
    v11->_socketDescriptor = descriptor;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = self->_internal;
    linkContexts = v13->_linkContexts;
    v13->_linkContexts = v12;

    self->_internal->_connected = 1;
    self->_internal->_operationMode = 0;
    v15 = IDSRealTimeContext();
    v16 = self->_internal;
    context = v16->_context;
    v16->_context = v15;

    v19 = [IDSDatagramChannel getIDSDataChannelsQueue]_0(v18);
    v20 = self->_internal;
    queue = v20->_queue;
    v20->_queue = v19;

    if (self->_internal->_shouldCollectMetrics)
    {
      v22 = [objc_alloc(MEMORY[0x1E69A5300]) initWithTimeFn:&unk_1F09E7260];
      v23 = self->_internal;
      qualityMeasurer = v23->_qualityMeasurer;
      v23->_qualityMeasurer = v22;
    }

    v25 = [objc_alloc(MEMORY[0x1E69A5220]) initWithTimeFn:&unk_1F09E7280 enableQualityMetrics:self->_internal->_shouldCollectMetrics];
    v26 = self->_internal;
    linkEngine = v26->_linkEngine;
    v26->_linkEngine = v25;

    goto LABEL_13;
  }

LABEL_5:
  selfCopy2 = 0;
LABEL_14:

  return selfCopy2;
}

- (IDSDatagramChannel)initWithDestination:(id)destination options:(id)options
{
  v132 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  optionsCopy = options;
  v8 = _IDSRunningInDaemon();
  v9 = +[IDSLogging IDSDataChannels];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B4079C(self, v10);
    }

    goto LABEL_85;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = destinationCopy;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "<%p> Creating with destination %@", buf, 0x16u);
  }

  v121.receiver = self;
  v121.super_class = IDSDatagramChannel;
  self = [(IDSDatagramChannel *)&v121 init];
  if (self)
  {
    v11 = objc_alloc_init(_IDSDatagramChannel);
    internal = self->_internal;
    self->_internal = v11;

    if (!self->_internal)
    {
LABEL_85:
      selfCopy3 = 0;
      goto LABEL_86;
    }

    self->_internal->_osChannelFD = -1;
    p_internal = &self->_internal;
    self->_internal->_socketDescriptor = -1;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    linkContexts = self->_internal->_linkContexts;
    (*p_internal)->_linkContexts = v14;

    (*p_internal)->_linkContextsLock._os_unfair_lock_opaque = 0;
    (*p_internal)->_linkIDToParticipantMapLock._os_unfair_lock_opaque = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sendingMetadata = self->_internal->_sendingMetadata;
    (*p_internal)->_sendingMetadata = v16;

    (*p_internal)->_hasMetadata = 1;
    if (self->_internal->_shouldCollectMetrics)
    {
      v18 = [objc_alloc(MEMORY[0x1E69A5300]) initWithTimeFn:&unk_1F09E72A0];
      v19 = self->_internal;
      qualityMeasurer = v19->_qualityMeasurer;
      v19->_qualityMeasurer = v18;
    }

    if (_os_feature_enabled_impl())
    {
      v21 = [objc_alloc(MEMORY[0x1E69A5220]) initWithTimeFn:&unk_1F09E72C0 enableQualityMetrics:self->_internal->_shouldCollectMetrics];
      linkEngine = self->_internal->_linkEngine;
      self->_internal->_linkEngine = v21;
    }

    if (self->_internal->_shouldUsePacketLog)
    {
      v23 = objc_alloc(MEMORY[0x1E69A5348]);
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 3221225472;
      v119[2] = sub_195AF681C;
      v119[3] = &unk_1E7442D80;
      selfCopy = self;
      v24 = [v23 initWithSessionID:destinationCopy write:v119];
      v25 = self->_internal;
      packetLog = v25->_packetLog;
      v25->_packetLog = v24;
    }

    v116 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69A4B40]];
    if (v116)
    {
      self->_internal->_operationMode = [v116 integerValue];
      if (self->_internal->_operationMode < 2uLL)
      {
        goto LABEL_21;
      }

      v27 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        operationMode = self->_internal->_operationMode;
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = operationMode;
        _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "<%p> Invalid operation mode value %ld - defaulting to IDSDatagramChannelOperationModeFileDescriptor", buf, 0x16u);
      }
    }

    self->_internal->_operationMode = 0;
LABEL_21:
    v29 = IDSRealTimeContext();
    v30 = self->_internal;
    context = v30->_context;
    v30->_context = v29;

    v33 = [IDSDatagramChannel getIDSDataChannelsQueue]_0(v32);
    queue = self->_internal->_queue;
    self->_internal->_queue = v33;

    v35 = *MEMORY[0x1E69A4B38];
    v36 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69A4B38]];

    if (v36)
    {
      v37 = [optionsCopy objectForKeyedSubscript:v35];
      v38 = self->_internal;
      v39 = v38->_context;
      v38->_context = v37;

      v40 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_internal->_context;
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v41;
        _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "<%p> Got IDSDatagramChannelNWContextKey %@ from client.", buf, 0x16u);
      }
    }

    v115 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69A4B48]];
    if (v115)
    {
      self->_internal->_preferredDataPathType = [v115 integerValue];
      if (self->_internal->_preferredDataPathType < 2uLL)
      {
LABEL_31:
        v44 = self->_internal;
        if (!v44->_operationMode && v44->_preferredDataPathType == 1)
        {
          v45 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = self;
            _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "<%p> Shared direct data path not compatible with file descriptor mode - defaulting to IDSDatagramChannelDataPathThroughIDSDaemon", buf, 0xCu);
          }

          self->_internal->_preferredDataPathType = 0;
        }

        v46 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = self->_internal;
          v48 = @"Dispatch";
          v50 = v47->_operationMode;
          preferredDataPathType = v47->_preferredDataPathType;
          if (!v50)
          {
            v48 = @"FileDescriptor";
          }

          v51 = @"Direct";
          *buf = 134219010;
          *&buf[4] = self;
          if (!preferredDataPathType)
          {
            v51 = @"Daemon";
          }

          *&buf[12] = 2112;
          *&buf[14] = v48;
          *&buf[22] = 1024;
          *&buf[24] = v50;
          *&buf[28] = 2112;
          *&buf[30] = v51;
          *&buf[38] = 1024;
          *&buf[40] = preferredDataPathType;
          _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "<%p> Operation mode %@ (%d) preferred datapath %@ (%d)", buf, 0x2Cu);
        }

        v52 = MEMORY[0x19A8BB9F0]();
        nw_parameters_set_indefinite();
        xarray = xpc_array_create(0, 0);
        v117 = xpc_array_create(0, 0);
        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
        v54 = v53;
        xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, [v53 UTF8String]);

        xpc_array_set_string(v117, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4EC0] UTF8String]);
        nw_parameters_set_data_mode();
        nw_parameters_set_required_netagent_classes();
        nw_parameters_set_context();
        nw_parameters_set_companion_preference();
        if (self->_internal->_preferredDataPathType == 1)
        {
          v55 = getpid();
          memset(buf, 0, 56);
          if (!proc_pidinfo(v55, 17, 1uLL, buf, 56))
          {
            v105 = *__error();
            v106 = +[IDSLogging IDSDataChannels];
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
            {
              *v129 = 67109376;
              *&v129[4] = v55;
              LOWORD(v130) = 1024;
              *(&v130 + 2) = v105;
              _os_log_impl(&dword_1959FF000, v106, OS_LOG_TYPE_DEFAULT, "proc_pidinfo for pid %d failed (errno: %d)", v129, 0xEu);
            }

            goto LABEL_84;
          }

          v56 = *&buf[16];
          v57 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *v129 = 67109376;
            *&v129[4] = v55;
            LOWORD(v130) = 2048;
            *(&v130 + 2) = v56;
            _os_log_impl(&dword_1959FF000, v57, OS_LOG_TYPE_DEFAULT, "proc_pidinfo for pid %d returned client unique PID %llu", v129, 0x12u);
          }

          v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v56];
          v59 = v58;
          [v58 UTF8String];
          nw_parameters_set_account_id();
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v62 = &self->_internal;
        v61 = self->_internal;
        MKIArrivalTime = v61->_MKIArrivalTime;
        v61->_MKIArrivalTime = dictionary;

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        firstPacketArrivalTimeForMKI = self->_internal->_firstPacketArrivalTimeForMKI;
        (*v62)->_firstPacketArrivalTimeForMKI = dictionary2;

        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        probingDict = self->_internal->_probingDict;
        (*v62)->_probingDict = dictionary3;

        (*v62)->_writeLock._os_unfair_lock_opaque = 0;
        (*v62)->_readLock._os_unfair_lock_opaque = 0;
        v68 = self->_internal->_operationMode;
        if (v68 == 1)
        {
          if (v36)
          {
            v94 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v95 = dispatch_queue_attr_make_initially_inactive(v94);
            v96 = dispatch_queue_create("IDSDataChannelsRealTimeQueue", v95);
            v97 = self->_internal;
            v98 = v97->_queue;
            v97->_queue = v96;

            nw_queue_context_target_dispatch_queue();
            dispatch_activate(self->_internal->_queue);
          }

          v99 = destinationCopy;
          host = nw_endpoint_create_host([destinationCopy UTF8String], "2");
          v100 = nw_connection_create(host, v52);
          v101 = self->_internal;
          connection = v101->_connection;
          v101->_connection = v100;
          goto LABEL_68;
        }

        if (v68)
        {
          v103 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v104 = self->_internal->_operationMode;
            *buf = 67109120;
            *&buf[4] = v104;
            _os_log_impl(&dword_1959FF000, v103, OS_LOG_TYPE_DEFAULT, "invalid operation mode %d", buf, 8u);
          }

          [(IDSDatagramChannel *)self close];
          goto LABEL_84;
        }

        v69 = dispatch_semaphore_create(0);
        v70 = destinationCopy;
        host = nw_endpoint_create_host([destinationCopy UTF8String], "3");
        *v129 = 0;
        *&v130 = v129;
        *(&v130 + 1) = 0x2020000000;
        v131 = 0;
        uuid_clear(self->_internal->_nexus_instance);
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
        v73 = self->_internal;
        pathEvaluator = v73->_pathEvaluator;
        v73->_pathEvaluator = evaluator_for_endpoint;

        v75 = nw_path_evaluator_copy_path();
        v76 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v75;
          _os_log_impl(&dword_1959FF000, v76, OS_LOG_TYPE_DEFAULT, "IDSDatagramChannel:initWithDestination:path: %@", buf, 0xCu);
        }

        v77 = v75;
        selfCopy2 = self;
        connection = v69;
        if (nw_path_evaluator_set_update_handler())
        {
          if (MEMORY[0x19A8BBB20](v75))
          {
            if (nw_path_request_nexus())
            {
              v79 = sub_195AF5858();
              v80 = dispatch_time(0, 12000000000);
              dispatch_semaphore_wait(connection, v80);
              v81 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v112 = v81;
                v113 = host;
                v82 = *(v130 + 24);
                v83 = self->_internal;
                connected = v83->_connected;
                v86 = v83->_pathEvaluator;
                osChannel = v83->_osChannel;
                v87 = sub_195AF5858();
                *buf = 138414338;
                v88 = @"NO";
                v89 = self->_internal;
                if (connected)
                {
                  v90 = @"YES";
                }

                else
                {
                  v90 = @"NO";
                }

                if (v82)
                {
                  v88 = @"YES";
                }

                v91 = v89->_operationMode;
                v92 = v89->_preferredDataPathType;
                *&buf[4] = v88;
                *&buf[12] = 2112;
                *&buf[14] = v90;
                *&buf[22] = 2048;
                *&buf[24] = v86;
                *&buf[32] = 2112;
                v81 = v112;
                host = v113;
                *&buf[34] = v113;
                *&buf[42] = 2112;
                *&buf[44] = v52;
                *&buf[52] = 2048;
                *&buf[54] = osChannel;
                v123 = 2048;
                v124 = v87 - v79;
                v125 = 1024;
                v126 = v91;
                v127 = 1024;
                v128 = v92;
                _os_log_impl(&dword_1959FF000, v112, OS_LOG_TYPE_DEFAULT, "osChannel create success %@ (connected: %@) for pathEvaluator %p with endpoint %@ parameters %@ osChannel %p creationTime %0.6lf operationMode %d preferredDataPathType %d", buf, 0x54u);
                v75 = v77;
              }

              if (*(v130 + 24) == 1)
              {
                v93 = self->_internal;
                if (v93->_pathEvaluator)
                {
                  if (v93->_osChannel)
                  {

                    _Block_object_dispose(v129, 8);
LABEL_68:

                    goto LABEL_69;
                  }
                }
              }

              [(IDSDatagramChannel *)selfCopy2 close];
              goto LABEL_83;
            }

            v107 = +[IDSTransportLog IDSDataChannels];
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v75;
              v108 = "nw_path_request_nexus returned no, path: %@";
              v109 = v107;
              v110 = 12;
              goto LABEL_81;
            }

LABEL_82:

            nw_path_evaluator_cancel();
LABEL_83:

            _Block_object_dispose(v129, 8);
LABEL_84:

            goto LABEL_85;
          }

          v107 = +[IDSTransportLog IDSDataChannels];
          if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_82;
          }

          *buf = 0;
          v108 = "nw_path_uses_nexus returned no";
        }

        else
        {
          v107 = +[IDSTransportLog IDSDataChannels];
          if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_82;
          }

          *buf = 0;
          v108 = "nw_path_evaluator_set_update_handler failed";
        }

        v109 = v107;
        v110 = 2;
LABEL_81:
        _os_log_impl(&dword_1959FF000, v109, OS_LOG_TYPE_DEFAULT, v108, buf, v110);
        goto LABEL_82;
      }

      v42 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = self->_internal->_operationMode;
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v43;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "<%p> Invalid preferred data path value %ld - defaulting to IDSDatagramChannelDataPathThroughIDSDaemon", buf, 0x16u);
      }
    }

    self->_internal->_preferredDataPathType = 0;
    goto LABEL_31;
  }

LABEL_69:
  self = self;
  selfCopy3 = self;
LABEL_86:

  return selfCopy3;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "-dealloc called for %@", buf, 0xCu);
  }

  IDSLinkPacketBufferCleanup();
  [(IDSDatagramChannel *)self invalidate];
  v4.receiver = self;
  v4.super_class = IDSDatagramChannel;
  [(IDSDatagramChannel *)&v4 dealloc];
}

- (id)description
{
  internal = self->_internal;
  if (internal->_isInvalidated)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> IDSDataChannels has been invalidated", self, v10, v11, v12, v13, v14, v15];
  }

  else
  {
    v3 = @"NO";
    if (internal->_connected)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    eventHandler = internal->_eventHandler;
    readHandler = internal->_readHandler;
    readHandlerWithOptions = internal->_readHandlerWithOptions;
    if (internal->_pathEvaluator)
    {
      if (internal->_startCalled)
      {
        v3 = @"YES";
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> channelFD %d connected %@ eventHandler %p readHandler %p withOptions %p auto %@", self, internal->_osChannelFD, v4, eventHandler, readHandler, readHandlerWithOptions, v3];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> socket %d connected %@ eventHandler %p readHandler %p withOptions %p", self, internal->_socketDescriptor, v4, eventHandler, readHandler, readHandlerWithOptions, v15];
    }
  }
  v8 = ;

  return v8;
}

- (void)_logFinalStats
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v3 = *&qword_1EAEDBEF0 * mach_continuous_time();
  internal = self->_internal;
  v5 = v3 - internal->_lastPendingOutgoingStatReport;
  if (v5 > 0.0)
  {
    pendingOutgoingBytes = internal->_pendingOutgoingBytes;
    pendingOutgoingPackets = internal->_pendingOutgoingPackets;
    v8 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      selfCopy3 = self;
      v19 = 2048;
      v20 = pendingOutgoingBytes / v5;
      v21 = 2048;
      v22 = pendingOutgoingPackets / v5;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "<%@> pending outgoing [Final] %f bytes/s %f packets/s", &v17, 0x20u);
    }

    internal = self->_internal;
  }

  v9 = v3 - internal->_lastOutgoingStatReport;
  if (v9 > 0.0)
  {
    outgoingBytes = internal->_outgoingBytes;
    outgoingPackets = internal->_outgoingPackets;
    v12 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      selfCopy3 = self;
      v19 = 2048;
      v20 = outgoingBytes / v9;
      v21 = 2048;
      v22 = outgoingPackets / v9;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "<%@> TX [Final] %f bytes/s %f packets/s", &v17, 0x20u);
    }

    internal = self->_internal;
  }

  v13 = v3 - internal->_lastIncomingStatReport;
  if (v13 > 0.0)
  {
    incomingBytes = internal->_incomingBytes;
    incomingPackets = internal->_incomingPackets;
    v16 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      selfCopy3 = self;
      v19 = 2048;
      v20 = incomingBytes / v13;
      v21 = 2048;
      v22 = incomingPackets / v13;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%@> RX [Final] %f bytes/s %f packets/s", &v17, 0x20u);
    }
  }
}

- (int)underlyingFileDescriptor
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "-underlyingFileDescriptor called for %@", &v7, 0xCu);
  }

  internal = self->_internal;
  if (internal->_operationMode)
  {
    sub_195B40830();
  }

  v5 = 136;
  if (!internal->_pathEvaluator)
  {
    v5 = 16;
  }

  return *(&internal->super.isa + v5);
}

- (void)sendEventConnectedWithDummyLinkInfo
{
  v17 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal->_socketDescriptor >= 1 && internal->_connected)
  {
    os_unfair_lock_lock(&internal->_writeLock);
    v4 = self->_internal;
    if (v4->_sentFirstReadLinkInfo)
    {

      os_unfair_lock_unlock(&v4->_writeLock);
    }

    else
    {
      v5 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@> first read, will send dummy link information", buf, 0xCu);
      }

      v6 = self->_internal;
      if (v6->_eventHandler)
      {
        initWithDummyInformation = [[IDSDataChannelLinkContext alloc] initWithDummyInformation];
        v8 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy = initWithDummyInformation;
          _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "<%@> dummy link information", buf, 0xCu);
        }

        eventHandler = self->_internal->_eventHandler;
        v13[1] = @"connected-link";
        v14[0] = &unk_1F0A29A68;
        v12 = initWithDummyInformation;
        v13[0] = @"event-type";
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
        v14[1] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
        eventHandler[2](eventHandler, v11);

        self->_internal->_sentFirstReadLinkInfo = 1;
        v6 = self->_internal;
      }

      os_unfair_lock_unlock(&v6->_writeLock);
    }
  }
}

- (void)removeIDSDataChannelLinkContext:(char)context linkUUID:(id)d reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  contextCopy = context;
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self->_internal->_isInvalidated)
  {
    _linkContextsCopy = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(_linkContextsCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, _linkContextsCopy, OS_LOG_TYPE_DEFAULT, "removeIDSDataChannelLinkContext: connection already closed", buf, 2u);
    }
  }

  else
  {
    _linkContextsCopy = [(IDSDatagramChannel *)self _linkContextsCopy];
    v10 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v30 = 1024;
      v31 = contextCopy;
      v32 = 2112;
      v33 = _linkContextsCopy;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "<%@>  removeIDSDataChannelLinkContext:%u, linkContexts %@", buf, 0x1Cu);
    }

    v11 = [(IDSDatagramChannel *)self _linkContextWithID:contextCopy];
    v12 = +[IDSTransportLog IDSDataChannels];
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v22 = dCopy;
      if (v13)
      {
        *buf = 138413058;
        selfCopy3 = self;
        v30 = 1024;
        v31 = contextCopy;
        v32 = 2112;
        v33 = _linkContextsCopy;
        v34 = 1024;
        v35 = reasonCopy;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventDisconnected, linkID %u, linkContexts %@, reason: %d", buf, 0x22u);
      }

      internal = self->_internal;
      eventHandler = internal->_eventHandler;
      if (eventHandler)
      {
        v27[0] = &unk_1F0A29A50;
        v26[0] = @"event-type";
        v26[1] = @"disconnected-link";
        v25 = v11;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        v27[1] = v21;
        v26[2] = @"disconnected-link-ids";
        v16 = [MEMORY[0x1E696AD98] numberWithChar:{objc_msgSend(v11, "linkID")}];
        v24 = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
        v27[2] = v17;
        v26[3] = @"disconnected-link-uuids";
        v23 = v22;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
        v27[3] = v18;
        v26[4] = @"disconnected-reason";
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:reasonCopy];
        v27[4] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];
        eventHandler[2](eventHandler, v20);

        internal = self->_internal;
      }

      if (internal->_preferredDataPathType == 1)
      {
        [(IDSDatagramChannel *)self removeDirectConnectionsForLinkID:contextCopy];
      }

      [(IDSDatagramChannel *)self _removeLinkContextWithID:contextCopy];
      dCopy = v22;
    }

    else
    {
      if (v13)
      {
        *buf = 138412802;
        selfCopy3 = self;
        v30 = 1024;
        v31 = contextCopy;
        v32 = 2112;
        v33 = _linkContextsCopy;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "<%@> Can't find the linkContext of linkID %u, linkContexts %@", buf, 0x1Cu);
      }
    }
  }
}

- (void)addNewIDSDataChannelLinkWithAttributes:(char *)attributes linkAttributesLength:(unsigned __int16)length
{
  lengthCopy = length;
  v197 = *MEMORY[0x1E69E9840];
  v196 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v194 = v5;
  v195 = v5;
  v192 = v5;
  v193 = v5;
  v190 = v5;
  v191 = v5;
  v189 = v5;
  if (length <= 0x73u)
  {
    v6 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 67109120;
      DWORD1(buf[0]) = lengthCopy;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "invalid link attribute size (%u), too small.", buf, 8u);
    }

    goto LABEL_137;
  }

  v129 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v193 + 15];
  v9 = *(attributes + 5);
  v193 = *(attributes + 4);
  v194 = v9;
  v195 = *(attributes + 6);
  v196 = *(attributes + 28);
  v10 = *(attributes + 1);
  v189 = *attributes;
  v190 = v10;
  v11 = *(attributes + 3);
  v12 = attributes + 116;
  v13 = lengthCopy - 116;
  v191 = *(attributes + 2);
  v192 = v11;
  selfCopy = self;
  if ((lengthCopy - 116) < 2)
  {
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v125 = 0;
    v127 = 0;
    v117 = 0;
    v118 = 0;
    v123 = 0;
    goto LABEL_49;
  }

  v14 = __rev16(*(attributes + 58));
  v15 = attributes + 118;
  v16 = lengthCopy - 118;
  if (v14 && (v17 = v16 - v14, v16 >= v14))
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:attributes + 118 length:v14];
    v15 += v14;
    if (v18)
    {
      v127 = JWDecodeDictionary();
    }

    else
    {
      v127 = 0;
    }
  }

  else
  {
    v18 = 0;
    if (v14)
    {
      v127 = 0;
      goto LABEL_16;
    }

    v17 = lengthCopy - 118;
    v127 = 0;
  }

  if (v17 < 2)
  {
    v119 = v18;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v125 = 0;
    v117 = 0;
    v118 = 0;
    v12 = v15;
LABEL_48:
    self = selfCopy;
    goto LABEL_49;
  }

  v13 = v17;
  v12 = v15;
LABEL_16:
  v19 = __rev16(*v12);
  v20 = v13 - 2;
  if (v19 && (v21 = v20 - v19, v20 >= v19))
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 2 length:v19];
    v12 += v19 + 2;
    if (v22)
    {
      v118 = v22;
      v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v22 encoding:4];
    }

    else
    {
      v118 = 0;
      v125 = 0;
    }
  }

  else
  {
    v118 = 0;
    v125 = 0;
    if (v19)
    {
      v21 = v13;
    }

    else
    {
      v12 += 2;
      v21 = v13 - 2;
    }
  }

  v23 = v21 - 2;
  v119 = v18;
  if (v21 < 2)
  {
    v121 = 0;
    v122 = 0;
    v120 = 0;
    v117 = 0;
    v123 = 0;
    goto LABEL_48;
  }

  v24 = __rev16(*v12);
  if (v24 && (v25 = v23 - v24, v23 >= v24))
  {
    v26 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 2 length:v24];
    v12 += v24 + 2;
    if (v26)
    {
      v117 = v26;
      v123 = JWDecodeDictionary();
    }

    else
    {
      v117 = 0;
      v123 = 0;
    }
  }

  else
  {
    v117 = 0;
    v123 = 0;
    if (v24)
    {
      v25 = v21;
    }

    else
    {
      v12 += 2;
      v25 = v21 - 2;
    }
  }

  v27 = v25 - 2;
  if (v25 < 2)
  {
    v121 = 0;
    v122 = 0;
    v120 = 0;
    goto LABEL_48;
  }

  v28 = __rev16(*v12);
  if (v28)
  {
    v29 = v27 < v28;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v30 = v28 == 0;
    if (v28)
    {
      v31 = v25;
    }

    else
    {
      v31 = v25 - 2;
    }

    if (v30)
    {
      v12 += 2;
    }

    goto LABEL_147;
  }

  v106 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 2 length:v28];
  v12 += v28 + 2;
  v31 = v27 - v28;
  v121 = v106;
  if (!v106)
  {
    v120 = 0;
    v121 = 0;
    v122 = 0;
LABEL_147:
    self = selfCopy;
    goto LABEL_148;
  }

  v107 = +[IDSTransportLog IDSDataChannels];
  self = selfCopy;
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v121;
    _os_log_impl(&dword_1959FF000, v107, OS_LOG_TYPE_DEFAULT, "Got feature flags data: %@", buf, 0xCu);
  }

  v120 = JWDecodeDictionary();
  if (v120)
  {
    v108 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v120;
      _os_log_impl(&dword_1959FF000, v108, OS_LOG_TYPE_DEFAULT, "Got feature flags dict: %@", buf, 0xCu);
    }

    v122 = [v120 objectForKeyedSubscript:*MEMORY[0x1E69A4CC0]];
  }

  else
  {
    v120 = 0;
    v122 = 0;
  }

LABEL_148:
  v109 = v31 - 2;
  if (v31 >= 2)
  {
    v110 = __rev16(*v12);
    if (v110)
    {
      if (v109 >= v110)
      {
        v111 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 2 length:v110];
        v12 += v110 + 2;
        if (v111)
        {
          v33 = v111;
          v112 = +[IDSTransportLog IDSDataChannels];
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 138412290;
            *(buf + 4) = v33;
            _os_log_impl(&dword_1959FF000, v112, OS_LOG_TYPE_DEFAULT, "Got LinkEngine Unique ID: %@", buf, 0xCu);
          }

          v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v33 encoding:4];
          goto LABEL_52;
        }
      }
    }

    else
    {
      v12 += 2;
    }
  }

LABEL_49:
  v32 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1959FF000, v32, OS_LOG_TYPE_DEFAULT, "No LinkEngine Unique ID for link.", buf, 2u);
  }

  v33 = 0;
  v131 = 0;
LABEL_52:
  v116 = v33;
  if (BYTE2(v192) - 2 > 3)
  {
    v36 = 0;
    v115 = 0;
    v132 = 0;
    v133 = 0;
    relayServerProvider = 0;
    goto LABEL_109;
  }

  v34 = &attributes[lengthCopy];
  if (v12 + 3 <= v34)
  {
    v39 = (v12 + 1);
    LODWORD(relayServerProvider) = *v12;
    v40 = v34 - (v12 + 1);
    if ((v40 & 0xFFFFFFFE) != 0)
    {
      v41 = __rev16(*(v12 + 1));
      v42 = v40 - 2;
      if (v41 && (v43 = v42 - v41, v42 >= v41))
      {
        v133 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 + 3 length:v41];
        v39 = &v12[v41 + 3];
        v40 = v43;
      }

      else
      {
        v133 = 0;
        if (!v41)
        {
          v40 -= 2;
          v39 = (v12 + 3);
        }
      }
    }

    else
    {
      v133 = 0;
    }

    v44 = v40 - 2;
    if (v40 < 2)
    {
      v37 = 0;
      v132 = 0;
      goto LABEL_82;
    }

    v45 = v39 + 1;
    v46 = __rev16(*v39);
    if (v46 && (v47 = v44 - v46, v44 >= v46))
    {
      v132 = [MEMORY[0x1E695DEF0] dataWithBytes:v39 + 1 length:v46];
      v45 = (v45 + v46);
      v44 = v47;
    }

    else
    {
      v132 = 0;
      v48 = v40 - 2;
      if (v46)
      {
        goto LABEL_73;
      }
    }

    v48 = v44 - 2;
    if (v44 < 2)
    {
      v37 = 0;
      goto LABEL_82;
    }

    v39 = v45;
    v40 = v44;
LABEL_73:
    v49 = v39 + 1;
    v50 = __rev16(*v39);
    if (v50 && (v51 = v48 - v50, v48 >= v50))
    {
      v37 = [MEMORY[0x1E695DEF0] dataWithBytes:v39 + 1 length:v50];
      v49 = (v49 + v50);
      v48 = v51;
    }

    else
    {
      v37 = 0;
      if (v50)
      {
LABEL_80:
        v52 = *v39++;
        v53 = __rev16(v52);
        if (v53 && (v40 - 2) >= v53)
        {
          v36 = [MEMORY[0x1E695DEF0] dataWithBytes:v39 length:?];
          goto LABEL_83;
        }

LABEL_82:
        v36 = 0;
LABEL_83:
        v54 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v133 length];
          v56 = [v132 length];
          LODWORD(buf[0]) = 67109632;
          DWORD1(buf[0]) = relayServerProvider;
          WORD4(buf[0]) = 1024;
          *(buf + 10) = v55;
          HIWORD(buf[0]) = 1024;
          LODWORD(buf[1]) = v56;
          _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "Got relay server provider:%d, session token:%dB, session key:%dB", buf, 0x14u);
        }

        v35 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 138412546;
          *(buf + 4) = v37;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v36;
          _os_log_impl(&dword_1959FF000, v35, OS_LOG_TYPE_DEFAULT, "Got hbhEncryptionkey:%@ and hbhDecryptionkey:%@", buf, 0x16u);
        }

        goto LABEL_87;
      }
    }

    if (v48 < 2)
    {
      goto LABEL_82;
    }

    v39 = v49;
    v40 = v48;
    goto LABEL_80;
  }

  v35 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_195B4085C();
  }

  v36 = 0;
  v37 = 0;
  v132 = 0;
  v133 = 0;
  LODWORD(relayServerProvider) = 0;
LABEL_87:
  relayServerProvider = relayServerProvider;

  if (BYTE12(v193) == 1)
  {
    v57 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 67109376;
      DWORD1(buf[0]) = v192;
      WORD4(buf[0]) = 1024;
      *(buf + 10) = HIBYTE(v194);
      _os_log_impl(&dword_1959FF000, v57, OS_LOG_TYPE_DEFAULT, "This is a virtual relay link(%u). Copying over attributes from delegated link(%u)", buf, 0xEu);
    }

    v58 = [(IDSDatagramChannel *)self _linkContextWithID:HIBYTE(v194)];
    v59 = v58;
    if (v58)
    {
      relayServerProvider = [v58 relayServerProvider];
      relaySessionToken = [v59 relaySessionToken];
      v61 = [relaySessionToken copy];

      relaySessionKey = [v59 relaySessionKey];
      v63 = [relaySessionKey copy];

      hbhEncryptionkey = [v59 hbhEncryptionkey];
      v65 = [hbhEncryptionkey copy];

      hbhDecryptionkey = [v59 hbhDecryptionkey];
      v67 = [hbhDecryptionkey copy];

      v36 = v67;
      v37 = v65;
      v132 = v63;
      v133 = v61;
    }

    v68 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [v133 length];
      v70 = [v132 length];
      LODWORD(buf[0]) = 67109632;
      DWORD1(buf[0]) = relayServerProvider;
      WORD4(buf[0]) = 1024;
      *(buf + 10) = v69;
      HIWORD(buf[0]) = 1024;
      LODWORD(buf[1]) = v70;
      _os_log_impl(&dword_1959FF000, v68, OS_LOG_TYPE_DEFAULT, "Copied relay server provider:%d, session token:%dB, session key:%dB", buf, 0x14u);
    }

    v71 = +[IDSTransportLog IDSDataChannels];
    self = selfCopy;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = v37;
      WORD6(buf[0]) = 2112;
      *(buf + 14) = v36;
      _os_log_impl(&dword_1959FF000, v71, OS_LOG_TYPE_DEFAULT, "Copied hbhEncryptionkey:%@ and hbhDecryptionkey:%@", buf, 0x16u);
    }
  }

  v115 = v37;
  if (IMGetDomainBoolForKey())
  {
    v72 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(v37, "length")}];
    bytes = [v37 bytes];
    if ([v37 length])
    {
      v74 = 0;
      do
      {
        [v72 appendFormat:@"%02x", *(bytes + v74++)];
      }

      while (v74 < [v37 length]);
    }

    v75 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v72;
      _os_log_impl(&dword_1959FF000, v75, OS_LOG_TYPE_DEFAULT, "Full hbhEncryptionkey: %@", buf, 0xCu);
    }

    v76 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(v36, "length")}];
    bytes2 = [v36 bytes];
    if ([v36 length])
    {
      v78 = 0;
      do
      {
        [v76 appendFormat:@"%02x", *(bytes2 + v78++)];
      }

      while (v78 < [v36 length]);
    }

    v79 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v76;
      _os_log_impl(&dword_1959FF000, v79, OS_LOG_TYPE_DEFAULT, "Full hbhDecryptionkey: %@", buf, 0xCu);
    }

    self = selfCopy;
  }

LABEL_109:
  _linkContextsCopy = [(IDSDatagramChannel *)self _linkContextsCopy];
  v81 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = @"NO";
    if (BYTE12(v193))
    {
      v82 = @"YES";
    }

    LODWORD(buf[0]) = 138417154;
    *(buf + 4) = self;
    WORD6(buf[0]) = 1024;
    *(buf + 14) = v192;
    WORD1(buf[1]) = 1024;
    DWORD1(buf[1]) = BYTE1(v192);
    WORD4(buf[1]) = 1024;
    *(&buf[1] + 10) = WORD3(v193);
    HIWORD(buf[1]) = 1024;
    *v160 = BYTE2(v192);
    *&v160[4] = 1024;
    *&v160[6] = BYTE3(v192);
    v161 = 1024;
    v162 = WORD4(v192);
    v163 = 1024;
    v164 = HIDWORD(v192);
    v165 = 1024;
    v166 = BYTE5(v192);
    v167 = 1024;
    v168 = BYTE6(v192);
    v169 = 1024;
    v170 = WORD5(v192);
    v171 = 1024;
    v172 = v193;
    v173 = 2112;
    v174 = v82;
    v175 = 2112;
    v176 = v129;
    v177 = 1024;
    v178 = WORD2(v193);
    v179 = 2112;
    v180 = v125;
    v181 = 2112;
    v182 = v127;
    v183 = 2112;
    v184 = v122;
    v185 = 2112;
    v186 = v123;
    v187 = 2112;
    v188 = _linkContextsCopy;
    _os_log_impl(&dword_1959FF000, v81, OS_LOG_TYPE_DEFAULT, "<%@> got connectedLinkID %d (link family:%u) (mtu:%u) (l-conn:%u) (l-RAT:%u) (l-flags:0x%x) (l-dataSoMask: %u) (r-conn:%u) (r-RAT:%u) (r-flags:0x%x) (r-datasoMask:%u) isVirtualRelayLink: %@, childConnectionID: %@, channelNumber: %04X, relayProtocolStack: %@, connections: %@, feature flags: %@, qrExperiments: %@, (Current LinkContexts %@", buf, 0x9Au);
  }

  v140 = MEMORY[0x1E69E9820];
  v141 = 3221225472;
  v155 = v193;
  v156 = v194;
  v157 = v195;
  v151 = v189;
  v152 = v190;
  v153 = v191;
  v142 = sub_195AF915C;
  v143 = &unk_1E7442DF8;
  selfCopy2 = self;
  v158 = v196;
  v154 = v192;
  v114 = v129;
  v145 = v114;
  v146 = v125;
  v83 = v127;
  v147 = v83;
  v148 = v122;
  v149 = v123;
  v124 = _linkContextsCopy;
  v150 = v124;
  cut_dispatch_log_queue();
  v84 = [IDSDataChannelLinkContext alloc];
  LOWORD(v113) = v196;
  v126 = v148;
  v128 = v149;
  v130 = v146;
  v85 = v36;
  v86 = [(IDSDataChannelLinkContext *)v84 initWithAttributes:&v189 maxBitrate:0xFFFFFFFFLL relayServerProvider:relayServerProvider relaySessionToken:v133 relaySessionKey:v132 hbhEncryptionkey:v115 hbhDecryptionkey:v36 relayProtocolStackDescription:v146 qrExperiments:v149 featureFlags:v148 linkEngineUniqueID:v131 estimatedPerPacketConstantOverhead:v113];
  if (v83)
  {
    [(IDSDatagramChannel *)self _addConnections:v83 toLinkContext:v86];
  }

  [(IDSDatagramChannel *)self _setLinkContext:v86 forLinkID:v192];
  if ([(IDSDataChannelLinkContext *)v86 RATType]&& [(IDSDataChannelLinkContext *)v86 RATType]!= 9)
  {
    objc_storeStrong(&selfCopy->_internal->_cellularLink, v86);
  }

  v87 = BYTE2(v192) - 5;
  connections = [(IDSDataChannelLinkContext *)v86 connections];
  v89 = [connections udp];

  connections2 = [(IDSDataChannelLinkContext *)v86 connections];
  qpod = [connections2 qpod];

  if (v87 > 0xFFFFFFFD || selfCopy->_internal->_preferredDataPathType != 1)
  {
    goto LABEL_131;
  }

  if (qpod)
  {
    childConnectionID = [qpod childConnectionID];
    memset(buf, 170, 16);
    [childConnectionID getUUIDBytes:buf];
    v93 = uuid_is_null(buf) != 0;

    if (!v89)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v93 = 0;
    if (!v89)
    {
LABEL_125:
      if ([(IDSDataChannelLinkContext *)v86 isVirtualRelayLink])
      {
        [(IDSDatagramChannel *)selfCopy reportEvent:*MEMORY[0x1E69A4CF0] forLinkID:[(IDSDataChannelLinkContext *)v86 linkID]];
        [(IDSDatagramChannel *)selfCopy addDirectConnectionForLinkID:[(IDSDataChannelLinkContext *)v86 linkID] linkContext:v86];
      }

      v96 = _IDSLinkPacketBufferCreate();
      *v160 = 0xAAAAAAAAAAAAAAAALL;
      *&v97 = 0xAAAAAAAAAAAAAAAALL;
      *(&v97 + 1) = 0xAAAAAAAAAAAAAAAALL;
      buf[0] = v97;
      buf[1] = v97;
      IDSByteBufferInitForWriteWithAllocatedSpace();
      linkID = [(IDSDataChannelLinkContext *)v86 linkID];
      IDSByteBufferWriteField();
      v96[2] = *&buf[1] - *v96;
      IDSByteBufferRelease();
      v98 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *v138 = 67109120;
        v139 = linkID;
        _os_log_impl(&dword_1959FF000, v98, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID: request child connectionID for linkID %d", v138, 8u);
      }

      [(IDSDatagramChannel *)selfCopy _buildPacketBufferMetaData:v96];
      os_unfair_lock_lock(&selfCopy->_internal->_writeLock);
      sendingMetadata = selfCopy->_internal->_sendingMetadata;
      v100 = [MEMORY[0x1E696B098] valueWithPointer:v96];
      [(NSMutableArray *)sendingMetadata addObject:v100];

      [(IDSDatagramChannel *)selfCopy sendMetadata];
      os_unfair_lock_unlock(&selfCopy->_internal->_writeLock);
      goto LABEL_131;
    }
  }

  childConnectionID2 = [v89 childConnectionID];
  memset(buf, 170, 16);
  [childConnectionID2 getUUIDBytes:buf];
  v95 = uuid_is_null(buf) != 0 || v93;

  if (v95)
  {
    goto LABEL_125;
  }

  [(IDSDatagramChannel *)selfCopy reportEvent:*MEMORY[0x1E69A4CF0] forLinkID:[(IDSDataChannelLinkContext *)v86 linkID]];
  [(IDSDatagramChannel *)selfCopy addDirectConnectionForLinkID:[(IDSDataChannelLinkContext *)v86 linkID] linkContext:v86];
LABEL_131:
  if (!selfCopy->_internal->_waitForPreConnectionDataForConnected)
  {
    v101 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      _linkContextsCopy2 = [(IDSDatagramChannel *)selfCopy _linkContextsCopy];
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = selfCopy;
      WORD6(buf[0]) = 2112;
      *(buf + 14) = _linkContextsCopy2;
      _os_log_impl(&dword_1959FF000, v101, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventConnected, current link contexts %@", buf, 0x16u);
    }

    eventHandler = selfCopy->_internal->_eventHandler;
    if (eventHandler)
    {
      v136[0] = @"event-type";
      v136[1] = @"connected-link";
      v137[0] = &unk_1F0A29A68;
      connectedLinks = [(IDSDatagramChannel *)selfCopy connectedLinks];
      v137[1] = connectedLinks;
      v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v137 forKeys:v136 count:2];
      eventHandler[2](eventHandler, v105);
    }
  }

  v6 = v118;
LABEL_137:
}

- (void)selectDefaultLink:(char)link
{
  linkCopy = link;
  v14 = *MEMORY[0x1E69E9840];
  self->_internal->_defaultLinkID = link;
  v5 = [(IDSDatagramChannel *)self _linkContextWithID:link];
  v6 = v5;
  if (!v5)
  {
    v8 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = linkCopy;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "can't find link %d for the default", buf, 8u);
    }

    goto LABEL_6;
  }

  eventHandler = self->_internal->_eventHandler;
  if (eventHandler)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithChar:{objc_msgSend(v5, "linkID", @"event-type", @"default-link", @"default-link-id", &unk_1F0A29A80, v5)}];
    v11[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:3];
    eventHandler[2](eventHandler, v9);

LABEL_6:
  }
}

- (void)sendMediaEncryptionInfoWithMKM:(id)m MKS:(id)s MKI:(id)i participantID:(unint64_t)d isLocallyGenerated:(BOOL)generated shortKILength:(unsigned __int8)length encryptionSequenceNumber:(unint64_t)number
{
  lengthCopy = length;
  generatedCopy = generated;
  v53 = *MEMORY[0x1E69E9840];
  mCopy = m;
  sCopy = s;
  iCopy = i;
  v18 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    dCopy = d;
    selfCopy = self;
    v19 = mCopy;
    v33 = generatedCopy;
    if (generatedCopy)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = lengthCopy;
    if (number == -1)
    {
      v22 = @"none";
    }

    else
    {
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:number];
    }

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:dCopy];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v21];
    *buf = 138414083;
    *&buf[4] = selfCopy;
    *&buf[12] = 2113;
    *&buf[14] = v19;
    v41 = 2113;
    v42 = sCopy;
    v43 = 2113;
    v44 = iCopy;
    v45 = 2113;
    v46 = v20;
    v47 = 2113;
    v48 = v22;
    v49 = 2113;
    v50 = v23;
    v51 = 2113;
    v52 = v24;
    _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "<%@> sendMediaEncryptionEventInfo MKM:%{private}@, MKS:%{private}@, MKI:%{private}@ locally generated:%{private}@ encryptionSequenceNumber:%{private}@, participantID:%{private}@, shortKILength:%{private}@", buf, 0x52u);

    if (number != -1)
    {
    }

    mCopy = v19;
    self = selfCopy;
    lengthCopy = v21;
    generatedCopy = v33;
    d = dCopy;
  }

  memset(buf, 170, 16);
  [iCopy getUUIDBytes:buf];
  [(IDSDatagramChannel *)self reportMKIArrival:iCopy isLocallyGenerated:generatedCopy];
  if (self->_internal->_eventHandler)
  {
    v25 = *MEMORY[0x1E69A5008];
    if (number == -1)
    {
      v38[0] = @"event-type";
      v38[1] = v25;
      v39[0] = &unk_1F0A29A98;
      v39[1] = mCopy;
      v32 = *MEMORY[0x1E69A5000];
      v38[2] = *MEMORY[0x1E69A5010];
      v38[3] = v32;
      v39[2] = sCopy;
      v39[3] = iCopy;
      v38[4] = *MEMORY[0x1E69A5020];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
      v39[4] = v27;
      v38[5] = *MEMORY[0x1E69A4FF8];
      v28 = [MEMORY[0x1E696AD98] numberWithBool:generatedCopy];
      v39[5] = v28;
      v38[6] = *MEMORY[0x1E69A5028];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:lengthCopy];
      v39[6] = v29;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:7];
    }

    else
    {
      v36[0] = @"event-type";
      v36[1] = v25;
      v37[0] = &unk_1F0A29A98;
      v37[1] = mCopy;
      v26 = *MEMORY[0x1E69A5000];
      v36[2] = *MEMORY[0x1E69A5010];
      v36[3] = v26;
      v37[2] = sCopy;
      v37[3] = iCopy;
      v36[4] = *MEMORY[0x1E69A5020];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
      v37[4] = v27;
      v36[5] = *MEMORY[0x1E69A4FF8];
      v28 = [MEMORY[0x1E696AD98] numberWithBool:generatedCopy];
      v37[5] = v28;
      v36[6] = *MEMORY[0x1E69A5018];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:number];
      v37[6] = v29;
      v36[7] = *MEMORY[0x1E69A5028];
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:lengthCopy];
      v37[7] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:8];
    }

    (*(self->_internal->_eventHandler + 2))();
  }
}

- (void)sendMediaMembershipChangedInfo:(unsigned __int8)info
{
  infoCopy = info;
  v15 = *MEMORY[0x1E69E9840];
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 1024;
    v14 = infoCopy;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@> sendMediaMembershipChangedInfo membershipChanged:%u", buf, 0x12u);
  }

  eventHandler = self->_internal->_eventHandler;
  if (eventHandler)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{infoCopy, @"event-type", @"membership-changed-reason-key", &unk_1F0A29AB0}];
    v10[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:2];
    eventHandler[2](eventHandler, v8);
  }
}

- (void)processMetadataForDatagram:(const char *)datagram size:(unint64_t)size datagramInfo:(id *)info options:(id *)options
{
  v394[2] = *MEMORY[0x1E69E9840];
  v353 = -86;
  v352 = 0xAAAAAAAAAAAAAAAALL;
  v351 = -21846;
  v350 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v348 = v7;
  v349 = v7;
  if (size > 2)
  {
    v12 = __rev16(*datagram);
    if (v12 + 2 <= size)
    {
      *&info->var4 = 0;
      *&info->var0 = 0;
      *&options->var14 = 0;
      *&options->var11 = 0u;
      *options->var13 = 0u;
      *&options->var8.var0 = 0u;
      *&options->var9 = 0u;
      *&options->var2 = 0u;
      *&options->var5[6] = 0u;
      *&options->var0 = 0u;
      IDSByteBufferInitForRead();
      if (IDSByteBufferReadField())
      {
        v329 = 0;
        v330 = 0;
        v332 = 0;
        v333 = 0;
        v324 = 0;
        LOWORD(v325) = 0;
        v327 = 0;
        v328 = 0;
        v320 = 0;
        v321 = 0;
        v326 = 0;
        v337 = 0;
        v338 = 0;
        v335 = 0;
        v336 = 0;
        v323 = 0;
        v331 = 0;
        v334 = 0;
        v317 = *MEMORY[0x1E69A4A40];
        v319 = *MEMORY[0x1E696A588];
        v318 = *MEMORY[0x1E69A4A18];
        key = *MEMORY[0x1E69A4B30];
        v315 = *MEMORY[0x1E69A4A68];
        v314 = *MEMORY[0x1E69A4A70];
        v313 = *MEMORY[0x1E69A4A78];
        v312 = *MEMORY[0x1E69A4AC0];
        v322 = -1;
        while (1)
        {
          switch(v353)
          {
            case 1u:
              if (v351 != 1)
              {
                v18 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v384 = v351;
                  *&v384[4] = 1024;
                  *&v384[6] = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PacketLinkID should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v14 = *v352;
              LOBYTE(v332) = *v352;
              if (self->_internal->_verboseFunctionalLogging)
              {
                v15 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v14;
                  _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "got PacketLinkID %d", buf, 8u);
                }
              }

              LOBYTE(v329) = 1;
              goto LABEL_585;
            case 2u:
              [(IDSDatagramChannel *)self addNewIDSDataChannelLinkWithAttributes:v352 linkAttributesLength:v351];
              goto LABEL_585;
            case 3u:
              if (v351 != 18)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v384 = 18;
                  *&v384[4] = 1024;
                  *&v384[6] = v351;
                  *&v384[10] = 1024;
                  *&v384[12] = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkDisconnected should be %d byte, not %u bytes, field: %u", buf, 0x14u);
                }

                goto LABEL_523;
              }

              v140 = v352;
              v141 = *v352++;
              v142 = *v352;
              v352 = v140 + 2;
              v143 = objc_alloc(MEMORY[0x1E696AFB0]);
              v144 = [v143 initWithUUIDBytes:v352];
              v145 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString = [v144 UUIDString];
                *buf = 67109634;
                *v384 = v141;
                *&v384[4] = 2112;
                *&v384[6] = uUIDString;
                *&v384[14] = 1024;
                *&v384[16] = v142;
                _os_log_impl(&dword_1959FF000, v145, OS_LOG_TYPE_DEFAULT, "got disconnectedLinkID %d, linkUUID %@, reason: %d", buf, 0x18u);
              }

              [(IDSDatagramChannel *)self removeIDSDataChannelLinkContext:v141 linkUUID:v144 reason:v142];
              goto LABEL_585;
            case 4u:
              if (v351 != 1)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v384 = v351;
                  *&v384[4] = 1024;
                  *&v384[6] = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DefaultLinkID should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v155 = *v352;
              v156 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v384 = v155;
                _os_log_impl(&dword_1959FF000, v156, OS_LOG_TYPE_DEFAULT, "got defaultLinkID %d", buf, 8u);
              }

              [(IDSDatagramChannel *)self selectDefaultLink:v155];
              goto LABEL_585;
            case 5u:
              if (v351 != 1)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v384 = v351;
                  *&v384[4] = 1024;
                  *&v384[6] = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RATChanged should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v124 = *v352;
              v125 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v384 = v124;
                _os_log_impl(&dword_1959FF000, v125, OS_LOG_TYPE_DEFAULT, "got ratType %u", buf, 8u);
              }

              cellularLink = self->_internal->_cellularLink;
              if (cellularLink)
              {
                [(IDSDataChannelLinkContext *)cellularLink setRATType:v124];
              }

              else
              {
                v260 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v260, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RATChanged requires the cellular link. something is wrong...", buf, 2u);
                }
              }

              eventHandler = self->_internal->_eventHandler;
              if (eventHandler)
              {
                v393[0] = @"event-type";
                v393[1] = @"rat-changed";
                v394[0] = &unk_1F0A29AC8;
                v262 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v124];
                v394[1] = v262;
                v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v394 forKeys:v393 count:2];
                eventHandler[2](eventHandler, v263);
              }

              goto LABEL_585;
            case 6u:
            case 7u:
            case 8u:
            case 9u:
            case 0xCu:
            case 0x12u:
            case 0x13u:
            case 0x15u:
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
            case 0x1Cu:
            case 0x1Du:
            case 0x29u:
            case 0x2Au:
            case 0x2Cu:
            case 0x35u:
            case 0x38u:
            case 0x39u:
            case 0x3Au:
            case 0x3Bu:
            case 0x40u:
            case 0x41u:
            case 0x42u:
            case 0x44u:
            case 0x4Du:
            case 0x4Eu:
            case 0x4Fu:
            case 0x50u:
            case 0x51u:
            case 0x53u:
            case 0x54u:
            case 0x56u:
            case 0x57u:
            case 0x58u:
            case 0x59u:
              goto LABEL_22;
            case 0xAu:
              if (v351 == 1)
              {
                v320 = *v352;
                v127 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v320;
                  _os_log_impl(&dword_1959FF000, v127, OS_LOG_TYPE_DEFAULT, "got preConnectionDataSize %u", buf, 8u);
                }

                goto LABEL_195;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = v351;
                *&v384[4] = 1024;
                *&v384[6] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataSizeKey should be 1 bytes, not %u bytes, field: %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0xBu:
              if (v321)
              {
                if (v351 >= v320)
                {
                  v234 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v320];

                  internal = self->_internal;
                  v236 = internal->_eventHandler;
                  if (v236)
                  {
                    v391[0] = @"event-type";
                    v391[1] = @"preconnection-data-key";
                    v392[0] = &unk_1F0A29AE0;
                    v392[1] = v234;
                    v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v392 forKeys:v391 count:2];
                    v236[2](v236, v237);

                    internal = self->_internal;
                  }

                  internal->_receivedPreConnectionData = 1;
                  self->_internal->_waitForPreConnectionDataForConnected = 0;
                  v238 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v238, OS_LOG_TYPE_DEFAULT, "got preConnectionData, called IDSDataChannelEventPreConnectionData event", buf, 2u);
                  }

                  connectedLinks = [(IDSDatagramChannel *)self connectedLinks];
                  v240 = [connectedLinks count] == 0;

                  if (!v240)
                  {
                    v241 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
                    {
                      _linkContextsCopy = [(IDSDatagramChannel *)self _linkContextsCopy];
                      *buf = 138412546;
                      *v384 = self;
                      *&v384[8] = 2112;
                      *&v384[10] = _linkContextsCopy;
                      _os_log_impl(&dword_1959FF000, v241, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventConnected, current link contexts %@", buf, 0x16u);
                    }

                    v243 = self->_internal->_eventHandler;
                    if (v243)
                    {
                      v389[0] = @"event-type";
                      v389[1] = @"connected-link";
                      v390[0] = &unk_1F0A29A68;
                      connectedLinks2 = [(IDSDatagramChannel *)self connectedLinks];
                      v390[1] = connectedLinks2;
                      v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v390 forKeys:v389 count:2];
                      v243[2](v243, v245);
                    }
                  }

                  LOBYTE(v321) = 1;
                  v326 = v234;
                }

                else
                {
                  v127 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *v384 = v320;
                    *&v384[4] = 1024;
                    *&v384[6] = v351;
                    _os_log_impl(&dword_1959FF000, v127, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataKey got wrong size (%u > %u)", buf, 0xEu);
                  }

LABEL_195:

                  LOBYTE(v321) = 1;
                }
              }

              else
              {
                v232 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v232, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PreConnectionDataKey should know its size", buf, 2u);
                }

                LOBYTE(v321) = 0;
              }

              goto LABEL_585;
            case 0xDu:
              if (v351 == 12)
              {
                v157 = v352;
                v158 = *v352;
                v352 += 4;
                v159 = *v352;
                v160 = *(v157 + 2);
                v352 = v157 + 12;
                connectedLinks3 = [(IDSDatagramChannel *)self connectedLinks];
                v162 = [connectedLinks3 count] == 0;

                if (!v162)
                {
                  v163 = +[IDSTransportLog IDSDataChannels];
                  v164 = bswap32(v158);
                  v165 = bswap32(v159);
                  v166 = bswap32(v160);
                  if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138413058;
                    *v384 = self;
                    *&v384[8] = 1024;
                    *&v384[10] = v164;
                    *&v384[14] = 1024;
                    *&v384[16] = v165;
                    *&v384[20] = 1024;
                    *&v384[22] = v166;
                    _os_log_impl(&dword_1959FF000, v163, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventRSSI (%u, %u, %u)", buf, 0x1Eu);
                  }

                  v167 = self->_internal->_eventHandler;
                  if (v167)
                  {
                    v387[0] = @"event-type";
                    v387[1] = @"rssi-key";
                    v388[0] = &unk_1F0A29AF8;
                    v168 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v164];
                    v386[0] = v168;
                    v169 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v165];
                    v386[1] = v169;
                    v170 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v166];
                    v386[2] = v170;
                    v171 = [MEMORY[0x1E695DEC8] arrayWithObjects:v386 count:3];
                    v388[1] = v171;
                    v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v388 forKeys:v387 count:2];
                    v167[2](v167, v172);
                  }
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v384 = 12;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                *&v384[10] = 1024;
                *&v384[12] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_QueryRSSI should be %u, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0xEu:
              if (v351 == 2)
              {
                LODWORD(v324) = __rev16(*v352);
                v352 += 2;
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v147 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v384 = v324;
                    _os_log_impl(&dword_1959FF000, v147, OS_LOG_TYPE_DEFAULT, "got trafficClass %u", buf, 8u);
                  }
                }

                BYTE4(v329) = 1;
                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                *&v384[10] = 1024;
                *&v384[12] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_TrafficClassKey should be %d bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0xFu:
              if (v351 == 4)
              {
                v128 = *v352;
                v129 = v352[1];
                v130 = v352[2];
                v131 = v352[3];
                v352 += 4;
                v132 = [(IDSDatagramChannel *)self _linkContextWithID:v332];
                v106 = v132;
                if (!v132)
                {
                  connectedLinks5 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(connectedLinks5, OS_LOG_TYPE_DEFAULT))
                  {
                    _linkContextsCopy2 = [(IDSDatagramChannel *)self _linkContextsCopy];
                    *buf = 138412802;
                    *v384 = self;
                    *&v384[8] = 1024;
                    *&v384[10] = v332;
                    *&v384[14] = 2112;
                    *&v384[16] = _linkContextsCopy2;
                    _os_log_impl(&dword_1959FF000, connectedLinks5, OS_LOG_TYPE_DEFAULT, "<%@> Can't find the linkContext of linkID %u, linkContexts %@", buf, 0x1Cu);
                  }

                  goto LABEL_480;
                }

                [v132 setMaxBitrate:(v128 << 24) | (v129 << 16) | (v130 << 8) | v131];
                connectedLinks4 = [(IDSDatagramChannel *)self connectedLinks];
                v134 = [connectedLinks4 count] == 0;

                if (!v134)
                {
                  v135 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                  {
                    _linkContextsCopy3 = [(IDSDatagramChannel *)self _linkContextsCopy];
                    *buf = 138412546;
                    *v384 = self;
                    *&v384[8] = 2112;
                    *&v384[10] = _linkContextsCopy3;
                    _os_log_impl(&dword_1959FF000, v135, OS_LOG_TYPE_DEFAULT, "<%@> sent IDSDataChannelEventConnected, current link contexts %@", buf, 0x16u);
                  }

                  v137 = self->_internal->_eventHandler;
                  if (v137)
                  {
                    v380[0] = &unk_1F0A29A68;
                    v379[0] = @"event-type";
                    v379[1] = @"connected-link";
                    connectedLinks5 = [(IDSDatagramChannel *)self connectedLinks];
                    v380[1] = connectedLinks5;
                    v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v380 forKeys:v379 count:2];
                    v137[2](v137, v139);

LABEL_480:
                  }
                }

LABEL_511:
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v384 = 4;
                  *&v384[4] = 1024;
                  *&v384[6] = v351;
                  *&v384[10] = 1024;
                  *&v384[12] = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_MaxBitrateKey should be %u, not %u bytes, field: %u", buf, 0x14u);
                }

LABEL_523:
              }

              goto LABEL_585;
            case 0x10u:
              if (v351 == 2)
              {
                v173 = *v352;
                v352 += 2;
                v174 = +[IDSLogging IDSDataChannels];
                v175 = __rev16(v173);
                if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v175;
                  _os_log_impl(&dword_1959FF000, v174, OS_LOG_TYPE_DEFAULT, "got MTU %u", buf, 8u);
                }

                v176 = self->_internal->_cellularLink;
                if (v176)
                {
                  [(IDSDataChannelLinkContext *)v176 setMTU:v175];
                }

                else
                {
                  v264 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v264, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CellularMTUChanged requires the cellular link. something is wrong...", buf, 2u);
                  }
                }

                v265 = self->_internal->_eventHandler;
                if (v265)
                {
                  v378[0] = &unk_1F0A29B28;
                  v377[0] = @"event-type";
                  v377[1] = @"mtu-changed";
                  v266 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v175];
                  v378[1] = v266;
                  v267 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v378 forKeys:v377 count:2];
                  v265[2](v265, v267);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                *&v384[10] = 1024;
                *&v384[12] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CellularMTUChanged should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x11u:
              if (v351 >= 8u)
              {
                dictionary = [MEMORY[0x1E695DF90] dictionary];
                if (v351 >= 8u)
                {
                  LOWORD(v112) = 0;
                  do
                  {
                    v113 = v352;
                    v114 = *v352;
                    v352 += 4;
                    v115 = bswap32(*v352);
                    v352 = v113 + 8;
                    v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v115, v304}];
                    v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(v114)];
                    [dictionary setObject:v116 forKey:v117];

                    v112 = (v112 + 8);
                  }

                  while (v112 <= v351 - 8);
                }

                if (self->_internal->_eventHandler)
                {
                  v118 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v384 = dictionary;
                    _os_log_impl(&dword_1959FF000, v118, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_InfoReportKey report %@", buf, 0xCu);
                  }

                  v119 = self->_internal->_eventHandler;
                  v375[0] = @"event-type";
                  v375[1] = @"info-report-events-key";
                  v376[0] = &unk_1F0A29B40;
                  v376[1] = dictionary;
                  v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v376 forKeys:v375 count:2];
                  v119[2](v119, v120);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v384 = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_InfoReportKey should be bigger than %u bytes.", buf, 8u);
              }

              goto LABEL_523;
            case 0x14u:
              if (v351 == 1)
              {
                HIDWORD(v324) = *v352++;
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v177 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v384 = HIDWORD(v324);
                    _os_log_impl(&dword_1959FF000, v177, OS_LOG_TYPE_DEFAULT, "got DSCP %u", buf, 8u);
                  }
                }

                LOBYTE(v330) = 1;
                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v384 = 1;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                *&v384[10] = 1024;
                *&v384[12] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DSCPKey should be %d bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x16u:
              if (v351 == 8)
              {
                options->var9 = *v352;
                if (!self->_internal->_verboseFunctionalLogging)
                {
                  goto LABEL_585;
                }

                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  var9 = options->var9;
                  *buf = 134217984;
                  *v384 = var9;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "got arrivalTime %f", buf, 0xCu);
                }
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v384 = 8;
                  *&v384[4] = 1024;
                  *&v384[6] = v351;
                  *&v384[10] = 1024;
                  *&v384[12] = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PacketArrivalTime should be %d bytes, not %u bytes, field: %u", buf, 0x14u);
                }
              }

              goto LABEL_523;
            case 0x17u:
              if (v351 == 1)
              {
                HIDWORD(v332) = *v352;
                if (!self->_internal->_verboseFunctionalLogging)
                {
                  goto LABEL_585;
                }

                v18 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = HIDWORD(v332);
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "got Channel Priority %u", buf, 8u);
                }
              }

              else
              {
                v18 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v384 = v351;
                  *&v384[4] = 1024;
                  *&v384[6] = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PriorityKey should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
                }
              }

              goto LABEL_523;
            case 0x18u:
              if (v351 == 8)
              {
                v333 = bswap64(*v352);
                v352 += 8;
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v122 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    *v384 = v333;
                    _os_log_impl(&dword_1959FF000, v122, OS_LOG_TYPE_DEFAULT, "got Participant ID %llu", buf, 0xCu);
                  }
                }

                if (!v333)
                {
                  v123 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    *v384 = 0;
                    _os_log_impl(&dword_1959FF000, v123, OS_LOG_TYPE_DEFAULT, "error: we received Participant ID %llu", buf, 0xCu);
                  }

                  v333 = 0;
                }

                v327 = 1;
                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = v351;
                *&v384[4] = 1024;
                *&v384[6] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantID should be 8 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x1Eu:
              v88 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v351];

              v89 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v384 = v88;
                *&v384[8] = 1024;
                *&v384[10] = v351;
                _os_log_impl(&dword_1959FF000, v89, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionMKMKey got MKM %@ size %u", buf, 0x12u);
              }

              v338 = v88;
              goto LABEL_585;
            case 0x1Fu:
              v73 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v351];

              v74 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v384 = v73;
                *&v384[8] = 1024;
                *&v384[10] = v351;
                _os_log_impl(&dword_1959FF000, v74, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionMKSKey got MKS %@ size %u", buf, 0x12u);
              }

              v337 = v73;
              goto LABEL_585;
            case 0x20u:
              v82 = objc_alloc(MEMORY[0x1E696AFB0]);
              v83 = [v82 initWithUUIDBytes:v352];

              v84 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v384 = v83;
                *&v384[8] = 1024;
                *&v384[10] = v351;
                _os_log_impl(&dword_1959FF000, v84, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionMKIKey got MKI %@ size %u", buf, 0x12u);
              }

              v336 = v83;
              goto LABEL_585;
            case 0x21u:
              if (v351 == 1)
              {
                BYTE4(v323) = *v352;
                BYTE4(v331) = 1;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v384 = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionMembershipChangedKey should be 1 byte, not %u", buf, 8u);
              }

              goto LABEL_523;
            case 0x22u:
              if (v351 == 1)
              {
                if (self->_internal->_eventHandler)
                {
                  v85 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v85, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionReinitiated - IDSDSession is reinitiated", buf, 2u);
                  }

                  v86 = self->_internal->_eventHandler;
                  v373 = @"event-type";
                  v374 = &unk_1F0A29B58;
                  v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v374 forKeys:&v373 count:1];
                  v86[2](v86, v87);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v384 = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionReinitiated should be 1 byte, not %d", buf, 8u);
              }

              goto LABEL_523;
            case 0x23u:
              if (v351 != 1)
              {
                goto LABEL_585;
              }

              v90 = *v352;
              if (v90 >= 0xD)
              {
                v91 = +[IDSLogging IDSDataChannels];
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v90;
                  _os_log_impl(&dword_1959FF000, v91, OS_LOG_TYPE_DEFAULT, "got invalid streamIDCount %d", buf, 8u);
                }

                options->var4 = 0;
                goto LABEL_585;
              }

              if (!*v352)
              {
                goto LABEL_585;
              }

              options->var4 = v90;
              if (!self->_internal->_verboseFunctionalLogging)
              {
                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v384 = v90;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "got streamIDCount %d", buf, 8u);
              }

              goto LABEL_523;
            case 0x24u:
              if (options->var4 < 1)
              {
                goto LABEL_585;
              }

              v148 = 2 * options->var4;
              if (v351 == (2 * options->var4))
              {
                var4 = options->var4;
                options->var0 |= 2u;
                v150 = v352;
                var5 = options->var5;
                do
                {
                  v152 = *v150;
                  v150 += 2;
                  *var5++ = bswap32(v152) >> 16;
                  v352 = v150;
                  --var4;
                }

                while (var4);
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v153 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                  {
                    v154 = [MEMORY[0x1E695DEF0] dataWithBytes:&v352[-v148] length:v148];
                    *buf = 138412290;
                    *v384 = v154;
                    _os_log_impl(&dword_1959FF000, v153, OS_LOG_TYPE_DEFAULT, "got streamID bytes:%@", buf, 0xCu);
                  }
                }

                goto LABEL_585;
              }

              v18 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = v148;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StreamIDsKey: size mismatch (%u != %u), ignore.", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x25u:
              if (v351 == 1)
              {
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v49 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "got CT(packet counting) option", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    _IDSLogV();
                  }
                }

                BYTE4(v328) = 1;
                goto LABEL_585;
              }

              v230 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = v351;
                *&v384[4] = 1024;
                *&v384[6] = v353;
                _os_log_impl(&dword_1959FF000, v230, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_CountPacketKey  should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                goto LABEL_397;
              }

              goto LABEL_585;
            case 0x26u:
              if (v351 == 2)
              {
                v325 = __rev16(*v352);
                v352 += 2;
                if (self->_internal->_verboseFunctionalLogging)
                {
                  v195 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v384 = v325;
                    _os_log_impl(&dword_1959FF000, v195, OS_LOG_TYPE_DEFAULT, "got probeGroupID %u", buf, 8u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v304 = v325;
                    _IDSLogV();
                  }
                }

                LOBYTE(v328) = 1;
                goto LABEL_585;
              }

              v233 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = v351;
                *&v384[4] = 1024;
                *&v384[6] = v353;
                _os_log_impl(&dword_1959FF000, v233, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ProbeGroupIDKey should be 2 bytes, not %u bytes, field: %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                goto LABEL_397;
              }

              goto LABEL_585;
            case 0x27u:
              v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v351];
              if (v21)
              {
                v22 = MEMORY[0x1E696ACD0];
                v23 = MEMORY[0x1E695DFD8];
                v24 = objc_opt_class();
                v25 = objc_opt_class();
                v26 = objc_opt_class();
                v27 = objc_opt_class();
                v28 = objc_opt_class();
                v29 = [v23 setWithObjects:{v24, v25, v26, v27, v28, objc_opt_class(), 0}];
                v347 = 0;
                v30 = [v22 _strictlyUnarchivedObjectOfClasses:v29 fromData:v21 error:&v347];
                v31 = v347;

                if (v30)
                {
                  if (self->_internal->_eventHandler)
                  {
                    v32 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v384 = v30;
                      _os_log_impl(&dword_1959FF000, v32, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoKey - %@", buf, 0xCu);
                    }

                    v33 = self->_internal->_eventHandler;
                    v371[0] = @"event-type";
                    v371[1] = @"session-info-response-key";
                    v372[0] = &unk_1F0A29B70;
                    v372[1] = v30;
                    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v372 forKeys:v371 count:2];
                    v33[2](v33, v34);
                    goto LABEL_582;
                  }
                }

                else
                {
                  v34 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v384 = v21;
                    *&v384[8] = 2112;
                    *&v384[10] = v31;
                    _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoKey - Couldn't decode NSData %@ (error: %@)", buf, 0x16u);
                  }

                  v30 = 0;
LABEL_582:
                }

                goto LABEL_584;
              }

              v31 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoKey - Couldn't get NSData from fieldBytes", buf, 2u);
              }

LABEL_584:

LABEL_585:
              if ((IDSByteBufferReadField() & 1) == 0)
              {
                goto LABEL_588;
              }

              break;
            case 0x28u:
              v50 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v351];
              if (v50)
              {
                v51 = MEMORY[0x1E696ACD0];
                v52 = MEMORY[0x1E695DFD8];
                v53 = objc_opt_class();
                v54 = objc_opt_class();
                v55 = objc_opt_class();
                v56 = [v52 setWithObjects:{v53, v54, v55, objc_opt_class(), 0}];
                v57 = [v51 _strictlyUnarchivedObjectOfClasses:v56 fromData:v50 error:0];

                if (v57)
                {
                  if (!self->_internal->_eventHandler)
                  {
                    goto LABEL_567;
                  }

                  v58 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v384 = v57;
                    _os_log_impl(&dword_1959FF000, v58, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsKey - %@", buf, 0xCu);
                  }

                  v59 = self->_internal->_eventHandler;
                  v367[0] = @"event-type";
                  v367[1] = @"stat-response-key";
                  v368[0] = &unk_1F0A29B88;
                  v368[1] = v57;
                  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v368 forKeys:v367 count:2];
                  v59[2](v59, v60);
                }

                else
                {
                  v60 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v384 = v50;
                    _os_log_impl(&dword_1959FF000, v60, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsKey - Couldn't decode NSData %@", buf, 0xCu);
                  }

                  v57 = 0;
                }
              }

              else
              {
                v57 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v57, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsKey - Couldn't get NSData from fieldBytes", buf, 2u);
                }
              }

LABEL_567:

              goto LABEL_585;
            case 0x2Bu:
              if (v351 == 1)
              {
                optionsCopy5 = options;
                options->var6 = *v352;
                v20 = options->var0 | 0x20;
                goto LABEL_255;
              }

              v231 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = v351;
                *&v384[4] = 1024;
                *&v384[6] = v353;
                _os_log_impl(&dword_1959FF000, v231, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GenerationCounterLSBKey should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
LABEL_397:
                v304 = v351;
                v305 = v353;
                _IDSLogV();
              }

              goto LABEL_585;
            case 0x2Du:
              if (v351 == 2)
              {
                options->var7 = bswap32(*v352) >> 16;
                BYTE4(v330) = 1;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsID should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x2Eu:
              if (v351 == 2)
              {
                options->var8.var0 = bswap32(*v352) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsServerTimeStamp should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x2Fu:
              if (v351 == 2)
              {
                options->var8.var1 = bswap32(*v352) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsServerPacketInterval should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x30u:
              if (v351 == 2)
              {
                options->var8.var2 = bswap32(*v352) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsTotalServerPacketReceived should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x31u:
              if (v351 == 2)
              {
                options->var8.var3 = bswap32(*v352) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsTotalServerPacketSent should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x32u:
              if (v351 == 2)
              {
                options->var8.var4 = bswap32(*v352) >> 16;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_StatsUplinkBandwidth should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x33u:
              if (v351 == 1)
              {
                optionsCopy5 = options;
                v20 = options->var0 | 0x80;
                goto LABEL_255;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = v351;
                *&v384[4] = 1024;
                *&v384[6] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_OptOutPriorityFilter should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x34u:
              if (v351 == 1)
              {
                optionsCopy5 = options;
                v20 = options->var0 | 0x100;
                goto LABEL_255;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = v351;
                *&v384[4] = 1024;
                *&v384[6] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_TransitionPacketFlag should be 1 byte, not %u bytes, field: %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x36u:
              if (v351 == 4)
              {
                v196 = *v352;
                v197 = v352[1];
                v198 = v352[2];
                v199 = v352[3];
                v352 += 4;
                if (self->_internal->_eventHandler)
                {
                  v200 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"IDS couldn't receive the response for the session info request.", v319, 0}];
                  v201 = (v196 << 24) | (v197 << 16) | (v198 << 8) | v199;
                  v202 = v201 - 1;
                  v203 = v201 + 8;
                  if (v202 >= 5)
                  {
                    v204 = 14;
                  }

                  else
                  {
                    v204 = v203;
                  }

                  v205 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v384 = v204;
                    _os_log_impl(&dword_1959FF000, v205, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoResponseErrorKey errorCode %u", buf, 8u);
                  }

                  v206 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v318 code:v204 userInfo:v200];
                  v207 = self->_internal->_eventHandler;
                  v369[0] = @"event-type";
                  v369[1] = @"error-key";
                  v370[0] = &unk_1F0A29B70;
                  v370[1] = v206;
                  v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v370 forKeys:v369 count:2];
                  v207[2](v207, v208);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 4;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SessionInfoResponseErrorKey should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x37u:
              if (v351 == 1)
              {
                BYTE4(v321) = *v352 != 0;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v384 = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionLocallyGeneratedInfoKey should be 1 byte, not %u", buf, 8u);
              }

              goto LABEL_523;
            case 0x3Cu:
              v192 = v351;
              if (v351)
              {
                v193 = v352;
                v194 = *v352;
                if (*v352)
                {
                  if (v351 == 1)
                  {
                    v18 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey - no valid currentLinkIDCount", buf, 2u);
                    }

                    goto LABEL_523;
                  }

                  if (v351 > 2u)
                  {
                    v258 = v352[2];
                    if (v351 < 7u)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v384 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid timestamp", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    if (v351 < 9u)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v384 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid reorderedPackets", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    if (v351 < 0xBu)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v384 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid probingRequests", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    if (v351 < 0xDu)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v384 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid probingResponses", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    if (v351 < 0xFu)
                    {
                      v18 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *v384 = v258;
                        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid offsetAndRTTCount", buf, 8u);
                      }

                      goto LABEL_523;
                    }

                    v309 = *(v352 + 7);
                    v310 = *(v352 + 3);
                    v308 = *(v352 + 9);
                    v306 = v352[1];
                    v307 = *(v352 + 11);
                    v274 = *(v352 + 13);
                    v311 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    if (v274)
                    {
                      v275 = 0;
                      v276 = &v193[v192];
                      v277 = __rev16(v274);
                      v278 = v193 + 19;
                      while ((v278 - 2) <= v276)
                      {
                        if (v278 > v276)
                        {
                          v283 = +[IDSTransportLog IDSDataChannels];
                          if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 67109376;
                            *v384 = v258;
                            *&v384[4] = 1024;
                            *&v384[6] = v275;
                            v284 = "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid rtt, i: %d";
LABEL_534:
                            _os_log_impl(&dword_1959FF000, v283, OS_LOG_TYPE_DEFAULT, v284, buf, 0xEu);
                          }

                          goto LABEL_535;
                        }

                        v279 = *(v278 - 1);
                        v280 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(*(v278 - 2)) >> 16];
                        v385[0] = v280;
                        v281 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v279) >> 16];
                        v385[1] = v281;
                        v282 = [MEMORY[0x1E695DEC8] arrayWithObjects:v385 count:2];
                        [v311 addObject:v282];

                        ++v275;
                        v278 += 4;
                        if (v277 == v275)
                        {
                          goto LABEL_536;
                        }
                      }

                      v283 = +[IDSTransportLog IDSDataChannels];
                      if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109376;
                        *v384 = v258;
                        *&v384[4] = 1024;
                        *&v384[6] = v275;
                        v284 = "kClientChannelMetadataType_GetLinkStatusKey: linkID: %d, no valid requestOffset, i: %d";
                        goto LABEL_534;
                      }

LABEL_535:
                    }

LABEL_536:
                    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    v286 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(v310)];
                    if (v286)
                    {
                      CFDictionarySetValue(Mutable, key, v286);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v384 = key;
                      *&v384[8] = 2080;
                      *&v384[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    v287 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v309) >> 16];
                    if (v287)
                    {
                      CFDictionarySetValue(Mutable, v315, v287);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v384 = v315;
                      *&v384[8] = 2080;
                      *&v384[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    v288 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v308) >> 16];
                    if (v288)
                    {
                      CFDictionarySetValue(Mutable, v314, v288);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v384 = v314;
                      *&v384[8] = 2080;
                      *&v384[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    v289 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(v307) >> 16];
                    if (v289)
                    {
                      CFDictionarySetValue(Mutable, v313, v289);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v384 = v313;
                      *&v384[8] = 2080;
                      *&v384[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    v290 = v311;
                    if (v290)
                    {
                      CFDictionarySetValue(Mutable, v312, v290);
                    }

                    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *v384 = v312;
                      *&v384[8] = 2080;
                      *&v384[10] = "linkStatus";
                      _os_log_error_impl(&dword_1959FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
                    }

                    probingDict = self->_internal->_probingDict;
                    v292 = [MEMORY[0x1E696AD98] numberWithChar:v258];
                    [(NSMutableDictionary *)probingDict setObject:Mutable forKey:v292];

                    if (v306 == v194)
                    {
                      v293 = self->_internal;
                      if (v293->_eventHandler)
                      {
                        v294 = [(NSMutableDictionary *)v293->_probingDict copy];
                        v295 = +[IDSTransportLog IDSDataChannels];
                        if (os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
                        {
                          v296 = [v294 count];
                          allKeys = [v294 allKeys];
                          *buf = 134218498;
                          *v384 = v296;
                          *&v384[8] = 2112;
                          *&v384[10] = allKeys;
                          *&v384[18] = 2112;
                          *&v384[20] = v294;
                          _os_log_impl(&dword_1959FF000, v295, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ProbingRequestOffsetKey - total size: %lu, all keys: %@, output: %@", buf, 0x20u);
                        }

                        v298 = self->_internal->_eventHandler;
                        v381[0] = @"event-type";
                        v381[1] = @"probing-response-key";
                        v382[0] = &unk_1F0A29B10;
                        v382[1] = v294;
                        v299 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v382 forKeys:v381 count:2];
                        v298[2](v298, v299);

                        v293 = self->_internal;
                      }

                      [(NSMutableDictionary *)v293->_probingDict removeAllObjects];
                    }

                    goto LABEL_585;
                  }

                  v18 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey - no valid linkID", buf, 2u);
                  }
                }

                else
                {
                  v18 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey - invalid totalLinkIDs: 0", buf, 2u);
                  }
                }
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_GetLinkStatusKey - invalid fieldBytesSize: 0", buf, 2u);
                }
              }

              goto LABEL_523;
            case 0x3Du:
              if (v351 == 4)
              {
                v42 = *v352;
                v352 += 4;
                v43 = +[IDSTransportLog IDSDataChannels];
                v44 = bswap32(v42);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v44;
                  _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SoMaskChanged got SoMask: %u", buf, 8u);
                }

                if (self->_internal->_eventHandler)
                {
                  v45 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v384 = v44;
                    _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "send event to client about kClientChannelMetadataType_SoMaskChanged, SoMask: %u", buf, 8u);
                  }

                  v46 = self->_internal->_eventHandler;
                  v362[0] = &unk_1F0A29BD0;
                  v361[0] = @"event-type";
                  v361[1] = @"somask-changed";
                  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v44];
                  v362[1] = v47;
                  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v362 forKeys:v361 count:2];
                  v46[2](v46, v48);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v384 = 4;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                *&v384[10] = 1024;
                *&v384[12] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_SoMaskChanged should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x3Eu:
              if (v351 == 2)
              {
                v35 = *v352;
                v352 += 2;
                v36 = +[IDSTransportLog IDSDataChannels];
                v37 = __rev16(v35);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v37;
                  _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_nwPathWiFiFlagsChanged got wifiLocalAttributes: %u", buf, 8u);
                }

                if (self->_internal->_eventHandler)
                {
                  v38 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v384 = v37;
                    _os_log_impl(&dword_1959FF000, v38, OS_LOG_TYPE_DEFAULT, "send event to client about kClientChannelMetadataType_nwPathWiFiFlagsChanged, wifiLocalAttributes: %u", buf, 8u);
                  }

                  v39 = self->_internal->_eventHandler;
                  v366[0] = &unk_1F0A29BA0;
                  v365[0] = @"event-type";
                  v365[1] = @"wifi-local-attributes-changed-key";
                  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v37];
                  v366[1] = v40;
                  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v366 forKeys:v365 count:2];
                  v39[2](v39, v41);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                *&v384[10] = 1024;
                *&v384[12] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_nwPathWiFiFlagsChanged should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x3Fu:
              if (v351 == 2)
              {
                v75 = *v352;
                v352 += 2;
                v76 = +[IDSTransportLog IDSDataChannels];
                v77 = __rev16(v75);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v77;
                  _os_log_impl(&dword_1959FF000, v76, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_nwPathCellularFlagsChanged got cellularLocalAttributes: %u", buf, 8u);
                }

                if (self->_internal->_eventHandler)
                {
                  v78 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v384 = v77;
                    _os_log_impl(&dword_1959FF000, v78, OS_LOG_TYPE_DEFAULT, "send event to client about kClientChannelMetadataType_nwPathCellularFlagsChanged, cellularLocalAttributes: %u", buf, 8u);
                  }

                  v79 = self->_internal->_eventHandler;
                  v364[0] = &unk_1F0A29BB8;
                  v363[0] = @"event-type";
                  v363[1] = @"cellular-local-attributes-changed-key";
                  v80 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v77];
                  v364[1] = v80;
                  v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v364 forKeys:v363 count:2];
                  v79[2](v79, v81);
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                *&v384[10] = 1024;
                *&v384[12] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_nwPathCellularFlagsChanged should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            case 0x43u:
              if (v351 == 1)
              {
                LOBYTE(v331) = *v352 != 0;
                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 1;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_NeedsHBHEncryption should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x45u:
              if (v351 == 8)
              {
                v214 = *v352;
                v352 += 8;
                v18 = +[IDSTransportLog IDSDataChannels];
                v322 = bswap64(v214);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *v384 = v322;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionSequenceNumber got %llu (*Client <- IDSD)", buf, 0xCu);
                }
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109632;
                  *v384 = 8;
                  *&v384[4] = 1024;
                  *&v384[6] = v351;
                  *&v384[10] = 1024;
                  *&v384[12] = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionSequenceNumber should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
                }
              }

              goto LABEL_523;
            case 0x46u:
              v178 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v179 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v351];
              if (v179)
              {
                v180 = MEMORY[0x1E696ACD0];
                v181 = MEMORY[0x1E695DFD8];
                v182 = objc_opt_class();
                v183 = objc_opt_class();
                v184 = objc_opt_class();
                v185 = objc_opt_class();
                v186 = objc_opt_class();
                v187 = [v181 setWithObjects:{v182, v183, v184, v185, v186, objc_opt_class(), 0}];
                v346 = 0;
                v188 = [v180 _strictlyUnarchivedObjectOfClasses:v187 fromData:v179 error:&v346];
                v189 = v346;

                if (v188)
                {
                  v190 = [v188 mutableCopy];

                  CFDictionarySetValue(v190, @"event-type", &unk_1F0A29BE8);
                  if (self->_internal->_eventHandler)
                  {
                    v191 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v384 = v190;
                      _os_log_impl(&dword_1959FF000, v191, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkSuggestion - %@", buf, 0xCu);
                    }

                    (*(self->_internal->_eventHandler + 2))();
                  }

                  v178 = v190;
                }

                else
                {
                  v300 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v384 = v179;
                    *&v384[8] = 2112;
                    *&v384[10] = v189;
                    _os_log_impl(&dword_1959FF000, v300, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkSuggestion - Couldn't decode NSData %@ (error: %@)", buf, 0x16u);
                  }

                  v188 = 0;
                }
              }

              else
              {
                v189 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v189, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_LinkSuggestion - Couldn't get NSData from fieldBytes", buf, 2u);
                }
              }

              goto LABEL_585;
            case 0x47u:
              if (v351 == 1)
              {
                optionsCopy5 = options;
                options->var14 = *v352 != 0;
                v20 = options->var0 | 0x10000;
                goto LABEL_255;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v384 = 1;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_RetransmittedPacket should be %u byte, not %u", buf, 0xEu);
              }

              goto LABEL_523;
            case 0x48u:
              if (v351 != 1)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v384 = 1;
                  *&v384[4] = 1024;
                  *&v384[6] = v351;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_NonRetransmittablePacket should be %u byte, not %u", buf, 0xEu);
                }

                goto LABEL_523;
              }

              optionsCopy5 = options;
              options->var15 = *v352 != 0;
              v20 = options->var0 | 0x20000;
LABEL_255:
              optionsCopy5->var0 = v20;
              goto LABEL_585;
            case 0x49u:
              v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v351];
              if (v21)
              {
                v61 = MEMORY[0x1E696ACD0];
                v62 = MEMORY[0x1E695DFD8];
                v63 = objc_opt_class();
                v64 = objc_opt_class();
                v65 = objc_opt_class();
                v66 = objc_opt_class();
                v67 = objc_opt_class();
                v68 = [v62 setWithObjects:{v63, v64, v65, v66, v67, objc_opt_class(), 0}];
                v345 = 0;
                v69 = [v61 _strictlyUnarchivedObjectOfClasses:v68 fromData:v21 error:&v345];
                v31 = v345;

                if (v69)
                {
                  if (self->_internal->_eventHandler)
                  {
                    v70 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v384 = v69;
                      _os_log_impl(&dword_1959FF000, v70, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EventReportingBlob - %@", buf, 0xCu);
                    }

                    v71 = self->_internal->_eventHandler;
                    v359[0] = @"event-type";
                    v359[1] = @"reporting-blob-key";
                    v360[0] = &unk_1F0A29C00;
                    v360[1] = v69;
                    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v360 forKeys:v359 count:2];
                    v71[2](v71, v72);
                    goto LABEL_576;
                  }
                }

                else
                {
                  v72 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v384 = v21;
                    *&v384[8] = 2112;
                    *&v384[10] = v31;
                    _os_log_impl(&dword_1959FF000, v72, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EventReportingBlob - Couldn't decode NSData %@ (error: %@)", buf, 0x16u);
                  }

                  v69 = 0;
LABEL_576:
                }

                goto LABEL_584;
              }

              v31 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EventReportingBlob - Couldn't get NSData from fieldBytes", buf, 2u);
              }

              goto LABEL_584;
            case 0x4Au:
              v92 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v351];
              if (!v92)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantMappingReplacment - Couldn't get NSData from fieldBytes", buf, 2u);
                }

                goto LABEL_523;
              }

              os_unfair_lock_lock(&self->_internal->_linkIDToParticipantMapLock);
              if (!self->_internal->_linkIDToParticipantMap)
              {
                v93 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v94 = self->_internal;
                linkIDToParticipantMap = v94->_linkIDToParticipantMap;
                v94->_linkIDToParticipantMap = v93;
              }

              v304 = [(IDSDatagramChannel *)self _extractparticipantIDToHashedIDMappingFromData:v92, v304];
              v97 = +[IDSTransportLog IDSDataChannels];
              v98 = os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);
              if (v304)
              {
                if (v98)
                {
                  *buf = 67109378;
                  *v384 = v332;
                  *&v384[4] = 2112;
                  *&v384[6] = v304;
                  _os_log_impl(&dword_1959FF000, v97, OS_LOG_TYPE_DEFAULT, "linkID %d, got kClientChannelMetadataType_ParticipantMappingReplacment: %@", buf, 0x12u);
                }

                v99 = self->_internal->_linkIDToParticipantMap;
                v97 = [MEMORY[0x1E696AD98] numberWithChar:v332];
                [(NSMutableDictionary *)v99 setObject:v304 forKeyedSubscript:v97];
              }

              else if (v98)
              {
                *buf = 0;
                _os_log_impl(&dword_1959FF000, v97, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantMappingReplacment - Couldn't decode NSData.", buf, 2u);
              }

              os_unfair_lock_unlock(&self->_internal->_linkIDToParticipantMapLock);
LABEL_460:
              v217 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:{v351, v304}];
              if (v217)
              {
                os_unfair_lock_lock(&self->_internal->_linkIDToParticipantMapLock);
                if (!self->_internal->_linkIDToParticipantMap)
                {
                  v246 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v247 = self->_internal;
                  v248 = v247->_linkIDToParticipantMap;
                  v247->_linkIDToParticipantMap = v246;
                }

                v219 = [(IDSDatagramChannel *)self _extractparticipantIDToHashedIDMappingFromData:v217];
                v249 = +[IDSTransportLog IDSDataChannels];
                v250 = os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT);
                if (v219)
                {
                  v251 = v332;
                  if (v250)
                  {
                    *buf = 67109378;
                    *v384 = v332;
                    *&v384[4] = 2112;
                    *&v384[6] = v219;
                    _os_log_impl(&dword_1959FF000, v249, OS_LOG_TYPE_DEFAULT, "linkID %d, got kClientChannelMetadataType_ParticipantMappingUpdate: %@", buf, 0x12u);
                  }

                  v252 = self->_internal->_linkIDToParticipantMap;
                  v253 = [MEMORY[0x1E696AD98] numberWithChar:v251];
                  v254 = [(NSMutableDictionary *)v252 objectForKeyedSubscript:v253];
                  v249 = [v254 mutableCopy];

                  [v249 addEntriesFromDictionary:v219];
                  v255 = [v249 copy];
                  v256 = self->_internal->_linkIDToParticipantMap;
                  v257 = [MEMORY[0x1E696AD98] numberWithChar:v251];
                  [(NSMutableDictionary *)v256 setObject:v255 forKeyedSubscript:v257];
                }

                else if (v250)
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v249, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantMappingUpdate - Couldn't decode NSData.", buf, 2u);
                }

                os_unfair_lock_unlock(&self->_internal->_linkIDToParticipantMapLock);
              }

              else
              {
                v219 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1959FF000, v219, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ParticipantMappingUpdate - Couldn't get NSData from fieldBytes", buf, 2u);
                }
              }

              goto LABEL_287;
            case 0x4Bu:
              goto LABEL_460;
            case 0x4Cu:
              if (v351 < 2u)
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v384 = 18;
                  *&v384[4] = 1024;
                  *&v384[6] = v351;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_ChildConnectionID should be %u bytes, not %u bytes", buf, 0xEu);
                }

                goto LABEL_523;
              }

              v215 = v352 + 1;
              v216 = *v352;
              v217 = [(IDSDatagramChannel *)self _linkContextWithID:*v352];
              v218 = [MEMORY[0x1E695DEF0] dataWithBytes:v215 length:v351 - 1];
              v219 = JWDecodeDictionary();

              [(IDSDatagramChannel *)self _addConnections:v219 toLinkContext:v217];
              if (v219)
              {
                v220 = +[IDSTransportLog IDSDataChannels];
                v221 = v216;
                if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                {
                  isQUICPod = [v217 isQUICPod];
                  v223 = @"NO";
                  *buf = 138412802;
                  *v384 = v219;
                  if (isQUICPod)
                  {
                    v223 = @"YES";
                  }

                  *&v384[8] = 1024;
                  *&v384[10] = v221;
                  *&v384[14] = 2112;
                  *&v384[16] = v223;
                  _os_log_impl(&dword_1959FF000, v220, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID: received child connections %@ for linkID %d, isQUICPod %@", buf, 0x1Cu);
                }

                [(IDSDatagramChannel *)self addDirectConnectionForLinkID:v221 linkContext:v217];
                if (([v217 isVirtualRelayLink] & 1) == 0)
                {
                  v343 = 0u;
                  v344 = 0u;
                  v341 = 0u;
                  v342 = 0u;
                  connectedLinks6 = [(IDSDatagramChannel *)self connectedLinks];
                  v225 = [connectedLinks6 countByEnumeratingWithState:&v341 objects:v358 count:16];
                  if (v225)
                  {
                    v226 = *v342;
                    do
                    {
                      for (i = 0; i != v225; ++i)
                      {
                        if (*v342 != v226)
                        {
                          objc_enumerationMutation(connectedLinks6);
                        }

                        v228 = *(*(&v341 + 1) + 8 * i);
                        delegatedLinkID = [v228 delegatedLinkID];
                        if (delegatedLinkID == [v217 linkID])
                        {
                          -[IDSDatagramChannel addDirectConnectionForLinkID:linkContext:](self, "addDirectConnectionForLinkID:linkContext:", [v228 linkID], v228);
                        }
                      }

                      v225 = [connectedLinks6 countByEnumeratingWithState:&v341 objects:v358 count:16];
                    }

                    while (v225);
                  }
                }
              }

LABEL_287:

              goto LABEL_585;
            case 0x52u:
              if (v351 == 1)
              {
                LODWORD(v323) = *v352;
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v323;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionShortKILengthKey got shortKILength %u", buf, 8u);
                }
              }

              else
              {
                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v351;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_EncryptionShortKILengthKey should be 1 byte, not %u", buf, 8u);
                }
              }

              goto LABEL_523;
            case 0x55u:
              if (v351 >= 2uLL)
              {
                v209 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:?];
                v210 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                {
                  v211 = [v209 length];
                  *buf = 67109120;
                  *v384 = v211;
                  _os_log_impl(&dword_1959FF000, v210, OS_LOG_TYPE_DEFAULT, "LinkQuality: importing link quality measurer delta bytes %d", buf, 8u);
                }

                v212 = [MEMORY[0x1E69A5308] createWithJSON:v209];
                if (v212)
                {
                  v213 = +[IDSTransportLog IDSDataChannels];
                  if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1959FF000, v213, OS_LOG_TYPE_DEFAULT, "LinkQuality: importing link quality measurer delta", buf, 2u);
                  }

                  [(IDSLinksQualityMeasurer *)self->_internal->_qualityMeasurer importDelta:v212 sourceName:@"IDS" completionHandler:&unk_1F09E72E0];
                }

                goto LABEL_585;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "LinkQuality: kClientChannelMetadataType_LinkQualityData is too small", buf, 2u);
              }

              goto LABEL_523;
            case 0x5Au:
              if (v351 == 3)
              {
                v100 = v352;
                v101 = *v352++;
                v102 = *v352;
                v352 = v100 + 3;
                v103 = +[IDSTransportLog IDSDataChannels];
                v104 = __rev16(v102);
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *v384 = v101;
                  *&v384[4] = 1024;
                  *&v384[6] = v104;
                  _os_log_impl(&dword_1959FF000, v103, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PMTUUpdate: path mtu update on linkID: %d, mtu: %d", buf, 0xEu);
                }

                v105 = [(IDSDatagramChannel *)self _linkContextWithID:v101];
                v106 = v105;
                if (v105)
                {
                  if ([v105 pathMTU] == v104)
                  {
                    v107 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109376;
                      *v384 = v101;
                      *&v384[4] = 1024;
                      *&v384[6] = v104;
                      v108 = "kClientChannelMetadataType_PMTUUpdate: path mtu unchanged for linkID %d: %d";
                      goto LABEL_113;
                    }

                    goto LABEL_510;
                  }

                  [v106 setPathMTU:v104];
                  ipFamily = [v106 ipFamily];
                  v269 = self->_internal;
                  if (ipFamily == 6 || v269->_shouldReportPMTUChangesOnIPv4)
                  {
                    if (!v269->_eventHandler)
                    {
                      goto LABEL_511;
                    }

                    v270 = +[IDSTransportLog IDSDataChannels];
                    if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109376;
                      *v384 = v101;
                      *&v384[4] = 1024;
                      *&v384[6] = v104;
                      _os_log_impl(&dword_1959FF000, v270, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PMTUUpdate: calling pathMTU event handler for linkID %d, pmtu: %d", buf, 0xEu);
                    }

                    v271 = self->_internal->_eventHandler;
                    v357[0] = &unk_1F0A29C18;
                    v356[0] = @"event-type";
                    v356[1] = v317;
                    v107 = [MEMORY[0x1E696AD98] numberWithChar:v101];
                    v357[1] = v107;
                    v356[2] = @"path-mtu";
                    v272 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v104];
                    v357[2] = v272;
                    v273 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v357 forKeys:v356 count:3];
                    v271[2](v271, v273);

                    goto LABEL_510;
                  }

                  v107 = +[IDSTransportLog IDSDataChannels];
                  if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_510:

                    goto LABEL_511;
                  }

                  *buf = 67109376;
                  *v384 = v101;
                  *&v384[4] = 1024;
                  *&v384[6] = v104;
                  v108 = "kClientChannelMetadataType_PMTUUpdate: not calling pathMTU event handler for linkID %d, pmtu: %d, because not IPv6";
LABEL_113:
                  v109 = v107;
                  v110 = 14;
                }

                else
                {
                  v107 = +[IDSTransportLog IDSDataChannels];
                  if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_510;
                  }

                  *buf = 67109120;
                  *v384 = v101;
                  v108 = "kClientChannelMetadataType_PMTUUpdate: could not find LinkContext for linkID %d";
                  v109 = v107;
                  v110 = 8;
                }

                _os_log_impl(&dword_1959FF000, v109, OS_LOG_TYPE_DEFAULT, v108, buf, v110);
                goto LABEL_510;
              }

              v18 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v384 = 2;
                *&v384[4] = 1024;
                *&v384[6] = v351;
                *&v384[10] = 1024;
                *&v384[12] = v353;
                _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_PMTUUpdate should be %u bytes, not %u bytes, field: %u", buf, 0x14u);
              }

              goto LABEL_523;
            default:
              if (v353 == 253)
              {
                if (v351 == 1)
                {
                  v334 = *v352;
                  goto LABEL_585;
                }

                v18 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v351;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DebugDataTransferTypeKey should be 1 byte, not %u", buf, 8u);
                }

                goto LABEL_523;
              }

              if (v353 != 254)
              {
LABEL_22:
                v18 = [IDSTransportLog IDSDataChannels:v304];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v384 = v353;
                  _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Unknown metadata type: %u", buf, 8u);
                }

                goto LABEL_523;
              }

              v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v352 length:v351];

              v17 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v384 = v351;
                _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "kClientChannelMetadataType_DebugDataTransferKey got data size %u", buf, 8u);
              }

              v335 = v16;
              goto LABEL_585;
          }
        }
      }

      v330 = 0;
      v331 = 0;
      v335 = 0;
      v336 = 0;
      v334 = 0;
      v323 = 0;
      v324 = 0;
      v337 = 0;
      v338 = 0;
      BYTE4(v321) = 0;
      LOWORD(v325) = 0;
      v326 = 0;
      v328 = 0;
      v329 = 0;
      v332 = 0;
      v333 = 0;
      v327 = 0;
      v322 = -1;
LABEL_588:
      IDSByteBufferRelease();
      if (v338 && v337 && self->_internal->_eventHandler)
      {
        [(IDSDatagramChannel *)self sendMediaEncryptionInfoWithMKM:v338 MKS:v337 MKI:v336 participantID:v333 isLocallyGenerated:BYTE4(v321) & 1 shortKILength:v323 encryptionSequenceNumber:v322];
      }

      if ((v331 & 0x100000000) != 0)
      {
        [(IDSDatagramChannel *)self sendMediaMembershipChangedInfo:BYTE4(v323)];
      }

      v301 = v335;
      if (v329)
      {
        info->var0 = v332;
      }

      if ((v329 & 0x100000000) != 0)
      {
        info->var1 = v324;
      }

      if (v330)
      {
        info->var2 = BYTE4(v324);
      }

      if (v327)
      {
        options->var0 |= 1u;
        options->var1 = v333;
      }

      if (v328)
      {
        options->var0 |= 0x10u;
        options->var2 = v325;
      }

      if ((v328 & 0x100000000) != 0)
      {
        options->var0 |= 4u;
      }

      if (HIDWORD(v332))
      {
        options->var0 |= 8u;
        options->var3 = BYTE4(v332);
      }

      if ((v330 & 0x100000000) != 0)
      {
        options->var0 |= 0x40u;
      }

      if (v331)
      {
        options->var11 = 1;
        options->var0 |= 0x400u;
      }

      if (v334)
      {
        if (v335)
        {
          v302 = self->_internal->_eventHandler;
          if (v302)
          {
            if (v334 == 2)
            {
              v354[0] = @"event-type";
              v354[1] = @"debug-data-type-key";
              v355[0] = &unk_1F0A29C30;
              v355[1] = &unk_1F0A29C48;
              v354[2] = @"debug-data-key";
              v355[2] = v335;
              v303 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v355 forKeys:v354 count:3];
              v302[2](v302, v303);

              v301 = v335;
            }
          }
        }
      }

      v8 = v326;
    }

    else
    {
      v8 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v384 = 2;
        *&v384[4] = 2048;
        *&v384[6] = v12;
        *&v384[14] = 2048;
        *&v384[16] = size;
        v9 = "processMetadataForDatagram %d + metadataSize(%zd) > datagramSize(%zd) - returning";
        v10 = v8;
        v11 = 28;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v8 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v384 = size;
      v9 = "processMetadataForDatagram datagramSize(%zd) <= kIDSClientChannelMetadataLengthSize - returning";
      v10 = v8;
      v11 = 12;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }
}

- (void)_addConnections:(id)connections toLinkContext:(id)context
{
  connectionsCopy = connections;
  contextCopy = context;
  if (contextCopy)
  {
    v7 = *MEMORY[0x1E69A4D20];
    v8 = [connectionsCopy objectForKeyedSubscript:*MEMORY[0x1E69A4D20]];
    v9 = *MEMORY[0x1E69A4D28];
    v10 = [connectionsCopy objectForKeyedSubscript:*MEMORY[0x1E69A4D28]];
    v11 = [(IDSDatagramChannel *)self _connectionInfoForDictionary:v10];
    v12 = [(IDSDatagramChannel *)self _connectionInfoForDictionary:v8];
    internal = self->_internal;
    os_unfair_lock_lock(&internal->_linkContextsLock);
    if (v12)
    {
      [v12 setIsQUICPod:1];
      [v12 setType:v7];
      connections = [contextCopy connections];
      [connections setQpod:v12];
    }

    if (v11)
    {
      [v11 setIsQUICPod:0];
      [v11 setType:v9];
      connections2 = [contextCopy connections];
      [connections2 setUdp:v11];
    }

    os_unfair_lock_unlock(&internal->_linkContextsLock);
  }
}

- (id)_connectionInfoForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = objc_alloc_init(_IDSDataChannelLinkConnection);
    v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A4CD0]];
    v6 = v5;
    if (v5 && [v5 length] == 16)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v6, "bytes")}];
      [(_IDSDataChannelLinkConnection *)v4 setChildConnectionID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A4CE0]];
    [(_IDSDataChannelLinkConnection *)v4 setProtocolStack:v8];
    v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A4CD8]];
    [(_IDSDataChannelLinkConnection *)v4 setNwConnectionToken:v9];
    v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A4CE8]];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69A5340]) initWithDictionary:v10];
      [(_IDSDataChannelLinkConnection *)v4 setQpodParameters:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A4CC8]];
    -[_IDSDataChannelLinkConnection setAllowOutgoing:](v4, "setAllowOutgoing:", [v12 BOOLValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_extractparticipantIDToHashedIDMappingFromData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v4 = MEMORY[0x1E696ACD0];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v18 = 0;
  v8 = [v4 _strictlyUnarchivedObjectOfClasses:v7 fromData:dataCopy error:&v18];
  v9 = v18;

  if (v9)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
LABEL_7:
    v12 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v13;
      v14 = v13;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "_extractDictionaryFromData - Couldn't decode NSData, error:%@, extractedDataType:%@", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_10;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195AFF9CC;
  v16[3] = &unk_1E7442E20;
  v17 = v10;
  v9 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v16];
  v11 = [v9 copy];
  v12 = v17;
LABEL_10:

LABEL_11:

  return v11;
}

- (BOOL)processDatagram:(const char *)datagram datagramSize:(unint64_t)size readHandler:(id)handler readHandlerWithOptions:(id)options
{
  v75[15] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  optionsCopy = options;
  v44 = -21846;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v75[8] = xmmword_195B54328;
  memset(&v75[10], 170, 40);
  memset(v75, 170, 64);
  if (size < 2)
  {
    LODWORD(v13) = 0;
    LODWORD(v12) = 0;
    goto LABEL_10;
  }

  v12 = __rev16(*datagram);
  v13 = (v12 + 2);
  if (size < v13)
  {
LABEL_10:
    v17 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v18 = v12;
      selfCopy3 = self;
      v49 = 2048;
      v13 = v13;
      sizeCopy = size;
      v51 = 2048;
      v52 = v12;
      v53 = 2048;
      v54 = v13;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "<%@> read sanity check failed: datagramSize %ld metadataSize %ld dataOffset %ld", buf, 0x2Au);
    }

    else
    {
      v18 = v12;
      v13 = v13;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"read sanity check failed: datagramSize %ld metadataSize %ld dataOffset %ld", size, v18, v13];
    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v21 = [v20 initWithObjectsAndKeys:{v19, *MEMORY[0x1E696A578], 0}];
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = [v22 initWithDomain:*MEMORY[0x1E69A4A18] code:3 userInfo:v21];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v23);
    }

    else
    {
      (*(optionsCopy + 2))(optionsCopy, 0, 0, 0, 0, 0, v23);
    }

    eventHandler = self->_internal->_eventHandler;
    if (eventHandler)
    {
      v45[0] = @"event-type";
      v45[1] = @"connected-link";
      v46[0] = &unk_1F0A29A50;
      connectedLinks = [(IDSDatagramChannel *)self connectedLinks];
      v46[1] = connectedLinks;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
      eventHandler[2](eventHandler, v26);
    }

    [(IDSDatagramChannel *)self close];

    v27 = 0;
    goto LABEL_19;
  }

  [(IDSDatagramChannel *)self processMetadataForDatagram:datagram size:size datagramInfo:&v43 options:v75];
  v14 = &datagram[v13];
  v15 = size - v13;
  if (size == v13)
  {
    if ((v75[0] & 0x40) != 0)
    {
      v16 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(selfCopy3) = HIWORD(v75[5]);
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "readFromNWConnection: _internal->_connection: Only has statsID: %x", buf, 8u);
      }

      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, v14, 0, v43, v44, 0);
      }

      else
      {
        (*(optionsCopy + 2))(optionsCopy, v14, 0, v43, v44, v75, 0);
      }
    }
  }

  else
  {
    if (qword_1EAEDBEE8 != -1)
    {
      sub_195B4089C();
    }

    mach_continuous_time();
    sub_195B4061C(self);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v14, size - v13, v43, v44, 0);
    }

    else
    {
      (*(optionsCopy + 2))(optionsCopy, v14, size - v13, v43, v44, v75, 0);
    }
  }

  if (!self->_internal->_verboseFunctionalLogging)
  {
    v27 = 1;
    goto LABEL_20;
  }

  v19 = +[IDSLogging IDSDataChannels];
  v29 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v15 < 0xA)
  {
    if (v29)
    {
      *buf = 138413058;
      selfCopy3 = self;
      v49 = 2048;
      sizeCopy = v15;
      v51 = 2048;
      v52 = v12;
      v53 = 2048;
      v54 = (v12 + 2);
      v40 = "<%@> read details: datagramSize %ld metadataSize %ld dataOffset %ld";
      v41 = v19;
      v42 = 42;
      goto LABEL_29;
    }
  }

  else if (v29)
  {
    v30 = *v14;
    v31 = v14[1];
    v32 = v14[2];
    v33 = v14[3];
    v34 = v14[4];
    v35 = v14[5];
    v36 = v14[6];
    v37 = v14[7];
    v38 = v14[8];
    v39 = v14[9];
    *buf = 138415618;
    selfCopy3 = self;
    v49 = 2048;
    sizeCopy = v15;
    v51 = 2048;
    v52 = v12;
    v53 = 2048;
    v54 = (v12 + 2);
    v55 = 1024;
    v56 = v30;
    v57 = 1024;
    v58 = v31;
    v59 = 1024;
    v60 = v32;
    v61 = 1024;
    v62 = v33;
    v63 = 1024;
    v64 = v34;
    v65 = 1024;
    v66 = v35;
    v67 = 1024;
    v68 = v36;
    v69 = 1024;
    v70 = v37;
    v71 = 1024;
    v72 = v38;
    v73 = 1024;
    v74 = v39;
    v40 = "<%@> read details: datagramSize %ld metadataSize %ld dataOffset %ld [%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x ...]";
    v41 = v19;
    v42 = 102;
LABEL_29:
    _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
  }

  v27 = 1;
LABEL_19:

LABEL_20:
  return v27;
}

- (void)handleIncomingDatagram:(const char *)datagram datagramSize:(unsigned int)size datagramInfo:(id)info datagramOptions:(id *)options
{
  v7 = *&info.var4;
  v8 = *&info.var0;
  v9 = *&size;
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (size)
    {
      v12 = crc32_z(0, datagram, size);
      if (v12)
      {
        v13 = v12;
        if (!(v12 % 0xB3))
        {
          v14 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 67109376;
            v20 = v9;
            v21 = 2048;
            v22 = v13;
            _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Recv datagram checksum %uB/%lu", &v19, 0x12u);
          }
        }
      }
    }
  }

  internal = self->_internal;
  if (internal->_verboseFunctionalLogging && options->var11 && (options->var0 & 0x400) != 0)
  {
    v16 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      v20 = v9;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Giving HBH packet to AVC: %u B", &v19, 8u);
    }

    internal = self->_internal;
  }

  readHandler = internal->_readHandler;
  if (readHandler)
  {
    (*(readHandler + 2))(readHandler, datagram, v9, v8, v7, 0);
  }

  else
  {
    readHandlerWithOptions = internal->_readHandlerWithOptions;
    if (readHandlerWithOptions)
    {
      (*(readHandlerWithOptions + 2))(readHandlerWithOptions, datagram, v9, v8, v7, options, 0);
    }
  }
}

- (void)readFromNWConnection:(id)connection maximumDatagrams:(unsigned int)datagrams readHandler:(id)handler readHandlerWithOptions:(id)options
{
  v24[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  handlerCopy = handler;
  optionsCopy = options;
  if (handlerCopy | optionsCopy)
  {
    v12 = [handlerCopy copy];
    v13 = [optionsCopy copy];
    v20 = v12;
    v21 = handlerCopy;
    v22 = optionsCopy;
    v19 = connectionCopy;
    v14 = v13;
    v15 = v12;
    nw_connection_read_multiple();
  }

  else
  {
    os_unfair_lock_lock(&self->_internal->_readLock);
    internal = self->_internal;
    eventHandler = internal->_eventHandler;
    if (eventHandler)
    {
      v23 = @"event-type";
      v24[0] = &unk_1F0A29C60;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      eventHandler[2](eventHandler, v18);

      internal = self->_internal;
    }

    os_unfair_lock_unlock(&internal->_readLock);
  }
}

- (void)readFromOSChannel:(channel *)channel ring:(channel_ring_desc *)ring maximumDatagrams:(unsigned int)datagrams readHandler:(id)handler readHandlerWithOptions:(id)options
{
  v33 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  optionsCopy = options;
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_readLock);
  if (self->_internal->_isInvalidated)
  {
    v13 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "invalidating - not reading more";
LABEL_25:
      v20 = v13;
      v21 = 2;
LABEL_26:
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, v14, buf, v21);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (!ring)
  {
    v13 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "os_channel not yet ready to read";
      goto LABEL_25;
    }

LABEL_27:

    goto LABEL_28;
  }

  v15 = os_channel_available_slot_count();
  if (!v15)
  {
    [(IDSDatagramChannel *)self osChannelInfoLog];
    v13 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "os_channel_available_slot_count gave no slots to read";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v15 >= datagrams)
  {
    datagramsCopy = datagrams;
  }

  else
  {
    datagramsCopy = v15;
  }

  if (!datagrams)
  {
LABEL_31:
    v22 = os_channel_advance_slot();
    if (v22)
    {
      [(IDSDatagramChannel *)self osChannelInfoLog];
      v23 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v22;
        _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "os_channel_advance_slot failed for read %d", buf, 8u);
      }
    }

    v24 = os_channel_sync();
    if (!v24)
    {
      goto LABEL_28;
    }

    [(IDSDatagramChannel *)self osChannelInfoLog];
    v13 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      v14 = "os_channel_sync for RX failed %d";
      v20 = v13;
      v21 = 8;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v17 = 1;
  v26 = datagramsCopy;
  v18 = 1;
  while (1)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31 = v19;
    v32 = v19;
    *buf = v19;
    v30 = v19;
    os_channel_get_next_slot();
    if (!self->_internal->_hasMetadata)
    {
      if (qword_1EAEDBEE8 != -1)
      {
        sub_195B4089C();
      }

      mach_continuous_time();
      sub_195B4061C(self);
      if (handlerCopy)
      {
        v8 &= 0xFFFFFFFFFFFF0000;
        handlerCopy[2]();
      }

      else
      {
        v7 &= 0xFFFFFFFFFFFF0000;
        (*(optionsCopy + 2))(optionsCopy, v30, *&buf[2], 0, v7, 0, 0);
      }

      goto LABEL_19;
    }

    if (![(IDSDatagramChannel *)self processDatagram:v30 datagramSize:*&buf[2] readHandler:handlerCopy readHandlerWithOptions:optionsCopy])
    {
      break;
    }

LABEL_19:
    v18 = v17++ < v26;
    if (!--datagramsCopy)
    {
      goto LABEL_31;
    }
  }

  if (!v18)
  {
    goto LABEL_31;
  }

LABEL_28:
  os_unfair_lock_unlock(&internal->_readLock);
}

- (void)readFromSocketDescriptorWithReadHandler:(id)handler readHandlerWithOptions:(id)options
{
  v36[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  optionsCopy = options;
  internal = self->_internal;
  os_unfair_lock_lock(&internal->_readLock);
  v9 = self->_internal;
  if (v9->_socketDescriptor == -1)
  {
    eventHandler = v9->_eventHandler;
    if (eventHandler)
    {
      v35 = @"event-type";
      v36[0] = &unk_1F0A29C60;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      eventHandler[2](eventHandler, v15);
    }
  }

  else
  {
    [(IDSDatagramChannel *)self sendEventConnectedWithDummyLinkInfo];
    memset(__b, 170, sizeof(__b));
    v10 = read(self->_internal->_socketDescriptor, __b, 0x7D0uLL);
    v11 = v10;
    if (v10)
    {
      if (v10 == -1)
      {
        v12 = *__error();
        if (v12 <= 0x24 && ((1 << v12) & 0x1800000010) != 0)
        {
          v13 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            selfCopy3 = self;
            v32 = 1024;
            LODWORD(v33[0]) = v12;
            _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "<%@> read nonfatal failure errno %d", buf, 0x12u);
          }
        }

        else
        {
          v21 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = MEMORY[0x19A8BBEF0](self->_internal->_eventHandler);
            *buf = 138412802;
            selfCopy3 = self;
            v32 = 1024;
            LODWORD(v33[0]) = v12;
            WORD2(v33[0]) = 2048;
            *(v33 + 6) = v22;
            _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "<%@> read failed errno %d calling event handler %p", buf, 0x1Cu);
          }

          v23 = self->_internal->_eventHandler;
          if (v23)
          {
            v28[0] = @"event-type";
            v28[1] = @"connected-link";
            v29[0] = &unk_1F0A29A50;
            connectedLinks = [(IDSDatagramChannel *)self connectedLinks];
            v29[1] = connectedLinks;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
            v23[2](v23, v25);
          }

          [(IDSDatagramChannel *)self close];
        }
      }

      else
      {
        if (qword_1EAEDBEE8 != -1)
        {
          sub_195B4089C();
        }

        mach_continuous_time();
        sub_195B4061C(self);
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, __b, v11, 0, 0, 0);
        }

        else
        {
          (*(optionsCopy + 2))(optionsCopy, __b, v11, 0, 0, 0, 0);
        }
      }
    }

    else
    {
      v16 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = MEMORY[0x19A8BBEF0](self->_internal->_eventHandler);
        *buf = 138412546;
        selfCopy3 = self;
        v32 = 2048;
        v33[0] = v17;
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%@> read returned 0 bytes calling event handler %p", buf, 0x16u);
      }

      v18 = self->_internal->_eventHandler;
      if (v18)
      {
        v19 = [(IDSDatagramChannel *)self connectedLinks:@"event-type"];
        v27[1] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:2];
        v18[2](v18, v20);
      }

      [(IDSDatagramChannel *)self close];
    }
  }

  os_unfair_lock_unlock(&internal->_readLock);
}

- (void)readDatagramWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internal = self->_internal;
  v7 = handlerCopy;
  if (internal->_pathEvaluator)
  {
    [(IDSDatagramChannel *)self readFromOSChannel:internal->_osChannel ring:internal->_osChannelRXRing maximumDatagrams:1 readHandler:handlerCopy readHandlerWithOptions:0];
  }

  else
  {
    connection = internal->_connection;
    if (connection)
    {
      [(IDSDatagramChannel *)self readFromNWConnection:connection maximumDatagrams:1 readHandler:handlerCopy readHandlerWithOptions:0];
    }

    else
    {
      [(IDSDatagramChannel *)self readFromSocketDescriptorWithReadHandler:handlerCopy readHandlerWithOptions:0];
    }
  }
}

- (void)readDatagramsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internal = self->_internal;
  v7 = handlerCopy;
  if (internal->_pathEvaluator)
  {
    [(IDSDatagramChannel *)self readFromOSChannel:internal->_osChannel ring:internal->_osChannelRXRing maximumDatagrams:256 readHandler:0 readHandlerWithOptions:handlerCopy];
  }

  else
  {
    connection = internal->_connection;
    if (connection)
    {
      [(IDSDatagramChannel *)self readFromNWConnection:connection maximumDatagrams:256 readHandler:0 readHandlerWithOptions:handlerCopy];
    }

    else
    {
      [(IDSDatagramChannel *)self readFromSocketDescriptorWithReadHandler:0 readHandlerWithOptions:handlerCopy];
    }
  }
}

- (void)close
{
  v37 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "-close called for %@", buf, 0xCu);
  }

  self->_internal->_connected = 0;
  internal = self->_internal;
  connection = internal->_connection;
  if (connection)
  {
    nw_connection_cancel(connection);
    v6 = self->_internal;
    v7 = v6->_connection;
    v6->_connection = 0;

    [(IDSDatagramChannel *)self invalidateDirectConnections];
    internal = self->_internal;
  }

  socketDescriptor = internal->_socketDescriptor;
  if (socketDescriptor != -1)
  {
    close(socketDescriptor);
    self->_internal->_socketDescriptor = -1;
  }

  [(IDSDatagramChannel *)self _logFinalStats];
  qualityMeasurer = [(IDSDatagramChannel *)self qualityMeasurer];
  [qualityMeasurer stopWithCompletionHandler:&unk_1F09E7300];

  [(IDSDataChannelLinkEngineHandle *)self->_internal->_linkEngine setAllowOngoingTasks:0];
  v10 = self->_internal;
  packetLog = v10->_packetLog;
  if (packetLog)
  {
    [(IDSObjCPacketLog *)packetLog finish];
    v12 = self->_internal;
    v13 = v12->_packetLog;
    v12->_packetLog = 0;

    v10 = self->_internal;
  }

  if (v10->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
    v14 = self->_internal;
    osChannelFD = v14->_osChannelFD;
    osChannel = v14->_osChannel;
    v14->_osChannelFD = -1;
    self->_internal->_osChannel = 0;
    if (self->_internal->_startCalled)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = sub_195B0146C;
      v31 = &unk_1E7442E68;
      v33 = osChannelFD;
      v32 = osChannel;
      IDSTransportThreadAddBlock();
    }

    else if (osChannel)
    {
      os_channel_destroy();
    }

    v17 = self->_internal;
    pathEvaluator = v17->_pathEvaluator;
    v17->_pathEvaluator = 0;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = self->_internal->_sendingMetadata;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        v23 = 0;
        do
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v24 + 1) + 8 * v23) pointerValue];
          _IDSLinkPacketBufferRelease();
          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v21);
    }

    [(NSMutableArray *)self->_internal->_sendingMetadata removeAllObjects];
    v10 = self->_internal;
  }

  os_unfair_lock_unlock(&v10->_writeLock);
}

- (void)invalidate
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_internal->_readLock);
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "-invalidate called for %@", &v16, 0xCu);
  }

  [(IDSDatagramChannel *)self close];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  internal = self->_internal;
  preConnectionData = internal->_preConnectionData;
  if (preConnectionData)
  {
    internal->_preConnectionData = 0;

    internal = self->_internal;
  }

  eventHandler = internal->_eventHandler;
  if (eventHandler)
  {
    internal->_eventHandler = 0;

    internal = self->_internal;
  }

  readHandler = internal->_readHandler;
  if (readHandler)
  {
    internal->_readHandler = 0;

    internal = self->_internal;
  }

  readHandlerWithOptions = internal->_readHandlerWithOptions;
  if (readHandlerWithOptions)
  {
    internal->_readHandlerWithOptions = 0;

    internal = self->_internal;
  }

  writeHandler = internal->_writeHandler;
  if (writeHandler)
  {
    internal->_writeHandler = 0;

    internal = self->_internal;
  }

  os_unfair_lock_lock(&internal->_linkContextsLock);
  v10 = self->_internal;
  linkContexts = v10->_linkContexts;
  if (linkContexts)
  {
    v10->_linkContexts = 0;

    v10 = self->_internal;
  }

  os_unfair_lock_unlock(&v10->_linkContextsLock);
  IDSLinkPacketBufferCleanup();
  self->_internal->_isInvalidated = 1;
  v12 = self->_internal;
  linkEngine = v12->_linkEngine;
  v12->_linkEngine = 0;

  v14 = self->_internal;
  linkEngineQualityMeasurementSyncToken = v14->_linkEngineQualityMeasurementSyncToken;
  v14->_linkEngineQualityMeasurementSyncToken = 0;

  os_unfair_lock_unlock(&self->_internal->_writeLock);
  os_unfair_lock_unlock(&self->_internal->_readLock);
}

- (void)startInternal
{
  v17 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal->_pathEvaluator)
  {
    queue = internal->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195B018A8;
    block[3] = &unk_1E743E878;
    block[4] = self;
    dispatch_async(queue, block);
    return;
  }

  if (!internal->_connection)
  {
    if (internal->_socketDescriptor == -1)
    {
      v5 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@> cannot start datagram channel with no socket and no connection", buf, 0xCu);
      }
    }

    else
    {
      v5 = MEMORY[0x19A8BB9F0]();
      nw_parameters_set_data_mode();
      nw_parameters_set_context();
      v6 = nw_connection_create_with_connected_socket_and_parameters();
      v7 = self->_internal;
      connection = v7->_connection;
      v7->_connection = v6;

      v9 = self->_internal;
      if (v9->_connection)
      {
        v9->_operationMode = 1;

        goto LABEL_5;
      }

      v10 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        socketDescriptor = self->_internal->_socketDescriptor;
        *buf = 138412546;
        selfCopy2 = self;
        v15 = 1024;
        v16 = socketDescriptor;
        _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "<%@> nw_connection_create_with_connected_socket failed. socketDescriptor %d might be invalid.", buf, 0x12u);
      }
    }

    return;
  }

LABEL_5:

  [(IDSDatagramChannel *)self start];
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (*&internal->_readHandler == 0)
  {
    sub_195B4091C();
  }

  if (!internal->_eventHandler)
  {
    sub_195B408F0();
  }

  v4 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "-start called for %@", buf, 0xCu);
  }

  self->_internal->_startCalled = 1;
  v5 = self->_internal;
  if (v5->_operationMode != 1)
  {
    sub_195B408C4();
  }

  nw_connection_set_queue(v5->_connection, v5->_queue);
  connection = self->_internal->_connection;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_195B01D84;
  handler[3] = &unk_1E7442E90;
  handler[4] = self;
  nw_connection_set_state_changed_handler(connection, handler);
  nw_connection_start(self->_internal->_connection);
  [(IDSDatagramChannel *)self _schedulePeriodicTasks];
  linkEngine = self->_internal->_linkEngine;
  if (linkEngine)
  {
    [(IDSDataChannelLinkEngineHandle *)linkEngine setAllowOngoingTasks:1];
  }

  qualityMeasurer = [(IDSDatagramChannel *)self qualityMeasurer];
  [qualityMeasurer startCapturingBasicStats:1 sendBursts:0 completionHandler:&unk_1F09E7320];
}

- (void)_writeToOSChannelDatagrams:(const void *)datagrams datagramSizes:(unsigned int *)sizes datagramInfo:(id *)info datagramOptions:(id *)options datagramCount:(int)count completionHandler:(id)handler
{
  v9 = *&count;
  v84 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->_internal->_operationMode)
  {
    sub_195B40948();
  }

  v14 = handlerCopy;
  v15 = os_channel_available_slot_count();
  v16 = [self->_internal->_writeHandler copy];
  if (v15 < v9)
  {
    v17 = os_channel_sync();
    if (v17)
    {
      v18 = v17;
      [(IDSDatagramChannel *)self osChannelInfoLog];
      v19 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(selfCopy2) = v18;
        _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "os_channel_sync for TX failed %d", buf, 8u);
      }
    }

    v20 = os_channel_available_slot_count();
    if (!v20)
    {
      [(IDSDatagramChannel *)self osChannelInfoLog];
      v21 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "have data to send to daemon but no slots in tx ring", buf, 2u);
      }
    }

    if (v20 < v9)
    {
      v22 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        selfCopy2 = v9;
        v71 = 2048;
        *v72 = v20;
        _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "have %lu datagrams to send to daemon but only %lu slots", buf, 0x16u);
      }

      43690 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"have %lu datagrams to send to daemon but only %lu slots", v9, v20];
      v56 = objc_alloc(MEMORY[0x1E695DF20]);
      v50 = [v56 initWithObjectsAndKeys:{43690, *MEMORY[0x1E696A578], 0}];
      v57 = objc_alloc(MEMORY[0x1E696ABC0]);
      v58 = [v57 initWithDomain:*MEMORY[0x1E69A4A18] code:5 userInfo:v50];
      sub_195A7FC78(v14, v16, v58, 0);

      goto LABEL_49;
    }
  }

  v61 = v16;
  v62 = v14;
  if (v9 < 1)
  {
    v65 = 0;
LABEL_43:
    v53 = os_channel_sync();
    v16 = v61;
    v14 = v62;
    if (v53)
    {
      v54 = v53;
      [(IDSDatagramChannel *)self osChannelInfoLog];
      v55 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(selfCopy2) = v54;
        _os_log_impl(&dword_1959FF000, v55, OS_LOG_TYPE_DEFAULT, "os_channel_sync for TX failed %d", buf, 8u);
      }
    }

    sub_195A7FC78(v62, v61, 0, v65);
    goto LABEL_50;
  }

  v23 = 0;
  v65 = 0;
  v60 = v9;
  p_var4 = &info->var4;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  while (1)
  {
    v68 = 0xAAAAAAAAAAAAAAAALL;
    *__src = v25;
    v67 = v25;
    IDSByteBufferInitForWrite();
    optionsCopy = options;
    v8 = v8 & 0xFFFFFFFFFFFF0000 | *p_var4;
    v27 = v9;
    [(IDSDatagramChannel *)self generateMetadataWithDatagramInfo:*(p_var4 - 1) options:v8 currentDatagramCount:options[v23] totalDatagramCount:v23 byteBuffer:v9, __src];
    v28 = v67 - LODWORD(__src[0]);
    os_channel_get_next_slot();
    v29 = sizes[v23];
    if (v29 + v28 + 2 > 0xAAAA)
    {
      break;
    }

    v30 = datagrams[v23];
    v59 = v30;
    if (self->_internal->_hasMetadata)
    {
      MEMORY[0xAAAAAAAAAAAAAAAA] = bswap32(v28) >> 16;
      if (v28)
      {
        memcpy(0xAAAAAAAAAAAAAAACLL, __src[0], v28);
      }

      if (!v29)
      {
        goto LABEL_24;
      }

      v31 = (v28 - 0x5555555555555554);
      v30 = v59;
    }

    else
    {
      v31 = 0xAAAAAAAAAAAAAAAALL;
    }

    memcpy(v31, v30, v29);
LABEL_24:
    os_channel_set_slot_properties();
    v32 = os_channel_advance_slot();
    if (v32)
    {
      v33 = v32;
      [(IDSDatagramChannel *)self osChannelInfoLog];
      v34 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(selfCopy2) = v33;
        _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "advance_slot failed for write %d", buf, 8u);
      }
    }

    if (qword_1EAEDBEE8 != -1)
    {
      sub_195B4089C();
    }

    mach_continuous_time();
    sub_195B404C4(self);
    if (self->_internal->_verboseFunctionalLogging)
    {
      v35 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        selfCopy2 = self;
        v71 = 1024;
        *v72 = v23;
        *&v72[4] = 2048;
        *&v72[6] = v29;
        *&v72[14] = 2048;
        *&v72[16] = v28;
        _os_log_impl(&dword_1959FF000, v35, OS_LOG_TYPE_DEFAULT, "<%@> write details: datagramSize[%d] %ld metadataSize %ld", buf, 0x26u);
      }

      if (v29 >= 0xA)
      {
        v36 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *v59;
          v38 = v59[1];
          v39 = v59[2];
          v40 = v59[3];
          v41 = v59[4];
          v42 = v59[5];
          v43 = v59[6];
          v44 = v59[7];
          v45 = v59[8];
          v46 = v59[9];
          *buf = 138414850;
          selfCopy2 = self;
          v71 = 1024;
          *v72 = v37;
          *&v72[4] = 1024;
          *&v72[6] = v38;
          *&v72[10] = 1024;
          *&v72[12] = v39;
          *&v72[16] = 1024;
          *&v72[18] = v40;
          *&v72[22] = 1024;
          v73 = v41;
          v74 = 1024;
          v75 = v42;
          v76 = 1024;
          v77 = v43;
          v78 = 1024;
          v79 = v44;
          v80 = 1024;
          v81 = v45;
          v82 = 1024;
          v83 = v46;
          _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "<%@> write details: datagramContents %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", buf, 0x48u);
        }
      }
    }

    p_var4 += 10;
    v65 += v29;
    IDSByteBufferRelease();
    ++v23;
    v9 = v27;
    options = optionsCopy;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (v60 == v23)
    {
      goto LABEL_43;
    }
  }

  v47 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    selfCopy2 = v29;
    v71 = 2048;
    *v72 = v28;
    *&v72[8] = 2048;
    *&v72[10] = 43690;
    _os_log_impl(&dword_1959FF000, v47, OS_LOG_TYPE_DEFAULT, "have data %lu metadata %lu to send to daemon but not enough bytes %lu in slot", buf, 0x20u);
  }

  43690 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"have data %lu to send to daemon but not enough bytes %lu in slot", v29 + v28 + 2, 43690];
  v49 = objc_alloc(MEMORY[0x1E695DF20]);
  v50 = [v49 initWithObjectsAndKeys:{43690, *MEMORY[0x1E696A578], 0}];
  v51 = objc_alloc(MEMORY[0x1E696ABC0]);
  v52 = [v51 initWithDomain:*MEMORY[0x1E69A4A18] code:5 userInfo:v50];
  v16 = v61;
  v14 = v62;
  sub_195A7FC78(v62, v61, v52, v65);

LABEL_49:
LABEL_50:
}

- ($B9DA14AB56F58BCD48907D5C6DBDA49C)_makePacketBufferFromDatagram:(const void *)datagram datagramSize:(unsigned int)size currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount datagramInfo:(id)info datagramOptions:(id *)options
{
  v8 = *&info.var4;
  v9 = *&info.var0;
  datagramCountCopy = datagramCount;
  countCopy = count;
  v28 = *MEMORY[0x1E69E9840];
  v15 = _IDSLinkPacketBufferCreate();
  var0 = v15->var0;
  IDSLinkPacketBufferAddBufferStart();
  IDSByteBufferInitForWriteWithAllocatedSpace();
  [(IDSDatagramChannel *)self generateMetadataWithDatagramInfo:v9 options:v8 currentDatagramCount:options totalDatagramCount:countCopy byteBuffer:datagramCountCopy, var0];
  v17 = *(var0 + 2) - *var0;
  v15->var2 = (*(var0 + 8) - *var0);
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v15];
  v18 = (v17 + 2);
  if (v15->var1 - v18 >= size)
  {
    memcpy(&v15->var0[v18], datagram, size);
    v15->var2 += size;
  }

  else
  {
    v19 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v15->var1 - v18;
      v22 = 134218496;
      v23 = v20;
      v24 = 1024;
      sizeCopy = size;
      v26 = 1024;
      v27 = v17;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Not enough packet buffer space. Space left %lu datagram size %u metadata size %u", &v22, 0x18u);
    }

    return 0;
  }

  return v15;
}

- (void)_writeToNWConnection:(id)connection datagram:(const void *)datagram datagramSize:(unsigned int)size currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount datagramInfo:(id)info datagramOptions:(id *)options completionHandler:(id)self0
{
  datagramCountCopy = datagramCount;
  countCopy = count;
  v12 = *&size;
  connectionCopy = connection;
  handlerCopy = handler;
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v16 = mach_continuous_time();
  v17 = *&qword_1EAEDBEF0;
  if ([(IDSDatagramChannel *)self isDaemonConnection:connectionCopy])
  {
    v33 = [handlerCopy copy];
    v32 = [self->_internal->_writeHandler copy];
    if (self->_internal->_hasMetadata)
    {
      options = [(IDSDatagramChannel *)self _makePacketBufferFromDatagram:datagram datagramSize:v12 currentDatagramCount:countCopy totalDatagramCount:datagramCountCopy datagramInfo:*&info.var0 datagramOptions:*&info.var4, options];
      if (!options)
      {
        v27 = objc_alloc(MEMORY[0x1E695DF20]);
        v28 = [v27 initWithObjectsAndKeys:{@"Not enough packet buffer space", *MEMORY[0x1E696A578], 0}];
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = [v29 initWithDomain:*MEMORY[0x1E69A4A18] code:6 userInfo:v28];
        v31 = v12;
        v26 = v32;
        v22 = v33;
        sub_195A7FC78(v33, v32, v30, v31);

LABEL_12:
        v20 = handlerCopy;
        goto LABEL_13;
      }

      v19 = sub_195A7FB04(options, 0);
    }

    else
    {
      v19 = dispatch_data_create(datagram, v12, 0, 0);
    }

    v21 = v19;
    v22 = v33;
    v23 = v17 * v16;
    if (qword_1EAEDBEE8 != -1)
    {
      sub_195B40788();
    }

    v24 = *&qword_1EAEDBEF0 * mach_continuous_time();
    v25 = *MEMORY[0x1E6977E88];
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = sub_195B02D80;
    completion[3] = &unk_1E7442EB8;
    completion[4] = self;
    infoCopy = info;
    v36 = v33;
    v38 = v24;
    v39 = v23;
    v40 = v12;
    v26 = v32;
    v37 = v32;
    nw_connection_send(connectionCopy, v21, v25, 1, completion);

    goto LABEL_12;
  }

  v20 = handlerCopy;
  [(IDSDatagramChannel *)self _writeToDirectConnection:connectionCopy datagram:datagram datagramSize:v12 currentDatagramCount:countCopy totalDatagramCount:datagramCountCopy datagramInfo:*&info.var0 datagramOptions:*&info.var4 completionHandler:options, handlerCopy];
LABEL_13:
}

- (void)_writeToNWConnectionArrayOfDatagrams:(const void *)datagrams datagramSizes:(unsigned int *)sizes datagramInfo:(id *)info datagramOptions:(id *)options datagramCount:(int)count completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  internal = self->_internal;
  if (internal->_operationMode != 1)
  {
    sub_195B40974();
  }

  v16 = handlerCopy;
  v17 = (count - 1);
  if (count == 1)
  {
    v18 = [(IDSDatagramChannel *)self connectionForLinkID:info->var0 datagramOptions:*options];
    [(IDSDatagramChannel *)self _writeToNWConnection:v18 datagram:*datagrams datagramSize:*sizes currentDatagramCount:0 totalDatagramCount:1 datagramInfo:*&info->var0 datagramOptions:*&info->var4 completionHandler:*options, v16];
  }

  else if (count < 2)
  {
    v24 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v41 = 1024;
      countCopy = count;
      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "<%@> _writeToNWConnectionArrayOfDatagrams given %d datagrams, which is < 1", buf, 0x12u);
    }
  }

  else if (internal->_preferredDataPathType == 1)
  {
    v19 = info + 1;
    v20 = count - 1;
    while (1)
    {
      var0 = v19->var0;
      ++v19;
      if (var0 != info->var0)
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_9;
      }
    }

    v25 = 0;
    countCopy2 = count;
    datagramsCopy = datagrams;
    sizesCopy = sizes;
    do
    {
      v28 = [(IDSDatagramChannel *)self connectionForLinkID:info->var0 datagramOptions:options[v25]];
      if (v17 == v25)
      {
        v29 = v16;
      }

      else
      {
        v29 = 0;
      }

      sizes = (sizes & 0xFFFFFFFFFFFF0000 | *&info->var4);
      [(IDSDatagramChannel *)self _writeToNWConnection:v28 datagram:datagramsCopy[v25] datagramSize:sizesCopy[v25] currentDatagramCount:v25 totalDatagramCount:countCopy2 datagramInfo:*&info->var0 datagramOptions:sizes completionHandler:options[v25], v29];

      ++v25;
      ++info;
    }

    while (v17 + 1 != v25);
  }

  else
  {
LABEL_9:
    v22 = [(IDSDatagramChannel *)self connectionForLinkID:info->var0 datagramOptions:*options];
    batch_block[0] = MEMORY[0x1E69E9820];
    batch_block[1] = 3221225472;
    batch_block[2] = sub_195B0333C;
    batch_block[3] = &unk_1E7442EE0;
    countCopy3 = count;
    batch_block[4] = self;
    v32 = v22;
    datagramsCopy2 = datagrams;
    sizesCopy2 = sizes;
    infoCopy = info;
    optionsCopy = options;
    v33 = v16;
    v23 = v22;
    nw_connection_batch(v23, batch_block);
  }
}

- (void)_writeToSocket:(int)socket datagrams:(const void *)datagrams datagramSizes:(unsigned int *)sizes datagramInfo:(id *)info datagramOptions:(id *)options datagramCount:(int)count completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v34 = [self->_internal->_writeHandler copy];
  if (count < 1)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_38;
  }

  v13 = 0;
  v14 = 0;
  v36 = *MEMORY[0x1E696A578];
  v37 = *MEMORY[0x1E69A4A18];
  countCopy = count;
  while (1)
  {
    v17 = *sizes++;
    v16 = v17;
    v18 = write(self->_internal->_socketDescriptor, *datagrams, v17);
    v14 += v18;
    if (v18 == v17)
    {
      if (qword_1EAEDBEE8 != -1)
      {
        sub_195B4089C();
      }

      mach_continuous_time();
      sub_195B404C4(self);
      goto LABEL_14;
    }

    v19 = v18;
    if (v18 >= 1)
    {
      break;
    }

    if (!v18)
    {
      v32 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_1959FF000, v32, OS_LOG_TYPE_DEFAULT, "<%@> write returned 0 - connection terminated", buf, 0xCu);
      }

      socketDescriptor = self->_internal->_socketDescriptor;
      if (socketDescriptor != -1)
      {
        close(socketDescriptor);
        self->_internal->_socketDescriptor = -1;
      }

      v30 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"Connection terminated", v36, 0}];
      v28 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v37 code:6 userInfo:v30];
      goto LABEL_36;
    }

    v20 = *__error();
    if (v20 > 0x37 || ((1 << v20) & 0x80000800000010) == 0)
    {
      v23 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v40 = 1024;
        v41 = v20;
        _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "<%@> write failed errno %d", buf, 0x12u);
      }

      v24 = v13;

      v25 = self->_internal->_socketDescriptor;
      if (v25 != -1)
      {
        close(v25);
        self->_internal->_socketDescriptor = -1;
      }

      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to send (errno %d)", v20];
      v27 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v26, v36, 0}];
      v28 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v37 code:6 userInfo:v27];

      if (v20 == 35)
      {
        v13 = v28;
      }

      else
      {
        v13 = v28;
        if (v20 != 55)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v22 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v40 = 1024;
        v41 = v20;
        _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "<%@> write nonfatal failure errno %d", buf, 0x12u);
      }

      if (v20 > 0x37 || ((1 << v20) & 0x80000800000010) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_14:
    ++datagrams;
    if (!--countCopy)
    {
      goto LABEL_38;
    }
  }

  v29 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy4 = self;
    v40 = 1024;
    v41 = v19;
    v42 = 1024;
    v43 = v16;
    _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "<%@> write failed to send all bytes %d < %d", buf, 0x18u);
  }

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to send all bytes (%d < %d)", v19, v16];
  v31 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v30, v36, 0}];
  v28 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v37 code:6 userInfo:v31];

  v13 = v31;
LABEL_36:

LABEL_37:
  v13 = v28;
LABEL_38:
  sub_195A7FC78(handlerCopy, v34, v13, v14);
}

- (void)writeArrayOfDatagrams:(const void *)datagrams datagramSizes:(unsigned int *)sizes datagramInfo:(id *)info datagramOptions:(id *)options datagramCount:(int)count completionHandler:(id)handler
{
  v8 = *&count;
  v57 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_internal->_writeLock);
  if (v8 >= 1 && self->_internal->_hbhHalfThePackets)
  {
    optionsCopy = options;
    v13 = v8;
    do
    {
      if (arc4random() <= 0x7FFFFFFE)
      {
        v14 = *optionsCopy;
        *(v14 + 80) = 1;
        *v14 |= 0x400u;
      }

      ++optionsCopy;
      --v13;
    }

    while (v13);
  }

  if (v8 >= 1)
  {
    v15 = v8;
    v16 = 0xB70FBB5A19BE3659;
    datagramsCopy = datagrams;
    sizesCopy = sizes;
    do
    {
      sub_195B40328(self, *sizesCopy);
      if (self)
      {
        v19 = *sizesCopy;
        if (v19)
        {
          v20 = crc32_z(0, *datagramsCopy, v19);
          if (v20 && v20 == 179 * (((v20 * v16) >> 64) >> 7))
          {
            v22 = v20;
            v23 = v16;
            optionsCopy2 = options;
            v25 = handlerCopy;
            v26 = +[IDSLogging IDSDataChannels];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *sizesCopy;
              *buf = 67109376;
              *&buf[4] = v27;
              *&buf[8] = 2048;
              *&buf[10] = v22;
              _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "Send datagram checksum %uB/%lu", buf, 0x12u);
            }

            handlerCopy = v25;
            options = optionsCopy2;
            v16 = v23;
          }
        }
      }

      ++datagramsCopy;
      ++sizesCopy;
      --v15;
    }

    while (v15);
  }

  internal = self->_internal;
  if (internal->_isInvalidated)
  {
    os_unfair_lock_unlock(&internal->_writeLock);
    v29 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "writeDatagrams: connection already closed", buf, 2u);
    }

    goto LABEL_45;
  }

  v29 = [internal->_writeHandler copy];
  v30 = self->_internal;
  if (v30->_connected)
  {
    if ((v8 - 9) >= 0xFFFFFFF9 && !v30->_hasSentCompoundPacket)
    {
      v30->_hasSentCompoundPacket = 1;
      v31 = _IDSLinkPacketBufferCreate();
      v56 = 0xAAAAAAAAAAAAAAAALL;
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v32;
      *&buf[16] = v32;
      IDSByteBufferInitForWriteWithAllocatedSpace();
      IDSByteBufferWriteField();
      v31[2] = *&buf[16] - *v31;
      IDSByteBufferRelease();
      [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v31];
      sendingMetadata = self->_internal->_sendingMetadata;
      v34 = [MEMORY[0x1E696B098] valueWithPointer:v31];
      [(NSMutableArray *)sendingMetadata addObject:v34];

      [(IDSDatagramChannel *)self sendMetadata];
LABEL_35:
      v44 = self->_internal;
      if (v44->_operationMode)
      {
        [(IDSDatagramChannel *)self _writeToNWConnectionArrayOfDatagrams:datagrams datagramSizes:sizes datagramInfo:info datagramOptions:options datagramCount:v8 completionHandler:handlerCopy];
      }

      else
      {
        socketDescriptor = v44->_socketDescriptor;
        if (socketDescriptor == -1)
        {
          [(IDSDatagramChannel *)self _writeToOSChannelDatagrams:datagrams datagramSizes:sizes datagramInfo:info datagramOptions:options datagramCount:v8 completionHandler:handlerCopy];
        }

        else
        {
          [(IDSDatagramChannel *)self _writeToSocket:socketDescriptor datagrams:datagrams datagramSizes:sizes datagramInfo:info datagramOptions:options datagramCount:v8 completionHandler:handlerCopy];
        }
      }

      os_unfair_lock_unlock(&self->_internal->_writeLock);
      goto LABEL_45;
    }

    [(IDSDatagramChannel *)self sendMetadata];
    if (v8 <= 0)
    {
      v46 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "have no datagram to send to daemon", buf, 2u);
      }

      v42 = objc_alloc(MEMORY[0x1E696AEC0]);
      v43 = @"no datagram to send";
    }

    else
    {
      if (v8 < 9)
      {
        goto LABEL_35;
      }

      v41 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 8;
        _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, "we can't send more than %d datagrams using the compound channel", buf, 8u);
      }

      v42 = objc_alloc(MEMORY[0x1E696AEC0]);
      v43 = @"exceeded the maximum datagram count";
    }

    v47 = [v42 initWithFormat:v43];
    v48 = objc_alloc(MEMORY[0x1E695DF20]);
    v49 = [v48 initWithObjectsAndKeys:{v47, *MEMORY[0x1E696A578], 0}];
    v50 = objc_alloc(MEMORY[0x1E696ABC0]);
    v51 = [v50 initWithDomain:*MEMORY[0x1E69A4A18] code:1 userInfo:v49];
    sub_195A7FC78(handlerCopy, v29, v51, 0);
    os_unfair_lock_unlock(&self->_internal->_writeLock);

    goto LABEL_45;
  }

  os_unfair_lock_unlock(&v30->_writeLock);
  v35 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v35, OS_LOG_TYPE_DEFAULT, "writeDatagrams: not connected", buf, 2u);
  }

  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"not connected"];
  v37 = objc_alloc(MEMORY[0x1E695DF20]);
  v38 = [v37 initWithObjectsAndKeys:{v36, *MEMORY[0x1E696A578], 0}];
  v39 = objc_alloc(MEMORY[0x1E696ABC0]);
  v40 = [v39 initWithDomain:*MEMORY[0x1E69A4A18] code:6 userInfo:v38];
  sub_195A7FC78(handlerCopy, v29, v40, 0);

LABEL_45:
}

- (void)_writeDatagram:(const void *)datagram datagramSize:(unsigned int)size datagramInfo:(id)info options:(id *)options completionHandler:(id)handler
{
  infoCopy = info;
  datagramCopy = datagram;
  sizeCopy = size;
  optionsCopy = options;
  [(IDSDatagramChannel *)self writeArrayOfDatagrams:&datagramCopy datagramSizes:&sizeCopy datagramInfo:&infoCopy datagramOptions:&optionsCopy datagramCount:1 completionHandler:handler];
}

- (void)setEventHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "-setEventHandler called for %@", &v9, 0xCu);
  }

  v6 = [handlerCopy copy];
  internal = self->_internal;
  eventHandler = internal->_eventHandler;
  internal->_eventHandler = v6;
}

- (void)setReadHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "-setReadHandler called for %@", &v9, 0xCu);
  }

  v6 = [handlerCopy copy];
  internal = self->_internal;
  readHandler = internal->_readHandler;
  internal->_readHandler = v6;
}

- (void)setReadHandlerWithOptions:(id)options
{
  v11 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "-setReadHandlerWithOptions called for %@", &v9, 0xCu);
  }

  v6 = [optionsCopy copy];
  internal = self->_internal;
  readHandlerWithOptions = internal->_readHandlerWithOptions;
  internal->_readHandlerWithOptions = v6;
}

- (void)setWriteCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "-setWriteCompletionHandler called for %@", &v9, 0xCu);
  }

  v6 = [handlerCopy copy];
  internal = self->_internal;
  writeHandler = internal->_writeHandler;
  internal->_writeHandler = v6;
}

- (void)readyToRead
{
  internal = self->_internal;
  if (internal->_operationMode)
  {
    sub_195B409A0();
  }

  readHandler = internal->_readHandler;
  if (!internal->_readHandlerWithOptions)
  {
    if (!readHandler)
    {
      sub_195B409F8();
    }

    if (internal->_eventHandler)
    {
      goto LABEL_10;
    }

LABEL_14:
    sub_195B409CC();
  }

  if (!internal->_eventHandler)
  {
    goto LABEL_14;
  }

  if (!readHandler)
  {

    MEMORY[0x1EEE66B58](self, sel_readDatagramsWithCompletionHandler_);
    return;
  }

LABEL_10:

  MEMORY[0x1EEE66B58](self, sel_readDatagramWithCompletionHandler_);
}

- (void)scheduleRead
{
  v7 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal->_readHandler)
  {

    MEMORY[0x1EEE66B58](self, sel_readDatagramWithCompletionHandler_);
  }

  else if (internal->_readHandlerWithOptions)
  {

    MEMORY[0x1EEE66B58](self, sel_readDatagramsWithCompletionHandler_);
  }

  else
  {
    v4 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "<%@> does not have readHandler!", &v5, 0xCu);
    }
  }
}

- (void)sendMetadata
{
  v45 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal->_hasMetadata)
  {
    v4 = [(NSMutableArray *)internal->_sendingMetadata count];
    if (v4)
    {
      v5 = v4;
      v6 = self->_internal;
      if (v6->_pathEvaluator)
      {
        v7 = os_channel_available_slot_count();
        if (v7)
        {
          if (v5 <= v7)
          {
            v9 = v5;
          }

          else
          {
            v9 = v7;
            v10 = +[IDSTransportLog IDSDataChannels];
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218496;
              *&buf[4] = v5;
              *&buf[12] = 2048;
              *&buf[14] = v9;
              *&buf[22] = 2048;
              *&buf[24] = v9;
              _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "have metadata %lu to send to daemon but only %lu slots - sending just %lu", buf, 0x20u);
            }
          }

          v21 = 0;
          *&v8 = 138412546;
          v36 = v8;
          while (1)
          {
            v22 = [(NSMutableArray *)self->_internal->_sendingMetadata objectAtIndex:v21, v36];
            pointerValue = [v22 pointerValue];

            *&v24 = 0xAAAAAAAAAAAAAAAALL;
            *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v43 = v24;
            v44 = v24;
            *buf = v24;
            *&buf[16] = v24;
            os_channel_get_next_slot();
            v25 = *(pointerValue + 16);
            if (v25 <= *&buf[2])
            {
              *buf = 0;
              *&buf[2] = v25;
              memcpy(*&buf[16], *pointerValue, v25);
              os_channel_set_slot_properties();
              v28 = os_channel_advance_slot();
              if (v28)
              {
                v29 = v28;
                [(IDSDatagramChannel *)self osChannelInfoLog];
                v30 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *v38 = 67109120;
                  LODWORD(selfCopy) = v29;
                  _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "advance_slot failed for metadata write %d", v38, 8u);
                }
              }

              if (!self->_internal->_verboseFunctionalLogging)
              {
                goto LABEL_35;
              }

              v26 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v31 = *(pointerValue + 16);
                *v38 = v36;
                selfCopy = self;
                v40 = 2048;
                v41 = v31;
                _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "<%@> write details: metadataSize %ld", v38, 0x16u);
              }
            }

            else
            {
              v26 = +[IDSTransportLog IDSDataChannels];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = *(pointerValue + 16);
                *v38 = 134218240;
                selfCopy = v27;
                v40 = 2048;
                v41 = *&buf[2];
                _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "have metadata %lu to send to daemon but not enough bytes %lu in slot", v38, 0x16u);
              }
            }

LABEL_35:
            _IDSLinkPacketBufferRelease();
            if (v9 == ++v21)
            {
              v32 = os_channel_sync();
              if (v32)
              {
                v33 = v32;
                [(IDSDatagramChannel *)self osChannelInfoLog];
                v34 = +[IDSTransportLog IDSDataChannels];
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *&buf[4] = v33;
                  _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "os_channel_sync for TX failed %d", buf, 8u);
                }
              }

              goto LABEL_41;
            }
          }
        }

        [(IDSDatagramChannel *)self osChannelInfoLog];
        v20 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v5;
          _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "have metadata %lu to send to daemon but no slots", buf, 0xCu);
        }
      }

      else
      {
        if (!v6->_connection)
        {
          LODWORD(v9) = 0;
          goto LABEL_41;
        }

        if (v6->_connected)
        {
          v11 = 0;
          v12 = *MEMORY[0x1E6977E88];
          do
          {
            v13 = [(NSMutableArray *)self->_internal->_sendingMetadata objectAtIndex:v11];
            pointerValue2 = [v13 pointerValue];

            v15 = sub_195A7FB04(pointerValue2, 0);
            v16 = self->_internal;
            if (v16->_verboseFunctionalLogging)
            {
              v17 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = pointerValue2[2];
                *buf = 138412546;
                *&buf[4] = self;
                *&buf[12] = 2048;
                *&buf[14] = v18;
                _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "<%@> write details: metadataSize %ld", buf, 0x16u);
              }

              v16 = self->_internal;
            }

            connection = v16->_connection;
            completion[0] = MEMORY[0x1E69E9820];
            completion[1] = 3221225472;
            completion[2] = sub_195B04A6C;
            completion[3] = &unk_1E7442F08;
            completion[4] = self;
            nw_connection_send(connection, v15, v12, 1, completion);

            ++v11;
          }

          while (v5 != v11);
          LODWORD(v9) = v5;
LABEL_41:
          [(NSMutableArray *)self->_internal->_sendingMetadata removeObjectsInRange:0, v9];
        }

        else
        {
          v35 = +[IDSLogging IDSDataChannels];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = self;
            _os_log_impl(&dword_1959FF000, v35, OS_LOG_TYPE_DEFAULT, "<%@> sendMetadata: not connected yet - tearing down or waiting for -start", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_buildPacketBufferMetaData:(id *)data
{
  var2 = data->var2;
  IDSLinkPacketBufferAddBufferStart();
  *data->var0 = BYTE1(var2);
  data->var0[1] = var2;
}

- (void)setChannelPreferences:(id)preferences
{
  v146 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  intValue = 0;
  v135 = -1;
  intValue5 = 0;
  v5 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = preferencesCopy;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@> setChannelPreferences dictionary: %@", buf, 0x16u);
  }

  v6 = [preferencesCopy objectForKey:@"preference-pre-connection-data"];

  if (v6)
  {
    internal = self->_internal;
    if (!internal->_receivedPreConnectionData)
    {
      internal->_waitForPreConnectionDataForConnected = 1;
    }

    v8 = [preferencesCopy objectForKey:@"preference-pre-connection-data"];
    v9 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_internal->_waitForPreConnectionDataForConnected)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      *&buf[24] = v10;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferencePreConnectionDataKey - %@, _waitForPreConnectionDataForConnected? %@", buf, 0x20u);
    }

    v11 = self->_internal;
    if (!v11->_connected)
    {
      preConnectionData = v11->_preConnectionData;
      if (preConnectionData)
      {
        v11->_preConnectionData = 0;
      }

      v13 = [v8 copy];
      v14 = self->_internal;
      v15 = v14->_preConnectionData;
      v14->_preConnectionData = v13;

      v16 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%@> client channel connection is not ready. Wait to send preConnectionData", buf, 0xCu);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_131;
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = [preferencesCopy objectForKey:@"preference-needs-encryption-info"];
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v22 = [preferencesCopy objectForKey:@"preference-needs-force-update-encryption-info"];
    v23 = v22 | v6;

    v21 = v23 != 0;
  }

  v24 = [preferencesCopy objectForKey:@"preference-default-link-selection"];

  if (v24)
  {
    v25 = [preferencesCopy objectForKey:@"preference-default-link-selection"];
    intValue = [v25 intValue];

    v26 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = intValue;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceDefaultLinkSelectionKey - linkID:%d", buf, 0x12u);
    }

    v21 = 1;
  }

  v27 = [preferencesCopy objectForKey:@"preference-baseband-registration"];

  v28 = MEMORY[0x1E69A4A40];
  if (v27)
  {
    v29 = [preferencesCopy objectForKey:@"preference-baseband-registration"];
    v30 = [v29 objectForKey:*v28];
    intValue2 = [v30 intValue];

    v32 = [v29 objectForKey:@"baseband-registration-key"];
    unsignedIntValue = [v32 unsignedIntValue];

    v34 = [v29 objectForKey:@"baseband-notification-operation-key"];
    unsignedIntValue2 = [v34 unsignedIntValue];

    v36 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = intValue2;
      *&buf[18] = 1024;
      *&buf[20] = unsignedIntValue;
      *&buf[24] = 1024;
      *&buf[26] = unsignedIntValue2;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceBasebandRegistrationKey - linkID:%d, reg_key:%u registerOperation:%u", buf, 0x1Eu);
    }

    LODWORD(v133) = intValue2;

    v21 = 1;
  }

  else
  {
    unsignedIntValue = 0;
    LODWORD(v133) = 0;
    unsignedIntValue2 = 0;
  }

  LODWORD(v132) = unsignedIntValue2;
  v37 = [preferencesCopy objectForKey:@"preference-baseband-queue-flush"];

  if (v37)
  {
    v38 = [preferencesCopy objectForKey:@"preference-baseband-queue-flush"];
    v39 = [v38 objectForKey:*v28];
    LODWORD(v131) = [v39 intValue];

    v19 = [v38 objectForKey:@"preference-baseband-queue-flush-payload"];
    v40 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceBasebandQueueFlushKey - %@", buf, 0x16u);
    }

    v21 = 1;
  }

  else
  {
    v19 = 0;
    LODWORD(v131) = 0;
  }

  v41 = [preferencesCopy objectForKey:@"preference-discard-link-ids"];

  if (v41)
  {
    v127 = [preferencesCopy objectForKey:@"preference-discard-link-ids"];
    v42 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v127;
      _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceDiscardLinkIDsKey - %@", buf, 0x16u);
    }

    v21 = 1;
  }

  else
  {
    v127 = 0;
  }

  v43 = [preferencesCopy objectForKey:@"preference-update-qos"];

  if (v43)
  {
    v44 = [preferencesCopy objectForKey:@"preference-update-qos"];
    v45 = [v44 objectForKey:*v28];
    intValue3 = [v45 intValue];

    v46 = [v44 objectForKey:@"preference-update-qos-is-good"];
    unsignedIntValue3 = [v46 unsignedIntValue];
    v128 = unsignedIntValue3;

    v48 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = @"YES";
      *buf = 138412802;
      *&buf[4] = self;
      if (!unsignedIntValue3)
      {
        v49 = @"NO";
      }

      *&buf[12] = 1024;
      *&buf[14] = intValue3;
      *&buf[18] = 2112;
      *&buf[20] = v49;
      _os_log_impl(&dword_1959FF000, v48, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceUpdateQualityOfServiceKey - LinkID: %d, %@", buf, 0x1Cu);
    }

    v21 = 1;
  }

  else
  {
    v128 = 0;
    intValue3 = 0;
  }

  v50 = [preferencesCopy objectForKey:@"preference-query-information"];

  if (v50)
  {
    v51 = [preferencesCopy objectForKey:@"preference-query-information"];
    unsignedIntValue4 = [v51 unsignedIntValue];
    v135 = unsignedIntValue4;

    v53 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = unsignedIntValue4;
      _os_log_impl(&dword_1959FF000, v53, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceQueryInformationKey - queryType: %d", buf, 0x12u);
    }

    v122 = unsignedIntValue4 == 0;
    v21 = 1;
  }

  else
  {
    v122 = 0;
  }

  v54 = [preferencesCopy objectForKey:@"preference-max-bitrate"];

  if (v54)
  {
    v55 = [preferencesCopy objectForKey:@"preference-max-bitrate"];
    v56 = [v55 objectForKey:*v28];
    intValue4 = [v56 intValue];

    v58 = [v55 objectForKey:@"max-bitrate-key"];
    unsignedIntValue5 = [v58 unsignedIntValue];

    v59 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = unsignedIntValue5;
      *&buf[18] = 1024;
      *&buf[20] = intValue4;
      _os_log_impl(&dword_1959FF000, v59, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceSetMaxBitrateKey - maxBitrate: %u for LinkID: %d", buf, 0x18u);
    }

    v21 = 1;
  }

  else
  {
    intValue4 = 0;
    unsignedIntValue5 = 100000;
  }

  v123 = intValue4;
  v60 = [preferencesCopy objectForKey:@"debug-data-type-key"];

  v61 = v19;
  if (v60)
  {
    v62 = [preferencesCopy objectForKey:@"debug-data-type-key"];
    intValue5 = [v62 intValue];

    v124 = [preferencesCopy objectForKey:@"debug-data-key"];
    v21 = 1;
  }

  else
  {
    v124 = 0;
  }

  v63 = [preferencesCopy objectForKey:@"preference-remote-device-version-key"];

  if (v63)
  {
    v64 = [preferencesCopy objectForKey:@"preference-remote-device-version-key"];
    intValue6 = [v64 intValue];

    v66 = +[IDSTransportLog IDSDataChannels];
    v67 = 0x1E743D000;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = intValue6;
      _os_log_impl(&dword_1959FF000, v66, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceRemoteDeviceVersionKey - remoteDeviceVersion: %u", buf, 0x12u);
    }
  }

  else
  {
    if (!v21)
    {
      v18 = v127;
      v17 = v124;
      goto LABEL_131;
    }

    intValue6 = 0;
    v67 = 0x1E743D000uLL;
  }

  v68 = _IDSLinkPacketBufferCreate();
  v145 = 0xAAAAAAAAAAAAAAAALL;
  *&v69 = 0xAAAAAAAAAAAAAAAALL;
  *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v69;
  *&buf[16] = v69;
  v121 = v68;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall && (byte_1EAEDDA00 & 1) == 0)
  {
    byte_1EAEDDA00 = 1;
    v72 = getpid();
    LODWORD(v142) = bswap32(v72);
    v73 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412546;
      selfCopy12 = self;
      v139 = 1024;
      *v140 = v72;
      _os_log_impl(&dword_1959FF000, v73, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_ProcessIDKey - %d", v137, 0x12u);
    }

    IDSByteBufferWriteField();
  }

  if (intValue)
  {
    IDSByteBufferWriteField();
  }

  if (intValue6)
  {
    iDSDataChannels = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(iDSDataChannels, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412546;
      selfCopy12 = self;
      v139 = 1024;
      *v140 = intValue6;
      _os_log_impl(&dword_1959FF000, iDSDataChannels, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_RemoteDeviceVersionKey remoteDeviceVersion: %u", v137, 0x12u);
    }

    *v137 = bswap32(intValue6);
    IDSByteBufferWriteField();
  }

  if (unsignedIntValue)
  {
    v137[0] = v133;
    v137[1] = v132;
    v137[2] = HIBYTE(unsignedIntValue);
    v137[3] = BYTE2(unsignedIntValue);
    LOBYTE(selfCopy12) = BYTE1(unsignedIntValue);
    BYTE1(selfCopy12) = unsignedIntValue;
    IDSByteBufferWriteField();
  }

  v19 = v61;
  v18 = v127;
  v75 = v128;
  if (v61)
  {
    LOBYTE(v142) = 0;
    v76 = [v61 count];
    v77 = -1;
    if (v76 < 0xFF)
    {
      v77 = v76;
    }

    LOBYTE(v142) = v77;
    iDSDataChannels2 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(iDSDataChannels2, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412546;
      selfCopy12 = self;
      v139 = 1024;
      *v140 = v142;
      _os_log_impl(&dword_1959FF000, iDSDataChannels2, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_BasebandQueueFlushPayloadSizeKey %u", v137, 0x12u);
    }

    v79 = IDSByteBufferWriteField();
    MEMORY[0x1EEE9AC00](v79);
    v81 = v117 - v80;
    memset(v117 - v80, 170, v82);
    *v81 = v131;
    if (v142)
    {
      v117[2] = v117;
      v118 = v8;
      selfCopy4 = self;
      v120 = preferencesCopy;
      v83 = 0;
      v117[1] = v81;
      v84 = v81 + 1;
      v133 = *MEMORY[0x1E69A4AE8];
      v132 = *MEMORY[0x1E69A4AF0];
      v131 = *MEMORY[0x1E69A4AE0];
      v130 = *MEMORY[0x1E69A4AF8];
      v129 = *MEMORY[0x1E69A4AD8];
      do
      {
        v85 = [v19 objectAtIndexedSubscript:v83];
        v86 = [v85 objectForKey:v133];
        intValue7 = [v86 intValue];

        v88 = [v85 objectForKey:v132];
        v89 = v19;
        intValue8 = [v88 intValue];

        v91 = [v85 objectForKey:v131];
        intValue9 = [v91 intValue];

        v93 = [v85 objectForKey:v130];
        intValue10 = [v93 intValue];

        v95 = [v85 objectForKey:v129];
        intValue11 = [v95 intValue];

        *v84 = intValue7;
        v84[1] = HIBYTE(intValue8);
        v84[2] = BYTE2(intValue8);
        v84[3] = BYTE1(intValue8);
        v84[4] = intValue8;
        v19 = v89;
        v84[5] = intValue9;
        v84[6] = HIBYTE(intValue10);
        v84[7] = intValue10;
        v84[8] = HIBYTE(intValue11);
        v84[9] = intValue11;
        v84 += 10;

        ++v83;
      }

      while (v83 < v142);
      preferencesCopy = v120;
      self = selfCopy4;
      v8 = v118;
      v67 = 0x1E743D000uLL;
      v18 = v127;
    }

    IDSByteBufferWriteField();
    v75 = v128;
  }

  if (v18)
  {
    v143 = 0;
    v142 = 0;
    if ([v18 count])
    {
      v97 = 0;
      while (v97 != 10)
      {
        v98 = [v18 objectAtIndex:v97];
        *(&v142 + v97) = [v98 intValue];

        if ([v18 count] <= ++v97)
        {
          goto LABEL_99;
        }
      }

      iDSDataChannels3 = [*(v67 + 1160) IDSDataChannels];
      if (os_log_type_enabled(iDSDataChannels3, OS_LOG_TYPE_DEFAULT))
      {
        *v137 = 138412546;
        selfCopy12 = self;
        v139 = 1024;
        *v140 = 10;
        _os_log_impl(&dword_1959FF000, iDSDataChannels3, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_DiscardLinkIDsKey the maximum of links is %d", v137, 0x12u);
      }
    }

LABEL_99:
    IDSByteBufferWriteField();
    v75 = v128;
  }

  if (v8)
  {
    v100 = [v8 length];
    LOBYTE(v142) = v100;
    iDSDataChannels4 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(iDSDataChannels4, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412546;
      selfCopy12 = self;
      v139 = 1024;
      *v140 = v100;
      _os_log_impl(&dword_1959FF000, iDSDataChannels4, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_PreConnectionDataSizeKey %u", v137, 0x12u);
    }

    IDSByteBufferWriteField();
    iDSDataChannels5 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(iDSDataChannels5, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412546;
      selfCopy12 = self;
      v139 = 2112;
      *v140 = v8;
      _os_log_impl(&dword_1959FF000, iDSDataChannels5, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_PreConnectionDataKey %@", v137, 0x16u);
    }

    [v8 bytes];
    IDSByteBufferWriteField();
    v75 = v128;
  }

  v103 = intValue3;
  if (intValue3)
  {
    LOBYTE(v142) = intValue3;
    BYTE1(v142) = v75;
    iDSDataChannels6 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(iDSDataChannels6, OS_LOG_TYPE_DEFAULT))
    {
      v105 = @"YES";
      *v137 = 138412802;
      selfCopy12 = self;
      if (!v75)
      {
        v105 = @"NO";
      }

      v139 = 2112;
      *v140 = v105;
      *&v140[8] = 1024;
      v141 = v103;
      _os_log_impl(&dword_1959FF000, iDSDataChannels6, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_UpdateQoSIsGoodKey IsGood:%@ LinkID:%d", v137, 0x1Cu);
    }

    IDSByteBufferWriteField();
  }

  v106 = v123;
  if (v122)
  {
    IDSByteBufferWriteField();
    iDSDataChannels7 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(iDSDataChannels7, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412290;
      selfCopy12 = self;
      _os_log_impl(&dword_1959FF000, iDSDataChannels7, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_QueryRSSI", v137, 0xCu);
    }

    IDSByteBufferWriteField();
  }

  v108 = unsignedIntValue5;
  if (unsignedIntValue5 != 100000)
  {
    LOBYTE(v142) = v106;
    BYTE1(v142) = HIBYTE(unsignedIntValue5);
    BYTE2(v142) = BYTE2(unsignedIntValue5);
    BYTE3(v142) = BYTE1(unsignedIntValue5);
    BYTE4(v142) = unsignedIntValue5;
    iDSDataChannels8 = [*(v67 + 1160) IDSDataChannels];
    if (os_log_type_enabled(iDSDataChannels8, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412802;
      selfCopy12 = self;
      v139 = 1024;
      *v140 = v108;
      *&v140[4] = 1024;
      *&v140[6] = v106;
      _os_log_impl(&dword_1959FF000, iDSDataChannels8, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_MaxBitrateKey maxBitrate:%u LinkID:%d", v137, 0x18u);
    }

    IDSByteBufferWriteField();
  }

  v110 = [preferencesCopy objectForKey:@"preference-needs-encryption-info"];

  v17 = v124;
  if (v110)
  {
    LOBYTE(v142) = 1;
    v111 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412290;
      selfCopy12 = self;
      _os_log_impl(&dword_1959FF000, v111, OS_LOG_TYPE_DEFAULT, "<%@> IDSDataChannelPreferenceNeedsEncryptionInfoKey - we'll request the encryption info", v137, 0xCu);
    }

    IDSByteBufferWriteField();
  }

  v112 = [preferencesCopy objectForKey:@"preference-needs-force-update-encryption-info"];

  if (v112)
  {
    v113 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *v137 = 138412290;
      selfCopy12 = self;
      _os_log_impl(&dword_1959FF000, v113, OS_LOG_TYPE_DEFAULT, "<%@> kClientChannelMetadataType_ForceUpdateEncryptionInfoKey - we'll update the encryption info.", v137, 0xCu);
    }

    v137[0] = 1;
    IDSByteBufferWriteField();
  }

  if (v17)
  {
    IDSByteBufferWriteField();
    [v17 bytes];
    [v17 length];
    IDSByteBufferWriteField();
  }

  v114 = v121;
  v121[2] = *&buf[16] - *v121;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v114];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v116 = [MEMORY[0x1E696B098] valueWithPointer:v114];
  [(NSMutableArray *)sendingMetadata addObject:v116];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_131:
}

- ($8401F4BB0FBBAD626D053E4AC6536F2D)_setWiFiAssist:(BOOL)assist
{
  assistCopy = assist;
  v12 = *MEMORY[0x1E69E9840];
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (assistCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@>: setWiFiAssist: %@", buf, 0x16u);
  }

  v7 = _IDSLinkPacketBufferCreate();
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v8;
  *&buf[16] = v8;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  IDSByteBufferWriteField();
  if (*&buf[16] > v7->var0)
  {
    v7->var2 = *&buf[16] - v7->var0;
  }

  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v7];
  return v7;
}

- (void)setWiFiAssist:(BOOL)assist
{
  v4 = [(IDSDatagramChannel *)self _setWiFiAssist:assist];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v6 = [MEMORY[0x1E696B098] valueWithPointer:v4];
  [(NSMutableArray *)sendingMetadata addObject:v6];

  [(IDSDatagramChannel *)self sendMetadata];
  p_writeLock = &self->_internal->_writeLock;

  os_unfair_lock_unlock(p_writeLock);
}

- (void)startActiveProbingWithOptions:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:optionsCopy];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: startActiveProbingWithOptions: invalid probing Data, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: startActiveProbingWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v13 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = optionsCopy;
    v20 = 2048;
    v21 = [v6 length];
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "<%@>: startActiveProbingWithOptions: %@ size: %lu", &v16, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v15 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v15];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:
}

- (void)stopActiveProbingWithOptions:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:optionsCopy];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: stopActiveProbingWithOptions: invalid probing Data, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: stopActiveProbingWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v13 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = optionsCopy;
    v20 = 2048;
    v21 = [v6 length];
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "<%@>: stopActiveProbingWithOptions: %@ size: %lu", &v16, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v15 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v15];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:
}

- (void)flushLinkProbingStatusWithOptions:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:optionsCopy];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: flushLinkProbingStatusWithOptions: invalid probing options, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: flushLinkProbingStatusWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v13 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = optionsCopy;
    v20 = 2048;
    v21 = [v6 length];
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "<%@>: flushLinkProbingStatusWithOptions: %@ size: %lu", &v16, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v15 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v15];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:
}

- (void)queryStatusWithOptions:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:optionsCopy];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: queryStatusWithOptions: invalid query options, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: queryStatusWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v13 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = optionsCopy;
    v20 = 2048;
    v21 = [v6 length];
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "<%@>: queryStatusWithOptions: %@ size: %lu", &v16, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v15 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v15];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:
}

- (void)setUPlusOneMode:(BOOL)mode isInitiator:(BOOL)initiator
{
  initiatorCopy = initiator;
  modeCopy = mode;
  v21 = *MEMORY[0x1E69E9840];
  v7 = _IDSLinkPacketBufferCreate();
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v8;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v9 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (modeCopy)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138412802;
    selfCopy = self;
    v18 = v11;
    v17 = 2112;
    if (initiatorCopy)
    {
      v10 = @"YES";
    }

    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "<%@>: setUPlusOneMode: %@ isInitiator: %@", buf, 0x20u);
  }

  buf[0] = modeCopy;
  buf[1] = initiatorCopy;
  IDSByteBufferWriteField();
  if (*v7 < 0xAAAAAAAAAAAAAAAALL)
  {
    v7[2] = 0xAAAAAAAAAAAAAAAALL - *v7;
  }

  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v7];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v13 = [MEMORY[0x1E696B098] valueWithPointer:v7];
  [(NSMutableArray *)sendingMetadata addObject:v13];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
}

- (void)requestPMTUEvaluationForLinkID:(char)d
{
  dCopy = d;
  v15 = *MEMORY[0x1E69E9840];
  v5 = _IDSLinkPacketBufferCreate();
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v6;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v7 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 1024;
    v14 = dCopy;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "<%@>: requestPMTUEvaluationForLinkID: %d", buf, 0x12u);
  }

  IDSByteBufferWriteField();
  if (*v5 < 0xAAAAAAAAAAAAAAAALL)
  {
    v5[2] = 0xAAAAAAAAAAAAAAAALL - *v5;
  }

  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v5];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v9 = [MEMORY[0x1E696B098] valueWithPointer:v5];
  [(NSMutableArray *)sendingMetadata addObject:v9];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
}

- (void)startMKMRecoveryForParticipantIDs:(id)ds
{
  v33 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    v26 = 2112;
    v27 = dsCopy;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "<%@>: startMKMRecoveryForParticipantIDs: %@", buf, 0x16u);
  }

  if ([dsCopy count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = dsCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          *buf = [*(*(&v21 + 1) + 8 * i) unsignedLongLongValue];
          [v6 appendBytes:buf length:8];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v32 count:16];
      }

      while (v9);
    }

    if ([v6 length]<= 0x1000)
    {
      [v6 bytes];
      v14 = _IDSLinkPacketBufferCreate();
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v20 = v15;
      IDSByteBufferInitForWriteWithAllocatedSpace();
      v16 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v6 length];
        *buf = 138413058;
        *&buf[4] = self;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v6;
        v30 = 2048;
        v31 = v17;
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%@>: startMKMRecoveryForParticipantIDs: %@, %@ size: %lu", buf, 0x2Au);
      }

      [v6 length];
      IDSByteBufferWriteField();
      v14[2] = 0xAAAAAAAAAAAAAAAALL - *v14;
      IDSByteBufferRelease();
      [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v14];
      os_unfair_lock_lock(&self->_internal->_writeLock);
      sendingMetadata = self->_internal->_sendingMetadata;
      v19 = [MEMORY[0x1E696B098] valueWithPointer:v14];
      [(NSMutableArray *)sendingMetadata addObject:v19];

      [(IDSDatagramChannel *)self sendMetadata];
      os_unfair_lock_unlock(&self->_internal->_writeLock);
    }

    else
    {
      v12 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 length];
        *buf = 138412546;
        *&buf[4] = self;
        v26 = 2048;
        v27 = v13;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "<%@>: startMKMRecoveryForParticipantIDs: metadata size: %lu, greater than max allowed sent size, return", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "<%@>: startMKMRecoveryForParticipantIDs: invalid participantIDs size", buf, 0xCu);
    }
  }
}

- (void)requestSessionInfoWithOptions:(id)options
{
  v31[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:optionsCopy];
  v6 = v5;
  if (v5)
  {
    if ([v5 length] <= 0x1000)
    {
      [v6 bytes];
      v18 = _IDSLinkPacketBufferCreate();
      IDSByteBufferInitForWriteWithAllocatedSpace();
      v19 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412803;
        selfCopy = self;
        v24 = 2113;
        v25 = optionsCopy;
        v26 = 2048;
        v27 = [v6 length];
        _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "%@: requestSessionInfoWithOptions: %{private}@ size: %lu", buf, 0x20u);
      }

      [v6 length];
      IDSByteBufferWriteField();
      v18[2] = 0xAAAAAAAAAAAAAAAALL - *v18;
      IDSByteBufferRelease();
      [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v18];
      os_unfair_lock_lock(&self->_internal->_writeLock);
      sendingMetadata = self->_internal->_sendingMetadata;
      v21 = [MEMORY[0x1E696B098] valueWithPointer:v18];
      [(NSMutableArray *)sendingMetadata addObject:v21];

      [(IDSDatagramChannel *)self sendMetadata];
      os_unfair_lock_unlock(&self->_internal->_writeLock);
    }

    else if (self->_internal->_eventHandler)
    {
      v7 = objc_alloc(MEMORY[0x1E695DF20]);
      v8 = [v7 initWithObjectsAndKeys:{@"The serialized metadata was greater than the max slot size allowed to send over the channel", *MEMORY[0x1E696A588], 0}];
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v10 = [v9 initWithDomain:*MEMORY[0x1E69A4A18] code:8 userInfo:v8];
      eventHandler = self->_internal->_eventHandler;
      v28[0] = @"event-type";
      v28[1] = @"error-key";
      v29[0] = &unk_1F0A29B70;
      v29[1] = v10;
      v12 = MEMORY[0x1E695DF20];
      v13 = v29;
      v14 = v28;
LABEL_7:
      v17 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:2];
      eventHandler[2](eventHandler, v17);
    }
  }

  else if (self->_internal->_eventHandler)
  {
    v15 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v15 initWithObjectsAndKeys:{@"Could not serialize provided metadata.", *MEMORY[0x1E696A588], 0}];
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = [v16 initWithDomain:*MEMORY[0x1E69A4A18] code:8 userInfo:v8];
    eventHandler = self->_internal->_eventHandler;
    v30[0] = @"event-type";
    v30[1] = @"error-key";
    v31[0] = &unk_1F0A29B70;
    v31[1] = v10;
    v12 = MEMORY[0x1E695DF20];
    v13 = v31;
    v14 = v30;
    goto LABEL_7;
  }
}

- (void)requestStatsWithOptions:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [MEMORY[0x1E69A5410] serializeSessionInfoMetadata:optionsCopy];
  v6 = v5;
  if (!v5)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v8 = "<%@>: requestStatsWithOptions: invalid stats data, return";
      v9 = v7;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if ([v5 length] > 0x1000)
  {
    v7 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
      v8 = "<%@>: requestStatsWithOptions: serialized metadata size: %lu, greater than max allowed sent size, return";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v6 bytes];
  v11 = _IDSLinkPacketBufferCreate();
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v12;
  *&buf[16] = v12;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v13 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = optionsCopy;
    v20 = 2048;
    v21 = [v6 length];
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "<%@>: requestStatsWithOptions: %@ size: %lu", &v16, 0x20u);
  }

  [v6 length];
  IDSByteBufferWriteField();
  v11[2] = *&buf[16] - *v11;
  IDSByteBufferRelease();
  [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v11];
  os_unfair_lock_lock(&self->_internal->_writeLock);
  sendingMetadata = self->_internal->_sendingMetadata;
  v15 = [MEMORY[0x1E696B098] valueWithPointer:v11];
  [(NSMutableArray *)sendingMetadata addObject:v15];

  [(IDSDatagramChannel *)self sendMetadata];
  os_unfair_lock_unlock(&self->_internal->_writeLock);
LABEL_12:
}

- (void)_reportDictionary:(id)dictionary forKey:(unsigned __int8)key
{
  dictionaryCopy = dictionary;
  v6 = _IDSLinkPacketBufferCreate();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v7;
  IDSByteBufferInitForWriteWithAllocatedSpace();
  v8 = JWEncodeDictionary();

  if ([v8 length] <= (v6[1] - 3))
  {
    [v8 bytes];
    [v8 length];
    IDSByteBufferWriteField();
    v6[2] = 0xAAAAAAAAAAAAAAAALL - *v6;
    IDSByteBufferRelease();
    [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v6];
    os_unfair_lock_lock(&self->_internal->_writeLock);
    sendingMetadata = self->_internal->_sendingMetadata;
    v11 = [MEMORY[0x1E696B098] valueWithPointer:v6];
    [(NSMutableArray *)sendingMetadata addObject:v11];

    [(IDSDatagramChannel *)self sendMetadata];
    os_unfair_lock_unlock(&self->_internal->_writeLock);
  }

  else
  {
    v9 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B40A24();
    }
  }
}

- (void)reportMKIArrival:(id)arrival isLocallyGenerated:(BOOL)generated
{
  arrivalCopy = arrival;
  v7 = MEMORY[0x1E696AD98];
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v8 = [v7 numberWithDouble:*&qword_1EAEDBEF0 * mach_continuous_time()];
  v9 = dispatch_get_global_queue(-32768, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B07E9C;
  v12[3] = &unk_1E743EFD8;
  v12[4] = self;
  v13 = arrivalCopy;
  v14 = v8;
  generatedCopy = generated;
  v10 = v8;
  v11 = arrivalCopy;
  dispatch_async(v9, v12);
}

- (void)_reportMKIArrival:(id)arrival time:(id)time isLocallyGenerated:(BOOL)generated
{
  generatedCopy = generated;
  v21 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  uUIDString = [arrival UUIDString];
  v10 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = uUIDString;
    v19 = 2112;
    v20 = timeCopy;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%@: reportMKIArrival: mki %@ at %@", buf, 0x20u);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{generatedCopy, *MEMORY[0x1E69A4A50], *MEMORY[0x1E69A4A58], *MEMORY[0x1E69A4A28], timeCopy, uUIDString}];
  v14[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:3];

  [(IDSDatagramChannel *)self _reportDictionary:v12 forKey:80];
}

- (void)reportFirstIncomingPacketTimeForMKI:(id)i participantID:(id)d
{
  iCopy = i;
  dCopy = d;
  v8 = MEMORY[0x1E696AD98];
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v9 = [v8 numberWithDouble:*&qword_1EAEDBEF0 * mach_continuous_time()];
  v10 = dispatch_get_global_queue(-32768, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B08168;
  v14[3] = &unk_1E743EEE8;
  v14[4] = self;
  v15 = iCopy;
  v16 = v9;
  v17 = dCopy;
  v11 = dCopy;
  v12 = v9;
  v13 = iCopy;
  dispatch_async(v10, v14);
}

- (void)_reportFirstIncomingPacketTimeForMKI:(id)i time:(id)time participantID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  dCopy = d;
  uUIDString = [i UUIDString];
  v11 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v18 = 2112;
    v19 = uUIDString;
    v20 = 2112;
    v21 = timeCopy;
    v22 = 2048;
    unsignedLongLongValue = [dCopy unsignedLongLongValue];
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@: reportFirstIncomingPacketTimeForMKI: first incoming packet for mki %@ at %@ for participantID: %llu", buf, 0x2Au);
  }

  v12 = *MEMORY[0x1E69A4A58];
  v14[0] = *MEMORY[0x1E69A4A80];
  v14[1] = v12;
  v15[0] = timeCopy;
  v15[1] = uUIDString;
  v14[2] = *MEMORY[0x1E69A4A90];
  v15[2] = dCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [(IDSDatagramChannel *)self _reportDictionary:v13 forKey:78];
}

- (void)reportFirstOutgoingPacketTimeForMKI:(id)i participantID:(id)d
{
  iCopy = i;
  dCopy = d;
  v8 = MEMORY[0x1E696AD98];
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v9 = [v8 numberWithDouble:*&qword_1EAEDBEF0 * mach_continuous_time()];
  v10 = dispatch_get_global_queue(-32768, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B08434;
  v14[3] = &unk_1E743EEE8;
  v14[4] = self;
  v15 = iCopy;
  v16 = v9;
  v17 = dCopy;
  v11 = dCopy;
  v12 = v9;
  v13 = iCopy;
  dispatch_async(v10, v14);
}

- (void)_reportFirstOutgoingPacketTimeForMKI:(id)i time:(id)time participantID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  dCopy = d;
  uUIDString = [i UUIDString];
  v11 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v18 = 2112;
    v19 = uUIDString;
    v20 = 2112;
    v21 = timeCopy;
    v22 = 2048;
    unsignedLongLongValue = [dCopy unsignedLongLongValue];
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@: reportFirstOutgoingPacketTimeForMKI: first outgoing packet for mki %@ at %@ for participantID: %llu", buf, 0x2Au);
  }

  v12 = *MEMORY[0x1E69A4A58];
  v14[0] = *MEMORY[0x1E69A4A80];
  v14[1] = v12;
  v15[0] = timeCopy;
  v15[1] = uUIDString;
  v14[2] = *MEMORY[0x1E69A4A90];
  v15[2] = dCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [(IDSDatagramChannel *)self _reportDictionary:v13 forKey:79];
}

- (void)reportEvent:(id)event forLinkID:(unsigned __int8)d
{
  dCopy = d;
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E69A4A40];
  v6 = MEMORY[0x1E696AD98];
  eventCopy = event;
  v8 = [v6 numberWithUnsignedChar:dCopy];
  v10[1] = *MEMORY[0x1E69A4A20];
  v11[0] = v8;
  v11[1] = eventCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(IDSDatagramChannel *)self _reportDictionary:v9 forKey:81];
}

- (void)reportLastPacketReceivedTime:(double)time lastPacketSentTime:(double)sentTime linkID:(unsigned __int8)d
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = *MEMORY[0x1E69A4A40];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:d];
  v13[0] = v8;
  v12[1] = *MEMORY[0x1E69A4A30];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  v13[1] = v9;
  v12[2] = *MEMORY[0x1E69A4A38];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:sentTime];
  v13[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  [(IDSDatagramChannel *)self _reportDictionary:v11 forKey:83];
}

- (void)generateMetadataWithDatagramInfo:(id)info options:(id *)options currentDatagramCount:(unsigned __int8)count totalDatagramCount:(unsigned __int8)datagramCount byteBuffer:(id *)buffer
{
  v17 = *MEMORY[0x1E69E9840];
  if (options || info.var0)
  {
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    if (options)
    {
      var0 = options->var0;
      if ((options->var0 & 8) != 0)
      {
        IDSByteBufferWriteField();
        var0 = options->var0;
        if ((options->var0 & 1) == 0)
        {
LABEL_6:
          if ((var0 & 0x10) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

      else if ((var0 & 1) == 0)
      {
        goto LABEL_6;
      }

      *buf = bswap64(options->var1);
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 0x10) == 0)
      {
LABEL_7:
        if ((var0 & 2) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

LABEL_11:
      *buf = bswap32(options->var2) >> 16;
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 2) == 0)
      {
        goto LABEL_19;
      }

LABEL_12:
      p_var4 = &options->var4;
      if (options->var4 >= 1)
      {
        if (options->var4 >= 0xDu)
        {
          *p_var4 = 12;
        }

        IDSByteBufferWriteField();
        memset(buf, 170, sizeof(buf));
        v10 = *p_var4;
        if (v10 >= 1)
        {
          var5 = options->var5;
          v12 = buf;
          do
          {
            v13 = *var5++;
            *v12 = bswap32(v13) >> 16;
            v12 += 2;
            --v10;
          }

          while (v10);
        }

        IDSByteBufferWriteField();
        var0 = options->var0;
      }

LABEL_19:
      if ((var0 & 4) != 0)
      {
        buf[0] = 1;
        IDSByteBufferWriteField();
        var0 = options->var0;
        if ((options->var0 & 0x40) == 0)
        {
LABEL_21:
          if ((var0 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_33;
        }
      }

      else if ((var0 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      *buf = bswap32(options->var7) >> 16;
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 0x80) == 0)
      {
LABEL_22:
        if ((var0 & 0x100) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_34;
      }

LABEL_33:
      buf[0] = 1;
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 0x100) == 0)
      {
LABEL_23:
        if ((var0 & 0x40000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      }

LABEL_34:
      buf[0] = 1;
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 0x40000) == 0)
      {
LABEL_24:
        if ((var0 & 0x200) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

LABEL_35:
      *buf = *options->var13;
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 0x200) == 0)
      {
LABEL_25:
        if ((var0 & 0x400) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }

LABEL_36:
      *buf = bswap64(options->var10);
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 0x400) == 0)
      {
LABEL_26:
        if ((var0 & 0x8000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_38;
      }

LABEL_37:
      buf[0] = 1;
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 0x8000) == 0)
      {
LABEL_27:
        if ((var0 & 0x10000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_41;
      }

LABEL_38:
      v14 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        var12 = options->var12;
        *buf = 134217984;
        *&buf[4] = var12;
        _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "storing encryption sequence number: %llu (*Client -> IDSD)", buf, 0xCu);
      }

      *buf = bswap64(options->var12);
      IDSByteBufferWriteField();
      var0 = options->var0;
      if ((options->var0 & 0x10000) == 0)
      {
LABEL_28:
        if ((var0 & 0x20000) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

LABEL_41:
      buf[0] = 1;
      IDSByteBufferWriteField();
      if ((options->var0 & 0x20000) == 0)
      {
        return;
      }

LABEL_29:
      buf[0] = 1;
      IDSByteBufferWriteField();
    }
  }
}

- (void)osChannelInfoLog
{
  v15 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (internal)
  {
    if (internal->_osChannelRXRing && internal->_osChannelTXRing)
    {
      v4 = os_channel_available_slot_count();
      v5 = os_channel_available_slot_count();
      v6 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109376;
        *v13 = v4;
        *&v13[4] = 1024;
        *&v13[6] = v5;
        v7 = "osChannelInfoLog: os_channel rx slot count %u tx slot count %u";
        v8 = v6;
        v9 = 14;
LABEL_10:
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      }
    }

    else
    {
      v6 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        osChannelTXRing = self->_internal->_osChannelTXRing;
        osChannelRXRing = self->_internal->_osChannelRXRing;
        v12 = 134218240;
        *v13 = osChannelRXRing;
        *&v13[8] = 2048;
        v14 = osChannelTXRing;
        v7 = "osChannelInfoLog: os_channel ring is NULL (_osChannelRXRing %p, _osChannelTXRing %p)";
        v8 = v6;
        v9 = 22;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v7 = "osChannelInfoLog: _internal is NULL.";
      v8 = v6;
      v9 = 2;
      goto LABEL_10;
    }
  }
}

- (void)_schedulePeriodicTasks
{
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "LinkQuality: scheduling sync...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = dispatch_time(0, 3000000000);
  v5 = [IDSDatagramChannel getIDSDataChannelsQueue]_0(v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B08EB4;
  block[3] = &unk_1E743EE18;
  objc_copyWeak(&v7, buf);
  dispatch_after(v4, v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_periodicTasksTick
{
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "LinkQuality: sync tick...", v4, 2u);
  }

  if (!self->_internal->_isInvalidated)
  {
    [(IDSDatagramChannel *)self _periodicTasks];
    [(IDSDatagramChannel *)self _schedulePeriodicTasks];
  }
}

- (void)_periodicTasks
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Performing periodic tasks...", buf, 2u);
  }

  v4 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Flushing packet log...", buf, 2u);
  }

  internal = self->_internal;
  packetLog = internal->_packetLog;
  if (packetLog)
  {
    [(IDSObjCPacketLog *)packetLog flush];
    internal = self->_internal;
  }

  if (internal->_shouldCollectMetrics)
  {
    [(IDSDatagramChannel *)self _syncLinkQualityMeasurement];
    internal = self->_internal;
  }

  if (internal->_shouldForcePathMTUEvaluationPeriodically)
  {
    connectedLinks = [(IDSDatagramChannel *)self connectedLinks];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [connectedLinks countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(connectedLinks);
          }

          -[IDSDatagramChannel requestPMTUEvaluationForLinkID:](self, "requestPMTUEvaluationForLinkID:", [*(*(&v12 + 1) + 8 * v11++) linkID]);
        }

        while (v9 != v11);
        v9 = [connectedLinks countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)_sendDataChunkToDaemon:(id)daemon offset:(unint64_t)offset length:(unint64_t)length withKey:(unsigned __int8)key
{
  daemonCopy = daemon;
  if (length < 0x401)
  {
    v10 = _IDSLinkPacketBufferCreateWithSize();
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v11;
    IDSByteBufferInitForWriteWithAllocatedSpace();
    [daemonCopy bytes];
    IDSByteBufferWriteField();
    v10[2] = 0xAAAAAAAAAAAAAAAALL - *v10;
    IDSByteBufferRelease();
    [(IDSDatagramChannel *)self _buildPacketBufferMetaData:v10];
    os_unfair_lock_lock(&self->_internal->_writeLock);
    sendingMetadata = self->_internal->_sendingMetadata;
    v13 = [MEMORY[0x1E696B098] valueWithPointer:v10];
    [(NSMutableArray *)sendingMetadata addObject:v13];

    [(IDSDatagramChannel *)self sendMetadata];
    os_unfair_lock_unlock(&self->_internal->_writeLock);
  }

  else
  {
    v9 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B40A9C(daemonCopy);
    }
  }
}

- (void)_sendChunkedDataToDaemon:(id)daemon withKey:(unsigned __int8)key shouldTerminateWithEmptyData:(BOOL)data
{
  dataCopy = data;
  keyCopy = key;
  daemonCopy = daemon;
  if ([daemonCopy length])
  {
    if ([daemonCopy length])
    {
      v8 = 0;
      do
      {
        v9 = [daemonCopy length];
        if ((v9 - v8) >= 0x400)
        {
          v10 = 1024;
        }

        else
        {
          v10 = v9 - v8;
        }

        [(IDSDatagramChannel *)self _sendDataChunkToDaemon:daemonCopy offset:v8 length:v10 withKey:keyCopy];
        v8 += v10;
      }

      while ([daemonCopy length] != v8);
    }

    if (dataCopy)
    {
      data = [MEMORY[0x1E695DEF0] data];
      [(IDSDatagramChannel *)self _sendDataChunkToDaemon:data offset:0 length:0 withKey:keyCopy];
    }
  }
}

- (void)_syncLinkQualityMeasurement
{
  v3 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "LinkQuality: generating delta...", buf, 2u);
  }

  objc_initWeak(buf, self);
  internal = self->_internal;
  qualityMeasurer = internal->_qualityMeasurer;
  qualityMeasurementSyncToken = internal->_qualityMeasurementSyncToken;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195B09594;
  v12[3] = &unk_1E7442F30;
  objc_copyWeak(&v13, buf);
  v12[4] = self;
  [(IDSLinksQualityMeasurer *)qualityMeasurer deltaSince:qualityMeasurementSyncToken completionHandler:v12];
  v7 = self->_internal;
  linkEngine = v7->_linkEngine;
  linkEngineQualityMeasurementSyncToken = v7->_linkEngineQualityMeasurementSyncToken;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B096C8;
  v10[3] = &unk_1E7442F58;
  objc_copyWeak(&v11, buf);
  v10[4] = self;
  [(IDSDataChannelLinkEngineHandle *)linkEngine qualityDeltaSince:linkEngineQualityMeasurementSyncToken completionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)sendPacketLogData:(id)data
{
  v7 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [dataCopy length];
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "sendPacketLogData: packet log payload size: %d", v6, 8u);
  }

  [(IDSDatagramChannel *)self _sendChunkedDataToDaemon:dataCopy withKey:86 shouldTerminateWithEmptyData:0];
}

@end