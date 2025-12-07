@interface MCSession
+ (id)stringForMCSessionSendDataMode:(int64_t)mode;
+ (id)stringForSessionState:(int64_t)state;
- (BOOL)isEncryptionPreferenceCompatible:(int64_t)compatible;
- (BOOL)sendData:(NSData *)data toPeers:(NSArray *)peerIDs withMode:(MCSessionSendDataMode)mode error:(NSError *)error;
- (MCSession)init;
- (MCSession)initWithPeer:(MCPeerID *)myPeerID;
- (MCSession)initWithPeer:(MCPeerID *)myPeerID securityIdentity:(NSArray *)identity encryptionPreference:(MCEncryptionPreference)encryptionPreference;
- (NSArray)connectedPeers;
- (NSOutputStream)startStreamWithName:(NSString *)streamName toPeer:(MCPeerID *)peerID error:(NSError *)error;
- (NSProgress)sendResourceAtURL:(NSURL *)resourceURL withName:(NSString *)resourceName toPeer:(MCPeerID *)peerID withCompletionHandler:(void *)completionHandler;
- (id)description;
- (id)stringForEncryptionPreference:(int64_t)preference;
- (id)syncDetailedDescription;
- (int64_t)connectedInterfacesForPeer:(id)peer;
- (os_state_data_s)syncStateCapture;
- (unint64_t)syncConnectedPeersCount;
- (void)cancelConnectPeer:(MCPeerID *)peerID;
- (void)cancelIncomingStream:(id)stream fromPeer:(id)peer;
- (void)cancelOutgoingStream:(id)stream toPeer:(id)peer;
- (void)closeDirectConnectionsWithPeer:(id)peer;
- (void)connectPeer:(MCPeerID *)peerID withNearbyConnectionData:(NSData *)data;
- (void)dealloc;
- (void)disconnect;
- (void)logSessionInfo;
- (void)nearbyConnectionDataForPeer:(MCPeerID *)peerID withCompletionHandler:(void *)completionHandler;
- (void)peerDidDeclineInvitation:(id)invitation;
- (void)setAWDLDisabled:(BOOL)disabled;
- (void)setHeartbeatTimeout:(unint64_t)timeout;
- (void)setICETimeoutForced:(BOOL)forced;
- (void)setPreferNCMOverEthernet:(BOOL)ethernet;
- (void)startConnectionWithIndirectPID:(unsigned int)d;
- (void)syncCancelIncomingStream:(id)stream fromPeer:(id)peer;
- (void)syncCancelOutgoingStream:(id)stream toPeer:(id)peer;
- (void)syncCloseIncomingStream:(id)stream forPeer:(id)peer state:(id)state error:(id)error reason:(int)reason shouldTriggerCancelProgress:(BOOL)progress;
- (void)syncCloseOutgoingStream:(id)stream forPeer:(id)peer state:(id)state error:(id)error shouldTriggerCancelProgress:(BOOL)progress;
- (void)syncCloseStreamsForPeer:(id)peer;
- (void)syncConnectPeer:(id)peer withConnectionData:(id)data;
- (void)syncGetConnectionDataForPeerState:(id)state completionHandler:(id)handler;
- (void)syncHandleNetworkEvent:(id *)event pid:(unsigned int)pid freeEventWhenDone:(BOOL *)done;
- (void)syncHandleXDataDataPacket:(char *)packet packetSize:(int)size forPeer:(id)peer state:(id)state;
- (void)syncLogConnectedPeers;
- (void)syncLogMaxConnectedPeers;
- (void)syncPeer:(id)peer changeStateTo:(int64_t)to shouldForceCallback:(BOOL)callback;
- (void)syncSendData:(id)data toPeers:(id)peers withDataMode:(int64_t)mode;
- (void)syncSendXDataConnectionBlobPushToPID:(unsigned int)d connectionBlob:(id)blob;
- (void)syncSendXDataPeerIDPushToPID:(unsigned int)d;
- (void)syncSendXDataStreamCloseFromReceiverToPID:(unsigned int)d streamID:(unsigned int)iD closeReason:(unsigned __int16)reason;
- (void)syncSendXDataStreamCloseFromSenderToPID:(unsigned int)d streamID:(unsigned int)iD closeReason:(unsigned __int16)reason;
- (void)syncSendXDataStreamOpenResponseToPID:(unsigned int)d withRequestID:(unsigned int)iD streamID:(unsigned int)streamID;
- (void)syncStartStreamWithName:(id)name toPeer:(id)peer mcFD:(int)d isResource:(BOOL)resource;
@end

@implementation MCSession

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  myPeerID = [(MCSession *)self myPeerID];
  securityIdentity = [(MCSession *)self securityIdentity];
  v8 = [(MCSession *)self stringForEncryptionPreference:[(MCSession *)self encryptionPreference]];
  connectedPeers = [(MCSession *)self connectedPeers];
  [(MCSession *)self delegate];
  v10 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p MyPeerID = %@ SecurityIdentity = %@ EncryptionPreference = %@ ConnectedPeers = %@ Delegate = <%@: %p>>", v5, self, myPeerID, securityIdentity, v8, connectedPeers, NSStringFromClass(v10), -[MCSession delegate](self, "delegate")];
}

- (id)stringForEncryptionPreference:(int64_t)preference
{
  if (preference > 2)
  {
    return @"?";
  }

  else
  {
    return *(&off_278B44128 + preference);
  }
}

- (void)syncHandleXDataDataPacket:(char *)packet packetSize:(int)size forPeer:(id)peer state:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (size - 4);
  if (size <= 4)
  {
    v7 = mcs_log(self, a2);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v19[0]) = 0;
    v8 = "No content.";
    v9 = v7;
    v10 = 2;
LABEL_13:
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, v8, v19, v10);
    return;
  }

  v12 = bswap32(*packet);
  incomingStreams = [state incomingStreams];
  v14 = [incomingStreams objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", v12)}];
  if (!v14)
  {
    v18 = mcs_log(0, v15);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19[0] = 67109120;
    v19[1] = v12;
    v8 = "Stream %u not found.";
    v9 = v18;
    v10 = 8;
    goto LABEL_13;
  }

  v16 = v14;
  if ([v14 state] == 2 || objc_msgSend(v16, "state") == 3)
  {
    [objc_msgSend(v16 "incomingBuffer")];
    if ([v16 sourceSuspended])
    {
      [v16 setSourceSuspended:0];
      source = [v16 source];

      dispatch_resume(source);
    }
  }
}

- (void)syncSendXDataStreamOpenResponseToPID:(unsigned int)d withRequestID:(unsigned int)iD streamID:(unsigned int)streamID
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = mcs_log(self, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    dCopy2 = d;
    v21 = 1024;
    iDCopy = iD;
    v23 = 1024;
    streamIDCopy = streamID;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Streaming: sending XDataStreamOpenResponse to peer[%08X] requestID[%08X] streamID[%08X].", buf, 0x14u);
  }

  v10 = malloc_type_malloc(0xCuLL, 0x158A16C7uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 201326741;
    v10[4] = HIBYTE(iD);
    v10[5] = BYTE2(iD);
    v10[6] = BYTE1(iD);
    v10[7] = iD;
    v10[8] = HIBYTE(streamID);
    v10[9] = BYTE2(streamID);
    v10[10] = BYTE1(streamID);
    v10[11] = streamID;
    *buf = 0;
    v12 = AGPSessionSendTo(self->_agpSession, &dCopy, 1, v10, 12, buf, 0, 0xAu, 1u, 0);
    if (v12)
    {
      v14 = mcs_log(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v11);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, 12);
    v17 = mcs_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
    }
  }
}

- (void)syncSendXDataStreamCloseFromSenderToPID:(unsigned int)d streamID:(unsigned int)iD closeReason:(unsigned __int16)reason
{
  reasonCopy = reason;
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = mcs_log(self, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    dCopy2 = d;
    v21 = 1024;
    iDCopy = iD;
    v23 = 1024;
    v24 = reasonCopy;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Streaming: sending XDataStreamCloseFromSender to peer[%08X] streamID[%08X] closeReason[%d].", buf, 0x14u);
  }

  v10 = malloc_type_malloc(0xAuLL, 0xA8F8C591uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 167772318;
    v10[4] = HIBYTE(iD);
    v10[5] = BYTE2(iD);
    v10[6] = BYTE1(iD);
    v10[7] = iD;
    v10[8] = BYTE1(reasonCopy);
    v10[9] = reasonCopy;
    *buf = 0;
    v12 = AGPSessionSendTo(self->_agpSession, &dCopy, 1, v10, 10, buf, 0, 0xAu, 1u, 0);
    if (v12)
    {
      v14 = mcs_log(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v11);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, 10);
    v17 = mcs_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:];
    }
  }
}

- (void)syncSendXDataStreamCloseFromReceiverToPID:(unsigned int)d streamID:(unsigned int)iD closeReason:(unsigned __int16)reason
{
  reasonCopy = reason;
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = mcs_log(self, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    dCopy2 = d;
    v21 = 1024;
    iDCopy = iD;
    v23 = 1024;
    v24 = reasonCopy;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Streaming: sending XDataStreamCloseFromReceiver to peer[%08X] streamID[%08X] closeReason[%d].", buf, 0x14u);
  }

  v10 = malloc_type_malloc(0xAuLL, 0x2117244AuLL);
  if (v10)
  {
    v11 = v10;
    *v10 = 167772319;
    v10[4] = HIBYTE(iD);
    v10[5] = BYTE2(iD);
    v10[6] = BYTE1(iD);
    v10[7] = iD;
    v10[8] = BYTE1(reasonCopy);
    v10[9] = reasonCopy;
    *buf = 0;
    v12 = AGPSessionSendTo(self->_agpSession, &dCopy, 1, v10, 10, buf, 0, 0xAu, 1u, 0);
    if (v12)
    {
      v14 = mcs_log(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v11);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, 10);
    v17 = mcs_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:];
    }
  }
}

- (void)syncSendXDataPeerIDPushToPID:(unsigned int)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = mcs_log(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    dCopy2 = d;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "XData: pushing own peerID to non-neighbor peer[%08X].", buf, 8u);
  }

  serializedRepresentation = [(MCPeerID *)[(MCSession *)self myPeerID] serializedRepresentation];
  v7 = [serializedRepresentation length] + 4;
  v8 = malloc_type_malloc(v7, 0xCA25E3ECuLL);
  if (v8)
  {
    v9 = v8;
    *v8 = 168;
    v8[2] = HIBYTE(v7);
    v8[3] = v7;
    memcpy(v8 + 4, [serializedRepresentation bytes], objc_msgSend(serializedRepresentation, "length"));
    *buf = 0;
    v10 = AGPSessionSendTo(self->_agpSession, &dCopy, 1, v9, v7, buf, 0, 0xAu, 1u, 0);
    if (v10)
    {
      v12 = mcs_log(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v9);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, v7);
    v15 = mcs_log(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataPeerIDPushToPID:];
    }
  }
}

- (void)syncSendXDataConnectionBlobPushToPID:(unsigned int)d connectionBlob:(id)blob
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = mcs_log(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    dCopy2 = d;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "XData: pushing connection data to non-neighbor peer[%08X].", buf, 8u);
  }

  v8 = [blob length] + 4;
  v9 = malloc_type_malloc(v8, 0x24C57CE6uLL);
  if (v9)
  {
    v10 = v9;
    *v9 = 169;
    v9[2] = HIBYTE(v8);
    v9[3] = v8;
    memcpy(v9 + 4, [blob bytes], objc_msgSend(blob, "length"));
    *buf = 0;
    v11 = AGPSessionSendTo(self->_agpSession, &dCopy, 1, v10, v8, buf, 0, 0xAu, 1u, 0);
    if (v11)
    {
      v13 = mcs_log(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
      }
    }

    free(v10);
  }

  else
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, v8);
    v16 = mcs_log(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataPeerIDPushToPID:];
    }
  }
}

- (void)syncCloseIncomingStream:(id)stream forPeer:(id)peer state:(id)state error:(id)error reason:(int)reason shouldTriggerCancelProgress:(BOOL)progress
{
  progressCopy = progress;
  v33 = *MEMORY[0x277D85DE8];
  v15 = mcs_log(self, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    streamCopy = stream;
    v27 = 2112;
    peerCopy = peer;
    v29 = 2112;
    stateCopy = state;
    v31 = 2112;
    errorCopy = error;
    _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Close incoming stream[%@] peer[%@] peerState[%@] error[%@].", buf, 0x2Au);
  }

  [stream setState:4];
  if ([stream source])
  {
    if ([stream sourceSuspended])
    {
      dispatch_resume([stream source]);
    }

    dispatch_source_cancel([stream source]);
  }

  if ([stream url])
  {
    if (progressCopy)
    {
      [objc_msgSend(stream "progress")];
    }

    if (!error)
    {
      if (reason == 1)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Resource transfer cancelled." forKey:*MEMORY[0x277CCA450]];
        v19 = v17;
        v20 = 5;
      }

      else
      {
        if (!reason)
        {
          [objc_msgSend(stream "progress")];
          v16 = [stream url];
          error = 0;
LABEL_18:
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __92__MCSession_syncCloseIncomingStream_forPeer_state_error_reason_shouldTriggerCancelProgress___block_invoke;
          block[3] = &unk_278B43D00;
          block[4] = self;
          block[5] = stream;
          block[6] = peer;
          block[7] = v16;
          block[8] = error;
          dispatch_async(callbackQueue, block);
          [objc_msgSend(stream "observer")];
          [stream setObserver:0];
          goto LABEL_19;
        }

        v21 = MEMORY[0x277CCA9B8];
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Resource transfer interrupted." forKey:*MEMORY[0x277CCA450]];
        v19 = v21;
        v20 = 0;
      }

      error = [v19 errorWithDomain:@"MCSession" code:v20 userInfo:v18];
    }

    v16 = 0;
    goto LABEL_18;
  }

LABEL_19:
  incomingStreams = [state incomingStreams];
  [incomingStreams removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", objc_msgSend(stream, "streamID"))}];
  [objc_msgSend(state "incomingStreams")];
}

void __92__MCSession_syncCloseIncomingStream_forPeer_state_error_reason_shouldTriggerCancelProgress___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = 1;
  v2 = [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v9 == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = mcs_log(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) privateDelegate];
    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 64);
    *buf = 138413314;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = v9;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Resource from [%@]. Interrupted callback pd(%@) d(%@) prop(%d) error[%@].", buf, 0x30u);
  }
}

- (void)syncCloseOutgoingStream:(id)stream forPeer:(id)peer state:(id)state error:(id)error shouldTriggerCancelProgress:(BOOL)progress
{
  progressCopy = progress;
  [stream setState:{4, peer}];
  if ([stream url])
  {
    if (progressCopy)
    {
      [objc_msgSend(stream "progress")];
    }

    if ([stream completionHandler])
    {
      completionHandler = [stream completionHandler];
      [stream setCompletionHandler:0];
      callbackQueue = self->_callbackQueue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __85__MCSession_syncCloseOutgoingStream_forPeer_state_error_shouldTriggerCancelProgress___block_invoke;
      v15[3] = &unk_278B43D28;
      v15[4] = error;
      v15[5] = completionHandler;
      dispatch_async(callbackQueue, v15);
    }

    if ([stream urlDownloader])
    {
      if ([objc_msgSend(objc_msgSend(stream "urlDownloader")] != 3)
      {
        [objc_msgSend(objc_msgSend(stream "urlDownloader")];
      }

      [stream setUrlDownloader:0];
    }

    [objc_msgSend(stream "observer")];
    [stream setObserver:0];
  }

  else if ([stream source])
  {
    if ([stream sourceSuspended])
    {
      dispatch_resume([stream source]);
    }

    dispatch_source_cancel([stream source]);
  }

  outgoingStreams = [state outgoingStreams];
  [outgoingStreams removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", objc_msgSend(stream, "streamID"))}];
  [objc_msgSend(state "outgoingStreams")];
}

void __85__MCSession_syncCloseOutgoingStream_forPeer_state_error_shouldTriggerCancelProgress___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 40);
}

- (void)syncCloseStreamsForPeer:(id)peer
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableDictionary *)self->_peerStates objectForKey:?];
  if (v5)
  {
    v7 = v5;
    v8 = [objc_msgSend(v5 "incomingStreams")];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Peer no longer connected.", *MEMORY[0x277CCA450])}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [objc_msgSend(v7 "incomingStreams")];
            if (v15)
            {
              [(MCSession *)self syncCloseIncomingStream:v15 forPeer:peer state:v7 error:v9 reason:2 shouldTriggerCancelProgress:1];
            }
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    v16 = [objc_msgSend(v7 "outgoingStreams")];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [objc_msgSend(v7 "incomingStreams")];
            if (v22)
            {
              [(MCSession *)self syncCloseOutgoingStream:v22 forPeer:peer state:v7 error:v9 shouldTriggerCancelProgress:1];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v23 = mcs_log(0, v6);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      displayName = [peer displayName];
      _os_log_impl(&dword_239FB7000, v23, OS_LOG_TYPE_DEFAULT, "No peerState object for peer [%@].", buf, 0xCu);
    }
  }
}

- (id)syncDetailedDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0;
  NSAppendPrintF(&v20, "\n");
  NSAppendPrintF(&v20, "MCSession\n");
  NSAppendPrintF(&v20, "---------\n");
  if ([(MCSession *)self sessionID])
  {
    sessionID = [(MCSession *)self sessionID];
  }

  else
  {
    sessionID = &stru_284D24468;
  }

  NSAppendPrintF(&v20, "Session ID:                                    %@\n", sessionID);
  NSAppendPrintF(&v20, "Local Peer ID:                                 %@\n", [(MCPeerID *)[(MCSession *)self myPeerID] displayNameAndPID]);
  NSAppendPrintF(&v20, "Encryption Preference:                         %@\n", [(MCSession *)self stringForEncryptionPreference:[(MCSession *)self encryptionPreference]]);
  securityIdentity = [(MCSession *)self securityIdentity];
  v5 = "yes";
  if (!securityIdentity)
  {
    v5 = "no";
  }

  NSAppendPrintF(&v20, "Security Identity:                             %s\n", v5);
  NSAppendPrintF(&v20, "Peers:                                         %d\n", [(NSMutableDictionary *)[(MCSession *)self peerStates] count]);
  NSAppendPrintF(&v20, "Connected Peers:                               %d\n", [(MCSession *)self syncConnectedPeersCount]);
  NSAppendPrintF(&v20, "Max Peers:                                     %d\n", [(MCSession *)self maxPeers]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  peerStates = [(MCSession *)self peerStates];
  v7 = [(NSMutableDictionary *)peerStates countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(peerStates);
        }

        NSAppendPrintF(&v20, "                                               %@\n", [-[NSMutableDictionary objectForKey:](-[MCSession peerStates](self "peerStates")]);
      }

      while (v8 != v10);
      v8 = [(NSMutableDictionary *)peerStates countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v11 = GCKSessionCopyDetailedDescription([(MCSession *)self gckSession]);
  if (v11)
  {
    v12 = v11;
    NSAppendPrintF(&v20, "\n");
    NSAppendPrintF(&v20, "%@", v12);
    CFRelease(v12);
  }

  v13 = AGPSessionCopyDetailedDescription([(MCSession *)self agpSession]);
  if (v13)
  {
    v14 = v13;
    NSAppendPrintF(&v20, "\n");
    NSAppendPrintF(&v20, "%@", v14);
    CFRelease(v14);
  }

  return v20;
}

- (os_state_data_s)syncStateCapture
{
  syncDetailedDescription = [(MCSession *)self syncDetailedDescription];
  if (!syncDetailedDescription)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:syncDetailedDescription format:200 options:0 error:0];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 length];
  v6 = malloc_type_calloc(1uLL, v5 + 200, 0x1000040BEF03554uLL);
  v7 = v6;
  if (v6)
  {
    v6->var0 = 1;
    v6->var1.var1 = v5;
    __strlcpy_chk();
    memcpy(v7->var4, [v4 bytes], v5);
  }

  return v7;
}

- (void)startConnectionWithIndirectPID:(unsigned int)d
{
  v15 = 0;
  v14 = 1350;
  v5 = GCKSessionPrepareConnection(self->_gckSession, *&d, &v15, &v14);
  if ((v5 & 0x80000000) != 0)
  {
    v11 = mcs_log(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MCSession startConnectionWithIndirectPID:];
    }
  }

  else
  {
    encryptionPreference = [(MCSession *)self encryptionPreference];
    v8 = [(MCSession *)self securityIdentity]!= 0;
    v9 = [MCSessionPeerConnectionData connectionDataSegmentWithEncryptionPreference:encryptionPreference identitySet:v8 gckSessionConnectionDataBytes:v15 gckSessionConnectionDataLength:v14];
    free(v15);
    syncQueue = self->_syncQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__MCSession_startConnectionWithIndirectPID___block_invoke;
    v12[3] = &unk_278B43D50;
    dCopy = d;
    v12[4] = self;
    v12[5] = v9;
    dispatch_async(syncQueue, v12);
  }
}

- (void)syncCancelIncomingStream:(id)stream fromPeer:(id)peer
{
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Resource transfer cancelled.", *MEMORY[0x277CCA450])}];
  v8 = [(NSMutableDictionary *)self->_peerStates objectForKey:peer];
  -[MCSession syncSendXDataStreamCloseFromReceiverToPID:streamID:closeReason:](self, "syncSendXDataStreamCloseFromReceiverToPID:streamID:closeReason:", [peer pid], objc_msgSend(stream, "streamID"), 1);

  [(MCSession *)self syncCloseIncomingStream:stream forPeer:peer state:v8 error:v7 reason:1 shouldTriggerCancelProgress:0];
}

- (void)cancelIncomingStream:(id)stream fromPeer:(id)peer
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MCSession_cancelIncomingStream_fromPeer___block_invoke;
  block[3] = &unk_278B43C88;
  block[4] = self;
  block[5] = stream;
  block[6] = peer;
  dispatch_async(syncQueue, block);
}

- (void)syncCancelOutgoingStream:(id)stream toPeer:(id)peer
{
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Resource transfer cancelled.", *MEMORY[0x277CCA450])}];
  v8 = [(NSMutableDictionary *)self->_peerStates objectForKey:peer];
  -[MCSession syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:](self, "syncSendXDataStreamCloseFromSenderToPID:streamID:closeReason:", [peer pid], objc_msgSend(stream, "streamID"), 1);

  [(MCSession *)self syncCloseOutgoingStream:stream forPeer:peer state:v8 error:v7 shouldTriggerCancelProgress:0];
}

- (void)cancelOutgoingStream:(id)stream toPeer:(id)peer
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MCSession_cancelOutgoingStream_toPeer___block_invoke;
  block[3] = &unk_278B43C88;
  block[4] = self;
  block[5] = stream;
  block[6] = peer;
  dispatch_async(syncQueue, block);
}

- (unint64_t)syncConnectedPeersCount
{
  v14 = *MEMORY[0x277D85DE8];
  allValues = [(NSMutableDictionary *)self->_peerStates allValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(allValues);
      }

      if ([*(*(&v9 + 1) + 8 * i) state] == 2)
      {
        ++v5;
      }
    }

    v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (void)syncPeer:(id)peer changeStateTo:(int64_t)to shouldForceCallback:(BOOL)callback
{
  callbackCopy = callback;
  v29 = *MEMORY[0x277D85DE8];
  v9 = [(NSMutableDictionary *)self->_peerStates objectForKey:?];
  if (v9)
  {
    v11 = v9;
    state = [v9 state];
    v14 = mcs_log(state, v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      *buf = 138412802;
      displayName = [peer displayName];
      v25 = 2112;
      v26 = [MCSession stringForSessionState:state];
      v27 = 2112;
      v28 = [MCSession stringForSessionState:to];
      _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "PeerID [%@] change state from [%@] to [%@].", buf, 0x20u);
    }

    if (state != to)
    {
      goto LABEL_8;
    }

    v17 = mcs_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MCSession stringForSessionState:to];
      *buf = 138412290;
      displayName = v18;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "Peer already in state [%@]", buf, 0xCu);
    }

    if (callbackCopy)
    {
LABEL_8:
      if (to)
      {
        [v11 setState:to];
      }

      else
      {
        peerCopy = peer;
        -[NSMutableDictionary removeObjectForKey:](self->_peerIDMap, "removeObjectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(peer, "pid")}]);
        [(NSMutableDictionary *)self->_peerStates removeObjectForKey:peer];
      }

LABEL_15:
      callbackQueue = self->_callbackQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __56__MCSession_syncPeer_changeStateTo_shouldForceCallback___block_invoke;
      v22[3] = &unk_278B43D78;
      v22[4] = self;
      v22[5] = peer;
      v22[6] = to;
      v22[7] = state;
      dispatch_async(callbackQueue, v22);
      if (to)
      {
        if (to == 2)
        {
          [(MCSession *)self setMaxPeers:[(MCSession *)self maxPeers]+ 1];
          [(MCSession *)self syncLogConnectedPeers];
        }
      }

      else if (![(MCSession *)self syncConnectedPeersCount])
      {
        [(MCSession *)self syncLogMaxConnectedPeers];
        [(MCSession *)self setMaxPeers:0];
      }
    }
  }

  else
  {
    if (callbackCopy)
    {
      state = 0;
      goto LABEL_15;
    }

    v19 = mcs_log(0, v10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      displayName = [peer displayName];
      v25 = 2112;
      v26 = [MCSession stringForSessionState:to];
      _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "No peerState for peerID [%@], newState [%@]. Will not callback.", buf, 0x16u);
    }
  }
}

void __56__MCSession_syncPeer_changeStateTo_shouldForceCallback___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = 1;
  v2 = [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v10 == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = mcs_log(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [MCSession stringForSessionState:*(a1 + 56)];
    v7 = [MCSession stringForSessionState:*(a1 + 48)];
    v8 = [*(a1 + 32) privateDelegate];
    v9 = [*(a1 + 32) delegate];
    *buf = 138413570;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Peer [%@] changed state from [%@] to [%@]; pd(%@) d(%@) prop(%d).", buf, 0x3Au);
  }
}

- (void)syncHandleNetworkEvent:(id *)event pid:(unsigned int)pid freeEventWhenDone:(BOOL *)done
{
  v6 = *&pid;
  v250 = *MEMORY[0x277D85DE8];
  v9 = 0x277CCA000uLL;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:pid];
  v11 = [(NSMutableDictionary *)self->_peerIDMap objectForKey:v10];
  v13 = mcs_log(v11, v12);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_30:
    v37 = [(NSMutableDictionary *)self->_connectionPendingPeerEvents objectForKey:v10];
    if (!v37)
    {
      var0 = event->var0;
      if (event->var0 != 5)
      {
        if (var0 == 2)
        {
          v54 = mcs_log(0, v38);
          if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *v243 = 67109120;
          *&v243[4] = v6;
          v55 = "No peerID, no event queue for participant [%08X], peer is already disconnected.Ignoring this disconnect event.";
          goto LABEL_55;
        }

        if (var0)
        {
          v58 = mcs_log(0, v38);
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v59 = GCKEventName(event->var0);
          *v243 = 67109378;
          *&v243[4] = v6;
          *&v243[8] = 2080;
          *&v243[10] = v59;
          v55 = "No peerID, no event queue for participant [%08X]. %s is unexpected at this point - please file a bug in MultipeerConnectivity if you see this message and something goes wrong.";
          v56 = v58;
          v57 = 18;
          goto LABEL_58;
        }
      }

      -[NSMutableDictionary setObject:forKey:](self->_connectionPendingPeerEvents, "setObject:forKey:", [MEMORY[0x277CBEB18] array], v10);
      [(MCSession *)self syncSendXDataPeerIDPushToPID:v6];
      v37 = [(MCPeerID *)self->_myPeerID pid];
      if (v37 > v6)
      {
        global_queue = dispatch_get_global_queue(0, 0);
        v240[0] = MEMORY[0x277D85DD0];
        v240[1] = 3221225472;
        v240[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke;
        v240[3] = &unk_278B43DA0;
        v240[4] = self;
        v241 = v6;
        dispatch_async(global_queue, v240);
      }
    }

    if (event->var0 == 2)
    {
      v44 = [(NSMutableDictionary *)self->_connectionPendingPeerEvents objectForKey:v10];
      v234 = 0u;
      v235 = 0u;
      v232 = 0u;
      v233 = 0u;
      v45 = [v44 countByEnumeratingWithState:&v232 objects:v248 count:16];
      if (v45)
      {
        v46 = *v233;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v233 != v46)
            {
              objc_enumerationMutation(v44);
            }

            free([*(*(&v232 + 1) + 8 * i) pointerValue]);
          }

          v45 = [v44 countByEnumeratingWithState:&v232 objects:v248 count:16];
        }

        while (v45);
      }

      [(NSMutableDictionary *)self->_connectionPendingPeerEvents removeObjectForKey:v10];
    }

    else if (event->var0 == 5)
    {
      var1 = event->var1;
      if (*var1 == 168)
      {
        var2 = event->var2;
        if (var2 > 3)
        {
          v60 = *(var1 + 1);
          v61 = __rev16(v60);
          if (var2 >= bswap32(v60) >> 16)
          {
            v72 = -[MCPeerID initWithSerializedRepresentation:]([MCPeerID alloc], "initWithSerializedRepresentation:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:var1 + 4 length:v61 - 4 freeWhenDone:0]);
            [(NSMutableDictionary *)self->_peerIDMap setObject:v72 forKey:v10];
            v73 = [[MCSessionPeerState alloc] initWithPeer:v72];
            [(MCSessionPeerState *)v73 setCertificateDecision:2];
            v74 = [(NSMutableDictionary *)self->_peerStates setObject:v73 forKey:v72];
            v76 = mcs_log(v74, v75);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              state = [(MCSessionPeerState *)v73 state];
              *v243 = 67109120;
              *&v243[4] = state;
              _os_log_impl(&dword_239FB7000, v76, OS_LOG_TYPE_DEFAULT, "Indirectly connected - dipatching callback (current state = %d).", v243, 8u);
            }

            v78 = [(NSMutableDictionary *)self->_connectionPendingPeerEvents objectForKey:v10];
            v80 = mcs_log(v78, v79);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v81 = [v78 count];
              *v243 = 134218240;
              *&v243[4] = v81;
              *&v243[12] = 1024;
              *&v243[14] = v6;
              _os_log_impl(&dword_239FB7000, v80, OS_LOG_TYPE_DEFAULT, "Processing %lu saved events for pid[%08X].", v243, 0x12u);
            }

            v238 = 0u;
            v239 = 0u;
            v236 = 0u;
            v237 = 0u;
            v82 = [v78 countByEnumeratingWithState:&v236 objects:v249 count:16];
            if (v82)
            {
              v83 = *v237;
              do
              {
                for (j = 0; j != v82; ++j)
                {
                  if (*v237 != v83)
                  {
                    objc_enumerationMutation(v78);
                  }

                  pointerValue = [*(*(&v236 + 1) + 8 * j) pointerValue];
                  [(MCSession *)self syncHandleNetworkEvent:pointerValue pid:v6 freeEventWhenDone:0];
                  free(pointerValue);
                }

                v82 = [v78 countByEnumeratingWithState:&v236 objects:v249 count:16];
              }

              while (v82);
            }

            [(NSMutableDictionary *)self->_connectionPendingPeerEvents removeObjectForKey:v10];
          }

          else
          {
            v62 = mcs_log(v37, v38);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
            }
          }
        }

        else
        {
          v41 = mcs_log(v37, v38);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
          }
        }
      }
    }

    else
    {
      v48 = [(NSMutableDictionary *)self->_connectionPendingPeerEvents objectForKey:v10];
      v49 = [v48 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", event)}];
      v51 = mcs_log(v49, v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = event->var0;
        if (v52 > 6)
        {
          v53 = "?";
        }

        else
        {
          v53 = off_278B44140[v52];
        }

        v63 = [v48 count];
        *v243 = 136315906;
        *&v243[4] = v53;
        *&v243[12] = 2048;
        *&v243[14] = event;
        *&v243[22] = 1024;
        *&v243[24] = v6;
        *&v243[28] = 2048;
        *v244 = v63;
        _os_log_impl(&dword_239FB7000, v51, OS_LOG_TYPE_DEFAULT, "Saved GCK event [%s] ([%p]) from pid[%08X] (%lu total saved).", v243, 0x26u);
      }

      if (done)
      {
        *done = 0;
      }
    }

    return;
  }

  v27 = event->var0;
  if (v27 > 6)
  {
    v28 = "?";
  }

  else
  {
    v28 = off_278B44140[v27];
  }

  v35 = event->var2;
  var3 = event->var3;
  *v243 = 136316162;
  *&v243[4] = v28;
  *&v243[12] = 1024;
  *&v243[14] = v35;
  *&v243[18] = 1024;
  *&v243[20] = var3;
  *&v243[24] = 1024;
  *&v243[26] = v6;
  *v244 = 2112;
  *&v244[2] = [v11 displayNameAndPID];
  _os_log_debug_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEBUG, "Got GCK event [%s] size=%d status=%d from %08X (peer[%@]).", v243, 0x28u);
  v9 = 0x277CCA000;
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_3:
  v14 = event->var0;
  if (event->var0 <= 2)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        [(MCSession *)self syncPeer:v11 changeStateTo:0 shouldForceCallback:0];
      }

      else if (v14 == 2)
      {
        [(MCSession *)self syncCloseStreamsForPeer:v11];
        [(MCSession *)self syncPeer:v11 changeStateTo:0 shouldForceCallback:0];
      }
    }

    else
    {
      [(MCSession *)self syncPeer:v11 changeStateTo:2 shouldForceCallback:0];
    }

    return;
  }

  switch(v14)
  {
    case 3:
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:event->var1 length:event->var2];
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_406;
      block[3] = &unk_278B43C88;
      block[4] = self;
      block[5] = v19;
      block[6] = v11;
      v21 = block;
      v22 = callbackQueue;
LABEL_15:
      dispatch_async(v22, v21);
      return;
    case 5:
      v23 = [(NSMutableDictionary *)self->_peerStates objectForKey:v11];
      p_var2 = &event->var2;
      if (event->var2 <= 3)
      {
        v26 = mcs_log(v23, v24);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
        }

        return;
      }

      v29 = v23;
      v30 = event->var1;
      v31 = *v30;
      if ((v31 & 0x80000000) == 0)
      {
        [MCSession syncHandleXDataDataPacket:"syncHandleXDataDataPacket:packetSize:forPeer:state:" packetSize:v30 forPeer:? state:?];
        return;
      }

      v64 = mcs_log(v23, v24);
      v65 = v31 & 0x7F;
      v66 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
      if (v66)
      {
        v68 = XDataControlTypeName(v65, v67);
        *v243 = 136315138;
        *&v243[4] = v68;
        _os_log_impl(&dword_239FB7000, v64, OS_LOG_TYPE_DEFAULT, "Xdata type %s.", v243, 0xCu);
      }

      if (v65 > 30)
      {
        switch(v65)
        {
          case 0x1F:
            if (*p_var2 <= 9)
            {
              v88 = mcs_log(v66, v67);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
              }

              return;
            }

            if (*p_var2 < bswap32(*(v30 + 1)) >> 16)
            {
              v95 = mcs_log(v66, v67);
              if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
              {
                [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
              }

              return;
            }

            v106 = bswap32(*(v30 + 1));
            v107 = [*(v9 + 2992) numberWithUnsignedLong:v106];
            v108 = [objc_msgSend(v29 "outgoingStreams")];
            v110 = v108;
            if (v108)
            {
              streamID = [v108 streamID];
              if (v106 != streamID)
              {
                v154 = mcs_log(streamID, v112);
                if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                {
                  [MCSession syncHandleNetworkEvent:v110 pid:? freeEventWhenDone:?];
                }

                return;
              }

              v113 = __rev16(*(v30 + 4));
              if ([v110 state] == 3)
              {
                v114 = [v110 setState:4];
                v116 = mcs_log(v114, v115);
                if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                {
                  *v243 = 67109120;
                  *&v243[4] = v113;
                  _os_log_impl(&dword_239FB7000, v116, OS_LOG_TYPE_DEFAULT, "Stream close done reason(%d).", v243, 8u);
                }

                if ([v110 url] && objc_msgSend(v110, "completionHandler"))
                {
                  if (v113)
                  {
                    if (v113 == 1)
                    {
                      v117 = @"Resource transfer cancelled.";
                      v118 = 5;
                    }

                    else
                    {
                      v118 = 0;
                      v117 = @"Resource transfer interrupted.";
                    }

                    [objc_msgSend(v110 "progress")];
                    v209 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:v118 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v117, *MEMORY[0x277CCA450])}];
                  }

                  else
                  {
                    v209 = 0;
                  }

                  completionHandler = [v110 completionHandler];
                  [v110 setCompletionHandler:0];
                  if (completionHandler)
                  {
                    v211 = self->_callbackQueue;
                    v220[0] = MEMORY[0x277D85DD0];
                    v220[1] = 3221225472;
                    v220[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_430;
                    v220[3] = &unk_278B43D28;
                    v220[4] = v209;
                    v220[5] = completionHandler;
                    dispatch_async(v211, v220);
                  }
                }

                [objc_msgSend(v29 "outgoingStreams")];
                [objc_msgSend(v29 "outgoingStreams")];
                return;
              }

              state2 = [v110 state];
              if (state2 == 2)
              {
                [v110 setState:3];
                v179 = [(MCSession *)self syncSendXDataStreamCloseFromSenderToPID:v6 streamID:v106 closeReason:v113];
                v181 = mcs_log(v179, v180);
                if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                {
                  name = [v110 name];
                  *v243 = 138412546;
                  *&v243[4] = name;
                  *&v243[12] = 1024;
                  *&v243[14] = v106;
                  _os_log_impl(&dword_239FB7000, v181, OS_LOG_TYPE_DEFAULT, "Streaming: Got close from receiver for stream[%@] id[%08X].", v243, 0x12u);
                }

                if ([v110 sourceSuspended])
                {
                  dispatch_resume([v110 source]);
                }

                dispatch_source_cancel([v110 source]);
                [v110 setState:4];
                if ([v110 progress])
                {
                  [objc_msgSend(v110 "progress")];
                }

                [objc_msgSend(v29 "outgoingStreams")];
                [objc_msgSend(v29 "outgoingStreams")];
                return;
              }

              v54 = mcs_log(state2, v178);
              if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              state3 = [v110 state];
              *v243 = 67109120;
              *&v243[4] = state3;
              v55 = "Can't close outgoing stream with state %u != open.";
            }

            else
            {
              v54 = mcs_log(0, v109);
              if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              *v243 = 67109120;
              *&v243[4] = v106;
              v55 = "Can't close nonexistent outgoing stream [%08X].";
            }

            goto LABEL_55;
          case 0x28:
            v91 = mcs_log(v66, v67);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
            }

            return;
          case 0x29:
            if (*p_var2 > 3)
            {
              v97 = *(v30 + 1);
              v98 = __rev16(v97);
              if (*p_var2 >= bswap32(v97) >> 16)
              {
                v129 = -[MCSessionPeerConnectionData initWithConnectionDataBlob:]([MCSessionPeerConnectionData alloc], "initWithConnectionDataBlob:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v30 + 4 length:v98 - 4 freeWhenDone:0]);
                if (v129)
                {
                  v130 = [(MCSession *)self encryptionPreference]!= MCEncryptionNone && [(MCSessionPeerConnectionData *)v129 encryptionPreference]!= 2;
                  v22 = dispatch_get_global_queue(0, 0);
                  v217[0] = MEMORY[0x277D85DD0];
                  v217[1] = 3221225472;
                  v217[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_431;
                  v217[3] = &unk_278B43E90;
                  v218 = v6;
                  v217[4] = self;
                  v217[5] = v129;
                  v219 = v130;
                  v21 = v217;
                  goto LABEL_15;
                }

                v149 = mcs_log(0, v128);
                if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                {
                  [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
                }
              }

              else
              {
                v99 = mcs_log(v66, v67);
                if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                {
                  [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
                }
              }
            }

            else
            {
              v86 = mcs_log(v66, v67);
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
              }
            }

            return;
        }
      }

      else
      {
        switch(v65)
        {
          case 0x14:
            if (*p_var2 <= 12)
            {
              v87 = mcs_log(v66, v67);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
                [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
              }

              return;
            }

            v214 = bswap32(*(v30 + 1));
            v92 = *(v30 + 1);
            v93 = __rev16(v92);
            if (*p_var2 >= bswap32(v92) >> 16)
            {
              v213 = *(v30 + 2);
              v101 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v30 + 12 length:(v93 - 12) encoding:4];
              v102 = [objc_msgSend(v29 "incomingStreams")];
              if (!v102)
              {
                if (v30[1])
                {
                  [MEMORY[0x277CCAA00] defaultManager];
                  uTF8String = [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"resource.XXXXXXXXXXXXXXXX"] UTF8String];
                  v165 = strdup(uTF8String);
                  if (!v165)
                  {
                    v193 = mcs_log(0, v166);
                    if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                    {
                      [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
                    }

                    return;
                  }

                  v167 = v165;
                  v212 = mkstemp(v165);
                  v168 = [MEMORY[0x277CBEBC0] fileURLWithPath:objc_msgSend(MEMORY[0x277CCACA8] isDirectory:{"stringWithUTF8String:", v167), 0}];
                  free(v167);
                  v171 = mcs_log(v169, v170);
                  v172 = os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT);
                  if (v172)
                  {
                    *v243 = 138412290;
                    *&v243[4] = v168;
                    _os_log_impl(&dword_239FB7000, v171, OS_LOG_TYPE_DEFAULT, "Got resource (temp url = %@).", v243, 0xCu);
                  }

                  if (v212 == -1)
                  {
                    v194 = mcs_log(v172, v173);
                    if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
                    {
                      [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
                    }

                    return;
                  }

                  v174 = fcntl(v212, 3, 0);
                  if (v174 != -1)
                  {
                    fcntl(v212, 4, v174 | 4u);
                  }

                  fcntl(v212, 73, 1);
                  v175 = objc_alloc_init(MCSessionStream);
                  [(MCSessionStream *)v175 setName:v101];
                  [(MCSessionStream *)v175 setState:2];
                  [(MCSessionStream *)v175 setPeerID:v11];
                  -[MCSessionStream setStreamID:](v175, "setStreamID:", [v29 newStreamID]);
                  [(MCSessionStream *)v175 setFd:v212];
                  [(MCSessionStream *)v175 setUrl:v168];
                  if (bswap32(v213))
                  {
                    v176 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:?];
                  }

                  else
                  {
                    [(MCSessionStream *)v175 setProgressUnbounded:1];
                    v176 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:10000];
                  }

                  [(MCSessionStream *)v175 setProgress:v176];
                  [(NSProgress *)[(MCSessionStream *)v175 progress] setPausable:0];
                  v195 = [MCResourceProgressObserver alloc];
                  name2 = [(MCSessionStream *)v175 name];
                  progress = [(MCSessionStream *)v175 progress];
                  v230[0] = MEMORY[0x277D85DD0];
                  v230[1] = 3221225472;
                  v230[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_421;
                  v230[3] = &unk_278B43C88;
                  v230[4] = self;
                  v230[5] = v175;
                  v230[6] = v11;
                  v198 = [(MCResourceProgressObserver *)v195 initWithName:name2 progress:progress cancelHandler:v230];
                  [(MCSessionStream *)v175 setObserver:v198];

                  [(MCSession *)self syncSendXDataStreamOpenResponseToPID:v6 withRequestID:v214 streamID:[(MCSessionStream *)v175 streamID]];
                  [objc_msgSend(v29 "incomingStreams")];
                  v199 = [objc_msgSend(v29 "incomingStreams")];
                  v201 = mcs_log(v199, v200);
                  if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                  {
                    progress2 = [(MCSessionStream *)v175 progress];
                    progress3 = [(MCSessionStream *)v175 progress];
                    totalUnitCount = [(NSProgress *)[(MCSessionStream *)v175 progress] totalUnitCount];
                    *v243 = 67110402;
                    *&v243[4] = v214;
                    *&v243[8] = 2112;
                    *&v243[10] = v101;
                    *&v243[18] = 2112;
                    *&v243[20] = v11;
                    *&v243[28] = 2112;
                    *v244 = progress2;
                    *&v244[8] = 2048;
                    v245 = progress3;
                    v246 = 2048;
                    v247 = totalUnitCount;
                    _os_log_impl(&dword_239FB7000, v201, OS_LOG_TYPE_DEFAULT, "Stream open request [%u] resource [%@] peer[%@] progress[%@]@[%p] size(%lld) - dispatching callback.", v243, 0x3Au);
                  }

                  v205 = self->_callbackQueue;
                  v229[0] = MEMORY[0x277D85DD0];
                  v229[1] = 3221225472;
                  v229[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_422;
                  v229[3] = &unk_278B43DC8;
                  v229[4] = self;
                  v229[5] = v101;
                  v229[6] = v11;
                  v229[7] = v175;
                  dispatch_async(v205, v229);
                }

                else
                {
                  v151 = pipe(v242);
                  if (v151)
                  {
                    v153 = mcs_log(v151, v152);
                    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                    {
                      [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
                    }

                    [(MCSession *)self syncSendXDataStreamOpenResponseToPID:v6 withRequestID:v214 streamID:0x80000000];
                    return;
                  }

                  v186 = v242[1];
                  v187 = _CFReadStreamCreateFromFileDescriptor();
                  v188 = fcntl(v186, 3, 0);
                  if (v188 != -1)
                  {
                    fcntl(v186, 4, v188 | 4u);
                  }

                  fcntl(v186, 73, 1);
                  v175 = objc_alloc_init(MCSessionStream);
                  [(MCSessionStream *)v175 setName:v101];
                  [(MCSessionStream *)v175 setState:2];
                  [(MCSessionStream *)v175 setPeerID:v11];
                  -[MCSessionStream setStreamID:](v175, "setStreamID:", [v29 newStreamID]);
                  [(MCSessionStream *)v175 setFd:v186];
                  [(MCSession *)self syncSendXDataStreamOpenResponseToPID:v6 withRequestID:v214 streamID:[(MCSessionStream *)v175 streamID]];
                  [objc_msgSend(v29 "incomingStreams")];
                  v189 = [objc_msgSend(v29 "incomingStreams")];
                  v191 = mcs_log(v189, v190);
                  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                  {
                    *v243 = 67109634;
                    *&v243[4] = v214;
                    *&v243[8] = 2112;
                    *&v243[10] = v101;
                    *&v243[18] = 2112;
                    *&v243[20] = v11;
                    _os_log_impl(&dword_239FB7000, v191, OS_LOG_TYPE_DEFAULT, "Stream open request [%u] stream [%@] peer[%@]. Dispatching callback.", v243, 0x1Cu);
                  }

                  v192 = self->_callbackQueue;
                  v228[0] = MEMORY[0x277D85DD0];
                  v228[1] = 3221225472;
                  v228[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_423;
                  v228[3] = &unk_278B43DC8;
                  v228[4] = self;
                  v228[5] = v187;
                  v228[6] = v101;
                  v228[7] = v11;
                  dispatch_async(v192, v228);
                }

                v206 = [(MCSessionStream *)v175 fd];
                v175->_source = dispatch_source_create(MEMORY[0x277D85D50], v206, 0, self->_syncQueue);
                -[MCSessionStream setIncomingBuffer:](v175, "setIncomingBuffer:", [MEMORY[0x277CBEB28] data]);
                source = [(MCSessionStream *)v175 source];
                v226[0] = MEMORY[0x277D85DD0];
                v226[1] = 3221225472;
                v226[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_424;
                v226[3] = &unk_278B43E18;
                v226[4] = v175;
                v226[5] = self;
                v227 = v6;
                v226[6] = v11;
                v226[7] = v29;
                dispatch_source_set_event_handler(source, v226);
                source2 = [(MCSessionStream *)v175 source];
                v225[0] = MEMORY[0x277D85DD0];
                v225[1] = 3221225472;
                v225[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_425;
                v225[3] = &unk_278B43DF0;
                v225[4] = v175;
                dispatch_source_set_cancel_handler(source2, v225);
                [(MCSessionStream *)v175 setSourceSuspended:1];
                return;
              }

              v104 = mcs_log(v102, v103);
              if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
              {
                uTF8String2 = [v101 UTF8String];
                *v243 = 136315138;
                *&v243[4] = uTF8String2;
                _os_log_impl(&dword_239FB7000, v104, OS_LOG_TYPE_DEFAULT, "Stream open request - stream already exists %s.", v243, 0xCu);
              }
            }

            else
            {
              v94 = mcs_log(v66, v67);
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
              }
            }

            [(MCSession *)self syncSendXDataStreamOpenResponseToPID:v6 withRequestID:v214 streamID:0x80000000];
            return;
          case 0x15:
            if (*p_var2 > 11)
            {
              if (*p_var2 >= bswap32(*(v30 + 1)) >> 16)
              {
                v131 = *(v30 + 2);
                v132 = [*(v9 + 2992) numberWithUnsignedLong:bswap32(*(v30 + 1))];
                v133 = bswap32(v131);
                v134 = [*(v9 + 2992) numberWithUnsignedLong:v133];
                v135 = [objc_msgSend(v29 "outgoingStreamRequests")];
                v137 = v135;
                if (v135)
                {
                  state4 = [v135 state];
                  v139 = state4 == 1;
                  v141 = mcs_log(state4, v140);
                  v142 = v141;
                  if (v139)
                  {
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                    {
                      name3 = [v137 name];
                      streamID2 = [v137 streamID];
                      *v243 = 138412546;
                      *&v243[4] = name3;
                      *&v243[12] = 1024;
                      *&v243[14] = streamID2;
                      _os_log_impl(&dword_239FB7000, v142, OS_LOG_TYPE_DEFAULT, "Streaming: Got open response stream[%@] id[%08X].", v243, 0x12u);
                    }

                    v145 = v137;
                    [objc_msgSend(v29 "outgoingStreamRequests")];
                    [objc_msgSend(v29 "outgoingStreamRequests")];
                    [objc_msgSend(v29 "outgoingStreams")];
                    [objc_msgSend(v29 "outgoingStreams")];
                    [v137 setState:2];
                    [v137 setStreamID:v133];
                    if ([v137 url] && (objc_msgSend(objc_msgSend(v137, "url"), "isFileURL") & 1) == 0)
                    {
                      v184 = [objc_msgSend(v137 "urlDownloader")];
                      (*(v184 + 16))(v184, 1);
                      [objc_msgSend(objc_msgSend(v137 "urlDownloader")];
                    }

                    else
                    {
                      v146 = [v137 fd];
                      v137[1] = dispatch_source_create(MEMORY[0x277D85D28], v146, 0, self->_syncQueue);
                      source3 = [v137 source];
                      handler[0] = MEMORY[0x277D85DD0];
                      handler[1] = 3221225472;
                      handler[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426;
                      handler[3] = &unk_278B43E68;
                      handler[4] = v137;
                      handler[5] = self;
                      v223 = v6;
                      v224 = v133;
                      dispatch_source_set_event_handler(source3, handler);
                      source4 = [v137 source];
                      v221[0] = MEMORY[0x277D85DD0];
                      v221[1] = 3221225472;
                      v221[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_429;
                      v221[3] = &unk_278B43DF0;
                      v221[4] = v137;
                      dispatch_source_set_cancel_handler(source4, v221);
                      dispatch_resume([v137 source]);
                      [v137 setSourceSuspended:0];
                    }
                  }

                  else if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                  {
                    [MCSession syncHandleNetworkEvent:v137 pid:? freeEventWhenDone:?];
                  }
                }

                else
                {
                  v150 = mcs_log(0, v136);
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
                  }
                }
              }

              else
              {
                v100 = mcs_log(v66, v67);
                if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                {
                  [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
                }
              }
            }

            else
            {
              v90 = mcs_log(v66, v67);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
              }
            }

            return;
          case 0x1E:
            if (*p_var2 <= 9)
            {
              v69 = mcs_log(v66, v67);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
              }

              return;
            }

            if (*p_var2 < bswap32(*(v30 + 1)) >> 16)
            {
              v96 = mcs_log(v66, v67);
              if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
              {
                [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
              }

              return;
            }

            v119 = bswap32(*(v30 + 1));
            v120 = [*(v9 + 2992) numberWithUnsignedLong:v119];
            v121 = [objc_msgSend(v29 "incomingStreams")];
            v123 = v121;
            if (v121)
            {
              v124 = __rev16(*(v30 + 4));
              if ([v121 state] == 3)
              {
                v125 = [v123 setState:4];
                v127 = mcs_log(v125, v126);
                if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                {
                  *v243 = 67109120;
                  *&v243[4] = v124;
                  _os_log_impl(&dword_239FB7000, v127, OS_LOG_TYPE_DEFAULT, "Stream close done reason(%d).", v243, 8u);
                }

                [objc_msgSend(v29 "incomingStreams")];
                [objc_msgSend(v29 "incomingStreams")];
                return;
              }

              state5 = [v123 state];
              if (state5 == 2)
              {
                [v123 setState:3];
                v157 = -[MCSession syncSendXDataStreamCloseFromReceiverToPID:streamID:closeReason:](self, "syncSendXDataStreamCloseFromReceiverToPID:streamID:closeReason:", [v11 pid], objc_msgSend(v123, "streamID"), v124);
                v159 = mcs_log(v157, v158);
                if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                {
                  name4 = [v123 name];
                  *v243 = 138412546;
                  *&v243[4] = name4;
                  *&v243[12] = 1024;
                  *&v243[14] = v119;
                  _os_log_impl(&dword_239FB7000, v159, OS_LOG_TYPE_DEFAULT, "Streaming: Got close from sender for stream[%@] id[%08X].", v243, 0x12u);
                }

                v161 = [objc_msgSend(v123 "incomingBuffer")];
                if (!v161 || v124)
                {
                  [(MCSession *)self syncCloseIncomingStream:v123 forPeer:v11 state:v29 error:0 reason:v124 shouldTriggerCancelProgress:0];
                  return;
                }

                v163 = mcs_log(v161, v162);
                if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                {
                  return;
                }

                *v243 = 0;
                v55 = "XDataStreamCloseFromSender received but have more bytes to write.";
                v56 = v163;
                v57 = 2;
LABEL_58:
                _os_log_impl(&dword_239FB7000, v56, OS_LOG_TYPE_DEFAULT, v55, v243, v57);
                return;
              }

              v54 = mcs_log(state5, v156);
              if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              state6 = [v123 state];
              *v243 = 67109120;
              *&v243[4] = state6;
              v55 = "Can't close incoming stream with state %u != open.";
            }

            else
            {
              v54 = mcs_log(0, v122);
              if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              *v243 = 67109120;
              *&v243[4] = v119;
              v55 = "Can't close nonexistent incoming stream %u.";
            }

LABEL_55:
            v56 = v54;
            v57 = 8;
            goto LABEL_58;
        }
      }

      v89 = mcs_log(v66, v67);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        [MCSession syncHandleNetworkEvent:pid:freeEventWhenDone:];
      }

      return;
    case 6:
      v15 = [(NSMutableDictionary *)self->_peerStates objectForKey:v11];
      v16 = v15;
      v17 = event->var1;
      if (v17)
      {
        *v243 = 0;
        __memcpy_chk();
        v18 = *v243;
        v15 = *v243;
      }

      else
      {
        v18 = 0;
      }

      v32 = mcs_log(v15, v17);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        displayName = [v11 displayName];
        if (v18)
        {
          v34 = [v18 count];
        }

        else
        {
          v34 = 0;
        }

        certificateDecision = [v16 certificateDecision];
        *v243 = 138412802;
        *&v243[4] = displayName;
        *&v243[12] = 1024;
        *&v243[14] = v34;
        *&v243[18] = 1024;
        *&v243[20] = certificateDecision;
        _os_log_impl(&dword_239FB7000, v32, OS_LOG_TYPE_DEFAULT, "Remote certificate event for peer [%@] - certificate length [%d], certificateDecision state [%d].", v243, 0x18u);
      }

      v216[0] = MEMORY[0x277D85DD0];
      v216[1] = 3221225472;
      v216[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_432;
      v216[3] = &unk_278B43EE0;
      v216[4] = self;
      v216[5] = v16;
      v216[6] = v11;
      v71 = [v216 copy];
      if ([v16 certificateDecision] == 2)
      {
        v71[2](v71, 1);
        return;
      }

      if ([v16 certificateDecision] == 3)
      {
        v71[2](v71, 0);
        return;
      }

      if (![v16 certificateDecision])
      {
        [v16 setCertificateDecision:1];
        v22 = self->_callbackQueue;
        v215[0] = MEMORY[0x277D85DD0];
        v215[1] = 3221225472;
        v215[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_437;
        v215[3] = &unk_278B43F08;
        v215[4] = self;
        v215[5] = v18;
        v215[6] = v11;
        v215[7] = v71;
        v21 = v215;
        goto LABEL_15;
      }

      break;
  }
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_406(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = 1;
  v2 = [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v9 == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = mcs_log(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) length];
    v7 = [*(a1 + 32) privateDelegate];
    v8 = [*(a1 + 32) delegate];
    *buf = 138413314;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Incoming packet from [%@] (%lu) - done callback pd(%@) d(%@) prop(%d).", buf, 0x30u);
  }
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_422(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = 1;
  v2 = [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v8 == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = mcs_log(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) privateDelegate];
    v7 = [*(a1 + 32) delegate];
    *buf = 138413058;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Did start receiving resource for peer [%@] dispatched. Callback pd(%@) d(%@) prop(%d).", buf, 0x26u);
  }
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_423(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = 1;
  v2 = [objc_msgSend(*(a1 + 32) "privateDelegate")];
  if (v9 == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = mcs_log(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = [*(a1 + 32) privateDelegate];
    v8 = [*(a1 + 32) delegate];
    *buf = 138413314;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Did receive stream for peer [%@] with name [%@] dispatched. Callback pd(%@) d(%@) prop(%d).", buf, 0x30u);
  }
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_424(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 2 || objc_msgSend(*(a1 + 32), "state") == 3)
  {
    v2 = write([*(a1 + 32) fd], objc_msgSend(objc_msgSend(*(a1 + 32), "incomingBuffer"), "bytes"), objc_msgSend(objc_msgSend(*(a1 + 32), "incomingBuffer"), "length"));
    if (v2)
    {
      if (v2 < 0)
      {
        if (*__error() == 35 || *__error() == 4 || (v12 = __error(), *v12 == 36))
        {
          dispatch_suspend([*(a1 + 32) source]);
          [*(a1 + 32) setSourceSuspended:1];
          v14 = dispatch_time(0, 1000000000);
          v15 = *(*(a1 + 40) + 96);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2;
          block[3] = &unk_278B43DF0;
          block[4] = *(a1 + 32);
          dispatch_after(v14, v15, block);
        }

        else
        {
          v31 = mcs_log(v12, v13);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *__error();
            v33 = [*(a1 + 32) name];
            v34 = [*(a1 + 32) streamID];
            *buf = 67109634;
            *v37 = v32;
            *&v37[4] = 2112;
            *&v37[6] = v33;
            *&v37[14] = 1024;
            *&v37[16] = v34;
            _os_log_impl(&dword_239FB7000, v31, OS_LOG_TYPE_DEFAULT, "Incoming stream: error(%d) stream[%@] %08X.", buf, 0x18u);
          }

          [*(a1 + 32) setState:3];
          dispatch_source_cancel([*(a1 + 32) source]);
          [*(a1 + 40) syncSendXDataStreamCloseFromReceiverToPID:*(a1 + 64) streamID:objc_msgSend(*(a1 + 32) closeReason:{"streamID"), 2}];
        }
      }

      else
      {
        v3 = v2 & 0x7FFFFFFF;
        [objc_msgSend(*(a1 + 32) "incomingBuffer")];
        if (![objc_msgSend(*(a1 + 32) "incomingBuffer")])
        {
          if ([*(a1 + 32) state] == 3)
          {
            v5 = *(a1 + 32);
            v4 = *(a1 + 40);
            v6 = *(a1 + 48);
            v7 = *(a1 + 56);

            [v4 syncCloseIncomingStream:v5 forPeer:v6 state:v7 error:0 reason:0 shouldTriggerCancelProgress:0];
            return;
          }

          dispatch_suspend([*(a1 + 32) source]);
          [*(a1 + 32) setSourceSuspended:1];
        }

        if ([*(a1 + 32) progress])
        {
          v16 = [*(a1 + 32) progressUnbounded];
          v17 = [*(a1 + 32) progress];
          v18 = v17;
          if (v16)
          {
            v19 = [v17 totalUnitCount];
            v20 = v19 - [objc_msgSend(*(a1 + 32) "progress")];
            v21 = [*(a1 + 32) progress];
            v22 = ([v21 completedUnitCount] + v20 * 0.05);
            v23 = v21;
          }

          else
          {
            v22 = [v17 completedUnitCount] + v3;
            v23 = v18;
          }

          v24 = [v23 setCompletedUnitCount:v22];
          v26 = mcs_log(v24, v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [objc_msgSend(*(a1 + 32) "progress")];
            v28 = [objc_msgSend(*(a1 + 32) "progress")];
            v29 = [objc_msgSend(*(a1 + 32) "progress")];
            v30 = [objc_msgSend(*(a1 + 32) "progress")];
            *buf = 134218496;
            *v37 = v27;
            *&v37[8] = 2048;
            *&v37[10] = v28;
            *&v37[18] = 2048;
            v38 = v29 / v30;
            _os_log_impl(&dword_239FB7000, v26, OS_LOG_TYPE_DEFAULT, "Incoming stream - progress update (%lld / %lld = %.3lf).", buf, 0x20u);
          }
        }
      }
    }

    else
    {
      [*(a1 + 32) setState:3];
      dispatch_source_cancel([*(a1 + 32) source]);
      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) streamID];

      [v9 syncSendXDataStreamCloseFromReceiverToPID:v8 streamID:v10 closeReason:1];
    }
  }

  else
  {
    dispatch_suspend([*(a1 + 32) source]);
    v11 = *(a1 + 32);

    [v11 setSourceSuspended:1];
  }
}

void *__58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    result = [*(a1 + 32) sourceSuspended];
    if (result)
    {
      dispatch_resume([*(a1 + 32) source]);
      v3 = *(a1 + 32);

      return [v3 setSourceSuspended:0];
    }
  }

  return result;
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_425(uint64_t a1)
{
  close([*(a1 + 32) fd]);
  dispatch_release(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  return [v2 setSource:0];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  dispatch_suspend([*(a1 + 32) source]);
  [*(a1 + 32) setSourceSuspended:1];
  v2 = [*(a1 + 32) state];
  if (v2 == 2)
  {
    v4 = v31 - ((AGPSessionMaximumSegmentSize(1) + 15) & 0x1FFFFFFF0);
    v5 = [*(a1 + 32) fd];
    v6 = AGPSessionMaximumSegmentSize(1);
    v7 = read(v5, v4 + 4, v6 - 4);
    v9 = v7;
    if (v7)
    {
      v10 = mcs_log(v7, v8);
      v11 = v10;
      if (v9 < 0)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426_cold_2();
        }
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) name];
          v13 = v9 + 4;
          *buf = 138412802;
          v37 = v12;
          v38 = 1024;
          v39 = v9;
          v40 = 1024;
          v41 = v9 + 4;
          _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Streaming: Outgoing stream [%@]: read %d bytes to send (total %d).", buf, 0x18u);
        }

        else
        {
          v13 = v9 + 4;
        }

        v22 = [*(a1 + 32) streamID];
        *v4 = bswap32(v22);
        *buf = 0;
        v23 = [objc_msgSend(*(a1 + 32) "peerID")];
        v34 = v22;
        v35 = v23;
        v24 = *(a1 + 40);
        v25 = *(v24 + 80);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_427;
        v31[3] = &unk_278B43E40;
        v32 = v23;
        v33 = v9;
        v26 = *(a1 + 32);
        v31[4] = v24;
        v31[5] = v26;
        v27 = AGPSessionSendTo(v25, &v35, 1, v4, v13, buf, 0, 0xAu, 1u, v31);
        if (v27)
        {
          v29 = mcs_log(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426_cold_1();
          }
        }

        if ([*(a1 + 32) progress])
        {
          v30 = [*(a1 + 32) progress];
          [v30 setCompletedUnitCount:{objc_msgSend(v30, "completedUnitCount") + (v9 & 0x7FFFFFFF)}];
        }
      }
    }

    else
    {
      [*(a1 + 32) setState:3];
      dispatch_resume([*(a1 + 32) source]);
      dispatch_source_cancel([*(a1 + 32) source]);
      v17 = [*(a1 + 40) syncSendXDataStreamCloseFromSenderToPID:*(a1 + 48) streamID:*(a1 + 52) closeReason:0];
      v19 = mcs_log(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(a1 + 32) name];
        v21 = [*(a1 + 32) streamID];
        *buf = 138412546;
        v37 = v20;
        v38 = 1024;
        v39 = v21;
        _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "Streaming: closing stream[%@] %08X.", buf, 0x12u);
      }
    }
  }

  else
  {
    v14 = mcs_log(v2, v3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) name];
      v16 = [*(a1 + 32) streamID];
      *buf = 138412546;
      v37 = v15;
      v38 = 1024;
      v39 = v16;
      _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Streaming: stream not open for sending [%@] %08X.", buf, 0x12u);
    }
  }
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_427(int8x16_t *a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v6 = a1[3].i64[0];
  v1 = vextq_s8(a1[2], a1[2], 8uLL);
  v2 = a1[2].i64[0];
  v4[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2_428;
  v4[3] = &unk_278B43E40;
  v3 = *(v2 + 96);
  v5 = v1;
  v7 = a1[3].i32[2];
  dispatch_async(v3, v4);
}

void *__58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2_428(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = mcs_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 52) + 4;
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) state];
    v10[0] = 67109890;
    v10[1] = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Streaming: Outgoing stream source to participant [%08X]: segment (%d) put on wire for stream [%@] state [%d].", v10, 0x1Eu);
  }

  if ([*(a1 + 32) progress] && (v8 = objc_msgSend(objc_msgSend(*(a1 + 32), "progress"), "completedUnitCount"), v8 == objc_msgSend(objc_msgSend(*(a1 + 32), "progress"), "totalUnitCount")))
  {
    [*(a1 + 32) setState:3];
    dispatch_resume([*(a1 + 32) source]);
    dispatch_source_cancel([*(a1 + 32) source]);
    return [*(a1 + 40) syncSendXDataStreamCloseFromSenderToPID:*(a1 + 48) streamID:*(a1 + 56) closeReason:0];
  }

  else
  {
    result = [*(a1 + 32) source];
    if (result)
    {
      result = [*(a1 + 32) state];
      if (result == 2)
      {
        dispatch_resume([*(a1 + 32) source]);
        return [*(a1 + 32) setSourceSuspended:0];
      }
    }
  }

  return result;
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_429(uint64_t a1)
{
  close([*(a1 + 32) fd]);
  dispatch_release(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  return [v2 setSource:0];
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_431(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 > [*(*(a1 + 32) + 48) pid])
  {
    [*(a1 + 32) startConnectionWithIndirectPID:*(a1 + 48)];
  }

  v3 = GCKSessionEstablishConnection(*(*(a1 + 32) + 72), *(a1 + 48), [*(a1 + 40) hasIdentitySet], *(a1 + 52), objc_msgSend(objc_msgSend(*(a1 + 40), "gckSessionConnectionData"), "bytes"), objc_msgSend(objc_msgSend(*(a1 + 40), "gckSessionConnectionData"), "length"));
  if ((v3 & 0x80000000) != 0)
  {
    v5 = v3;
    v6 = mcs_log(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Mesh establishment failed (%08lX).", &v7, 0xCu);
    }
  }
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_432(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 96);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2_433;
  v11[3] = &unk_278B43EB8;
  v11[4] = *(a1 + 40);
  v12 = a2;
  dispatch_async(v4, v11);
  v7 = mcs_log(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 48) displayName];
    v9 = "NOT accepted";
    if (v2)
    {
      v9 = "accepted";
    }

    *buf = 138412546;
    v14 = v8;
    v15 = 2080;
    v16 = v9;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Certificate from peer [%@] is %s.", buf, 0x16u);
  }

  return GCKSessionCertificateDecision(*(*(a1 + 32) + 72), [*(a1 + 48) pid], v2);
}

uint64_t __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_2_433(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  return [*(a1 + 32) setCertificateDecision:v1];
}

void *__58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_437(uint64_t a1)
{
  v3 = 1;
  [*(a1 + 32) privateDelegate];
  if (objc_opt_respondsToSelector() & 1) == 0 || (result = [objc_msgSend(*(a1 + 32) "privateDelegate")], (v3))
  {
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      return [objc_msgSend(*(a1 + 32) "delegate")];
    }

    else
    {
      return (*(*(a1 + 56) + 16))();
    }
  }

  return result;
}

- (MCSession)init
{
  v3.receiver = self;
  v3.super_class = MCSession;
  [(MCSession *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCSession)initWithPeer:(MCPeerID *)myPeerID
{
  v5 = dyld_get_program_sdk_version() >> 16 > 8;

  return [(MCSession *)self initWithPeer:myPeerID securityIdentity:0 encryptionPreference:v5];
}

- (MCSession)initWithPeer:(MCPeerID *)myPeerID securityIdentity:(NSArray *)identity encryptionPreference:(MCEncryptionPreference)encryptionPreference
{
  v49 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = MCSession;
  v8 = [(MCSession *)&v36 init];
  if (!v8)
  {
    return v8;
  }

  if (!myPeerID)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    [v9 raise:*MEMORY[0x277CBE660] format:{@"A nil %@ object passed to %@", v11, NSStringFromClass(v12)}];
  }

  *(v8 + 9) = 0xFFFFFFFFLL;
  v13 = (v8 + 72);
  *(v8 + 10) = 0xFFFFFFFFLL;
  v14 = (v8 + 80);
  *(v8 + 17) = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  v15 = [(MCPeerID *)myPeerID pid];
  *(v8 + 10) = v15;
  v16 = GCKSessionCreate(v15, identity, GCKEventListenerForMCSession, v8, *(v8 + 17), v8 + 9);
  if (v16)
  {
    v18 = mcs_log(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MCSession initWithPeer:securityIdentity:encryptionPreference:];
    }

LABEL_13:
    if (*v14 != 0xFFFFFFFFLL)
    {
      AGPSessionRelease(*v14);
    }

    if (*v13 != 0xFFFFFFFFLL)
    {
      GCKSessionRelease(*v13);
    }

    v25 = *(v8 + 12);
    if (v25)
    {
      dispatch_release(v25);
    }

    v26 = *(v8 + 15);
    if (v26)
    {
      dispatch_release(v26);
    }

    return 0;
  }

  *(v8 + 12) = dispatch_queue_create("com.apple.MCSession.syncQueue", 0);
  *(v8 + 15) = dispatch_queue_create("com.apple.MCSession.callbackQueue", 0);
  v19 = AGPSessionCreate(*(v8 + 9), *(v8 + 10), AGPEventListenerForMCSession, v8, v8 + 10);
  if (v19)
  {
    v21 = mcs_log(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MCSession initWithPeer:securityIdentity:encryptionPreference:];
    }

    goto LABEL_13;
  }

  started = GCKSessionStartEventCallbacks(*v13);
  if (started)
  {
    v24 = mcs_log(started, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MCSession initWithPeer:securityIdentity:encryptionPreference:];
    }

    goto LABEL_13;
  }

  *(v8 + 6) = [(MCPeerID *)myPeerID copy];
  *(v8 + 7) = [(NSArray *)identity copy];
  *(v8 + 8) = encryptionPreference;
  *(v8 + 11) = objc_alloc_init(MEMORY[0x277CBEB38]);
  *(v8 + 13) = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  *(v8 + 14) = v28;
  v30 = mcs_log(v28, v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(v8 + 17);
    displayNameAndPID = [*(v8 + 6) displayNameAndPID];
    if (*(v8 + 7))
    {
      v33 = "yes";
    }

    else
    {
      v33 = "no";
    }

    v34 = [v8 stringForEncryptionPreference:*(v8 + 8)];
    *buf = 136316418;
    v38 = "Oct 10 2025";
    v39 = 2080;
    v40 = "23:44:31";
    v41 = 2112;
    v42 = v31;
    v43 = 2112;
    v44 = displayNameAndPID;
    v45 = 2080;
    v46 = v33;
    v47 = 2112;
    v48 = v34;
    _os_log_impl(&dword_239FB7000, v30, OS_LOG_TYPE_DEFAULT, "MCSession init done! [MCS: %s - %s, sessionID=%@ peerID=%@ securityIdentity=%s encryptionPreference=%@].", buf, 0x3Eu);
  }

  objc_initWeak(buf, v8);
  objc_copyWeak(&v35, buf);
  *(v8 + 16) = os_state_add_handler();
  [v8 logSessionInfo];
  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);
  return v8;
}

uint64_t __64__MCSession_initWithPeer_securityIdentity_encryptionPreference___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak syncStateCapture];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  agpSession = self->_agpSession;
  if (agpSession != 0xFFFFFFFFLL)
  {
    AGPSessionRelease(agpSession);
  }

  gckSession = self->_gckSession;
  if (gckSession != 0xFFFFFFFFLL)
  {
    GCKSessionRelease(gckSession);
  }

  allValues = [(NSMutableDictionary *)self->_peerStates allValues];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        -[MCSession syncCloseStreamsForPeer:](self, "syncCloseStreamsForPeer:", [*(*(&v11 + 1) + 8 * i) peerID]);
      }

      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_privateDelegate, 0);
  v10.receiver = self;
  v10.super_class = MCSession;
  [(MCSession *)&v10 dealloc];
}

- (void)syncGetConnectionDataForPeerState:(id)state completionHandler:(id)handler
{
  v15 = 0;
  v14 = 1350;
  if ((GCKSessionPrepareConnection(self->_gckSession, [objc_msgSend(state "peerID")], &v15, &v14) & 0x80000000) != 0)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unable to create connection data.", *MEMORY[0x277CCA450])}];
    v9 = 0;
    v11 = 0;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    encryptionPreference = [(MCSession *)self encryptionPreference];
    v8 = [(MCSession *)self securityIdentity]!= 0;
    v9 = [MCSessionPeerConnectionData connectionDataSegmentWithEncryptionPreference:encryptionPreference identitySet:v8 gckSessionConnectionDataBytes:v15 gckSessionConnectionDataLength:v14];
    free(v15);
  }

  [state setNearbyConnectionData:v9];
  v10 = 0;
  v11 = v9;
LABEL_5:
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MCSession_syncGetConnectionDataForPeerState_completionHandler___block_invoke;
  block[3] = &unk_278B43F58;
  block[5] = v10;
  block[6] = handler;
  block[4] = v11;
  dispatch_async(callbackQueue, block);
}

- (void)nearbyConnectionDataForPeer:(MCPeerID *)peerID withCompletionHandler:(void *)completionHandler
{
  v6 = [completionHandler copy];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MCSession_nearbyConnectionDataForPeer_withCompletionHandler___block_invoke;
  block[3] = &unk_278B43F80;
  block[4] = self;
  block[5] = peerID;
  block[6] = v6;
  dispatch_async(syncQueue, block);
}

void __63__MCSession_nearbyConnectionDataForPeer_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    if ([(MCSessionPeerState *)v2 nearbyConnectionData])
    {
      v4 = *(*(a1 + 32) + 120);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__MCSession_nearbyConnectionDataForPeer_withCompletionHandler___block_invoke_2;
      v8[3] = &unk_278B43D28;
      v5 = *(a1 + 48);
      v8[4] = v3;
      v8[5] = v5;
      dispatch_async(v4, v8);
      return;
    }
  }

  else
  {
    v3 = [[MCSessionPeerState alloc] initWithPeer:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 88) setObject:*(a1 + 40) forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", objc_msgSend(*(a1 + 40), "pid"))}];
  [*(*(a1 + 32) + 104) setObject:v3 forKey:*(a1 + 40)];
  [*(a1 + 32) syncPeer:*(a1 + 40) changeStateTo:1 shouldForceCallback:0];
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);

  [v6 syncGetConnectionDataForPeerState:v3 completionHandler:v7];
}

uint64_t __63__MCSession_nearbyConnectionDataForPeer_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) nearbyConnectionData];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (BOOL)isEncryptionPreferenceCompatible:(int64_t)compatible
{
  encryptionPreference = [(MCSession *)self encryptionPreference];
  if (compatible == 1 && encryptionPreference == MCEncryptionNone)
  {
    return 0;
  }

  encryptionPreference2 = [(MCSession *)self encryptionPreference];
  return compatible != 2 || encryptionPreference2 != MCEncryptionRequired;
}

- (void)syncConnectPeer:(id)peer withConnectionData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [(NSMutableDictionary *)self->_peerStates objectForKey:?];
  v8 = v7;
  if (v7)
  {
    state = [v7 state];
    if (state != 1)
    {
      v13 = mcs_log(state, v10);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v26) = 0;
      v14 = "Peer needs to be in Connecting state to connect.";
      goto LABEL_12;
    }

    connectPeerCalled = [v8 connectPeerCalled];
    if (connectPeerCalled)
    {
      v13 = mcs_log(connectPeerCalled, v12);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v26) = 0;
      v14 = "ConnectPeer already called.";
LABEL_12:
      _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, v14, &v26, 2u);
      return;
    }
  }

  v15 = [[MCSessionPeerConnectionData alloc] initWithConnectionDataBlob:data];
  if (!v15)
  {
    v21 = mcs_log(0, v16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncConnectPeer:peer withConnectionData:?];
    }

    goto LABEL_24;
  }

  v17 = v15;
  v18 = [(MCSession *)self isEncryptionPreferenceCompatible:[(MCSessionPeerConnectionData *)v15 encryptionPreference]];
  if ((v18 & 1) == 0)
  {
    v22 = mcs_log(v18, v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412546;
      displayName = [peer displayName];
      v28 = 2112;
      v29 = [(MCSession *)self stringForEncryptionPreference:[(MCSessionPeerConnectionData *)v17 encryptionPreference]];
      _os_log_error_impl(&dword_239FB7000, v22, OS_LOG_TYPE_ERROR, "Peer [%@] has incompatible encryption preference [%@].", &v26, 0x16u);
    }

    goto LABEL_24;
  }

  v20 = [(MCSession *)self encryptionPreference]!= MCEncryptionNone && [(MCSessionPeerConnectionData *)v17 encryptionPreference]!= 2;
  v23 = GCKSessionEstablishConnection(self->_gckSession, [peer pid], -[MCSessionPeerConnectionData hasIdentitySet](v17, "hasIdentitySet"), v20, -[NSData bytes](-[MCSessionPeerConnectionData gckSessionConnectionData](v17, "gckSessionConnectionData"), "bytes"), -[NSData length](-[MCSessionPeerConnectionData gckSessionConnectionData](v17, "gckSessionConnectionData"), "length"));
  if ((v23 & 0x80000000) != 0)
  {
    v25 = mcs_log(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncConnectPeer:withConnectionData:];
    }

LABEL_24:
    [(MCSession *)self syncPeer:peer changeStateTo:0 shouldForceCallback:0];
    return;
  }

  [v8 setConnectPeerCalled:1];
}

- (void)connectPeer:(MCPeerID *)peerID withNearbyConnectionData:(NSData *)data
{
  v6 = [(NSData *)data copy];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MCSession_connectPeer_withNearbyConnectionData___block_invoke;
  block[3] = &unk_278B43C88;
  block[4] = self;
  block[5] = peerID;
  block[6] = v6;
  dispatch_async(syncQueue, block);
}

- (void)cancelConnectPeer:(MCPeerID *)peerID
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__MCSession_cancelConnectPeer___block_invoke;
  v4[3] = &unk_278B43C60;
  v4[4] = self;
  v4[5] = peerID;
  dispatch_async(syncQueue, v4);
}

uint64_t __31__MCSession_cancelConnectPeer___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v2 = [*(a1 + 40) pid];

  return GCKSessionDisposeConnection(v1, v2);
}

- (void)syncSendData:(id)data toPeers:(id)peers withDataMode:(int64_t)mode
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  modeCopy = mode;
  v7 = mode == 1;
  v27 = 0u;
  v28 = 0u;
  v8 = [peers countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(peers);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v24 = 0;
        v13 = [v12 pid];
        v23 = v13;
        v15 = mcs_log(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [data length];
          *buf = 134218496;
          v30 = v16;
          v31 = 1024;
          v32 = v23;
          v33 = 1024;
          v34 = modeCopy;
          _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Sending %ld bytes of data to participant %u, mode=%d.", buf, 0x18u);
        }

        v17 = AGPSessionSendTo(self->_agpSession, &v23, 1, [data bytes], objc_msgSend(data, "length"), &v24, v7, 5u, 1u, 0);
        if (v17)
        {
          v19 = v17;
          v20 = mcs_log(v17, v18);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v30) = v19;
            _os_log_error_impl(&dword_239FB7000, v20, OS_LOG_TYPE_ERROR, "AGPSendTo failed with status=%08X.", buf, 8u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [peers countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v9);
  }
}

- (BOOL)sendData:(NSData *)data toPeers:(NSArray *)peerIDs withMode:(MCSessionSendDataMode)mode error:(NSError *)error
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = [(NSData *)data copy];
  if (!v10)
  {
    if (error)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Invalid data parameter.", *MEMORY[0x277CCA450])}];
      *error = v10;
    }

    v22 = mcs_log(v10, v11);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *v32 = 0;
    v23 = "Failed to send data because data is nil.";
    goto LABEL_20;
  }

  v12 = v10;
  if (![(NSArray *)peerIDs count])
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Invalid peerIDs parameter.", *MEMORY[0x277CCA450])}];
    }

    v22 = mcs_log(v24, v25);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *v32 = 0;
    v23 = "Failed to send data because no recipients are specified.";
LABEL_20:
    _os_log_impl(&dword_239FB7000, v22, OS_LOG_TYPE_DEFAULT, v23, v32, 2u);
    return 0;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  *v32 = 0;
  v33 = v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEB18] array];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MCSession_sendData_toPeers_withMode_error___block_invoke;
  block[3] = &unk_278B43FA8;
  block[4] = peerIDs;
  block[5] = self;
  block[6] = &v38;
  block[7] = v32;
  dispatch_sync(syncQueue, block);
  v16 = *(v39 + 24);
  if (v16 == 1)
  {
    if (error)
    {
      v17 = MEMORY[0x277CCACA8];
      if ([*(v33 + 5) count] <= 1)
      {
        v18 = @"Peers";
      }

      else
      {
        v18 = @"Peer";
      }

      v19 = [v17 stringWithFormat:@"%@ %@ not connected", v18, objc_msgSend(objc_msgSend(*(v33 + 5), "valueForKey:", @"displayName", "componentsJoinedByString:", @", ")];
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v19, *MEMORY[0x277CCA450])}];
      *error = v14;
    }

    v20 = mcs_log(v14, v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [objc_msgSend(*(v33 + 5) valueForKey:{@"displayName", "componentsJoinedByString:", @", "}];
      *buf = 138412290;
      v43 = v21;
      _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, "Failed to send data because recipients %@ are not connected.", buf, 0xCu);
    }
  }

  else
  {
    copyDeep_MC = [(NSArray *)peerIDs copyDeep_MC];
    v28 = self->_syncQueue;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __45__MCSession_sendData_toPeers_withMode_error___block_invoke_479;
    v30[3] = &unk_278B43FD0;
    v30[4] = self;
    v30[5] = v12;
    v30[6] = copyDeep_MC;
    v30[7] = mode;
    dispatch_async(v28, v30);
  }

  v26 = v16 ^ 1;
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v38, 8);
  return v26;
}

void *__45__MCSession_sendData_toPeers_withMode_error___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = a1[4];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([objc_msgSend(*(a1[5] + 104) objectForKey:{*(*(&v7 + 1) + 8 * v6)), "state"}] != 2)
        {
          *(*(a1[6] + 8) + 24) = 1;
          [*(*(a1[7] + 8) + 40) addObject:a1[4]];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (NSArray)connectedPeers
{
  array = [MEMORY[0x277CBEB18] array];
  syncQueue = self->_syncQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__MCSession_connectedPeers__block_invoke;
  v6[3] = &unk_278B43C60;
  v6[4] = self;
  v6[5] = array;
  dispatch_sync(syncQueue, v6);
  return array;
}

void *__27__MCSession_connectedPeers__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 104) allValues];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ([v7 state] == 2)
        {
          [*(a1 + 40) addObject:{objc_msgSend(v7, "peerID")}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (NSProgress)sendResourceAtURL:(NSURL *)resourceURL withName:(NSString *)resourceName toPeer:(MCPeerID *)peerID withCompletionHandler:(void *)completionHandler
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v11 = objc_alloc_init(MCSessionStream);
  -[MCSessionStream setProgress:](v11, "setProgress:", [MEMORY[0x277CCAC48] progressWithTotalUnitCount:0]);
  [(MCSessionStream *)v11 setUrl:resourceURL];
  [(MCSessionStream *)v11 setName:resourceName];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke;
  block[3] = &unk_278B43FF8;
  block[4] = self;
  block[5] = peerID;
  block[8] = &v44;
  block[9] = &v40;
  block[6] = resourceName;
  block[7] = v11;
  dispatch_sync(syncQueue, block);
  if (*(v45 + 24) == 1)
  {
    v15 = mcs_log(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MCSession sendResourceAtURL:withName:toPeer:withCompletionHandler:];
    }

    callbackQueue = self->_callbackQueue;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_480;
    v38[3] = &unk_278B44020;
    v38[4] = completionHandler;
    dispatch_async(callbackQueue, v38);
    v17 = self->_syncQueue;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2;
    v37[3] = &unk_278B43C88;
    v37[4] = self;
    v37[5] = peerID;
    v37[6] = resourceName;
    v18 = v37;
  }

  else
  {
    if (*(v41 + 24) != 1)
    {
      if ([(NSURL *)resourceURL isFileURL])
      {
        v22 = [(NSString *)resourceName copy];
        [(MCSessionStream *)v11 setCompletionHandler:completionHandler];
        v23 = self->_syncQueue;
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3;
        v34[3] = &unk_278B43D00;
        v34[4] = resourceURL;
        v34[5] = self;
        v34[6] = v11;
        v34[7] = v22;
        v34[8] = peerID;
        dispatch_async(v23, v34);

        progress = [(MCSessionStream *)v11 progress];
      }

      else
      {
        if (![(NSString *)[(NSURL *)resourceURL scheme] hasPrefix:@"http"])
        {
          v25 = [(NSString *)[(NSURL *)resourceURL scheme] hasPrefix:@"https"];
          if (!v25)
          {
            v29 = mcs_log(v25, v26);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [MCSession sendResourceAtURL:withName:toPeer:withCompletionHandler:];
            }

            v30 = self->_callbackQueue;
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_506;
            v32[3] = &unk_278B44020;
            v32[4] = completionHandler;
            dispatch_async(v30, v32);
            v17 = self->_syncQueue;
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_510;
            v31[3] = &unk_278B43C88;
            v31[4] = self;
            v31[5] = peerID;
            v31[6] = resourceName;
            v18 = v31;
            goto LABEL_9;
          }
        }

        [(MCSessionStream *)v11 setCompletionHandler:completionHandler];
        v27 = self->_syncQueue;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_504;
        v33[3] = &unk_278B43DC8;
        v33[4] = self;
        v33[5] = resourceURL;
        v33[6] = v11;
        v33[7] = peerID;
        dispatch_async(v27, v33);
        progress = [(MCSessionStream *)v11 progress];
      }

      v21 = progress;
      goto LABEL_16;
    }

    v19 = mcs_log(v13, v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MCSession sendResourceAtURL:withName:toPeer:withCompletionHandler:];
    }

    v20 = self->_callbackQueue;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_484;
    v36[3] = &unk_278B44020;
    v36[4] = completionHandler;
    dispatch_async(v20, v36);
    v17 = self->_syncQueue;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_488;
    v35[3] = &unk_278B43C88;
    v35[4] = self;
    v35[5] = peerID;
    v35[6] = resourceName;
    v18 = v35;
  }

LABEL_9:
  dispatch_async(v17, v18);
  v21 = 0;
LABEL_16:
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v21;
}

void *__69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKey:a1[5]];
  result = [v2 state];
  if (result != 2)
  {
    v4 = a1[8];
    goto LABEL_6;
  }

  result = [objc_msgSend(v2 "outgoingStreams")];
  if (result || (result = [objc_msgSend(v2 "outgoingStreamRequests")]) != 0)
  {
    v4 = a1[9];
LABEL_6:
    *(*(v4 + 8) + 24) = 1;
    return result;
  }

  v5 = [v2 outgoingStreamRequests];
  v7 = a1[6];
  v6 = a1[7];

  return [v5 setObject:v6 forKey:v7];
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_480(uint64_t a1)
{
  [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Peer not connected.", *MEMORY[0x277CCA450])}];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2(void *a1)
{
  v2 = [objc_msgSend(*(a1[4] + 104) objectForKey:{a1[5]), "outgoingStreamRequests"}];
  v3 = a1[6];

  return [v2 removeObjectForKey:v3];
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_484(uint64_t a1)
{
  [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Resource with same name already exists.", *MEMORY[0x277CCA450])}];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_488(void *a1)
{
  v2 = [objc_msgSend(*(a1[4] + 104) objectForKey:{a1[5]), "outgoingStreamRequests"}];
  v3 = a1[6];

  return [v2 removeObjectForKey:v3];
}

void __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = open([*(a1 + 32) fileSystemRepresentation], 0);
  if (v3 == -1)
  {
    v16 = mcs_log(v3, v4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_cold_2(v2);
    }

    v17 = *(*(a1 + 40) + 120);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_493;
    v25[3] = &unk_278B43DF0;
    v25[4] = *(a1 + 48);
    dispatch_async(v17, v25);
  }

  else
  {
    v5 = v3;
    memset(&v27, 0, sizeof(v27));
    if (fstat(v3, &v27) == -1)
    {
      v6 = close(v5);
      v8 = mcs_log(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_cold_1();
      }

      v9 = *(*(a1 + 40) + 120);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_489;
      block[3] = &unk_278B43DF0;
      block[4] = *(a1 + 48);
      dispatch_async(v9, block);
    }

    v10 = fcntl(v5, 3, 0);
    if (v10 != -1)
    {
      fcntl(v5, 4, v10 | 4u);
    }

    fcntl(v5, 73, 1);
    v11 = [objc_msgSend(*(a1 + 48) "progress")];
    v13 = mcs_log(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = [objc_msgSend(*(a1 + 48) "progress")];
      *buf = 138412546;
      v29 = v14;
      v30 = 2048;
      v31 = v15;
      _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "About to send file [%@] of size [%lld].", buf, 0x16u);
    }

    [*(a1 + 40) syncStartStreamWithName:*(a1 + 56) toPeer:*(a1 + 64) mcFD:v5 isResource:1];
  }

  v18 = [MCResourceProgressObserver alloc];
  v19 = [*(a1 + 48) name];
  v20 = [*(a1 + 48) progress];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_497;
  v22[3] = &unk_278B43C88;
  v23 = *(a1 + 40);
  v24 = *(a1 + 64);
  v21 = [(MCResourceProgressObserver *)v18 initWithName:v19 progress:v20 cancelHandler:v22];
  [*(a1 + 48) setObserver:v21];
}

void *__69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_489(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Failed to stat file.", *MEMORY[0x277CCA450])}];
  result = [*(a1 + 32) completionHandler];
  if (result)
  {
    v4 = [*(a1 + 32) completionHandler];
    (*(v4 + 16))(v4, v2);
    v5 = *(a1 + 32);

    return [v5 setCompletionHandler:0];
  }

  return result;
}

void *__69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_493(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Cannot open file.", *MEMORY[0x277CCA450])}];
  result = [*(a1 + 32) completionHandler];
  if (result)
  {
    v4 = [*(a1 + 32) completionHandler];
    (*(v4 + 16))(v4, v2);
    v5 = *(a1 + 32);

    return [v5 setCompletionHandler:0];
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_504(uint64_t a1)
{
  [*(a1 + 48) setUrlDownloader:{-[MCResourceDownloader initWithSession:resourceUrl:name:peerID:]([MCResourceDownloader alloc], "initWithSession:resourceUrl:name:peerID:", *(a1 + 32), *(a1 + 40), objc_msgSend(*(a1 + 48), "name"), *(a1 + 56))}];
  v2 = [MCResourceProgressObserver alloc];
  v3 = [*(a1 + 48) name];
  v4 = [*(a1 + 48) progress];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_4;
  v6[3] = &unk_278B43C88;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  return [*(a1 + 48) setObserver:{-[MCResourceProgressObserver initWithName:progress:cancelHandler:](v2, "initWithName:progress:cancelHandler:", v3, v4, v6)}];
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_506(uint64_t a1)
{
  [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unsupported resource type.", *MEMORY[0x277CCA450])}];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_2_510(void *a1)
{
  v2 = [objc_msgSend(*(a1[4] + 104) objectForKey:{a1[5]), "outgoingStreamRequests"}];
  v3 = a1[6];

  return [v2 removeObjectForKey:v3];
}

- (void)disconnect
{
  v3 = mcs_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Disconnecting from session.", v4, 2u);
  }

  GCKSessionDisposeAllConnections(self->_gckSession);
}

- (void)syncStartStreamWithName:(id)name toPeer:(id)peer mcFD:(int)d isResource:(BOOL)resource
{
  resourceCopy = resource;
  v45 = *MEMORY[0x277D85DE8];
  v11 = [(NSMutableDictionary *)self->_peerStates objectForKey:peer];
  if (!v11)
  {
    NSLog(&cfstr_UnknownPeer.isa, peer);
    v21 = mcs_log(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncStartStreamWithName:toPeer:mcFD:isResource:];
    }

    goto LABEL_13;
  }

  v12 = v11;
  uTF8String = [name UTF8String];
  v14 = strlen(uTF8String);
  v15 = v14;
  if (v14 >= 0x8000)
  {
    NSLog(&cfstr_StreamNameTooL.isa, name);
    v18 = mcs_log(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v42 = name;
      _os_log_impl(&dword_239FB7000, v18, OS_LOG_TYPE_DEFAULT, "Stream name [%@] too long.", buf, 0xCu);
    }

LABEL_12:
    [objc_msgSend(v12 "outgoingStreamRequests")];
LABEL_13:
    close(d);
    return;
  }

  v22 = v14 + 12;
  v23 = malloc_type_malloc((v14 + 12), 0x570EBDDBuLL);
  if (!v23)
  {
    NSLog(&cfstr_OutOfMemoryAll.isa, v22);
    v28 = mcs_log(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataPeerIDPushToPID:];
    }

    goto LABEL_12;
  }

  v24 = v23;
  dCopy = d;
  if (resourceCopy)
  {
    v25 = [objc_msgSend(v12 "outgoingStreamRequests")];
  }

  else
  {
    v25 = objc_alloc_init(MCSessionStream);
  }

  v29 = v25;
  *v24 = -108;
  v24[1] = resourceCopy;
  v24[2] = HIBYTE(v22);
  v24[3] = v22;
  newStreamOpenRequestID = [v12 newStreamOpenRequestID];
  *(v24 + 1) = bswap32(newStreamOpenRequestID);
  if (resourceCopy)
  {
    v24[8] = [(NSProgress *)[(MCSessionStream *)v29 progress] totalUnitCount]>> 24;
    v24[9] = [(NSProgress *)[(MCSessionStream *)v29 progress] totalUnitCount]>> 16;
    v24[10] = [(NSProgress *)[(MCSessionStream *)v29 progress] totalUnitCount]>> 8;
    totalUnitCount = [(NSProgress *)[(MCSessionStream *)v29 progress] totalUnitCount];
  }

  else
  {
    totalUnitCount = 0;
    v24[10] = 0;
    *(v24 + 4) = 0;
  }

  v24[11] = totalUnitCount;
  memcpy(v24 + 12, uTF8String, v15);
  v40 = 0;
  v39 = [peer pid];
  v31 = AGPSessionSendTo(self->_agpSession, &v39, 1, v24, v22, &v40, 0, 0xAu, 1u, 0);
  if (v31)
  {
    v33 = mcs_log(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [MCSession syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:];
    }
  }

  [(MCSessionStream *)v29 setName:name];
  [(MCSessionStream *)v29 setPeerID:peer];
  [(MCSessionStream *)v29 setState:1];
  [(MCSessionStream *)v29 setFd:dCopy];
  [objc_msgSend(v12 "outgoingStreamRequests")];
  v34 = [objc_msgSend(v12 "outgoingStreamRequests")];
  v36 = mcs_log(v34, v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v42 = newStreamOpenRequestID;
    *&v42[4] = 2112;
    *&v42[6] = name;
    v43 = 2112;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v36, OS_LOG_TYPE_DEFAULT, "Streaming: sent open request: requestID[%u] stream[%@] peer[%@].", buf, 0x1Cu);
  }

  free(v24);
}

- (NSOutputStream)startStreamWithName:(NSString *)streamName toPeer:(MCPeerID *)peerID error:(NSError *)error
{
  v51 = *MEMORY[0x277D85DE8];
  if (streamName)
  {
    if (peerID)
    {
      selfCopy = self;
      self = [(NSString *)streamName length];
      if (self)
      {
        self = [(NSString *)streamName lengthOfBytesUsingEncoding:4];
        if (self < 0x8000)
        {
          v38 = 0;
          v39 = &v38;
          v40 = 0x2020000000;
          v41 = 0;
          v34 = 0;
          v35 = &v34;
          v36 = 0x2020000000;
          v37 = 0;
          syncQueue = selfCopy->_syncQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__MCSession_startStreamWithName_toPeer_error___block_invoke;
          block[3] = &unk_278B44048;
          block[4] = selfCopy;
          block[5] = peerID;
          block[6] = streamName;
          block[7] = &v38;
          block[8] = &v34;
          dispatch_sync(syncQueue, block);
          if (*(v39 + 24) == 1)
          {
            v14 = mcs_log(v12, v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [MCSession sendResourceAtURL:withName:toPeer:withCompletionHandler:];
            }

            if (error)
            {
              v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Peer not connected.", *MEMORY[0x277CCA450])}];
LABEL_25:
              v10 = 0;
              *error = v15;
LABEL_38:
              _Block_object_dispose(&v34, 8);
              _Block_object_dispose(&v38, 8);
              return v10;
            }

            goto LABEL_26;
          }

          if (*(v35 + 24) == 1)
          {
            v16 = mcs_log(v12, v13);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [MCSession startStreamWithName:toPeer:error:];
            }

            if (error)
            {
              v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Stream with same name already exists.", *MEMORY[0x277CCA450])}];
              goto LABEL_25;
            }

LABEL_26:
            v10 = 0;
            goto LABEL_38;
          }

          v17 = pipe(v50);
          if (v17)
          {
            v19 = mcs_log(v17, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = __error();
              [MCSession startStreamWithName:v20 toPeer:buf error:v19];
            }

            if (error)
            {
              v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Cannot create pipe.", *MEMORY[0x277CCA450])}];
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          v21 = v50[0];
          fcntl(v50[1], 73, 1);
          v23 = _CFWriteStreamCreateFromFileDescriptor();
          if (v23)
          {
            v24 = [(NSString *)streamName copy];
            v25 = selfCopy->_syncQueue;
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __46__MCSession_startStreamWithName_toPeer_error___block_invoke_527;
            v31[3] = &unk_278B44070;
            v32 = v21;
            v31[4] = selfCopy;
            v31[5] = v24;
            v31[6] = peerID;
            dispatch_async(v25, v31);

            if (!error)
            {
LABEL_35:
              v29 = mcs_log(v26, v27);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                v43 = streamName;
                v44 = 2112;
                v45 = peerID;
                v46 = 2048;
                v47 = v23;
                v48 = 2112;
                v49 = v23;
                _os_log_impl(&dword_239FB7000, v29, OS_LOG_TYPE_DEFAULT, "Stream (%@) started with peer (%@) [%p / %@].", buf, 0x2Au);
              }

              v10 = v23;
              goto LABEL_38;
            }

            v26 = 0;
          }

          else
          {
            v28 = mcs_log(0, v22);
            v26 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            if (v26)
            {
              [MCSession startStreamWithName:toPeer:error:];
            }

            if (!error)
            {
              goto LABEL_35;
            }

            v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Cannot create NSOutputStream.", *MEMORY[0x277CCA450])}];
          }

          *error = v26;
          goto LABEL_35;
        }
      }
    }
  }

  v9 = mcs_log(self, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MCSession startStreamWithName:toPeer:error:];
  }

  v10 = 0;
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Invalid parameter.", *MEMORY[0x277CCA450])}];
  }

  return v10;
}

void *__46__MCSession_startStreamWithName_toPeer_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKey:a1[5]];
  result = [v2 state];
  if (result != 2)
  {
    v4 = a1[7];
    goto LABEL_6;
  }

  result = [objc_msgSend(v2 "outgoingStreams")];
  if (result || (result = [objc_msgSend(v2 "outgoingStreamRequests")]) != 0)
  {
    v4 = a1[8];
LABEL_6:
    *(*(v4 + 8) + 24) = 1;
    return result;
  }

  v5 = [v2 outgoingStreamRequests];
  v6 = [MEMORY[0x277CBEB68] null];
  v7 = a1[6];

  return [v5 setObject:v6 forKey:v7];
}

uint64_t __46__MCSession_startStreamWithName_toPeer_error___block_invoke_527(uint64_t a1)
{
  v2 = fcntl(*(a1 + 56), 3, 0);
  if (v2 != -1)
  {
    fcntl(*(a1 + 56), 4, v2 | 4u);
  }

  fcntl(*(a1 + 56), 73, 1);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);

  return [v3 syncStartStreamWithName:v4 toPeer:v5 mcFD:v6 isResource:0];
}

- (void)logSessionInfo
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"sid";
  if ([(MCSession *)self sessionID])
  {
    sessionID = [(MCSession *)self sessionID];
  }

  else
  {
    sessionID = &stru_284D24468;
  }

  v5[0] = sessionID;
  v4[1] = @"localPeer";
  v5[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MCSession gckPID](self, "gckPID")}];
  v4[2] = @"auth";
  v5[2] = [MEMORY[0x277CCABB0] numberWithInt:{-[MCSession securityIdentity](self, "securityIdentity") != 0}];
  v4[3] = @"cryptPref";
  v5[3] = [MEMORY[0x277CCABB0] numberWithInteger:{-[MCSession encryptionPreference](self, "encryptionPreference")}];
  MCDashboardLogJSON([MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4], 0, @"SessionInfo");
}

- (void)syncLogConnectedPeers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"sid";
  if ([(MCSession *)self sessionID])
  {
    sessionID = [(MCSession *)self sessionID];
  }

  else
  {
    sessionID = &stru_284D24468;
  }

  v4[1] = @"peersCnt";
  v5[0] = sessionID;
  v5[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MCSession syncConnectedPeersCount](self, "syncConnectedPeersCount") + 1}];
  MCDashboardLogJSON([MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2], 0, @"ConnectedPeers");
}

- (void)syncLogMaxConnectedPeers
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"sid";
  if ([(MCSession *)self sessionID])
  {
    sessionID = [(MCSession *)self sessionID];
  }

  else
  {
    sessionID = &stru_284D24468;
  }

  v5[1] = @"maxPeersCnt";
  v6[0] = sessionID;
  v6[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MCSession maxPeers](self, "maxPeers")}];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  MCMetricsLog(@"com.apple.multipeerconnectivity.mcsession.maxconnectedpeers", v4, 0);
  MCDashboardLogJSON(v4, 0, @"MaxConnectedPeers");
}

+ (id)stringForSessionState:(int64_t)state
{
  if (state > 2)
  {
    return @"?";
  }

  else
  {
    return off_278B44178[state];
  }
}

+ (id)stringForMCSessionSendDataMode:(int64_t)mode
{
  v3 = @"?";
  if (mode == 1)
  {
    v3 = @"Unreliable";
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return @"Reliable";
  }
}

- (void)peerDidDeclineInvitation:(id)invitation
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = mcs_log(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    displayName = [invitation displayName];
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Peer [%@] declined invitation.", buf, 0xCu);
  }

  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__MCSession_Private__peerDidDeclineInvitation___block_invoke;
  v7[3] = &unk_278B43C60;
  v7[4] = self;
  v7[5] = invitation;
  dispatch_async(syncQueue, v7);
}

void *__47__MCSession_Private__peerDidDeclineInvitation___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  if (!v2 || (result = [v2 state], result != 2))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 syncPeer:v5 changeStateTo:0 shouldForceCallback:1];
  }

  return result;
}

- (int64_t)connectedInterfacesForPeer:(id)peer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MCSession_Private__connectedInterfacesForPeer___block_invoke;
  block[3] = &unk_278B44098;
  block[4] = self;
  block[5] = peer;
  block[6] = &v7;
  dispatch_sync(syncQueue, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __49__MCSession_Private__connectedInterfacesForPeer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = [*(a1 + 40) pid];
  v4 = (*(*(a1 + 48) + 8) + 24);

  return GCKSessionGetInterfacesForParticipant(v2, v3, v4);
}

- (void)setHeartbeatTimeout:(unint64_t)timeout
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__MCSession_Private__setHeartbeatTimeout___block_invoke;
  v4[3] = &unk_278B440C0;
  v4[4] = self;
  v4[5] = timeout;
  dispatch_async(syncQueue, v4);
}

- (void)setAWDLDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v10 = *MEMORY[0x277D85DE8];
  self->_AWDLDisabled = disabled;
  v4 = GCKSessionSetAWDLDisabled(self->_gckSession, disabled);
  v6 = mcs_log(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "no";
    if (disabledCopy)
    {
      v7 = "yes";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "AWDLDisabled set to %s.", &v8, 0xCu);
  }
}

- (void)setPreferNCMOverEthernet:(BOOL)ethernet
{
  ethernetCopy = ethernet;
  v10 = *MEMORY[0x277D85DE8];
  self->_preferNCMOverEthernet = ethernet;
  v4 = GCKSessionSetPreferNCMOverEthernet(self->_gckSession, ethernet);
  v6 = mcs_log(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "no";
    if (ethernetCopy)
    {
      v7 = "yes";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Prefer NCM over Ethernet set to %s.", &v8, 0xCu);
  }
}

- (void)setICETimeoutForced:(BOOL)forced
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__MCSession_Testing__setICETimeoutForced___block_invoke;
  v4[3] = &unk_278B43EB8;
  v4[4] = self;
  forcedCopy = forced;
  dispatch_async(syncQueue, v4);
}

- (void)closeDirectConnectionsWithPeer:(id)peer
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__MCSession_Testing__closeDirectConnectionsWithPeer___block_invoke;
  v4[3] = &unk_278B43C60;
  v4[4] = self;
  v4[5] = peer;
  dispatch_async(syncQueue, v4);
}

uint64_t __53__MCSession_Testing__closeDirectConnectionsWithPeer___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v2 = [*(a1 + 40) pid];

  return GCKSessionCloseDirectConnectionsWithPeer(v1, v2);
}

- (void)syncSendXDataStreamOpenResponseToPID:withRequestID:streamID:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncSendXDataPeerIDPushToPID:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:(void *)a1 pid:freeEventWhenDone:.cold.5(void *a1)
{
  [a1 streamID];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.6()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.7()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.8()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.9()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:(void *)a1 pid:freeEventWhenDone:.cold.10(void *a1)
{
  [a1 name];
  [a1 streamID];
  [a1 state];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.11()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.12()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.13()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.14()
{
  __error();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.15()
{
  __error();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.16()
{
  __error();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.17()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.18()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.19()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.20()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)syncHandleNetworkEvent:(void *)a1 pid:(uint64_t)a2 freeEventWhenDone:(uint64_t)a3 .cold.21(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_begin_catch(a1);
  objc_end_catch();
  v6 = mcs_log(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_error_impl(&dword_239FB7000, v6, OS_LOG_TYPE_ERROR, "PeerID push - failed to create peerID from data [%@].", &v7, 0xCu);
  }
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.22()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)syncHandleNetworkEvent:pid:freeEventWhenDone:.cold.23()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __58__MCSession_syncHandleNetworkEvent_pid_freeEventWhenDone___block_invoke_426_cold_2()
{
  __error();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)initWithPeer:securityIdentity:encryptionPreference:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithPeer:securityIdentity:encryptionPreference:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithPeer:securityIdentity:encryptionPreference:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)syncConnectPeer:(void *)a1 withConnectionData:.cold.2(void *a1)
{
  [a1 displayName];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)sendResourceAtURL:withName:toPeer:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendResourceAtURL:withName:toPeer:withCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendResourceAtURL:withName:toPeer:withCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_cold_1()
{
  __error();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __69__MCSession_sendResourceAtURL_withName_toPeer_withCompletionHandler___block_invoke_3_cold_2(id *a1)
{
  [*a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)syncStartStreamWithName:toPeer:mcFD:isResource:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)startStreamWithName:(int *)a1 toPeer:(uint8_t *)buf error:(os_log_t)log .cold.1(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_239FB7000, log, OS_LOG_TYPE_ERROR, "Cannot create pipe (%d).", buf, 8u);
}

- (void)startStreamWithName:toPeer:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startStreamWithName:toPeer:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)startStreamWithName:toPeer:error:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end