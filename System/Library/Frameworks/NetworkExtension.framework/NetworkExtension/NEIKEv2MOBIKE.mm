@interface NEIKEv2MOBIKE
- (id)initWithQueue:(void *)queue tunnelProvider:;
- (void)dealloc;
- (void)initiateMOBIKE:(uint64_t)e pathStatus:(void *)status serverAddress:(char)address earlyDisconnect:;
- (void)mobikeDisconnect;
- (void)mobikeStartWaitTimer;
- (void)mobikeStopWaitTimer;
- (void)startMOBIKE:(uint64_t)e;
@end

@implementation NEIKEv2MOBIKE

- (void)dealloc
{
  if (self && objc_getProperty(self, a2, 32, 1))
  {
    [(NEIKEv2MOBIKE *)self mobikeStopWaitTimer];
  }

  v4.receiver = self;
  v4.super_class = NEIKEv2MOBIKE;
  [(NEIKEv2MOBIKE *)&v4 dealloc];
}

- (void)mobikeStopWaitTimer
{
  if (self && objc_getProperty(self, a2, 32, 1))
  {
    Property = objc_getProperty(self, v3, 32, 1);
    dispatch_source_cancel(Property);

    objc_setProperty_atomic(self, v5, 0, 32);
  }
}

- (id)initWithQueue:(void *)queue tunnelProvider:
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  queueCopy = queue;
  v8 = queueCopy;
  if (!self)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      self = 0;
      goto LABEL_6;
    }

    *buf = 136315138;
    v15 = "[NEIKEv2MOBIKE initWithQueue:tunnelProvider:]";
    v12 = "%s called with null queue";
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v12, buf, 0xCu);
    goto LABEL_10;
  }

  if (!queueCopy)
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v15 = "[NEIKEv2MOBIKE initWithQueue:tunnelProvider:]";
    v12 = "%s called with null tunnelProvider";
    goto LABEL_12;
  }

  v13.receiver = self;
  v13.super_class = NEIKEv2MOBIKE;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  self = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 5, a2);
    objc_storeWeak(self + 3, v8);
  }

LABEL_6:

  return self;
}

- (void)mobikeStartWaitTimer
{
  if (self && !objc_getProperty(self, a2, 32, 1))
  {
    v4 = self[10];
    Property = objc_getProperty(self, v3, 40, 1);
    if (v4)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __37__NEIKEv2MOBIKE_mobikeStartWaitTimer__block_invoke_2;
      v10[3] = &unk_1E7F0B0E8;
      v10[4] = self;
      v6 = v10;
      v7 = 10;
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __37__NEIKEv2MOBIKE_mobikeStartWaitTimer__block_invoke;
      v11[3] = &unk_1E7F0B0E8;
      v11[4] = self;
      v6 = v11;
      v7 = 2;
    }

    v8 = NECreateTimerSource(Property, v7, v6);
    objc_setProperty_atomic(self, v9, v8, 32);
  }
}

void __37__NEIKEv2MOBIKE_mobikeStartWaitTimer__block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (*(v3 + 10) & 1) == 0)
  {
    *(v3 + 10) = 1;
    WeakRetained = objc_loadWeakRetained((v3 + 24));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained[21] &= ~1u;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __31__NEIKEv2MOBIKE_mobikeReassert__block_invoke;
      v8[3] = &unk_1E7F0B4A8;
      v8[4] = v3;
      [WeakRetained setTunnelNetworkSettings:0 completionHandler:v8];
    }

    v3 = *(a1 + 32);
  }

  [(NEIKEv2MOBIKE *)v3 mobikeStopWaitTimer];
  v7 = *(a1 + 32);

  [(NEIKEv2MOBIKE *)v7 mobikeStartWaitTimer];
}

void __37__NEIKEv2MOBIKE_mobikeStartWaitTimer__block_invoke_2(uint64_t a1, const char *a2)
{
  [(NEIKEv2MOBIKE *)*(a1 + 32) mobikeStopWaitTimer];
  v3 = *(a1 + 32);

  [(NEIKEv2MOBIKE *)v3 mobikeDisconnect];
}

- (void)mobikeDisconnect
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
    if (WeakRetained)
    {
      v2 = WeakRetained;
      [(NEIKEv2PacketTunnelProvider *)WeakRetained handleInterfaceDown];
      WeakRetained = v2;
    }
  }
}

void __31__NEIKEv2MOBIKE_mobikeReassert__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 24));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained setReasserting:1];
    }
  }
}

- (void)startMOBIKE:(uint64_t)e
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (e)
  {
    if (v3)
    {
      *(e + 8) = 1;
      *(e + 9) = 0;
      if (*(e + 72) || (v6 = [objc_getProperty(e v4], v6 != objc_msgSend(objc_getProperty(e, v7, 56, 1), "interfaceIndex")) || objc_getProperty(e, v4, 16, 1))
      {
        v8 = 1;
        Property = objc_getProperty(e, v4, 16, 1);
        v10 = @"0";
        if (Property)
        {
          v10 = Property;
        }

        v11 = v10;
        v12 = [MEMORY[0x1E6977E28] endpointWithHostname:v5 port:v11];
      }

      else
      {
        v8 = 0;
        v12 = 0;
      }

      ++*(e + 72);
      WeakRetained = objc_loadWeakRetained((e + 24));
      if (WeakRetained)
      {
        v15 = objc_getProperty(e, v13, 48, 1);
        objc_setProperty_atomic(e, v16, v15, 56);
        v18 = objc_getProperty(WeakRetained, v17, 240, 1);
        v20 = [objc_getProperty(e v19];
        v22 = objc_getProperty(e, v21, 40, 1);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __29__NEIKEv2MOBIKE_startMOBIKE___block_invoke;
        v23[3] = &unk_1E7F08990;
        v23[4] = e;
        [v18 sendMOBIKEWithRetries:1 retryInterval:0 interfaceName:v20 invalidateTransport:v8 resetEndpoint:v12 callbackQueue:v22 callback:v23];
      }
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v25 = "[NEIKEv2MOBIKE startMOBIKE:]";
        _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "%s called with null serverAddress", buf, 0xCu);
      }
    }
  }
}

void __29__NEIKEv2MOBIKE_startMOBIKE___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v9 = a4;
  v10 = *(a1 + 32);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = *(v10 + 11);
  *(v10 + 8) = 0;
  v12 = *(a1 + 32);
  if (!v12)
  {
    goto LABEL_18;
  }

  *(v12 + 11) = 0;
  v13 = *(a1 + 32);
  if (!v13)
  {
    goto LABEL_18;
  }

  if (*(v13 + 9))
  {
    *(v13 + 72) = 0;
LABEL_6:
    v14 = *(a1 + 32);
    if (v14)
    {
      Property = objc_getProperty(v14, v8, 80, 1);
      [(NEIKEv2MOBIKE *)v14 startMOBIKE:?];
    }

    goto LABEL_18;
  }

  if (*(v13 + 64) != 1)
  {
    *(v13 + 72) = 0;
    goto LABEL_18;
  }

  if (a3)
  {
    *(v13 + 72) = 0;
    v16 = *(a1 + 32);
    if (v16)
    {
      *(v16 + 10) = 0;
    }
  }

  else
  {
    if ((v11 & 1) == 0 && *(v13 + 72) < 4uLL)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v9;
        _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_INFO, "mobike failed with error %@", &v19, 0xCu);
      }

      goto LABEL_6;
    }

    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "mobike failed after max retries", &v19, 2u);
    }

    [(NEIKEv2MOBIKE *)*(a1 + 32) mobikeDisconnect];
  }

LABEL_18:
}

- (void)initiateMOBIKE:(uint64_t)e pathStatus:(void *)status serverAddress:(char)address earlyDisconnect:
{
  v25 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  if (self)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218498;
      eCopy = e;
      v21 = 2048;
      v22 = a2;
      v23 = 2112;
      v24 = statusCopy;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "initiate mobike - path status %ld ifIndex %lu server address %@", &v19, 0x20u);
    }

    v12 = statusCopy;
    if (a2 && (v13 = [objc_alloc(MEMORY[0x1E6977E30]) initWithInterfaceIndex:a2], a2 = v13, v12) && e == 1 && v13)
    {
      objc_setProperty_atomic(self, v11, v13, 48);
      objc_setProperty_atomic(self, v14, v12, 80);
      *(self + 9) = 1;
      *(self + 64) = 1;
      [(NEIKEv2MOBIKE *)self mobikeStopWaitTimer];

      if ((*(self + 11) & 1) == 0)
      {
        *(self + 11) = address;
      }

      if (*(self + 8))
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "mobike in progress", &v19, 2u);
        }
      }

      else
      {
        [(NEIKEv2MOBIKE *)self startMOBIKE:v12];
      }
    }

    else
    {
      objc_setProperty_atomic(self, v11, 0, 48);
      objc_setProperty_atomic(self, v17, 0, 80);
      *(self + 9) = 0;
      *(self + 64) = 2;
      [(NEIKEv2MOBIKE *)self mobikeStartWaitTimer];
    }
  }
}

@end