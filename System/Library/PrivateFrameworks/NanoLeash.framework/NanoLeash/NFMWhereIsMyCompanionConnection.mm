@interface NFMWhereIsMyCompanionConnection
+ (id)sharedDeviceConnection;
- (NFMWhereIsMyCompanionConnection)init;
- (id)serverConnection;
- (uint64_t)playSoundAndLEDCompletion;
- (uint64_t)playSoundCompletion;
- (void)_cleanUpServerConnection:(id)connection;
- (void)applicationIdentifierWithReply:(id)reply;
- (void)dealloc;
- (void)playNearbySoundOnPhone;
- (void)playSoundAndLightsOnCompanionWithCompletion:(id)completion;
- (void)playSoundOnCompanionWithCompletion:(id)completion;
- (void)playedSound:(BOOL)sound;
- (void)playedSoundAndLED:(BOOL)d;
- (void)setPlaySoundAndLEDCompletion:(void *)completion;
- (void)setPlaySoundCompletion:(void *)completion;
- (void)setServerConnection:(uint64_t)connection;
- (void)startRangingOnPhone;
- (void)stopRangingOnPhone;
@end

@implementation NFMWhereIsMyCompanionConnection

+ (id)sharedDeviceConnection
{
  notify_post("com.apple.nanofindlocallyd.shouldlaunch");
  if (sharedDeviceConnection_onceToken != -1)
  {
    +[NFMWhereIsMyCompanionConnection sharedDeviceConnection];
  }

  v2 = sharedDeviceConnection___sharedDeviceConnection;

  return v2;
}

uint64_t __57__NFMWhereIsMyCompanionConnection_sharedDeviceConnection__block_invoke()
{
  sharedDeviceConnection___sharedDeviceConnection = objc_alloc_init(NFMWhereIsMyCompanionConnection);

  return MEMORY[0x2821F96F8]();
}

- (NFMWhereIsMyCompanionConnection)init
{
  v6.receiver = self;
  v6.super_class = NFMWhereIsMyCompanionConnection;
  v2 = [(NFMWhereIsMyCompanionConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    serverConnection = [(NFMWhereIsMyCompanionConnection *)&v2->super.isa serverConnection];
  }

  return v3;
}

- (id)serverConnection
{
  selfCopy = self;
  v25 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = self[1];
    if (v2)
    {
      selfCopy = v2;
    }

    else
    {
      v3 = objc_alloc(MEMORY[0x277CCAE80]);
      v4 = [v3 initWithMachServiceName:NFMFindLocalDeviceServerName options:4096];
      v5 = selfCopy[1];
      selfCopy[1] = v4;

      v6 = selfCopy[1];
      v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C6B8F0];
      [v6 setRemoteObjectInterface:v7];

      v8 = selfCopy[1];
      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C67E20];
      [v8 setExportedInterface:v9];

      [selfCopy[1] setExportedObject:selfCopy];
      v10 = nfm_log([selfCopy[1] resume]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = NFMFindLocalDeviceServerName;
        v23 = 2080;
        v24 = "[NFMWhereIsMyCompanionConnection serverConnection]";
        _os_log_impl(&dword_25B17F000, v10, OS_LOG_TYPE_DEFAULT, "########### XPC Connection created: %@ at %s", buf, 0x16u);
      }

      objc_initWeak(buf, selfCopy);
      objc_initWeak(&location, selfCopy[1]);
      v11 = selfCopy[1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__NFMWhereIsMyCompanionConnection_serverConnection__block_invoke;
      v17[3] = &unk_279933840;
      objc_copyWeak(&v18, buf);
      objc_copyWeak(&v19, &location);
      [v11 setInterruptionHandler:v17];
      v12 = selfCopy[1];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__NFMWhereIsMyCompanionConnection_serverConnection__block_invoke_60;
      v14[3] = &unk_279933840;
      objc_copyWeak(&v15, buf);
      objc_copyWeak(&v16, &location);
      [v12 setInvalidationHandler:v14];
      selfCopy = selfCopy[1];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  [(NFMWhereIsMyCompanionConnection *)self _cleanUpServerConnection:self->_serverConnection];
  v3.receiver = self;
  v3.super_class = NFMWhereIsMyCompanionConnection;
  [(NFMWhereIsMyCompanionConnection *)&v3 dealloc];
}

void __51__NFMWhereIsMyCompanionConnection_serverConnection__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v3 = [WeakRetained _cleanUpServerConnection:v3];
  }

  v5 = nfm_log(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = NFMFindLocalDeviceServerName;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### XPC Connection interrupted: %@", &v6, 0xCu);
  }
}

void __51__NFMWhereIsMyCompanionConnection_serverConnection__block_invoke_60(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v3 = [WeakRetained _cleanUpServerConnection:v3];
  }

  v5 = nfm_log(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = NFMFindLocalDeviceServerName;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### XPC Connection invalidated: %@", &v6, 0xCu);
  }
}

- (void)_cleanUpServerConnection:(id)connection
{
  [connection invalidate];

  [(NFMWhereIsMyCompanionConnection *)self setServerConnection:?];
}

- (void)playSoundOnCompanionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = nfm_log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### Triggered Play Sound", v10, 2u);
  }

  v6 = [completionCopy copy];
  playSoundCompletion = self->_playSoundCompletion;
  self->_playSoundCompletion = v6;

  serverConnection = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy playSoundRemotely];
}

- (void)playSoundAndLightsOnCompanionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = nfm_log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### Triggered Play Light and Sound", v10, 2u);
  }

  v6 = [completionCopy copy];
  playSoundAndLEDCompletion = self->_playSoundAndLEDCompletion;
  self->_playSoundAndLEDCompletion = v6;

  serverConnection = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy playSoundAndFlashRemotely];
}

- (void)playedSound:(BOOL)sound
{
  soundCopy = sound;
  v9 = *MEMORY[0x277D85DE8];
  v5 = nfm_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = soundCopy;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### Played Sound: %{BOOL}d", v8, 8u);
  }

  playSoundCompletion = self->_playSoundCompletion;
  if (playSoundCompletion)
  {
    playSoundCompletion[2](playSoundCompletion, soundCopy);
    v7 = self->_playSoundCompletion;
    self->_playSoundCompletion = 0;
  }
}

- (void)playedSoundAndLED:(BOOL)d
{
  dCopy = d;
  v9 = *MEMORY[0x277D85DE8];
  v5 = nfm_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = dCopy;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### Played Light and Sound: %{BOOL}d", v8, 8u);
  }

  playSoundAndLEDCompletion = self->_playSoundAndLEDCompletion;
  if (playSoundAndLEDCompletion)
  {
    playSoundAndLEDCompletion[2](playSoundAndLEDCompletion, dCopy);
    v7 = self->_playSoundAndLEDCompletion;
    self->_playSoundAndLEDCompletion = 0;
  }
}

- (void)startRangingOnPhone
{
  v3 = nfm_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Start Ranging on Phone", v6, 2u);
  }

  serverConnection = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy startRangingOnPhone];
}

- (void)stopRangingOnPhone
{
  v3 = nfm_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Stop Ranging on Phone", v6, 2u);
  }

  serverConnection = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy stopRangingOnPhone];
}

- (void)playNearbySoundOnPhone
{
  v3 = nfm_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Play Nearby sound on Phone", v6, 2u);
  }

  serverConnection = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy playNearbySoundOnPhone];
}

- (void)applicationIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    bundleIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"nobundleID-%d", getpid()];
  }

  replyCopy[2](replyCopy, bundleIdentifier);
}

- (void)setServerConnection:(uint64_t)connection
{
  if (connection)
  {
    objc_storeStrong((connection + 8), a2);
  }
}

- (uint64_t)playSoundCompletion
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setPlaySoundCompletion:(void *)completion
{
  if (completion)
  {
    objc_setProperty_nonatomic_copy(completion, newValue, newValue, 16);
  }
}

- (uint64_t)playSoundAndLEDCompletion
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setPlaySoundAndLEDCompletion:(void *)completion
{
  if (completion)
  {
    objc_setProperty_nonatomic_copy(completion, newValue, newValue, 24);
  }
}

@end