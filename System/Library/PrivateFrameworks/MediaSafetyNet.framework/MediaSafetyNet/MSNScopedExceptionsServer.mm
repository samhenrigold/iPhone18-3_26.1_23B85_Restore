@interface MSNScopedExceptionsServer
+ (id)proxiesForException:(id)exception;
+ (id)proxyForMachServiceName:(id)name;
+ (id)sharedCamProxy;
+ (id)sharedMicProxy;
+ (id)sharedProxy;
+ (id)validEntitlements;
+ (id)validExceptions;
- (BOOL)isConnectionAllowedToAssertException:(id)exception;
- (BOOL)isExceptionInEffect:(id)effect;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MSNScopedExceptionsServer)initWithQueue:(id)queue;
- (void)beginException:(id)exception;
- (void)endException:(id)exception;
@end

@implementation MSNScopedExceptionsServer

- (MSNScopedExceptionsServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = MSNScopedExceptionsServer;
  v6 = [(MSNScopedExceptionsServer *)&v15 init];
  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    activeExceptions = v6->_activeExceptions;
    v6->_activeExceptions = array;

    objc_storeStrong(&v6->_queue, queue);
    if (g_serverMode == 2)
    {
      v9 = [@"com.apple.mediasafetynet.exceptions" stringByAppendingString:@".cam"];
      v10 = v9;
    }

    else
    {
      v10 = @"com.apple.mediasafetynet.exceptions";
    }

    v11 = MSNLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(MSNScopedExceptionsServer *)v10 initWithQueue:v11];
    }

    v12 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v10];
    listener = v6->_listener;
    v6->_listener = v12;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

+ (id)validEntitlements
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSNScopedExceptionsServer_validEntitlements__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (validEntitlements_onceToken != -1)
  {
    dispatch_once(&validEntitlements_onceToken, block);
  }

  v2 = validEntitlements_validEntitlements;

  return v2;
}

void __46__MSNScopedExceptionsServer_validEntitlements__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) validExceptions];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [@"com.apple.private.mediasafetynet.exception." stringByAppendingString:*(*(&v11 + 1) + 8 * v7)];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = validEntitlements_validEntitlements;
  validEntitlements_validEntitlements = v9;
}

+ (id)validExceptions
{
  if (validExceptions_onceToken != -1)
  {
    +[MSNScopedExceptionsServer validExceptions];
  }

  v3 = validExceptions_validExceptions;

  return v3;
}

void __44__MSNScopedExceptionsServer_validExceptions__block_invoke()
{
  v4[14] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"announcemessage";
  v4[1] = @"notificationappex";
  v4[2] = @"xctest";
  v4[3] = @"emergency";
  v4[4] = @"audiotesting";
  v4[5] = @"mediacontrol";
  v4[6] = @"shazam";
  v4[7] = @"keyboardcamera";
  v4[8] = @"callsam";
  v4[9] = @"magnifierangel";
  v4[10] = @"findingui";
  v4[11] = @"nearbyprecisionfinding";
  v4[12] = @"callbanner";
  v4[13] = @"continuitycapture";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:14];
  v2 = [v0 setWithArray:v1];
  v3 = validExceptions_validExceptions;
  validExceptions_validExceptions = v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = +[MSNScopedExceptionsServer validEntitlements];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [connectionCopy valueForEntitlement:*(*(&v24 + 1) + 8 * i)];
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {

          v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869B5CE8];
          [connectionCopy setExportedInterface:v14];

          [connectionCopy setExportedObject:self];
          v18 = MEMORY[0x277D85DD0];
          v19 = 3221225472;
          v20 = __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke;
          v21 = &unk_2798A3D18;
          selfCopy = self;
          v15 = connectionCopy;
          v23 = v15;
          v16 = MEMORY[0x259C893D0](&v18);
          [v15 setInterruptionHandler:{v16, v18, v19, v20, v21, selfCopy}];
          [v15 setInvalidationHandler:v16];
          [v15 resume];

          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

void __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = MSNLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v2);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 24);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke_80;
  v6[3] = &unk_2798A3D18;
  v6[4] = v4;
  v7 = v3;
  dispatch_async(v5, v6);
}

void __64__MSNScopedExceptionsServer_listener_shouldAcceptNewConnection___block_invoke_80(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138543618;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 connection];
        v11 = *(a1 + 40);

        if (v10 == v11)
        {
          v13 = MSNLog(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v9 exception];
            v15 = [*(a1 + 40) processIdentifier];
            *buf = v16;
            v22 = v14;
            v23 = 1024;
            v24 = v15;
            _os_log_impl(&dword_258731000, v13, OS_LOG_TYPE_INFO, "Expiring exception %{public}@ from pid %i due to invalidation.", buf, 0x12u);
          }

          [v2 addObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 16) removeObjectsInArray:v2];
}

- (BOOL)isConnectionAllowedToAssertException:(id)exception
{
  exceptionCopy = exception;
  if (exceptionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v5 = [@"com.apple.private.mediasafetynet.exception." stringByAppendingString:exceptionCopy];
    v6 = [currentConnection valueForEntitlement:v5];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)beginException:(id)exception
{
  exceptionCopy = exception;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [(MSNScopedExceptionsServer *)self isConnectionAllowedToAssertException:exceptionCopy];
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__MSNScopedExceptionsServer_beginException___block_invoke;
    block[3] = &unk_2798A3DE0;
    v16 = exceptionCopy;
    v17 = currentConnection;
    selfCopy = self;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = MSNLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MSNScopedExceptionsServer *)exceptionCopy beginException:v8, v9, v10, v11, v12, v13, v14];
    }

    [currentConnection invalidate];
  }
}

void __44__MSNScopedExceptionsServer_beginException___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MSNLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) processIdentifier];
    v7 = 138543618;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Beginning exception %{public}@ from pid %i.", &v7, 0x12u);
  }

  v5 = *(*(a1 + 48) + 16);
  v6 = [[MSNScopedException alloc] initWithConnection:*(a1 + 40) exception:*(a1 + 32)];
  [v5 addObject:v6];
}

- (void)endException:(id)exception
{
  exceptionCopy = exception;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [(MSNScopedExceptionsServer *)self isConnectionAllowedToAssertException:exceptionCopy];
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__MSNScopedExceptionsServer_endException___block_invoke;
    block[3] = &unk_2798A3DE0;
    block[4] = self;
    v10 = currentConnection;
    v11 = exceptionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = MSNLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MSNScopedExceptionsServer *)exceptionCopy endException:currentConnection];
    }

    [currentConnection invalidate];
  }
}

uint64_t __42__MSNScopedExceptionsServer_endException___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) count];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = 0;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:v3];
    v6 = [v5 connection];
    v7 = v6;
    if (v6 == *(a1 + 40))
    {
      v8 = [v5 exception];
      v9 = [v8 isEqual:*(a1 + 48)];

      if (v9)
      {
        v4 = v3;
      }
    }

    else
    {
    }

    ++v3;
    v2 = [*(*(a1 + 32) + 16) count];
  }

  while (v3 < v2);
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MSNLog(v2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 40) processIdentifier];
      v15 = 138543618;
      v16 = v13;
      v17 = 1024;
      v18 = v14;
      _os_log_impl(&dword_258731000, v12, OS_LOG_TYPE_INFO, "Ending exception %{public}@ from pid %i.", &v15, 0x12u);
    }

    return [*(*(a1 + 32) + 16) removeObjectAtIndex:v4];
  }

  else
  {
LABEL_9:
    v10 = MSNLog(v2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __42__MSNScopedExceptionsServer_endException___block_invoke_cold_1(a1);
    }

    return [*(a1 + 40) invalidate];
  }
}

- (BOOL)isExceptionInEffect:(id)effect
{
  v24 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_activeExceptions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        exception = [*(*(&v17 + 1) + 8 * i) exception];
        v11 = [exception isEqual:effectCopy];

        if (v11)
        {
          v15 = MSNLog(v12);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v22 = effectCopy;
            _os_log_impl(&dword_258731000, v15, OS_LOG_TYPE_INFO, "Found exception %{public}@", buf, 0xCu);
          }

          v14 = 1;
          goto LABEL_15;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = MSNLog(v13);
  if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_DEBUG))
  {
    [(MSNScopedExceptionsServer *)effectCopy isExceptionInEffect:?];
  }

  v14 = 0;
LABEL_15:

  return v14;
}

+ (id)proxyForMachServiceName:(id)name
{
  nameCopy = name;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:nameCopy options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869B5CE8];
  [v4 setRemoteObjectInterface:v5];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__MSNScopedExceptionsServer_proxyForMachServiceName___block_invoke;
  v15[3] = &unk_2798A3D68;
  v6 = nameCopy;
  v16 = v6;
  [v4 setInterruptionHandler:v15];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __53__MSNScopedExceptionsServer_proxyForMachServiceName___block_invoke_85;
  v13 = &unk_2798A3D68;
  v14 = v6;
  v7 = v6;
  [v4 setInvalidationHandler:&v10];
  [v4 resume];
  remoteObjectProxy = [v4 remoteObjectProxy];

  return remoteObjectProxy;
}

void __53__MSNScopedExceptionsServer_proxyForMachServiceName___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = MSNLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Interrupted (%@): If this happens at connection-time or when setting an exception, a required entitlement is likely missing.", &v4, 0xCu);
  }
}

void __53__MSNScopedExceptionsServer_proxyForMachServiceName___block_invoke_85(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = MSNLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Invalidated (%@).", &v4, 0xCu);
  }
}

+ (id)sharedProxy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSNScopedExceptionsServer_sharedProxy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedProxy_onceToken != -1)
  {
    dispatch_once(&sharedProxy_onceToken, block);
  }

  v2 = sharedProxy_sharedProxy;

  return v2;
}

uint64_t __40__MSNScopedExceptionsServer_sharedProxy__block_invoke(uint64_t a1)
{
  sharedProxy_sharedProxy = [*(a1 + 32) proxyForMachServiceName:@"com.apple.mediasafetynet.exceptions"];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedMicProxy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MSNScopedExceptionsServer_sharedMicProxy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedMicProxy_onceToken != -1)
  {
    dispatch_once(&sharedMicProxy_onceToken, block);
  }

  v2 = sharedMicProxy_sharedProxy;

  return v2;
}

uint64_t __43__MSNScopedExceptionsServer_sharedMicProxy__block_invoke(uint64_t a1)
{
  sharedMicProxy_sharedProxy = [*(a1 + 32) proxyForMachServiceName:@"com.apple.mediasafetynet.exceptions"];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedCamProxy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MSNScopedExceptionsServer_sharedCamProxy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCamProxy_onceToken != -1)
  {
    dispatch_once(&sharedCamProxy_onceToken, block);
  }

  v2 = sharedCamProxy_sharedProxy;

  return v2;
}

void __43__MSNScopedExceptionsServer_sharedCamProxy__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = @".cam";
  if ((_os_feature_enabled_impl() & 1) == 0 && !_os_feature_enabled_impl())
  {
    v2 = &stru_2869B3BE8;
  }

  v5 = [@"com.apple.mediasafetynet.exceptions" stringByAppendingString:v2];
  v3 = [v1 proxyForMachServiceName:v5];
  v4 = sharedCamProxy_sharedProxy;
  sharedCamProxy_sharedProxy = v3;
}

+ (id)proxiesForException:(id)exception
{
  v51[1] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  if (_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl())
  {
    array = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v48[0] = @"announcemessage";
    v48[1] = @"notificationappex";
    v49[0] = &unk_2869B4A10;
    v49[1] = &unk_2869B4A28;
    v48[2] = @"xctest";
    v48[3] = @"emergency";
    v49[2] = &unk_2869B4A40;
    v49[3] = &unk_2869B4A58;
    v48[4] = @"audiotesting";
    v48[5] = @"shazam";
    v49[4] = &unk_2869B4A70;
    v49[5] = &unk_2869B4A88;
    v48[6] = @"mediacontrol";
    v48[7] = @"keyboardcamera";
    v49[6] = &unk_2869B4AA0;
    v49[7] = &unk_2869B4AB8;
    v48[8] = @"magnifierangel";
    v48[9] = @"findingui";
    v49[8] = &unk_2869B4AD0;
    v49[9] = &unk_2869B4AE8;
    v48[10] = @"nearbyprecisionfinding";
    v48[11] = @"callbanner";
    v49[10] = &unk_2869B4B00;
    v49[11] = &unk_2869B4B18;
    v48[12] = @"continuitycapture";
    v49[12] = &unk_2869B4B30;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:13];
    v7 = exceptionCopy;
    v8 = [v6 objectForKeyedSubscript:exceptionCopy];

    v9 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v41;
      *&v10 = 138412546;
      v39 = v10;
      do
      {
        v13 = 0;
        do
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v40 + 1) + 8 * v13);
          v15 = MSNLog(v9);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            integerValue = [v14 integerValue];
            if (integerValue >= 3)
            {
              qword_27F958928 = "Unknown mode";
              v24 = MSNLog(integerValue);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                ServerModeDescription_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
              }

LABEL_29:

              abort();
            }

            v20 = off_2798A4060[integerValue & 3];
            *buf = v39;
            v45 = v7;
            v46 = 2080;
            v47 = v20;
            _os_log_debug_impl(&dword_258731000, v15, OS_LOG_TYPE_DEBUG, "Exception %@ with uses server %s", buf, 0x16u);
          }

          integerValue2 = [v14 integerValue];
          if (integerValue2 == 1)
          {
            sharedMicProxy = [self sharedMicProxy];
          }

          else
          {
            if (integerValue2 != 2)
            {
              qword_27F958928 = "Only Cam and Mic servers can be requested.";
              v24 = MSNLog(integerValue2);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                [(MSNScopedExceptionsServer *)v24 proxiesForException:v32, v33, v34, v35, v36, v37, v38];
              }

              goto LABEL_29;
            }

            sharedMicProxy = [self sharedCamProxy];
          }

          v18 = sharedMicProxy;
          [array addObject:{sharedMicProxy, v39}];

          ++v13;
        }

        while (v11 != v13);
        v9 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
        v11 = v9;
      }

      while (v9);
    }

    sharedProxy = MSNLog(v21);
    if (os_log_type_enabled(sharedProxy, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      exceptionCopy = v7;
      v45 = v7;
      v46 = 2112;
      v47 = array;
      _os_log_impl(&dword_258731000, sharedProxy, OS_LOG_TYPE_INFO, "Asserting exception %@ with servers %@", buf, 0x16u);
    }

    else
    {
      exceptionCopy = v7;
    }
  }

  else
  {
    sharedProxy = [self sharedProxy];
    v51[0] = sharedProxy;
    array = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  }

  return array;
}

- (void)initWithQueue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_258731000, a2, OS_LOG_TYPE_DEBUG, "MSN exceptions listening to Mach service name '%@'.", &v2, 0xCu);
}

- (void)beginException:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_0(&dword_258731000, a2, a3, "Missing entitlement for exception %{public}@. Invalidating connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)endException:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 processIdentifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_258731000, v2, v3, "Missing entitlement for exception %{public}@ from pid %i. Invalidating connection.", v4, v5, v6, v7);
}

void __42__MSNScopedExceptionsServer_endException___block_invoke_cold_1(uint64_t a1)
{
  [*(a1 + 40) processIdentifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_258731000, v1, v2, "Ending nonexistent exception %{public}@ from pid %i.", v3, v4, v5, v6);
}

- (void)isExceptionInEffect:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_258731000, a2, OS_LOG_TYPE_DEBUG, "No exception %{public}@", &v2, 0xCu);
}

+ (void)proxiesForException:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Only Cam and Mic servers can be requested.";
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end