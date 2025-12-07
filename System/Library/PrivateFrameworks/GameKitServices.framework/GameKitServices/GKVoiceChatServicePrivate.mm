@interface GKVoiceChatServicePrivate
+ (id)defaultVoiceChatService;
- (BOOL)acceptCallID:(unsigned int)d error:(id *)error;
- (BOOL)getNSError:(id *)error code:(int64_t)code description:(id)description hResult:(int)result;
- (BOOL)getNSError:(id *)error code:(int64_t)code description:(id)description reason:(id)reason;
- (BOOL)startVoiceChatWithParticipantID:(id)d error:(id *)error;
- (GKVoiceChatServicePrivate)init;
- (double)localBitrate;
- (double)localFramerate;
- (double)remoteBitrate;
- (double)remoteFramerate;
- (id)createInvite:(id *)invite toParticipant:(id)participant callID:(unsigned int *)d;
- (id)createReplyUsingDictionary:(id)dictionary replyCode:(unint64_t)code error:(id *)error;
- (int)startICEConnectionCheck:(id)check isCaller:(BOOL)caller withCallID:(unsigned int)d;
- (void)cleanup;
- (void)dealloc;
- (void)denyCallID:(unsigned int)d;
- (void)informClientOfInviteFromParticipant:(id)incomingCallDict;
- (void)informClientVoiceChatDidNotStart:(id)start;
- (void)informClientVoiceChatDidNotStartMainSelector:(id)selector;
- (void)informClientVoiceChatDidStart:(id)start;
- (void)informClientVoiceChatDidStartMainSelector:(id)selector;
- (void)informClientVoiceChatDidStop:(id)stop;
- (void)localVideoLayer;
- (void)receivedData:(id)data fromParticipantID:(id)d;
- (void)remoteVideoLayer;
- (void)resetState;
- (void)setClient:(id)client;
- (void)setInputMeteringEnabled:(BOOL)enabled;
- (void)setLocalVideoLayer:(void *)layer;
- (void)setMicrophoneMuted:(BOOL)muted;
- (void)setOutputMeteringEnabled:(BOOL)enabled;
- (void)setRemoteVideoLayer:(void *)layer;
- (void)stopVoiceChatProc:(id)proc;
- (void)stopVoiceChatWithParticipantID:(id)d;
- (void)videoConference:(id)conference didStartSession:(BOOL)session withCallID:(unsigned int)d error:(id)error;
- (void)videoConference:(id)conference didStopWithCallID:(unsigned int)d error:(id)error;
@end

@implementation GKVoiceChatServicePrivate

- (GKVoiceChatServicePrivate)init
{
  v14 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = GKVoiceChatServicePrivate;
  v2 = [(GKVoiceChatServicePrivate *)&v7 init];
  VRTraceReset();
  VRTracePrintLoggingInfo();
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = v3;
      v10 = 2080;
      v11 = "[GKVoiceChatServicePrivate init]";
      v12 = 1024;
      v13 = 46;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServicePrivate : !!!!!!!!!!!", buf, 0x1Cu);
    }
  }

  v2->stateLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  v2->clientLock = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v5 = [[off_279682980 alloc] initWithClientPid:0];
  v2->conf = v5;
  [(VideoConference *)v5 setDelegate:v2];
  [(VideoConference *)v2->conf setPreferredCodec:9];
  [(VideoConference *)v2->conf setIsGKVoiceChat:1];
  [(VideoConference *)v2->conf setIsUsingSuppression:1];
  [(VideoConference *)v2->conf setShouldTimeoutPackets:1];
  v2->chatMode = 2;
  [(VideoConference *)v2->conf setChatMode:2];
  [(VideoConference *)v2->conf setUseCompressedConnectionData:1];
  [(VideoConference *)v2->conf setShouldPrioritizeParticipantIDForSIPInvite:1];
  return v2;
}

+ (id)defaultVoiceChatService
{
  result = defaultVoiceChatService__GKVoiceChatServicePrivate;
  if (!defaultVoiceChatService__GKVoiceChatServicePrivate)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultVoiceChatService__GKVoiceChatServicePrivate)
    {
      defaultVoiceChatService__GKVoiceChatServicePrivate = objc_alloc_init(GKVoiceChatServicePrivate);
    }

    objc_sync_exit(v3);
    return defaultVoiceChatService__GKVoiceChatServicePrivate;
  }

  return result;
}

- (void)cleanup
{
  [(NSRecursiveLock *)self->stateLock lock];
  [(VideoConference *)self->conf setDelegate:0];
  stateLock = self->stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)dealloc
{
  [(VideoConference *)self->conf cleanupManager];

  self->conf = 0;
  self->stateLock = 0;

  self->clientLock = 0;
  v3.receiver = self;
  v3.super_class = GKVoiceChatServicePrivate;
  [(GKVoiceChatServicePrivate *)&v3 dealloc];
}

- (BOOL)startVoiceChatWithParticipantID:(id)d error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (d)
      {
        uTF8String = [objc_msgSend_description(d) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v28 = 136315906;
      v29 = v7;
      v30 = 2080;
      v31 = "[GKVoiceChatServicePrivate startVoiceChatWithParticipantID:error:]";
      v32 = 1024;
      v33 = 118;
      v34 = 2080;
      v35 = uTF8String;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d startVoiceChatWithParticipantID with %s", &v28, 0x26u);
    }
  }

  [(NSRecursiveLock *)self->stateLock lock];
  if (!d)
  {
    v12 = @"participantID is nil";
    v13 = @"nil participantID";
    selfCopy3 = self;
    errorCopy3 = error;
    v16 = 32016;
    goto LABEL_15;
  }

  if (!self->client)
  {
    goto LABEL_13;
  }

  state = [(GKVoiceChatServicePrivate *)self state];
  client = self->client;
  if (state)
  {
    if (client)
    {
      v12 = @"Cannot do startVoiceChatWithParticipantID:error:";
      v13 = @"GKVoiceChatService is not idle.";
      selfCopy3 = self;
      errorCopy3 = error;
      v16 = 32012;
LABEL_15:
      [(GKVoiceChatServicePrivate *)selfCopy3 getNSError:errorCopy3 code:v16 description:v12 reason:v13];
      v17 = 0;
      goto LABEL_16;
    }

LABEL_13:
    v12 = @"Client is not set.";
    v13 = @"Client is nil.";
LABEL_14:
    selfCopy3 = self;
    errorCopy3 = error;
    v16 = 32006;
    goto LABEL_15;
  }

  if (![(GKVoiceChatClient *)client participantID])
  {
    v12 = @"Client participantID is not set.";
    v13 = @"participantID is nil.";
    goto LABEL_14;
  }

  v19 = [(GKVoiceChatServicePrivate *)self createInvite:error toParticipant:d callID:&self->curCallID];
  self->outgoingCallDict = v19;
  createBlob = [(GKVoiceChatDictionary *)v19 createBlob];
  v17 = 0;
  outgoingCallDict = self->outgoingCallDict;
  if (outgoingCallDict)
  {
    v22 = createBlob;
    if (createBlob)
    {
      v23 = outgoingCallDict;
      [(GKVoiceChatServicePrivate *)self setState:3];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v26 = self->outgoingCallDict;
          if (v26)
          {
            uTF8String2 = [objc_msgSend_description(v26) UTF8String];
          }

          else
          {
            uTF8String2 = "<nil>";
          }

          v28 = 136315906;
          v29 = v24;
          v30 = 2080;
          v31 = "[GKVoiceChatServicePrivate startVoiceChatWithParticipantID:error:]";
          v32 = 1024;
          v33 = 162;
          v34 = 2080;
          v35 = uTF8String2;
          _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OutgoingcallDict = %s", &v28, 0x26u);
        }
      }

      [(GKVoiceChatClient *)self->client voiceChatService:self->wrapperService sendData:v22 toParticipantID:d];
      v17 = 1;
    }
  }

LABEL_16:
  [(NSRecursiveLock *)self->stateLock unlock];
  return v17;
}

- (void)stopVoiceChatProc:(id)proc
{
  v33 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      if (proc)
      {
        uTF8String = [objc_msgSend_description(proc) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136315906;
      v22 = v7;
      v23 = 2080;
      v24 = "[GKVoiceChatServicePrivate stopVoiceChatProc:]";
      v25 = 1024;
      v26 = 173;
      v27 = 2080;
      v28 = uTF8String;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopVoiceChatProc1>:P%s", buf, 0x26u);
    }
  }

  [(NSRecursiveLock *)self->stateLock lock];
  if ([(GKVoiceChatServicePrivate *)self state])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        if (proc)
        {
          uTF8String2 = [objc_msgSend_description(proc) UTF8String];
        }

        else
        {
          uTF8String2 = "<nil>";
        }

        curCallID = self->curCallID;
        state = self->state;
        *buf = 136316418;
        v22 = v10;
        v23 = 2080;
        v24 = "[GKVoiceChatServicePrivate stopVoiceChatProc:]";
        v25 = 1024;
        v26 = 180;
        v27 = 2080;
        v28 = uTF8String2;
        v29 = 1024;
        v30 = curCallID;
        v31 = 1024;
        v32 = state;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopVoiceChatProc2>:P%s, curCallID = %d, state %d", buf, 0x32u);
      }
    }

    v15 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [(VideoConference *)self->conf stopCallID:self->curCallID];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v22 = v16;
        v23 = 2080;
        v24 = "[GKVoiceChatServicePrivate stopVoiceChatProc:]";
        v25 = 1024;
        v26 = 184;
        v27 = 1024;
        LODWORD(v28) = 184;
        _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
      }
    }

    state = [(GKVoiceChatServicePrivate *)self state];
    if (state <= 6 && ((1 << state) & 0x68) != 0)
    {
      -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->client, "voiceChatService:sendData:toParticipantID:", self->wrapperService, [-[GKVoiceChatDictionary cancelDictionary](self->outgoingCallDict "cancelDictionary")], proc);
    }

    [(GKVoiceChatServicePrivate *)self resetState];
    v19 = @"participantID";
    procCopy = proc;
    -[GKVoiceChatServicePrivate performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_informClientVoiceChatDidStop_, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&procCopy forKeys:&v19 count:1], 0);
    [(NSRecursiveLock *)self->stateLock unlock];
  }

  else
  {
    [(NSRecursiveLock *)self->stateLock unlock];
  }
}

- (void)stopVoiceChatWithParticipantID:(id)d
{
  if (self->client)
  {
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_stopVoiceChatProc_ toTarget:self withObject:d];
  }
}

- (BOOL)acceptCallID:(unsigned int)d error:(id *)error
{
  v5 = *&d;
  v26 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->stateLock lock];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      incomingCallDict = self->incomingCallDict;
      if (incomingCallDict)
      {
        uTF8String = [objc_msgSend_description(incomingCallDict) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v18 = 136315906;
      v19 = v7;
      v20 = 2080;
      v21 = "[GKVoiceChatServicePrivate acceptCallID:error:]";
      v22 = 1024;
      v23 = 241;
      v24 = 2080;
      v25 = uTF8String;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d acceptCallID with dict = %s", &v18, 0x26u);
    }
  }

  if (self->client)
  {
    if (self->incomingCallDict && [(GKVoiceChatServicePrivate *)self state]== 2)
    {
      if (self->curCallID == v5)
      {
        v11 = [(GKVoiceChatServicePrivate *)self createReplyUsingDictionary:self->incomingCallDict replyCode:1 error:error];
        self->outgoingCallDict = v11;
        createBlob = [(GKVoiceChatDictionary *)v11 createBlob];
        outgoingCallDict = self->outgoingCallDict;
        if (outgoingCallDict)
        {
          v14 = createBlob;
          if (createBlob)
          {
            v15 = outgoingCallDict;
            [(GKVoiceChatClient *)self->client voiceChatService:self->wrapperService sendData:v14 toParticipantID:[(GKVoiceChatDictionary *)self->outgoingCallDict participantID]];
            [(GKVoiceChatServicePrivate *)self startICEConnectionCheck:self->incomingCallDict isCaller:0];
            [(GKVoiceChatServicePrivate *)self setState:6];
            [(NSRecursiveLock *)self->stateLock unlock];
            return 1;
          }
        }

        v17 = [(GKVoiceChatServicePrivate *)self createReplyUsingDictionary:self->incomingCallDict replyCode:2 error:error];
        -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->client, "voiceChatService:sendData:toParticipantID:", self->wrapperService, [v17 createBlob], objc_msgSend(v17, "participantID"));
        [(GKVoiceChatServicePrivate *)self resetState];
      }

      else
      {
        [(GKVoiceChatServicePrivate *)self getNSError:error code:32004 description:@"Invalid callID." reason:@"CallID does not match current."];
      }

      [(NSRecursiveLock *)self->stateLock unlock];
    }

    else
    {
      [(GKVoiceChatServicePrivate *)self getNSError:error code:32012 description:@"Cannot do acceptCallID:error:" reason:@"No active call to accept."];
      [(NSRecursiveLock *)self->stateLock unlock];
      [(GKVoiceChatServicePrivate *)self resetState];
    }

    [(VideoConference *)self->conf stopCallID:v5];
  }

  else
  {
    [(GKVoiceChatServicePrivate *)self getNSError:error code:32006 description:@"Client is not set." reason:@"Client is nil."];
    [(NSRecursiveLock *)self->stateLock unlock];
  }

  return 0;
}

- (void)denyCallID:(unsigned int)d
{
  v26 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->stateLock lock];
  if (self->client && [(GKVoiceChatServicePrivate *)self state]== 2 && self->curCallID == d)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v6 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        incomingCallDict = self->incomingCallDict;
        if (incomingCallDict)
        {
          uTF8String = [objc_msgSend_description(incomingCallDict) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136315906;
        v19 = v7;
        v20 = 2080;
        v21 = "[GKVoiceChatServicePrivate denyCallID:]";
        v22 = 1024;
        v23 = 299;
        v24 = 2080;
        v25 = uTF8String;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d denyCallID with dict = %s", buf, 0x26u);
      }
    }

    v15 = 0;
    [(VideoConference *)self->conf stopCallID:self->curCallID];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v19 = v12;
        v20 = 2080;
        v21 = "[GKVoiceChatServicePrivate denyCallID:]";
        v22 = 1024;
        v23 = 302;
        v24 = 1024;
        LODWORD(v25) = 302;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
      }
    }

    v14 = [(GKVoiceChatServicePrivate *)self createReplyUsingDictionary:self->incomingCallDict replyCode:2 error:&v15];
    -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->client, "voiceChatService:sendData:toParticipantID:", self->wrapperService, [v14 createBlob], objc_msgSend(v14, "participantID"));
    v16 = @"participantID";
    fromParticipantID = [(GKVoiceChatDictionary *)self->incomingCallDict fromParticipantID];
    -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&fromParticipantID forKeys:&v16 count:1]);
    [(GKVoiceChatServicePrivate *)self resetState];
    [(NSRecursiveLock *)self->stateLock unlock];
  }

  else
  {
    stateLock = self->stateLock;

    [(NSRecursiveLock *)stateLock unlock];
  }
}

- (void)setClient:(id)client
{
  [(NSRecursiveLock *)self->stateLock lock];
  [(VideoConference *)self->conf setRequiresWifi:1];
  [(NSLock *)self->clientLock lock];
  self->client = client;
  [(NSLock *)self->clientLock unlock];
  stateLock = self->stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)informClientOfInviteFromParticipant:(id)incomingCallDict
{
  [(NSLock *)self->clientLock lock];
  v5 = self->client;
  client = self->client;
  [(NSLock *)self->clientLock unlock];
  if (!incomingCallDict)
  {
    incomingCallDict = self->incomingCallDict;
  }

  if (objc_opt_respondsToSelector())
  {
    -[GKVoiceChatClient voiceChatService:didReceiveInvitationFromParticipantID:callID:](client, "voiceChatService:didReceiveInvitationFromParticipantID:callID:", self->wrapperService, [incomingCallDict fromParticipantID], objc_msgSend(incomingCallDict, "callID"));
  }

  else
  {

    callID = [(GKVoiceChatDictionary *)self->incomingCallDict callID];

    [(GKVoiceChatServicePrivate *)self acceptCallID:callID error:0];
  }
}

- (void)informClientVoiceChatDidStart:(id)start
{
  if (objc_opt_respondsToSelector())
  {
    startCopy = start;

    [(GKVoiceChatServicePrivate *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStartMainSelector_ withObject:startCopy waitUntilDone:0];
  }
}

- (void)informClientVoiceChatDidStartMainSelector:(id)selector
{
  [(NSLock *)self->clientLock lock];
  v5 = self->client;
  client = self->client;
  [(NSLock *)self->clientLock unlock];
  [(GKVoiceChatClient *)client voiceChatService:self->wrapperService didStartWithParticipantID:selector];
}

- (void)informClientVoiceChatDidNotStart:(id)start
{
  if (objc_opt_respondsToSelector())
  {

    [(GKVoiceChatServicePrivate *)self performSelectorOnMainThread:sel_informClientVoiceChatDidNotStartMainSelector_ withObject:start waitUntilDone:0];
  }
}

- (void)informClientVoiceChatDidNotStartMainSelector:(id)selector
{
  [(NSLock *)self->clientLock lock];
  v5 = self->client;
  client = self->client;
  [(NSLock *)self->clientLock unlock];
  -[GKVoiceChatClient voiceChatService:didNotStartWithParticipantID:error:](client, "voiceChatService:didNotStartWithParticipantID:error:", self->wrapperService, [selector objectForKeyedSubscript:@"participantID"], objc_msgSend(selector, "objectForKeyedSubscript:", @"error"));
}

- (void)informClientVoiceChatDidStop:(id)stop
{
  [(NSLock *)self->clientLock lock];
  v5 = self->client;
  client = self->client;
  [(NSLock *)self->clientLock unlock];
  if (objc_opt_respondsToSelector())
  {
    -[GKVoiceChatClient voiceChatService:didStopWithParticipantID:error:](client, "voiceChatService:didStopWithParticipantID:error:", self->wrapperService, [stop objectForKeyedSubscript:@"participantID"], objc_msgSend(stop, "objectForKeyedSubscript:", @"error"));
  }
}

- (void)resetState
{
  [(NSRecursiveLock *)self->stateLock lock];
  [(GKVoiceChatServicePrivate *)self setState:0];

  self->incomingCallDict = 0;
  self->outgoingCallDict = 0;
  self->curCallID = -1;
  *&self->currentConnResult.dwCallID = 0u;
  *&self->currentConnResult.proto = 0u;
  *self->currentConnResult.mbLocal.szIfName = 0u;
  self->currentConnResult.mbLocal.IP = 0u;
  *&self->currentConnResult.mbLocal.wPort = 0u;
  *&self->currentConnResult.mbRemote.szIfName[8] = 0u;
  *(&self->currentConnResult.mbRemote.IP + 8) = 0u;
  *self->currentConnResult.mbSrc.szIfName = 0u;
  self->currentConnResult.mbSrc.IP = 0u;
  *&self->currentConnResult.mbSrc.wPort = 0u;
  *&self->currentConnResult.mbDst.szIfName[8] = 0u;
  *(&self->currentConnResult.mbDst.IP + 8) = 0u;
  *self->currentConnResult.mbRemoteSrc.szIfName = 0u;
  self->currentConnResult.mbRemoteSrc.IP = 0u;
  *&self->currentConnResult.mbRemoteSrc.wPort = 0u;
  *&self->currentConnResult.mbRelayExt.szIfName[8] = 0u;
  *(&self->currentConnResult.mbRelayExt.IP + 8) = 0u;
  *&self->currentConnResult.bIfLocalCellularQoS = 0u;
  *&self->currentConnResult.wCellularMTU = 0u;
  *&self->currentConnResult.next = 0u;
  stateLock = self->stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)receivedData:(id)data fromParticipantID:(id)d
{
  v125 = *MEMORY[0x277D85DE8];
  if (self->client)
  {
    [(NSRecursiveLock *)self->stateLock lock];
    v7 = [GKVoiceChatDictionary dictionaryFromData:data];
    if (v7)
    {
      v8 = v7;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          curCallID = self->curCallID;
          state = self->state;
          *buf = 136316418;
          *&buf[4] = v9;
          v117 = 2080;
          v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
          v119 = 1024;
          v120 = 427;
          v121 = 1024;
          *v122 = state;
          *&v122[4] = 1024;
          *&v122[6] = curCallID;
          *v123 = 2080;
          *&v123[2] = [objc_msgSend_description(v8) UTF8String];
          _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d State = %d, curCallID = %d, received dict = {%s}", buf, 0x32u);
        }
      }

      v13 = self->state;
      if (v13 <= 2)
      {
        if (!v13)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v47 = VRTraceErrorLogLevelToCSTR();
            v48 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (d)
              {
                uTF8String = [objc_msgSend_description(d) UTF8String];
              }

              else
              {
                uTF8String = "<nil>";
              }

              uTF8String2 = [objc_msgSend_description(v8) UTF8String];
              isInviteDictionary = [v8 isInviteDictionary];
              *buf = 136316418;
              *&buf[4] = v47;
              v117 = 2080;
              v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
              v119 = 1024;
              v120 = 431;
              v121 = 2080;
              *v122 = uTF8String;
              *&v122[8] = 2080;
              *v123 = uTF8String2;
              *&v123[8] = 1024;
              v124 = isInviteDictionary;
              _os_log_impl(&dword_24E50C000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d switch - GKVoiceChatServiceStateIdle from = %s: inviteIsValid = %s, %d", buf, 0x36u);
            }
          }

          if ([(GKVoiceChatServicePrivate *)self inviteIsValid:v8])
          {
            self->incomingCallDict = v8;
            [(GKVoiceChatServicePrivate *)self setState:2];
            self->curCallID = [v8 callID];
            [(GKVoiceChatServicePrivate *)self performSelectorOnMainThread:sel_informClientOfInviteFromParticipant_ withObject:0 waitUntilDone:0];
          }

          else
          {
            [(GKVoiceChatServicePrivate *)self resetState];
          }

          goto LABEL_99;
        }

        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_99;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v16 = self->curCallID;
              *buf = 136315906;
              *&buf[4] = v14;
              v117 = 2080;
              v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
              v119 = 1024;
              v120 = 449;
              v121 = 1024;
              *v122 = v16;
              _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d switch - GKVoiceChatServiceStateWaitingForClientResponse callID = %d", buf, 0x22u);
            }
          }

          if ([d isEqualToString:{-[GKVoiceChatDictionary fromParticipantID](self->incomingCallDict, "fromParticipantID")}])
          {
            if ([v8 isCancelDictionary])
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v17 = VRTraceErrorLogLevelToCSTR();
                v18 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v19 = self->curCallID;
                  *buf = 136315906;
                  *&buf[4] = v17;
                  v117 = 2080;
                  v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
                  v119 = 1024;
                  v120 = 467;
                  v121 = 1024;
                  *v122 = v19;
                  _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServiceStateWaitingForClientResponse: Cancelling call is working... for callID %d", buf, 0x22u);
                }
              }

              *buf = 0;
              v20 = [(VideoConference *)self->conf remoteCancelledCallID:self->curCallID];
              v22 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(v20, v21), "localizedStringForKey:value:table:", @"%@ has cancelled this request.", &stru_286195238, @"GKSessionEvent", d];
              -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", buf, 32009, v22, [GCKGameConnectivityKitBundle(v22 v23)]);
              v114[0] = @"participantID";
              v114[1] = @"error";
              v115[0] = d;
              v115[1] = *buf;
              v24 = MEMORY[0x277CBEAC0];
              v25 = v115;
              v26 = v114;
LABEL_19:
              -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [v24 dictionaryWithObjects:v25 forKeys:v26 count:2]);
              [(GKVoiceChatServicePrivate *)self resetState];
              v27 = *buf;
LABEL_98:
            }

LABEL_99:
            [(NSRecursiveLock *)self->stateLock unlock];
            return;
          }

          if (![(GKVoiceChatServicePrivate *)self inviteIsValid:v8])
          {
            goto LABEL_99;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v53 = VRTraceErrorLogLevelToCSTR();
            v54 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v55 = self->curCallID;
              *buf = 136315906;
              *&buf[4] = v53;
              v117 = 2080;
              v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
              v119 = 1024;
              v120 = 455;
              v121 = 1024;
              *v122 = v55;
              _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServiceStateWaitingForClientResponse: GOT INVITE AND WE ARE BUSY BUSY callID %d", buf, 0x22u);
            }
          }

          *buf = 0;
          v44 = buf;
          goto LABEL_48;
        }

        goto LABEL_24;
      }

      if ((v13 - 5) < 2)
      {
LABEL_24:
        if (-[GKVoiceChatServicePrivate inviteIsValid:](self, "inviteIsValid:", v8) && (![d isEqualToString:{-[GKVoiceChatDictionary fromParticipantID](self->incomingCallDict, "fromParticipantID")}] || (objc_msgSend(v8, "matchesNonce:", -[GKVoiceChatDictionary nonce](self->incomingCallDict, "nonce")) & 1) == 0))
        {
          v105 = 0;
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v40 = VRTraceErrorLogLevelToCSTR();
            v41 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v43 = self->curCallID;
              v42 = self->state;
              *buf = 136316162;
              *&buf[4] = v40;
              v117 = 2080;
              v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
              v119 = 1024;
              v120 = 601;
              v121 = 1024;
              *v122 = v42;
              *&v122[4] = 1024;
              *&v122[6] = v43;
              _os_log_impl(&dword_24E50C000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d State = %d: GOT INVITE AND WE ARE BUSY BUSY with callID %d", buf, 0x28u);
            }
          }

          v44 = &v105;
LABEL_48:
          selfCopy2 = self;
          v46 = v8;
LABEL_57:
          -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->client, "voiceChatService:sendData:toParticipantID:", self->wrapperService, [-[GKVoiceChatServicePrivate createReplyUsingDictionary:replyCode:error:](selfCopy2 createReplyUsingDictionary:v46 replyCode:3 error:{v44), "createBlob"}], d);
          goto LABEL_99;
        }

        if (![d isEqualToString:{-[GKVoiceChatDictionary fromParticipantID](self->incomingCallDict, "fromParticipantID")}] || !objc_msgSend(v8, "isCancelDictionary") || !objc_msgSend(v8, "matchesNonce:", -[GKVoiceChatDictionary nonce](self->outgoingCallDict, "nonce")))
        {
          goto LABEL_99;
        }

        v105 = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v31 = self->curCallID;
            *buf = 136315906;
            *&buf[4] = v29;
            v117 = 2080;
            v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v119 = 1024;
            v120 = 613;
            v121 = 1024;
            *v122 = v31;
            _os_log_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cancelling call from the remote user... for callID %d", buf, 0x22u);
          }
        }

        [(VideoConference *)self->conf remoteCancelledCallID:self->curCallID];
        resetState = [(GKVoiceChatServicePrivate *)self resetState];
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(resetState, v33), "localizedStringForKey:value:table:", @"%@ has cancelled this request.", &stru_286195238, @"GKSessionEvent", d];
        -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", &v105, 32009, v34, [GCKGameConnectivityKitBundle(v34 v35)]);
        v106[0] = @"participantID";
        v106[1] = @"error";
        v107[0] = d;
        v107[1] = v105;
        -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2]);
LABEL_97:
        v27 = v105;
        goto LABEL_98;
      }

      if (v13 != 3)
      {
        goto LABEL_99;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v38 = self->curCallID;
          *buf = 136315906;
          *&buf[4] = v36;
          v117 = 2080;
          v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
          v119 = 1024;
          v120 = 480;
          v121 = 1024;
          *v122 = v38;
          _os_log_impl(&dword_24E50C000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d switch - GKVoiceChatServiceStateWaitingForInviteResponse callID %d", buf, 0x22u);
        }
      }

      if (![d isEqualToString:{-[GKVoiceChatDictionary participantID](self->outgoingCallDict, "participantID")}])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v50 = VRTraceErrorLogLevelToCSTR();
          v51 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v52 = self->curCallID;
            *buf = 136315906;
            *&buf[4] = v50;
            v117 = 2080;
            v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v119 = 1024;
            v120 = 584;
            v121 = 1024;
            *v122 = v52;
            _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServiceStateWaitingForInviteResponse: GOT INVITE AND WE ARE BUSY BUSY with callID %d", buf, 0x22u);
          }
        }

        selfCopy2 = self;
        v46 = v8;
        v44 = 0;
        goto LABEL_57;
      }

      if ([(GKVoiceChatDictionary *)self->outgoingCallDict matchesResponse:v8])
      {
        self->incomingCallDict = v8;
        v105 = 0;
        response = [v8 response];
        if (response == 3)
        {
          [(VideoConference *)self->conf stopCallID:self->curCallID];
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (ErrorLogLevelForModule >= 7)
          {
            v89 = VRTraceErrorLogLevelToCSTR();
            v90 = *MEMORY[0x277CE5818];
            ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
            if (ErrorLogLevelForModule)
            {
              *buf = 136315906;
              *&buf[4] = v89;
              v117 = 2080;
              v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
              v119 = 1024;
              v120 = 502;
              v121 = 1024;
              *v122 = 502;
              _os_log_impl(&dword_24E50C000, v90, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
            }
          }

          v82 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(ErrorLogLevelForModule, v88), "localizedStringForKey:value:table:", @"%@ is currently busy in another call.", &stru_286195238, @"GKSessionEvent", d];
          v84 = [GCKGameConnectivityKitBundle(v82 v91)];
          selfCopy4 = self;
          v86 = 32008;
        }

        else
        {
          if (response != 2)
          {
            if (response == 1)
            {
              [(GKVoiceChatServicePrivate *)self setState:5];
              [(GKVoiceChatServicePrivate *)self startICEConnectionCheck:v8 isCaller:1];
            }

            goto LABEL_94;
          }

          [(VideoConference *)self->conf stopCallID:self->curCallID];
          v78 = VRTraceGetErrorLogLevelForModule();
          if (v78 >= 7)
          {
            v80 = VRTraceErrorLogLevelToCSTR();
            v81 = *MEMORY[0x277CE5818];
            v78 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
            if (v78)
            {
              *buf = 136315906;
              *&buf[4] = v80;
              v117 = 2080;
              v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
              v119 = 1024;
              v120 = 497;
              v121 = 1024;
              *v122 = 497;
              _os_log_impl(&dword_24E50C000, v81, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
            }
          }

          v82 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(v78, v79), "localizedStringForKey:value:table:", @"%@ has declined your request.", &stru_286195238, @"GKSessionEvent", d];
          v84 = [GCKGameConnectivityKitBundle(v82 v83)];
          selfCopy4 = self;
          v86 = 32011;
        }

        [(GKVoiceChatServicePrivate *)selfCopy4 getNSError:&v105 code:v86 description:v82 reason:v84];
LABEL_94:
        if (!v105)
        {
          goto LABEL_99;
        }

        v112[0] = @"participantID";
        v112[1] = @"error";
        v113[0] = d;
        v113[1] = v105;
        v73 = MEMORY[0x277CBEAC0];
        v74 = v113;
        v75 = v112;
        goto LABEL_96;
      }

      v56 = [(GKVoiceChatServicePrivate *)self inviteIsValid:v8];
      v57 = VRTraceGetErrorLogLevelForModule();
      if (!v56)
      {
        if (v57 >= 7)
        {
          v64 = VRTraceErrorLogLevelToCSTR();
          v65 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            uTF8String3 = [objc_msgSend_description(v8) UTF8String];
            *buf = 136315906;
            *&buf[4] = v64;
            v117 = 2080;
            v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v119 = 1024;
            v120 = 565;
            v121 = 2080;
            *v122 = uTF8String3;
            _os_log_impl(&dword_24E50C000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [self inviteIsValid:calleeResponse] is NO {%s}", buf, 0x26u);
          }
        }

        if ([v8 isReplyDictionary])
        {
          goto LABEL_99;
        }

        v105 = 0;
        [(VideoConference *)self->conf stopCallID:self->curCallID];
        v67 = VRTraceGetErrorLogLevelForModule();
        if (v67 >= 7)
        {
          v69 = VRTraceErrorLogLevelToCSTR();
          v70 = *MEMORY[0x277CE5818];
          v67 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
          if (v67)
          {
            *buf = 136315906;
            *&buf[4] = v69;
            v117 = 2080;
            v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v119 = 1024;
            v120 = 573;
            v121 = 1024;
            *v122 = 573;
            _os_log_impl(&dword_24E50C000, v70, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
          }
        }

        v71 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(v67, v68), "localizedStringForKey:value:table:", @"%@ has declined your request.", &stru_286195238, @"GKSessionEvent", d];
        -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", &v105, 32011, v71, [GCKGameConnectivityKitBundle(v71 v72)]);
        v108[0] = @"participantID";
        v108[1] = @"error";
        v109[0] = d;
        v109[1] = v105;
        v73 = MEMORY[0x277CBEAC0];
        v74 = v109;
        v75 = v108;
LABEL_96:
        -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [v73 dictionaryWithObjects:v74 forKeys:v75 count:2]);
        [(GKVoiceChatServicePrivate *)self resetState];
        goto LABEL_97;
      }

      if (v57 >= 7)
      {
        v58 = VRTraceErrorLogLevelToCSTR();
        v59 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v60 = [-[GKVoiceChatClient participantID](self->client "participantID")] == -1;
          v61 = [-[GKVoiceChatClient participantID](self->client "participantID")];
          *buf = 136316162;
          *&buf[4] = v58;
          v117 = 2080;
          v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
          v119 = 1024;
          v120 = 516;
          v121 = 1024;
          *v122 = v60;
          *&v122[4] = 1024;
          *&v122[6] = v61 == 1;
          _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [self inviteIsValid:calleeResponse] is YES:isCaller=%d, %d", buf, 0x28u);
        }
      }

      self->incomingCallDict = v8;
      if ([-[GKVoiceChatClient participantID](self->client "participantID")] == -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v92 = VRTraceErrorLogLevelToCSTR();
          v93 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v92;
            v117 = 2080;
            v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
            v119 = 1024;
            v120 = 524;
            _os_log_impl(&dword_24E50C000, v93, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am the caller starting ice check", buf, 0x1Cu);
          }
        }
      }

      else
      {
        if ([-[GKVoiceChatClient participantID](self->client "participantID")] == 1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v62 = VRTraceErrorLogLevelToCSTR();
            v63 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = v62;
              v117 = 2080;
              v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
              v119 = 1024;
              v120 = 531;
              _os_log_impl(&dword_24E50C000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am the callee starting ice check", buf, 0x1Cu);
            }
          }

LABEL_107:
          [(GKVoiceChatServicePrivate *)self setState:6];
          incomingCallDict = self->incomingCallDict;
          selfCopy6 = self;
          v98 = 0;
          goto LABEL_108;
        }

        nonce = [(GKVoiceChatDictionary *)self->incomingCallDict nonce];
        nonce2 = [(GKVoiceChatDictionary *)self->outgoingCallDict nonce];
        if (nonce2 >= nonce)
        {
          if (nonce2 <= nonce)
          {
            [(VideoConference *)self->conf stopCallID:self->curCallID];
            v99 = VRTraceGetErrorLogLevelForModule();
            if (v99 >= 7)
            {
              v101 = VRTraceErrorLogLevelToCSTR();
              v102 = *MEMORY[0x277CE5818];
              v99 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
              if (v99)
              {
                *buf = 136315906;
                *&buf[4] = v101;
                v117 = 2080;
                v118 = "[GKVoiceChatServicePrivate receivedData:fromParticipantID:]";
                v119 = 1024;
                v120 = 552;
                v121 = 1024;
                *v122 = 552;
                _os_log_impl(&dword_24E50C000, v102, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
              }
            }

            *buf = 0;
            v103 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(v99, v100), "localizedStringForKey:value:table:", @"%@ has declined your request.", &stru_286195238, @"GKSessionEvent", d];
            -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", buf, 32011, v103, [GCKGameConnectivityKitBundle(v103 v104)]);
            v110[0] = @"participantID";
            v110[1] = @"error";
            v111[0] = d;
            v111[1] = *buf;
            v24 = MEMORY[0x277CBEAC0];
            v25 = v111;
            v26 = v110;
            goto LABEL_19;
          }

          goto LABEL_107;
        }
      }

      [(GKVoiceChatServicePrivate *)self setState:5];
      incomingCallDict = self->incomingCallDict;
      selfCopy6 = self;
      v98 = 1;
LABEL_108:
      [(GKVoiceChatServicePrivate *)selfCopy6 startICEConnectionCheck:incomingCallDict isCaller:v98];
      goto LABEL_99;
    }

    stateLock = self->stateLock;

    [(NSRecursiveLock *)stateLock unlock];
  }
}

- (id)createReplyUsingDictionary:(id)dictionary replyCode:(unint64_t)code error:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (code == 1)
  {
    v8 = [(VideoConference *)self->conf connectionBlobForParticipantID:[(GKVoiceChatClient *)self->client participantID] callID:&v11 error:error];
    if (!v8)
    {
      return 0;
    }

    v9 = v11;
    self->curCallID = v11;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:"empty" length:{5, error}];
    v9 = 0;
  }

  return [dictionary replyDictionary:code connectionData:v8 callID:v9 focus:{-[GKVoiceChatServicePrivate isFocus](self, "isFocus")}];
}

- (id)createInvite:(id *)invite toParticipant:(id)participant callID:(unsigned int *)d
{
  v9 = *d;
  result = [(VideoConference *)self->conf connectionBlobForParticipantID:[(GKVoiceChatClient *)self->client participantID] callID:&v9 error:invite];
  *d = v9;
  if (result)
  {
    return [GKVoiceChatDictionary inviteDictionaryToParticipantID:participant fromParticipantID:[(GKVoiceChatClient *)self->client participantID] connectionData:result callID:*d focus:[(GKVoiceChatServicePrivate *)self isFocus]];
  }

  return result;
}

- (int)startICEConnectionCheck:(id)check isCaller:(BOOL)caller withCallID:(unsigned int)d
{
  v5 = *&d;
  callerCopy = caller;
  v34 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() < 6)
  {
    goto LABEL_12;
  }

  v9 = VRTraceErrorLogLevelToCSTR();
  v10 = *MEMORY[0x277CE5818];
  if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  if (!self)
  {
    uTF8String = "<nil>";
    if (check)
    {
      goto LABEL_5;
    }

LABEL_7:
    uTF8String2 = "<nil>";
    goto LABEL_8;
  }

  uTF8String = [objc_msgSend_description(self) UTF8String];
  if (!check)
  {
    goto LABEL_7;
  }

LABEL_5:
  uTF8String2 = [objc_msgSend_description(check) UTF8String];
LABEL_8:
  conf = self->conf;
  if (conf)
  {
    uTF8String3 = [objc_msgSend_description(conf) UTF8String];
  }

  else
  {
    uTF8String3 = "<nil>";
  }

  *buf = 136316930;
  *&buf[4] = v9;
  v20 = 2080;
  v21 = "[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:]";
  v22 = 1024;
  v23 = 711;
  v24 = 2080;
  v25 = uTF8String;
  v26 = 2080;
  v27 = uTF8String2;
  v28 = 1024;
  v29 = callerCopy;
  v30 = 1024;
  v31 = v5;
  v32 = 2080;
  v33 = uTF8String3;
  _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s startICEConnectionCheck: %s, isCaller = %d, callID = %d, conf = %s", buf, 0x46u);
LABEL_12:
  *buf = 0;
  v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{objc_msgSend(check, "connectionData"), *off_2796828B8, 0}];
  LODWORD(v18) = -1;
  v16 = -[VideoConference startConnectionWithParticipantID:callID:usingInviteData:isCaller:relayResponseDict:didOriginateRelayRequest:capabilities:idsSocket:destination:error:](self->conf, "startConnectionWithParticipantID:callID:usingInviteData:isCaller:relayResponseDict:didOriginateRelayRequest:capabilities:idsSocket:destination:error:", [check fromParticipantID], v5, v15, callerCopy, 0, 0, objc_msgSend(off_279682978, "AudioOnlyVCCapabilities"), v18, 0, buf);

  return v16;
}

- (BOOL)getNSError:(id *)error code:(int64_t)code description:(id)description hResult:(int)result
{
  if (result <= 0x16u)
  {
    if (result <= 0xEu)
    {
      if (result == 3)
      {
        v8 = @"Out of memory";
        goto LABEL_27;
      }

      if (result == 14)
      {
        v8 = @"Data size too large";
        goto LABEL_27;
      }
    }

    else
    {
      switch(result)
      {
        case 0xFu:
          v8 = @"Invalid payload";
          goto LABEL_27;
        case 0x10u:
          v8 = @"Unsupported";
          goto LABEL_27;
        case 0x16u:
          v8 = @"Not found";
          goto LABEL_27;
      }
    }

LABEL_26:
    v8 = @"Internal error";
    goto LABEL_27;
  }

  if (result > 0x21u)
  {
    switch(result)
    {
      case '""':
        v8 = @"Bad message";
        goto LABEL_27;
      case '#':
        v8 = @"No transaction";
        goto LABEL_27;
      case '/':
        v8 = @"Declined";
        goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (result == 23)
  {
    v8 = @"Timed out";
    goto LABEL_27;
  }

  if (result == 30)
  {
    v8 = @"Cancelled";
    goto LABEL_27;
  }

  if (result != 33)
  {
    goto LABEL_26;
  }

  v8 = @"Connection closed";
LABEL_27:
  [(GKVoiceChatServicePrivate *)self getNSError:error code:code description:description reason:v8, v6, v7];
  return 1;
}

- (BOOL)getNSError:(id *)error code:(int64_t)code description:(id)description reason:(id)reason
{
  v29 = *MEMORY[0x277D85DE8];
  if (error)
  {
    v9 = 0;
    if (description && reason)
    {
      v11 = objc_alloc(MEMORY[0x277CBEAC0]);
      v9 = [v11 initWithObjectsAndKeys:{description, *MEMORY[0x277CCA450], reason, *MEMORY[0x277CCA470], 0}];
    }

    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:*off_279682960 code:code userInfo:v9];
    *error = v12;
    v13 = v12;
    v14 = *error;

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (*error)
        {
          uTF8String = [objc_msgSend_description(*error) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136316162;
        v20 = v15;
        v21 = 2080;
        v22 = "[GKVoiceChatServicePrivate getNSError:code:description:reason:]";
        v23 = 1024;
        v24 = 804;
        v25 = 1024;
        codeCopy = code;
        v27 = 2080;
        v28 = uTF8String;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Error: %d -- %s.", buf, 0x2Cu);
      }
    }
  }

  return error != 0;
}

- (void)setOutputMeteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->outputMeteringEnabled = enabled;
  [(NSRecursiveLock *)self->stateLock lock];
  [(VideoConference *)self->conf setOutputMeteringEnabled:enabledCopy];
  stateLock = self->stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)setInputMeteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->inputMeteringEnabled = enabled;
  [(NSRecursiveLock *)self->stateLock lock];
  [(VideoConference *)self->conf setInputMeteringEnabled:enabledCopy];
  stateLock = self->stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)setMicrophoneMuted:(BOOL)muted
{
  [(NSRecursiveLock *)self->stateLock lock];
  self->microphoneMuted = muted;
  [(NSRecursiveLock *)self->stateLock unlock];
  microphoneMuted = self->microphoneMuted;
  conf = self->conf;

  [(VideoConference *)conf setMicrophoneMuted:microphoneMuted];
}

- (void)videoConference:(id)conference didStartSession:(BOOL)session withCallID:(unsigned int)d error:(id)error
{
  sessionCopy = session;
  v30 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      curCallID = self->curCallID;
      *buf = 136316418;
      v19 = v10;
      v20 = 2080;
      v21 = "[GKVoiceChatServicePrivate videoConference:didStartSession:withCallID:error:]";
      v22 = 1024;
      v23 = 885;
      v24 = 1024;
      dCopy = d;
      v26 = 1024;
      v27 = curCallID;
      v28 = 1024;
      v29 = curCallID == d;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoConference: didStopWithCallID:%d == %d ? %d", buf, 0x2Eu);
    }
  }

  [(NSRecursiveLock *)self->stateLock lock];
  if (self->curCallID == d && self->state)
  {
    if (sessionCopy)
    {
      self->state = 1;
      [(GKVoiceChatServicePrivate *)self informClientVoiceChatDidStart:[(GKVoiceChatDictionary *)self->outgoingCallDict participantID]];
    }

    else
    {
      participantID = [(GKVoiceChatDictionary *)self->outgoingCallDict participantID];
      v16[1] = @"error";
      v17[0] = participantID;
      v17[1] = error;
      -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2]);
      [(GKVoiceChatServicePrivate *)self resetState];
    }
  }

  else
  {
    [(VideoConference *)self->conf stopCallID:?];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v19 = v13;
        v20 = 2080;
        v21 = "[GKVoiceChatServicePrivate videoConference:didStartSession:withCallID:error:]";
        v22 = 1024;
        v23 = 902;
        v24 = 1024;
        dCopy = 902;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopCallID:__LINE = %d", buf, 0x22u);
      }
    }
  }

  [(NSRecursiveLock *)self->stateLock unlock];
}

- (void)videoConference:(id)conference didStopWithCallID:(unsigned int)d error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      curCallID = self->curCallID;
      *buf = 136316418;
      v15 = v8;
      v16 = 2080;
      v17 = "[GKVoiceChatServicePrivate videoConference:didStopWithCallID:error:]";
      v18 = 1024;
      v19 = 911;
      v20 = 1024;
      dCopy = d;
      v22 = 1024;
      v23 = curCallID;
      v24 = 1024;
      v25 = curCallID == d;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoConference: didStopWithCallID:%d == %d ? %d", buf, 0x2Eu);
    }
  }

  [(NSRecursiveLock *)self->stateLock lock];
  if (self->curCallID == d && self->state)
  {
    participantID = [(GKVoiceChatDictionary *)self->outgoingCallDict participantID];
    v12[1] = @"error";
    v13[0] = participantID;
    v13[1] = error;
    -[GKVoiceChatServicePrivate performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_informClientVoiceChatDidStop_, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2], 0);
    [(GKVoiceChatServicePrivate *)self resetState];
  }

  [(NSRecursiveLock *)self->stateLock unlock];
}

- (void)setLocalVideoLayer:(void *)layer
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v3;
      v7 = 2080;
      v8 = "[GKVoiceChatServicePrivate setLocalVideoLayer:]";
      v9 = 1024;
      v10 = 928;
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v13 = 1024;
      v14 = 928;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v5, 0x2Cu);
    }
  }
}

- (void)localVideoLayer
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKVoiceChatServicePrivate localVideoLayer]";
      v9 = 1024;
      v10 = 933;
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v13 = 1024;
      v14 = 933;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v5, 0x2Cu);
    }
  }

  return 0;
}

- (void)setRemoteVideoLayer:(void *)layer
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v3;
      v7 = 2080;
      v8 = "[GKVoiceChatServicePrivate setRemoteVideoLayer:]";
      v9 = 1024;
      v10 = 938;
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v13 = 1024;
      v14 = 938;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v5, 0x2Cu);
    }
  }
}

- (void)remoteVideoLayer
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKVoiceChatServicePrivate remoteVideoLayer]";
      v9 = 1024;
      v10 = 943;
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v13 = 1024;
      v14 = 943;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v5, 0x2Cu);
    }
  }

  return 0;
}

- (double)localFramerate
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKVoiceChatServicePrivate localFramerate]";
      v9 = 1024;
      v10 = 948;
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v13 = 1024;
      v14 = 948;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v5, 0x2Cu);
    }
  }

  return 0.0;
}

- (double)localBitrate
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKVoiceChatServicePrivate localBitrate]";
      v9 = 1024;
      v10 = 953;
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v13 = 1024;
      v14 = 953;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v5, 0x2Cu);
    }
  }

  return 0.0;
}

- (double)remoteFramerate
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKVoiceChatServicePrivate remoteFramerate]";
      v9 = 1024;
      v10 = 958;
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v13 = 1024;
      v14 = 958;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v5, 0x2Cu);
    }
  }

  return 0.0;
}

- (double)remoteBitrate
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136316162;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKVoiceChatServicePrivate remoteBitrate]";
      v9 = 1024;
      v10 = 963;
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKVoiceChatServicePrivate.m";
      v13 = 1024;
      v14 = 963;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STUB:%s: %d", &v5, 0x2Cu);
    }
  }

  return 0.0;
}

- (void)createReplyUsingDictionary:(uint64_t)a3 replyCode:(os_log_t)log error:.cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = "[GKVoiceChatServicePrivate createReplyUsingDictionary:replyCode:error:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 675;
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_24E50C000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Caught exception: %s", buf, 0x26u);
}

@end