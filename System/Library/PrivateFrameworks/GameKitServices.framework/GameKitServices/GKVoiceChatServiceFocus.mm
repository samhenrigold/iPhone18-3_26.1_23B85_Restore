@interface GKVoiceChatServiceFocus
+ (id)defaultVoiceChatService;
- (BOOL)acceptCallID:(unsigned int)d error:(id *)error;
- (BOOL)hasMic;
- (BOOL)isAudioPausedToParticipantID:(id)d;
- (BOOL)processCancelDict:(id)dict;
- (BOOL)processFocusChange:(id)change fromParticipantID:(id)d;
- (BOOL)processFocusDict:(id)dict fromParticipantID:(id)d;
- (BOOL)processInviteDictionary:(id)dictionary fromParticipantID:(id)d;
- (BOOL)processInviteDictionaryForTie:(id)tie fromParticipantID:(id)d;
- (BOOL)processReplyDict:(id)dict;
- (BOOL)startVoiceChatWithParticipantID:(id)d error:(id *)error;
- (GKVoiceChatServiceFocus)init;
- (id)dictionaryForCallID:(unsigned int)d isIncomingDictonary:(BOOL)dictonary;
- (id)dictionaryForNonce:(int64_t)nonce participantID:(id)d isIncomingDictonary:(BOOL)dictonary;
- (id)dictionaryForParticipantID:(id)d isIncomingDictonary:(BOOL)dictonary;
- (id)incomingDictionaryMatchingOriginalCallID:(unsigned int)d participantID:(id)iD;
- (id)localDisplayNameForCallID:(unsigned int)d;
- (id)openOutgoingDictionaryForParticipantID:(id)d;
- (id)remoteDisplayNameForCallID:(unsigned int)d;
- (void)dealloc;
- (void)denyCallID:(unsigned int)d;
- (void)pauseAudio:(BOOL)audio toParticipantID:(id)d;
- (void)receivedData:(id)data fromParticipantID:(id)d;
- (void)remoteCancelled:(id)cancelled;
- (void)sendFocusChange:(BOOL)change;
- (void)setChatMode:(int)mode;
- (void)setCurrentFocus:(id)focus;
- (void)setFocus:(BOOL)focus;
- (void)stopVoiceChatProc:(id)proc participantDidCancel:(BOOL)cancel;
- (void)videoConference:(id)conference didStartSession:(BOOL)session withCallID:(unsigned int)d error:(id)error;
- (void)videoConference:(id)conference didStopWithCallID:(unsigned int)d error:(id)error;
@end

@implementation GKVoiceChatServiceFocus

+ (id)defaultVoiceChatService
{
  result = defaultVoiceChatService__GKVoiceChatServiceFocus;
  if (!defaultVoiceChatService__GKVoiceChatServiceFocus)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultVoiceChatService__GKVoiceChatServiceFocus)
    {
      defaultVoiceChatService__GKVoiceChatServiceFocus = objc_alloc_init(GKVoiceChatServiceFocus);
    }

    objc_sync_exit(v3);
    return defaultVoiceChatService__GKVoiceChatServiceFocus;
  }

  return result;
}

- (GKVoiceChatServiceFocus)init
{
  v13 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = GKVoiceChatServiceFocus;
  v2 = [(GKVoiceChatServicePrivate *)&v6 init];
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v8 = v3;
        v9 = 2080;
        v10 = "[GKVoiceChatServiceFocus init]";
        v11 = 1024;
        v12 = 49;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatServiceFocus...", buf, 0x1Cu);
      }
    }

    v2->outgoingCallDictList = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    v2->incomingCallDictList = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    v2->incomingUID = arc4random() % 10000;
    [(GKVoiceChatServiceFocus *)v2 setPacketsPerBundle:4];
    v2->hasMic = 1;
  }

  return v2;
}

- (void)dealloc
{
  self->outgoingCallDictList = 0;

  self->incomingCallDictList = 0;
  self->currentFocus = 0;
  v3.receiver = self;
  v3.super_class = GKVoiceChatServiceFocus;
  [(GKVoiceChatServicePrivate *)&v3 dealloc];
}

- (BOOL)startVoiceChatWithParticipantID:(id)d error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  if (!self->super.client)
  {
LABEL_5:
    v10 = @"Client is not set.";
    v9 = @"Client is nil.";
LABEL_6:
    selfCopy2 = self;
    errorCopy2 = error;
    v13 = 32006;
    goto LABEL_7;
  }

  v7 = [(VideoConference *)self->super.conf matchesOpenSessionForParticipantID:d];
  client = self->super.client;
  if (v7)
  {
    if (client)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Already in conference with %@", d];
      v10 = @"Cannot do startVoiceChatWithParticipantID:error:";
      selfCopy2 = self;
      errorCopy2 = error;
      v13 = 32012;
LABEL_7:
      [(GKVoiceChatServicePrivate *)selfCopy2 getNSError:errorCopy2 code:v13 description:v10 reason:v9];
      [(NSRecursiveLock *)self->super.stateLock unlock];
      return 0;
    }

    goto LABEL_5;
  }

  if (![(GKVoiceChatClient *)client participantID])
  {
    v10 = @"Client participantID is not set.";
    v9 = @"participantID is nil.";
    goto LABEL_6;
  }

  v23 = 0;
  v16 = [(GKVoiceChatServicePrivate *)self createInvite:error toParticipant:d callID:&v23];
  createBlob = [v16 createBlob];
  if (v16)
  {
    v18 = createBlob == 0;
  }

  else
  {
    v18 = 1;
  }

  v14 = !v18;
  if (!v18)
  {
    v19 = createBlob;
    [(GKVoiceChatServicePrivate *)self setState:3];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [objc_msgSend_description(v16) UTF8String];
        *buf = 136315906;
        v25 = v20;
        v26 = 2080;
        v27 = "[GKVoiceChatServiceFocus startVoiceChatWithParticipantID:error:]";
        v28 = 1024;
        v29 = 106;
        v30 = 2080;
        v31 = uTF8String;
        _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OutgoingcallDict = %s", buf, 0x26u);
      }
    }

    [(GKVoiceChatClient *)self->super.client voiceChatService:self->super.wrapperService sendData:v19 toParticipantID:d];
    [(NSMutableArray *)self->outgoingCallDictList addObject:v16];
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  return v14;
}

- (id)dictionaryForNonce:(int64_t)nonce participantID:(id)d isIncomingDictonary:(BOOL)dictonary
{
  dictonaryCopy = dictonary;
  v23 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v9 = &OBJC_IVAR___GKVoiceChatServiceFocus_outgoingCallDictList;
  if (dictonaryCopy)
  {
    v9 = &OBJC_IVAR___GKVoiceChatServiceFocus_incomingCallDictList;
  }

  v10 = *(&self->super.super.isa + *v9);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      if ([v15 matchesNonce:nonce])
      {
        v16 = (dictonaryCopy ? [v15 fromParticipantID] : objc_msgSend(v15, "participantID"));
        if ([v16 isEqualToString:d])
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v15 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  return v15;
}

- (id)dictionaryForParticipantID:(id)d isIncomingDictonary:(BOOL)dictonary
{
  dictonaryCopy = dictonary;
  v21 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v7 = &OBJC_IVAR___GKVoiceChatServiceFocus_outgoingCallDictList;
  if (dictonaryCopy)
  {
    v7 = &OBJC_IVAR___GKVoiceChatServiceFocus_incomingCallDictList;
  }

  v8 = *(&self->super.super.isa + *v7);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      v14 = (dictonaryCopy ? [v13 fromParticipantID] : objc_msgSend(v13, "participantID"));
      if ([v14 isEqualToString:d])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  return v13;
}

- (id)dictionaryForCallID:(unsigned int)d isIncomingDictonary:(BOOL)dictonary
{
  dictonaryCopy = dictonary;
  v20 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v7 = &OBJC_IVAR___GKVoiceChatServiceFocus_outgoingCallDictList;
  if (dictonaryCopy)
  {
    v7 = &OBJC_IVAR___GKVoiceChatServiceFocus_incomingCallDictList;
  }

  v8 = *(&self->super.super.isa + *v7);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      if ([v13 callID] == d)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  return v13;
}

- (void)remoteCancelled:(id)cancelled
{
  if (self->super.client)
  {
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_remoteCancelledProc_ toTarget:self withObject:cancelled];
  }
}

- (void)stopVoiceChatProc:(id)proc participantDidCancel:(BOOL)cancel
{
  *&v29[5] = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
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
      v23 = v8;
      v24 = 2080;
      v25 = "[GKVoiceChatServiceFocus stopVoiceChatProc:participantDidCancel:]";
      v26 = 1024;
      v27 = 218;
      v28 = 2080;
      *v29 = uTF8String;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopVoiceChatProc1>:P%s", buf, 0x26u);
    }
  }

  [(NSRecursiveLock *)self->super.stateLock lock];
  v11 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:proc];
  if (v11)
  {
    v12 = v11;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        curCallID = self->super.curCallID;
        state = self->super.state;
        *buf = 136316162;
        v23 = v13;
        v24 = 2080;
        v25 = "[GKVoiceChatServiceFocus stopVoiceChatProc:participantDidCancel:]";
        v26 = 1024;
        v27 = 230;
        v28 = 1024;
        *v29 = curCallID;
        v29[2] = 1024;
        *&v29[3] = state;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stopVoiceChatProc2>: curCallID = %d, state %d", buf, 0x28u);
      }
    }

    callID = [v12 callID];
    v18 = [(VideoConference *)self->super.conf stateForCallID:callID];
    conf = self->super.conf;
    if (cancel)
    {
      [(VideoConference *)conf remoteCancelledCallID:callID];
    }

    else
    {
      [(VideoConference *)conf stopCallID:callID];
    }

    if (v18 <= 6 && ((1 << v18) & 0x68) != 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__GKVoiceChatServiceFocus_stopVoiceChatProc_participantDidCancel___block_invoke;
      block[3] = &unk_279682C18;
      block[4] = self;
      block[5] = v12;
      block[6] = proc;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [(GKVoiceChatServicePrivate *)self resetState];
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
}

uint64_t __66__GKVoiceChatServiceFocus_stopVoiceChatProc_participantDidCancel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 384);
  v5 = [objc_msgSend(*(a1 + 40) "cancelDictionary")];
  v6 = *(a1 + 48);

  return [v3 voiceChatService:v4 sendData:v5 toParticipantID:v6];
}

- (BOOL)acceptCallID:(unsigned int)d error:(id *)error
{
  v5 = *&d;
  v24 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v7 = [(GKVoiceChatServiceFocus *)self dictionaryForCallID:v5 isIncomingDictonary:1];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        uTF8String = [objc_msgSend_description(v7) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v16 = 136315906;
      v17 = v8;
      v18 = 2080;
      v19 = "[GKVoiceChatServiceFocus acceptCallID:error:]";
      v20 = 1024;
      v21 = 281;
      v22 = 2080;
      v23 = uTF8String;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d acceptCallID with dict = %s", &v16, 0x26u);
    }
  }

  if (!self->super.client)
  {
    [(GKVoiceChatServicePrivate *)self getNSError:error code:32006 description:@"Client is not set." reason:@"Client is nil."];
LABEL_15:
    [(NSRecursiveLock *)self->super.stateLock unlock];
    return 0;
  }

  if (v7)
  {
    v11 = [(GKVoiceChatServicePrivate *)self createReplyUsingDictionary:v7 replyCode:1 error:error];
    createBlob = [v11 createBlob];
    if (v11)
    {
      v13 = createBlob;
      if (createBlob)
      {
        [(NSMutableArray *)self->outgoingCallDictList addObject:v11];
        -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->super.client, "voiceChatService:sendData:toParticipantID:", self->super.wrapperService, v13, [v11 participantID]);
        -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", v7, 0, [v11 callID]);
        [(NSRecursiveLock *)self->super.stateLock unlock];
        return 1;
      }
    }

    v15 = [(GKVoiceChatServicePrivate *)self createReplyUsingDictionary:v7 replyCode:2 error:error];
    -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->super.client, "voiceChatService:sendData:toParticipantID:", self->super.wrapperService, [v15 createBlob], objc_msgSend(v15, "participantID"));
    [(GKVoiceChatServicePrivate *)self resetState];
    goto LABEL_15;
  }

  [(GKVoiceChatServicePrivate *)self getNSError:error code:32012 description:@"Cannot do acceptCallID:error:" reason:@"No active call to accept."];
  [(NSRecursiveLock *)self->super.stateLock unlock];
  [(GKVoiceChatServicePrivate *)self resetState];
  [(VideoConference *)self->super.conf stopCallID:v5];
  return 0;
}

- (void)denyCallID:(unsigned int)d
{
  v3 = *&d;
  v24 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v5 = [(GKVoiceChatServiceFocus *)self dictionaryForCallID:v3 isIncomingDictonary:1];
  if (self->super.client)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    stateLock = self->super.stateLock;

    [(NSRecursiveLock *)stateLock unlock];
  }

  else
  {
    v8 = v5;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        incomingCallDict = self->super.incomingCallDict;
        if (incomingCallDict)
        {
          uTF8String = [objc_msgSend_description(incomingCallDict) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136315906;
        *&buf[4] = v10;
        v18 = 2080;
        v19 = "[GKVoiceChatServiceFocus denyCallID:]";
        v20 = 1024;
        v21 = 331;
        v22 = 2080;
        v23 = uTF8String;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d denyCallID with dict = %s", buf, 0x26u);
      }
    }

    *buf = 0;
    v14 = [(GKVoiceChatServicePrivate *)self createReplyUsingDictionary:v8 replyCode:2 error:buf];
    -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->super.client, "voiceChatService:sendData:toParticipantID:", self->super.wrapperService, [v14 createBlob], objc_msgSend(v14, "participantID"));
    fromParticipantID = [v8 fromParticipantID];
    -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&fromParticipantID forKeys:&v15 count:1]);
    [(GKVoiceChatServicePrivate *)self resetState];
    [(NSMutableArray *)self->incomingCallDictList removeObject:v8];
    [(NSRecursiveLock *)self->super.stateLock unlock];
  }
}

- (void)receivedData:(id)data fromParticipantID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->super.client)
  {
    [(NSRecursiveLock *)self->super.stateLock lock];
    v7 = [GKVoiceChatDictionary dictionaryFromData:data];
    if (v7)
    {
      v8 = v7;
      if ([v7 isInviteDictionary])
      {
        [(GKVoiceChatServiceFocus *)self processInviteDictionary:v8 fromParticipantID:d];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136315650;
            v15 = v9;
            v16 = 2080;
            v17 = "[GKVoiceChatServiceFocus receivedData:fromParticipantID:]";
            v18 = 1024;
            v19 = 364;
            _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Finished processing Invite Dictionary...", &v14, 0x1Cu);
          }
        }
      }

      else if ([v8 isReplyDictionary])
      {
        [(GKVoiceChatServiceFocus *)self processReplyDict:v8];
      }

      else if ([v8 isCancelDictionary])
      {
        [(GKVoiceChatServiceFocus *)self processCancelDict:v8];
      }

      else if ([v8 isFocusDictionary])
      {
        [(GKVoiceChatServiceFocus *)self processFocusDict:v8 fromParticipantID:d];
      }

      [(NSRecursiveLock *)self->super.stateLock unlock];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = v12;
          v16 = 2080;
          v17 = "[GKVoiceChatServiceFocus receivedData:fromParticipantID:]";
          v18 = 1024;
          v19 = 380;
          _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Finished receivedData...", &v14, 0x1Cu);
        }
      }
    }

    else
    {
      stateLock = self->super.stateLock;

      [(NSRecursiveLock *)stateLock unlock];
    }
  }
}

- (BOOL)processInviteDictionaryForTie:(id)tie fromParticipantID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [-[GKVoiceChatClient participantID](self->super.client "participantID")] == -1;
      v10 = [-[GKVoiceChatClient participantID](self->super.client "participantID")];
      *v22 = 136316162;
      *&v22[4] = v7;
      v23 = 2080;
      v24 = "[GKVoiceChatServiceFocus processInviteDictionaryForTie:fromParticipantID:]";
      v25 = 1024;
      v26 = 387;
      v27 = 1024;
      v28 = v9;
      v29 = 1024;
      v30 = v10 == 1;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [self inviteIsValid:calleeResponse] is YES:isCaller=%d, %d", v22, 0x28u);
    }
  }

  v11 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:d, *v22];
  if (v11)
  {
    v12 = v11;
    if ([-[GKVoiceChatClient participantID](self->super.client "participantID")] == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 136315650;
          *&v22[4] = v17;
          v23 = 2080;
          v24 = "[GKVoiceChatServiceFocus processInviteDictionaryForTie:fromParticipantID:]";
          v25 = 1024;
          v26 = 398;
          _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am the caller starting ice check", v22, 0x1Cu);
        }
      }

      [(GKVoiceChatServicePrivate *)self setState:5];
      -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", tie, 1, [v12 callID]);
      nonce = [v12 nonce];
      tieCopy2 = tie;
      goto LABEL_19;
    }

    if ([-[GKVoiceChatClient participantID](self->super.client "participantID")] == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 136315650;
          *&v22[4] = v13;
          v23 = 2080;
          v24 = "[GKVoiceChatServiceFocus processInviteDictionaryForTie:fromParticipantID:]";
          v25 = 1024;
          v26 = 408;
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am the callee starting ice check", v22, 0x1Cu);
        }
      }

      [(GKVoiceChatServicePrivate *)self setState:6];
      -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", tie, 0, [v12 callID]);
      nonce = [tie nonce];
      tieCopy2 = v12;
      goto LABEL_19;
    }

    nonce2 = [tie nonce];
    nonce3 = [v12 nonce];
    ++self->incomingUID;
    [tie setCallID:?];
    if (nonce3 < nonce2)
    {
      -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", tie, 1, [v12 callID]);
      tieCopy2 = tie;
      nonce = nonce3;
LABEL_19:
      [tieCopy2 setNonce:nonce];
      [(NSMutableArray *)self->incomingCallDictList addObject:tie];
      LOBYTE(v11) = 1;
      return v11;
    }

    if (nonce3 > nonce2)
    {
      -[GKVoiceChatServicePrivate startICEConnectionCheck:isCaller:withCallID:](self, "startICEConnectionCheck:isCaller:withCallID:", tie, 0, [v12 callID]);
      tieCopy2 = v12;
      nonce = nonce2;
      goto LABEL_19;
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)openOutgoingDictionaryForParticipantID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  outgoingCallDictList = self->outgoingCallDictList;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableArray *)outgoingCallDictList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(outgoingCallDictList);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([objc_msgSend(v10 "participantID")])
      {
        if (-[VideoConference stateForCallID:](self->super.conf, "stateForCallID:", [v10 callID]) != 7 && -[VideoConference stateForCallID:](self->super.conf, "stateForCallID:", objc_msgSend(v10, "callID")) != 8)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)outgoingCallDictList countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  return v10;
}

- (BOOL)processInviteDictionary:(id)dictionary fromParticipantID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:d];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        uTF8String = [objc_msgSend_description(v7) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v11 = -[VideoConference stateForCallID:](self->super.conf, "stateForCallID:", [v7 callID]);
      *v17 = 136316162;
      *&v17[4] = v8;
      v18 = 2080;
      v19 = "[GKVoiceChatServiceFocus processInviteDictionary:fromParticipantID:]";
      v20 = 1024;
      v21 = 465;
      v22 = 2080;
      v23 = uTF8String;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processInviteDictionary:outDict = %s, state = %d", v17, 0x2Cu);
    }
  }

  if (v7)
  {
    if (-[VideoConference stateForCallID:](self->super.conf, "stateForCallID:", [v7 callID]) == 3 && -[GKVoiceChatServiceFocus processInviteDictionaryForTie:fromParticipantID:](self, "processInviteDictionaryForTie:fromParticipantID:", dictionary, d))
    {
      return 1;
    }

LABEL_18:
    *v17 = 0;
    -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->super.client, "voiceChatService:sendData:toParticipantID:", self->super.wrapperService, [-[GKVoiceChatServicePrivate createReplyUsingDictionary:replyCode:error:](self createReplyUsingDictionary:dictionary replyCode:3 error:{v17), "createBlob"}], d);
    return 0;
  }

  v12 = [(GKVoiceChatServiceFocus *)self dictionaryForParticipantID:d isIncomingDictonary:1];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        uTF8String2 = [objc_msgSend_description(v12) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      *v17 = 136315906;
      *&v17[4] = v13;
      v18 = 2080;
      v19 = "[GKVoiceChatServiceFocus processInviteDictionary:fromParticipantID:]";
      v20 = 1024;
      v21 = 485;
      v22 = 2080;
      v23 = uTF8String2;
      _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processInviteDictionary:otherDict = %s", v17, 0x26u);
    }
  }

  if (v12)
  {
    goto LABEL_18;
  }

  ++self->incomingUID;
  [dictionary setCallID:?];
  [(NSMutableArray *)self->incomingCallDictList addObject:dictionary];
  [(GKVoiceChatServiceFocus *)self performSelectorOnMainThread:sel_informClientOfInviteFromParticipant_ withObject:dictionary waitUntilDone:0];
  return 1;
}

- (BOOL)processReplyDict:(id)dict
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = -[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [dict nonce], objc_msgSend(dict, "fromParticipantID"), 0);
  if (v5)
  {
    -[VideoConference matchesOpenSessionForParticipantID:](self->super.conf, "matchesOpenSessionForParticipantID:", [dict fromParticipantID]);
    v12 = 0;
    fromParticipantID = [dict fromParticipantID];
    response = [dict response];
    if (response == 2)
    {
      v8 = @"%@ has declined your request.";
      v9 = 32011;
    }

    else
    {
      if (response != 3)
      {
        goto LABEL_8;
      }

      v8 = @"%@ is currently busy in another call.";
      v9 = 32008;
    }

    -[VideoConference stopCallID:](self->super.conf, "stopCallID:", [v5 callID]);
    -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", &v12, v9, [MEMORY[0x277CCACA8] stringWithFormat:v8, fromParticipantID], @"Request declined.");
    if (v12)
    {
      v13[0] = @"participantID";
      v13[1] = @"error";
      v14[0] = fromParticipantID;
      v14[1] = v12;
      -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2]);
      [(GKVoiceChatServicePrivate *)self resetState];
      [(NSMutableArray *)self->outgoingCallDictList removeObject:v5];
      LOBYTE(v5) = 0;
      return v5;
    }

LABEL_8:
    callID = [v5 callID];
    LOBYTE(v5) = 1;
    [(GKVoiceChatServicePrivate *)self startICEConnectionCheck:dict isCaller:1 withCallID:callID];
    [(NSMutableArray *)self->incomingCallDictList addObject:dict];
  }

  return v5;
}

- (id)incomingDictionaryMatchingOriginalCallID:(unsigned int)d participantID:(id)iD
{
  v19 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  incomingCallDictList = self->incomingCallDictList;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableArray *)incomingCallDictList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(incomingCallDictList);
      }

      v12 = *(*(&v14 + 1) + 8 * v11);
      if ([objc_msgSend(v12 "fromParticipantID")])
      {
        if ([v12 originalCallID] == d)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)incomingCallDictList countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
  return v12;
}

- (BOOL)processCancelDict:(id)dict
{
  v12[2] = *MEMORY[0x277D85DE8];
  fromParticipantID = [dict fromParticipantID];
  v6 = -[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [dict nonce], fromParticipantID, 0);
  if (!v6)
  {
    v6 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:fromParticipantID];
  }

  v7 = -[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [dict nonce], fromParticipantID, 1);
  if (v7 || (v7 = -[GKVoiceChatServiceFocus incomingDictionaryMatchingOriginalCallID:participantID:](self, "incomingDictionaryMatchingOriginalCallID:participantID:", [dict callID], fromParticipantID)) != 0)
  {
    v8 = v7;
    if (v6)
    {
      [(NSMutableArray *)self->outgoingCallDictList removeObject:v6];
      -[VideoConference remoteCancelledCallID:](self->super.conf, "remoteCancelledCallID:", [v6 callID]);
    }

    v10 = 0;
    [(NSMutableArray *)self->incomingCallDictList removeObject:v8];
    -[GKVoiceChatServicePrivate getNSError:code:description:reason:](self, "getNSError:code:description:reason:", &v10, 32009, [MEMORY[0x277CCACA8] stringWithFormat:@"%@ has cancelled this request.", fromParticipantID], @"This request was cancelled.");
    v11[0] = @"participantID";
    v11[1] = @"error";
    v12[0] = fromParticipantID;
    v12[1] = v10;
    -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2]);
    [(GKVoiceChatServicePrivate *)self resetState];
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)processFocusDict:(id)dict fromParticipantID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  if (-[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [dict nonce], d, 0))
  {
    v7 = 1;
  }

  else
  {
    v7 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:d]!= 0;
  }

  if (-[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [dict nonce], d, 1) || -[GKVoiceChatServiceFocus incomingDictionaryMatchingOriginalCallID:participantID:](self, "incomingDictionaryMatchingOriginalCallID:participantID:", objc_msgSend(dict, "callID"), d) != 0 || v7)
  {

    return [(GKVoiceChatServiceFocus *)self processFocusChange:dict fromParticipantID:d];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
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

        v12 = 136315906;
        v13 = v9;
        v14 = 2080;
        v15 = "[GKVoiceChatServiceFocus processFocusDict:fromParticipantID:]";
        v16 = 1024;
        v17 = 612;
        v18 = 2080;
        v19 = uTF8String;
        _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got focus dict from %s but not in call with them!", &v12, 0x26u);
      }
    }

    return 0;
  }
}

- (BOOL)processFocusChange:(id)change fromParticipantID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  if ([change isFocus] && !-[NSString isEqualToString:](self->currentFocus, "isEqualToString:", d))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_23;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    currentFocus = self->currentFocus;
    if (currentFocus)
    {
      uTF8String = [objc_msgSend_description(currentFocus) UTF8String];
      if (d)
      {
LABEL_13:
        uTF8String2 = [objc_msgSend_description(d) UTF8String];
LABEL_22:
        v24 = 136316162;
        v25 = v10;
        v26 = 2080;
        v27 = "[GKVoiceChatServiceFocus processFocusChange:fromParticipantID:]";
        v28 = 1024;
        v29 = 621;
        v30 = 2080;
        v31 = uTF8String;
        v32 = 2080;
        v33 = uTF8String2;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting currentFocus from %s to %s", &v24, 0x30u);
LABEL_23:
        v21 = self->currentFocus;
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:d];
        self->currentFocus = v22;
        [(VideoConference *)self->super.conf setCurrentFocus:v22];
        if ([(GKVoiceChatServicePrivate *)self isFocus])
        {
          [(GKVoiceChatServiceFocus *)self setFocus:0];
        }

        return 1;
      }
    }

    else
    {
      uTF8String = "<nil>";
      if (d)
      {
        goto LABEL_13;
      }
    }

    uTF8String2 = "<nil>";
    goto LABEL_22;
  }

  if (-[NSString isEqualToString:](self->currentFocus, "isEqualToString:", d) && ([change isFocus] & 1) == 0)
  {
    [(VideoConference *)self->super.conf setCurrentFocus:0];

    self->currentFocus = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (d)
        {
          uTF8String3 = [objc_msgSend_description(d) UTF8String];
        }

        else
        {
          uTF8String3 = "<nil>";
        }

        v24 = 136315906;
        v25 = v15;
        v26 = 2080;
        v27 = "[GKVoiceChatServiceFocus processFocusChange:fromParticipantID:]";
        v28 = 1024;
        v29 = 636;
        v30 = 2080;
        v31 = uTF8String3;
        v18 = " [%s] %s:%d Setting currentFocus from %s to none";
        v19 = v16;
        v20 = 38;
        goto LABEL_28;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (d)
      {
        uTF8String4 = [objc_msgSend_description(d) UTF8String];
      }

      else
      {
        uTF8String4 = "<nil>";
      }

      v24 = 136316162;
      v25 = v7;
      v26 = 2080;
      v27 = "[GKVoiceChatServiceFocus processFocusChange:fromParticipantID:]";
      v28 = 1024;
      v29 = 638;
      v30 = 2080;
      v31 = uTF8String4;
      v32 = 1024;
      LODWORD(v33) = [change isFocus];
      v18 = " [%s] %s:%d Focus dict from %s is %d";
      v19 = v8;
      v20 = 44;
LABEL_28:
      _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, v18, &v24, v20);
    }
  }

  return 1;
}

- (void)sendFocusChange:(BOOL)change
{
  changeCopy = change;
  v32 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  outgoingCallDictList = self->outgoingCallDictList;
  v6 = [(NSMutableArray *)outgoingCallDictList countByEnumeratingWithState:&v17 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 136316162;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(outgoingCallDictList);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [objc_msgSend(v11 focusDictionary:{changeCopy, v16), "createBlob"}];
        if (v12)
        {
          -[GKVoiceChatClient voiceChatService:sendData:toParticipantID:](self->super.client, "voiceChatService:sendData:toParticipantID:", self->super.wrapperService, v12, [v11 participantID]);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if ([v11 participantID])
              {
                v15 = [objc_msgSend_description(objc_msgSend(v11 "participantID"))];
              }

              else
              {
                v15 = "<nil>";
              }

              *buf = v16;
              v22 = v13;
              v23 = 2080;
              v24 = "[GKVoiceChatServiceFocus sendFocusChange:]";
              v25 = 1024;
              v26 = 649;
              v27 = 1024;
              v28 = changeCopy;
              v29 = 2080;
              v30 = v15;
              _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending focus changed to %d to %s", buf, 0x2Cu);
            }
          }
        }
      }

      v8 = [(NSMutableArray *)outgoingCallDictList countByEnumeratingWithState:&v17 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)setChatMode:(int)mode
{
  if (self->super.chatMode != mode)
  {
    self->super.chatMode = mode;
    [(VideoConference *)self->super.conf setChatMode:?];
  }
}

- (void)setCurrentFocus:(id)focus
{
  [(NSRecursiveLock *)self->super.stateLock lock];
  if (([focus isEqualToString:{-[VideoConference currentFocus](self->super.conf, "currentFocus")}] & 1) == 0)
  {

    v5 = [focus copy];
    self->currentFocus = v5;
    [(VideoConference *)self->super.conf setCurrentFocus:v5];
  }

  stateLock = self->super.stateLock;

  [(NSRecursiveLock *)stateLock unlock];
}

- (void)setFocus:(BOOL)focus
{
  if (self->super.focus != focus)
  {
    focusCopy = focus;
    self->super.focus = focus;
    if (focus)
    {
      [(VideoConference *)self->super.conf setCurrentFocus:0];

      self->currentFocus = 0;
    }

    conf = self->super.conf;

    [(VideoConference *)conf setIsFocus:focusCopy];
  }
}

- (BOOL)hasMic
{
  result = [(VideoConference *)self->super.conf hasMic];
  self->hasMic = result;
  return result;
}

- (void)videoConference:(id)conference didStartSession:(BOOL)session withCallID:(unsigned int)d error:(id)error
{
  v7 = *&d;
  sessionCopy = session;
  v36 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      curCallID = self->super.curCallID;
      *buf = 136316418;
      v25 = v10;
      v26 = 2080;
      v27 = "[GKVoiceChatServiceFocus videoConference:didStartSession:withCallID:error:]";
      v28 = 1024;
      v29 = 739;
      v30 = 1024;
      v31 = v7;
      v32 = 1024;
      v33 = curCallID;
      v34 = 1024;
      v35 = curCallID == v7;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoConference: didStartWithCallID:%d == %d ? %d", buf, 0x2Eu);
    }
  }

  [(NSRecursiveLock *)self->super.stateLock lock];
  v13 = [(GKVoiceChatServiceFocus *)self dictionaryForCallID:v7 isIncomingDictonary:0];
  if (v13)
  {
    v14 = v13;
    v15 = -[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [v13 nonce], objc_msgSend(v13, "participantID"), 1);
    if (sessionCopy)
    {
      -[GKVoiceChatServicePrivate informClientVoiceChatDidStart:](self, "informClientVoiceChatDidStart:", [v14 participantID]);
    }

    else
    {
      if (v15)
      {
        [(NSMutableArray *)self->incomingCallDictList removeObject:v15];
      }

      [(NSMutableArray *)self->outgoingCallDictList removeObject:v14];
      if (error)
      {
        v22[0] = @"participantID";
        v22[1] = @"error";
        v23[0] = [v14 participantID];
        v23[1] = error;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v23;
        v18 = v22;
        v19 = 2;
      }

      else
      {
        participantID = [v14 participantID];
        v16 = MEMORY[0x277CBEAC0];
        v17 = &participantID;
        v18 = &v20;
        v19 = 1;
      }

      -[GKVoiceChatServicePrivate informClientVoiceChatDidNotStart:](self, "informClientVoiceChatDidNotStart:", [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19]);
      [(GKVoiceChatServicePrivate *)self resetState];
    }
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
}

- (void)videoConference:(id)conference didStopWithCallID:(unsigned int)d error:(id)error
{
  v6 = *&d;
  v40 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      curCallID = self->super.curCallID;
      *buf = 136316418;
      v31 = v10;
      v32 = 2080;
      v33 = "[GKVoiceChatServiceFocus videoConference:didStopWithCallID:error:]";
      v34 = 1024;
      v35 = 770;
      v36 = 1024;
      *v37 = v6;
      *&v37[4] = 1024;
      *&v37[6] = curCallID;
      v38 = 1024;
      v39 = curCallID == v6;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoConference: didStopWithCallID:%d == %d ? %d", buf, 0x2Eu);
    }
  }

  [(NSRecursiveLock *)self->super.stateLock lock];
  v13 = [(GKVoiceChatServiceFocus *)self dictionaryForCallID:v6 isIncomingDictonary:0];
  if (v13)
  {
    v14 = v13;
    v15 = -[GKVoiceChatServiceFocus dictionaryForNonce:participantID:isIncomingDictonary:](self, "dictionaryForNonce:participantID:isIncomingDictonary:", [v13 nonce], objc_msgSend(v13, "participantID"), 1);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        if (v15)
        {
          uTF8String = [objc_msgSend_description(v15) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136315906;
        v31 = v16;
        v32 = 2080;
        v33 = "[GKVoiceChatServiceFocus videoConference:didStopWithCallID:error:]";
        v34 = 1024;
        v35 = 782;
        v36 = 2080;
        *v37 = uTF8String;
        _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d didStopWithCallID:inDict = %s", buf, 0x26u);
      }
    }

    if (v15)
    {
      [(NSMutableArray *)self->incomingCallDictList removeObject:v15];
    }

    [(NSMutableArray *)self->outgoingCallDictList removeObject:v14];
    if (-[NSString isEqualToString:](self->currentFocus, "isEqualToString:", [v14 participantID]))
    {
      [(VideoConference *)self->super.conf setCurrentFocus:0];

      self->currentFocus = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        if ([v14 participantID])
        {
          v21 = [objc_msgSend_description(objc_msgSend(v14 "participantID"))];
        }

        else
        {
          v21 = "<nil>";
        }

        *buf = 136315906;
        v31 = v19;
        v32 = 2080;
        v33 = "[GKVoiceChatServiceFocus videoConference:didStopWithCallID:error:]";
        v34 = 1024;
        v35 = 795;
        v36 = 2080;
        *v37 = v21;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d didStopWithCallID: outDict participantID %s", buf, 0x26u);
      }
    }

    if (error)
    {
      v28[0] = @"participantID";
      v28[1] = @"error";
      v29[0] = [v14 participantID];
      v29[1] = error;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v29;
      v24 = v28;
      v25 = 2;
    }

    else
    {
      participantID = [v14 participantID];
      v22 = MEMORY[0x277CBEAC0];
      v23 = &participantID;
      v24 = &v26;
      v25 = 1;
    }

    -[GKVoiceChatServiceFocus performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_informClientVoiceChatDidStop_, [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25], 0);
    [(GKVoiceChatServicePrivate *)self resetState];
  }

  [(NSRecursiveLock *)self->super.stateLock unlock];
}

- (id)localDisplayNameForCallID:(unsigned int)d
{
  v3 = *&d;
  v18 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v5 = [(GKVoiceChatServiceFocus *)self dictionaryForCallID:v3 isIncomingDictonary:0];
  [(NSRecursiveLock *)self->super.stateLock unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        uTF8String = [objc_msgSend_description(v5) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = "[GKVoiceChatServiceFocus localDisplayNameForCallID:]";
      v14 = 1024;
      v15 = 854;
      v16 = 2080;
      v17 = uTF8String;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localDisplayNameForCallID: outDict = %s", &v10, 0x26u);
    }
  }

  if ([v5 localVCPartyID])
  {
    return [v5 localVCPartyID];
  }

  else
  {
    return [v5 fromParticipantID];
  }
}

- (id)remoteDisplayNameForCallID:(unsigned int)d
{
  v3 = *&d;
  v18 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->super.stateLock lock];
  v5 = [(GKVoiceChatServiceFocus *)self dictionaryForCallID:v3 isIncomingDictonary:0];
  [(NSRecursiveLock *)self->super.stateLock unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        uTF8String = [objc_msgSend_description(v5) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = "[GKVoiceChatServiceFocus remoteDisplayNameForCallID:]";
      v14 = 1024;
      v15 = 866;
      v16 = 2080;
      v17 = uTF8String;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteDisplayNameForCallID: outDict = %s", &v10, 0x26u);
    }
  }

  if ([v5 remoteVCPartyID])
  {
    return [v5 remoteVCPartyID];
  }

  else
  {
    return [v5 participantID];
  }
}

- (BOOL)isAudioPausedToParticipantID:(id)d
{
  [(NSRecursiveLock *)self->super.stateLock lock];
  v5 = [-[GKVoiceChatServiceFocus openOutgoingDictionaryForParticipantID:](self openOutgoingDictionaryForParticipantID:{d), "callID"}];
  v6 = self->super.conf;
  [(NSRecursiveLock *)self->super.stateLock unlock];
  LOBYTE(v5) = [(VideoConference *)self->super.conf shouldSendAudioForCallID:v5];

  return v5 ^ 1;
}

- (void)pauseAudio:(BOOL)audio toParticipantID:(id)d
{
  audioCopy = audio;
  [(NSRecursiveLock *)self->super.stateLock lock];
  v7 = [(GKVoiceChatServiceFocus *)self openOutgoingDictionaryForParticipantID:d];
  v8 = self->super.conf;
  callID = [v7 callID];
  [(NSRecursiveLock *)self->super.stateLock unlock];

  conf = self->super.conf;

  [(VideoConference *)conf setSendAudio:!audioCopy forCallID:callID];
}

@end