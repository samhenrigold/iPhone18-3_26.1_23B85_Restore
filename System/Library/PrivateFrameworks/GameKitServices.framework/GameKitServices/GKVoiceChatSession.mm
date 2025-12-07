@interface GKVoiceChatSession
- (BOOL)didReceiveVoiceChatData:(id)data fromPeerID:(id)d;
- (GKVoiceChatSession)initWithGKSession:(id)session sessionName:(id)name;
- (GKVoiceChatSession)initWithGameStateSession:(id)session sessionName:(id)name;
- (void)dealloc;
- (void)peer:(id)peer didChangeState:(unsigned int)state;
@end

@implementation GKVoiceChatSession

- (GKVoiceChatSession)initWithGKSession:(id)session sessionName:(id)name
{
  privateImpl = [session privateImpl];

  return [(GKVoiceChatSession *)self initWithGameStateSession:privateImpl sessionName:name];
}

- (GKVoiceChatSession)initWithGameStateSession:(id)session sessionName:(id)name
{
  v39 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = GKVoiceChatSession;
  v6 = [(GKVoiceChatSession *)&v22 init];
  if (v6)
  {
    v6->opaqueSession = [[GKVoiceChatSessionInternal alloc] initWithGameStateSession:session publicWrapper:v6 sessionName:name];
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          opaqueSession = v6->opaqueSession;
          v11 = objc_opt_class();
          Name = class_getName(v11);
          *buf = 136316418;
          v24 = v8;
          v25 = 2080;
          v26 = "[GKVoiceChatSession initWithGameStateSession:sessionName:]";
          v27 = 1024;
          v28 = 41;
          v29 = 2048;
          v30 = opaqueSession;
          v31 = 2080;
          v32 = Name;
          v33 = 2112;
          nameCopy = name;
          v13 = " [%s] %s:%d [%p] GKVoiceChatSession init'd using session=%s with sessionName=%@";
          v14 = v9;
          v15 = 58;
LABEL_12:
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(GKVoiceChatSession *)v6 performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_286195238;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v18 = v6->opaqueSession;
          v19 = objc_opt_class();
          v20 = class_getName(v19);
          *buf = 136316930;
          v24 = v16;
          v25 = 2080;
          v26 = "[GKVoiceChatSession initWithGameStateSession:sessionName:]";
          v27 = 1024;
          v28 = 41;
          v29 = 2112;
          v30 = v7;
          v31 = 2048;
          v32 = v6;
          v33 = 2048;
          nameCopy = v18;
          v35 = 2080;
          v36 = v20;
          v37 = 2112;
          nameCopy2 = name;
          v13 = " [%s] %s:%d %@(%p) [%p] GKVoiceChatSession init'd using session=%s with sessionName=%@";
          v14 = v17;
          v15 = 78;
          goto LABEL_12;
        }
      }
    }
  }

  return v6;
}

- (BOOL)didReceiveVoiceChatData:(id)data fromPeerID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(GKVoiceChatSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v19 = 136316418;
    *&v19[4] = v13;
    *&v19[12] = 2080;
    *&v19[14] = "[GKVoiceChatSession didReceiveVoiceChatData:fromPeerID:]";
    *&v19[22] = 1024;
    LODWORD(v20) = 47;
    WORD2(v20) = 2112;
    *(&v20 + 6) = v7;
    HIWORD(v20) = 2048;
    selfCopy = self;
    LOWORD(v22) = 2112;
    *(&v22 + 2) = d;
    v10 = " [%s] %s:%d %@(%p) GKVoiceChatSession receive data from peerID=%@";
    v11 = v14;
    v12 = 58;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315906;
      *&v19[4] = v8;
      *&v19[12] = 2080;
      *&v19[14] = "[GKVoiceChatSession didReceiveVoiceChatData:fromPeerID:]";
      *&v19[22] = 1024;
      LODWORD(v20) = 47;
      WORD2(v20) = 2112;
      *(&v20 + 6) = d;
      v10 = " [%s] %s:%d GKVoiceChatSession receive data from peerID=%@";
      v11 = v9;
      v12 = 38;
LABEL_11:
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, v10, v19, v12);
    }
  }

LABEL_12:
  v15 = [GKOOBMessageFactory newMessageFromData:data, *v19, *&v19[8], v20, selfCopy, v22];
  conferenceID = [self->opaqueSession conferenceID];
  conferenceID2 = [v15 conferenceID];
  if (conferenceID == conferenceID2)
  {
    [self->opaqueSession session:0 didReceiveOOBAudioPacket:v15 fromPeerID:d];
  }

  return conferenceID == conferenceID2;
}

- (void)peer:(id)peer didChangeState:(unsigned int)state
{
  v4 = *&state;
  v19 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136316162;
        *&v15[4] = v8;
        *&v15[12] = 2080;
        *&v15[14] = "[GKVoiceChatSession peer:didChangeState:]";
        *&v15[22] = 1024;
        *v16 = 59;
        *&v16[4] = 1024;
        *&v16[6] = v4;
        *&v16[10] = 2112;
        *&v16[12] = peer;
        v10 = " [%s] %s:%d GKVoiceChatSession connection state=%d change for peerID=%@";
        v11 = v9;
        v12 = 44;
LABEL_11:
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, v10, v15, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(GKVoiceChatSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136316674;
        *&v15[4] = v13;
        *&v15[12] = 2080;
        *&v15[14] = "[GKVoiceChatSession peer:didChangeState:]";
        *&v15[22] = 1024;
        *v16 = 59;
        *&v16[4] = 2112;
        *&v16[6] = v7;
        *&v16[14] = 2048;
        *&v16[16] = self;
        LOWORD(v17) = 1024;
        *(&v17 + 2) = v4;
        HIWORD(v17) = 2112;
        peerCopy = peer;
        v10 = " [%s] %s:%d %@(%p) GKVoiceChatSession connection state=%d change for peerID=%@";
        v11 = v14;
        v12 = 64;
        goto LABEL_11;
      }
    }
  }

  [self->opaqueSession session:0 peer:peer didChangeState:{v4, *v15, *&v15[8], *v16, *&v16[16], v17, peerCopy}];
}

- (void)dealloc
{
  opaqueSession = self->opaqueSession;
  [opaqueSession cleanup];

  self->opaqueSession = 0;
  v4.receiver = self;
  v4.super_class = GKVoiceChatSession;
  [(GKVoiceChatSession *)&v4 dealloc];
}

@end