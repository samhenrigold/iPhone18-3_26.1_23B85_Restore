@interface IsolatedCoreAudioClientNSXPCListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IsolatedCoreAudioClientNSXPCListenerDelegate)initWithInterface:(id)interface andEntitlement:(id)entitlement;
- (id)lookupConnectionForPID:(int)d;
- (uint64_t)initWithInterface:andEntitlement:;
- (unsigned)getUseCaseIDForPID:(int)d;
- (void)setClientReaper:(function<void)(int;
- (void)setMClientReaper:(function<void)(int;
- (void)setUseCaseIDForCurrentConnection:(unsigned int)connection;
@end

@implementation IsolatedCoreAudioClientNSXPCListenerDelegate

- (void)setMClientReaper:(function<void)(int
{
  v9[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v7, a3);
  p_mClientReaper = &self->_mClientReaper;
  if (&self->_mClientReaper != v7)
  {
    v5 = v8;
    f = self->_mClientReaper.__f_.__f_;
    if (v8 == v7)
    {
      if (f == p_mClientReaper)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(*self->_mClientReaper.__f_.__f_ + 24))(self->_mClientReaper.__f_.__f_, v7);
        (*(*self->_mClientReaper.__f_.__f_ + 32))(self->_mClientReaper.__f_.__f_);
        self->_mClientReaper.__f_.__f_ = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, &self->_mClientReaper);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = self->_mClientReaper.__f_.__f_;
      }

      self->_mClientReaper.__f_.__f_ = p_mClientReaper;
    }

    else if (f == p_mClientReaper)
    {
      (*(*f->__f_.__buf_.__data + 24))(self->_mClientReaper.__f_.__f_, v7);
      (*(*self->_mClientReaper.__f_.__f_ + 32))(self->_mClientReaper.__f_.__f_);
      self->_mClientReaper.__f_.__f_ = v8;
      v8 = v7;
    }

    else
    {
      v8 = self->_mClientReaper.__f_.__f_;
      self->_mClientReaper.__f_.__f_ = v5;
    }
  }

  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v7);
}

- (unsigned)getUseCaseIDForPID:(int)d
{
  v3 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self lookupConnectionForPID:*&d];
  useCaseID = [v3 useCaseID];

  return useCaseID;
}

- (void)setUseCaseIDForCurrentConnection:(unsigned int)connection
{
  v3 = *&connection;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v5 = -[IsolatedCoreAudioClientNSXPCListenerDelegate lookupConnectionForPID:](self, "lookupConnectionForPID:", [currentConnection getProcessID]);
  [v5 setUseCaseID:v3];
}

- (id)lookupConnectionForPID:(int)d
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&d];
  mConnections = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mConnections];
  v6 = [mConnections objectForKey:v4];

  return v6;
}

- (void)setClientReaper:(function<void)(int
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v4, a3);
  [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self setMClientReaper:v4];
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v4);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v31 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  mEntitlementString = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mEntitlementString];

  if (!mEntitlementString)
  {
    goto LABEL_4;
  }

  mEntitlementString2 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mEntitlementString];
  v8 = [connectionCopy valueForEntitlement:mEntitlementString2];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {

LABEL_4:
    v10 = sIsolatedCoreAudioServerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "IsolatedCoreAudioClientNSXPCListenerDelegate.mm";
      *&buf[12] = 1024;
      *&buf[14] = 41;
      _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioClientNSXPCListenerDelegate - Listener", buf, 0x12u);
    }

    getProcessID = [connectionCopy getProcessID];
    v12 = getProcessID;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:getProcessID];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v29 = __Block_byref_object_copy_;
    *(&v29 + 1) = __Block_byref_object_dispose_;
    v30 = [[IsolatedCoreAudioUseCaseConnection alloc] initWithConnection:connectionCopy];
    mInterface = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mInterface];
    [connectionCopy setExportedInterface:mInterface];

    [connectionCopy setExportedObject:self];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __83__IsolatedCoreAudioClientNSXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke;
    v27[3] = &unk_2797ED2F0;
    v27[4] = buf;
    [connectionCopy setInterruptionHandler:v27];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __83__IsolatedCoreAudioClientNSXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_3;
    v23 = &unk_2797ED318;
    selfCopy = self;
    v26 = v12;
    mEntitlementString2 = v13;
    v25 = mEntitlementString2;
    [connectionCopy setInvalidationHandler:&v20];
    v15 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mConnections:v20];
    objc_sync_enter(v15);
    mConnections = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mConnections];
    [mConnections setObject:*(*&buf[8] + 40) forKey:mEntitlementString2];

    objc_sync_exit(v15);
    [connectionCopy resume];

    _Block_object_dispose(buf, 8);
    v17 = 1;
    goto LABEL_10;
  }

  v18 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "IsolatedCoreAudioClientNSXPCListenerDelegate.mm";
    *&buf[12] = 1024;
    *&buf[14] = 36;
    *&buf[18] = 1024;
    *&buf[20] = [connectionCopy processIdentifier];
    LOWORD(v29) = 2112;
    *(&v29 + 2) = mEntitlementString2;
    _os_log_impl(&dword_255576000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Process %i does not have the %@ entitlement", buf, 0x22u);
  }

  v17 = 0;
LABEL_10:

  return v17;
}

uint64_t __83__IsolatedCoreAudioClientNSXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "IsolatedCoreAudioClientNSXPCListenerDelegate.mm";
    v6 = 1024;
    v7 = 49;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientNSXPCListenerDelegate - interruptionHandler", &v4, 0x12u);
  }

  return [*(*(*(a1 + 32) + 8) + 40) invalidate];
}

void __83__IsolatedCoreAudioClientNSXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v6[0]) = 136315394;
    *(v6 + 4) = "IsolatedCoreAudioClientNSXPCListenerDelegate.mm";
    WORD6(v6[0]) = 1024;
    *(v6 + 14) = 54;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientNSXPCListenerDelegate - invalidationHandler", v6, 0x12u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_mClientReaper(v3);
    v3 = *(&v6[1] + 1);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  std::function<void ()(int)>::operator()(v3, *(a1 + 48));
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v6);
  v4 = [*(a1 + 32) mConnections];
  objc_sync_enter(v4);
  v5 = [*(a1 + 32) mConnections];
  [v5 removeObjectForKey:*(a1 + 40)];

  objc_sync_exit(v4);
}

- (IsolatedCoreAudioClientNSXPCListenerDelegate)initWithInterface:(id)interface andEntitlement:(id)entitlement
{
  v13[4] = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  entitlementCopy = entitlement;
  v12.receiver = self;
  v12.super_class = IsolatedCoreAudioClientNSXPCListenerDelegate;
  v8 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v8 setMInterface:interfaceCopy];
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v9 setMEntitlementString:entitlementCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v9 setMConnections:dictionary];

    v13[0] = &unk_286775780;
    v13[3] = v13;
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v9 setMClientReaper:v13];
    std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v13);
  }

  return v9;
}

- (uint64_t)initWithInterface:andEntitlement:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z81-[IsolatedCoreAudioClientNSXPCListenerDelegate initWithInterface:andEntitlement:]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end