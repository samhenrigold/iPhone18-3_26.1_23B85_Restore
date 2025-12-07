@interface AVAudioIONodeSessionDirectServer
- (AVAudioIONodeSessionDirectServer)initWithSessionManager:(void *)manager serverDelegate:(id)delegate;
- (BOOL)invalidateIONode:(unsigned int)node error:(id *)error;
- (BOOL)setIONode:(unsigned int)node playState:(unsigned int)state modes:(unsigned int)modes error:(id *)error;
- (id)getPropertiesIONode:(unsigned int)node properties:(id)properties status:(id *)status error:(id *)error;
- (id)setPropertiesIONode:(unsigned int)node values:(id)values error:(id *)error;
- (unsigned)createIONodeWithSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type error:(id *)error;
- (unsigned)reconfigureIONode:(unsigned int)node withSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type error:(id *)error;
@end

@implementation AVAudioIONodeSessionDirectServer

- (AVAudioIONodeSessionDirectServer)initWithSessionManager:(void *)manager serverDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = AVAudioIONodeSessionDirectServer;
  v8 = [(AVAudioIONodeSessionDirectServer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sessionManager = manager;
    objc_storeStrong(&v8->_serverDelegate, delegate);
  }

  return v9;
}

- (unsigned)createIONodeWithSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type error:(id *)error
{
  v8 = *&session;
  v21[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (avas::server::SessionIDIsReserved(v8))
  {
    if (error)
    {
      *error = 0;
    }

    avas::server::LegacySessionManager::CreateIONodeSessionInSentinel(self->_sessionManager, v8, dCopy, type, 0, self->_serverDelegate);
  }

  avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v18, self->_sessionManager, v8);
  v11 = v18;
  if (v18)
  {
    if (error)
    {
      *error = 0;
    }

    sessionManager = self->_sessionManager;
    v17[0] = v11;
    v17[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    avas::server::LegacySessionManager::CreateIONodeSession(sessionManager, v17, type, 0, self->_serverDelegate);
  }

  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid source session: 0x%x", v8];
    v21[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v13 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v15];

    LODWORD(error) = 0;
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v18);

  return error;
}

- (unsigned)reconfigureIONode:(unsigned int)node withSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type error:(id *)error
{
  v8 = *&type;
  v9 = *&session;
  v10 = *&node;
  v35[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  avas::server::LegacySessionManager::FindIONodeSession(self->_sessionManager, v10, &v30);
  if (v30)
  {
    if (avas::server::SessionIDIsReserved(v9))
    {
      if (error)
      {
        *error = 0;
      }

      sessionManager = self->_sessionManager;
      v29[0] = v30;
      v29[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::LegacySessionManager::ReconfigureIONodeSessionInSentinel(sessionManager, v29, v9, dCopy, v8, 0, self->_serverDelegate);
    }

    avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v27, self->_sessionManager, v9);
    v17 = v27;
    if (v27)
    {
      if (error)
      {
        *error = 0;
      }

      v18 = self->_sessionManager;
      v25 = v30;
      v26 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = v17;
      v24 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(error) = avas::server::LegacySessionManager::ReconfigureIONodeSession(v18, &v25, &v23, v8, 0, self->_serverDelegate);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    else if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid source session: 0x%x", v9];
      v33 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *error = [v19 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v21];

      LODWORD(error) = 0;
    }

    avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v27);
  }

  else if (error)
  {
    v14 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid IONode session: 0x%x", v10];
    v35[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    *error = [v14 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v16];

    LODWORD(error) = 0;
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  return error;
}

- (BOOL)invalidateIONode:(unsigned int)node error:(id *)error
{
  v5 = *&node;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = avas::server::LegacySessionManager::RemoveIONodeSession(self->_sessionManager, node);
  if (v6)
  {
    if (error)
    {
      *error = 0;
    }
  }

  else if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid node session: 0x%x", v5, *MEMORY[0x277CCA450]];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v7 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v9];
  }

  return v6 != 0;
}

- (BOOL)setIONode:(unsigned int)node playState:(unsigned int)state modes:(unsigned int)modes error:(id *)error
{
  v7 = *&modes;
  v8 = *&state;
  v9 = *&node;
  v23[1] = *MEMORY[0x277D85DE8];
  avas::server::LegacySessionManager::FindIONodeSession(self->_sessionManager, node, &v18);
  if (!v18)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v14 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid IONode session: 0x%x", v9];
    v23[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *error = [v14 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v16];

    goto LABEL_7;
  }

  v10 = avas::server::IONodeSessionInfo::SetPlayState(v18, v8, v7);
  if (v10)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v11 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to set play state 0x%x, modes 0x%x on IONode 0x%x: %d", v8, v7, v9, v10];
    v21 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *error = [v11 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v13];

LABEL_7:
    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  if (error)
  {
    *error = 0;
  }

  LOBYTE(error) = 1;
LABEL_11:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return error;
}

- (id)setPropertiesIONode:(unsigned int)node values:(id)values error:(id *)error
{
  v6 = *&node;
  v19[1] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  avas::server::LegacySessionManager::FindIONodeSession(self->_sessionManager, v6, &v16);
  if (v16)
  {
    avas::server::IONodeSessionInfo::SetProperties(v16, valuesCopy, 0, v15);
    if (LODWORD(v15[0]))
    {
      if (error)
      {
        v9 = NSErrorWithCode();
LABEL_10:
        *error = v9;
      }
    }

    else if (error)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v13 = v15[1];

    goto LABEL_12;
  }

  if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid IONode session: 0x%x", v6];
    v19[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v10 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v12];
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_12:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return v13;
}

- (id)getPropertiesIONode:(unsigned int)node properties:(id)properties status:(id *)status error:(id *)error
{
  v8 = *&node;
  v24[1] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  avas::server::LegacySessionManager::FindIONodeSession(self->_sessionManager, v8, &v21);
  if (v21)
  {
    v19 = 0;
    avas::server::IONodeSessionInfo::GetProperties(v21, propertiesCopy, 0, &v19, v20);
    v11 = v19;
    v12 = v11;
    if (LODWORD(v20[0]))
    {
      if (status)
      {
        v13 = v11;
        *status = v12;
      }

      if (!error)
      {
        goto LABEL_14;
      }

      v14 = NSErrorWithCode();
    }

    else
    {
      if (status)
      {
        *status = MEMORY[0x277CBEC10];
      }

      if (!error)
      {
        goto LABEL_14;
      }

      v14 = 0;
    }

    *error = v14;
LABEL_14:
    v17 = v20[1];

    goto LABEL_15;
  }

  if (error)
  {
    v15 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid IONode session: 0x%x", v8];
    v24[0] = v12;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v15 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v16];

    v17 = MEMORY[0x277CBEC10];
LABEL_15:

    goto LABEL_16;
  }

  v17 = MEMORY[0x277CBEC10];
LABEL_16:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  return v17;
}

@end