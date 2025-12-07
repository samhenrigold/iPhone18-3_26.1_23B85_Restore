@interface GKVoiceChatSessionListener
- (GKVoiceChatSessionListener)initWithSession:(id)session;
- (id)currentSessions;
- (void)dealloc;
- (void)receivedNewVoiceChatOOBMessage:(id)message fromPeerID:(id)d;
- (void)registerNewGKVoiceChatSession:(id)session;
- (void)removeSession:(id)session;
- (void)session:(id)session peer:(id)peer didChangeState:(unsigned int)state;
@end

@implementation GKVoiceChatSessionListener

- (GKVoiceChatSessionListener)initWithSession:(id)session
{
  v7.receiver = self;
  v7.super_class = GKVoiceChatSessionListener;
  v4 = [(GKVoiceChatSessionListener *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_gkSession = session;
    v4->_conferenceList = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v5->_rwlock = objc_alloc_init(GKRWLock);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GKVoiceChatSessionListener;
  [(GKVoiceChatSessionListener *)&v3 dealloc];
}

- (void)registerNewGKVoiceChatSession:(id)session
{
  [(GKRWLock *)self->_rwlock wrlock];
  if (([(NSMutableArray *)self->_conferenceList containsObject:session]& 1) == 0)
  {
    [(NSMutableArray *)self->_conferenceList addObject:session];
  }

  rwlock = self->_rwlock;

  [(GKRWLock *)rwlock unlock];
}

- (void)removeSession:(id)session
{
  v15 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwlock wrlock];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[GKVoiceChatSessionListener removeSession:]";
      v11 = 1024;
      v12 = 50;
      v13 = 2048;
      sessionCopy = session;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatSessionListener removing listener %p", &v7, 0x26u);
    }
  }

  [(NSMutableArray *)self->_conferenceList removeObject:session];
  [(GKRWLock *)self->_rwlock unlock];
}

- (id)currentSessions
{
  [(GKRWLock *)self->_rwlock wrlock];
  v3 = [MEMORY[0x277CBEB98] setWithArray:self->_conferenceList];
  [(GKRWLock *)self->_rwlock unlock];
  return v3;
}

- (void)receivedNewVoiceChatOOBMessage:(id)message fromPeerID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwlock rdlock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  conferenceList = self->_conferenceList;
  v8 = [(NSMutableArray *)conferenceList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(conferenceList);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        conferenceID = [v12 conferenceID];
        if (conferenceID == [message conferenceID])
        {
          [v12 session:self->_gkSession didReceiveOOBAudioPacket:message fromPeerID:d];
        }
      }

      v9 = [(NSMutableArray *)conferenceList countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(GKRWLock *)self->_rwlock unlock];
}

- (void)session:(id)session peer:(id)peer didChangeState:(unsigned int)state
{
  v5 = *&state;
  v18 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwlock rdlock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  conferenceList = self->_conferenceList;
  v9 = [(NSMutableArray *)conferenceList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(conferenceList);
        }

        [*(*(&v13 + 1) + 8 * i) session:self->_gkSession peer:peer didChangeState:v5];
      }

      v10 = [(NSMutableArray *)conferenceList countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(GKRWLock *)self->_rwlock unlock];
}

@end