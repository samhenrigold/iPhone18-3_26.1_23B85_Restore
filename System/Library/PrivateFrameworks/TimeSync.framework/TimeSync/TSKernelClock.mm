@interface TSKernelClock
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (TSKernelClock)initWithClockIdentifier:(unint64_t)identifier;
- (TSKernelClock)initWithImplDC:(id)c;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)didBeginClockGrandmasterChange;
- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port;
- (void)didChangeClockMaster;
- (void)didChangeLocalPortWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port;
- (void)didChangeLockStateTo:(int)to;
- (void)didEndClockGrandmasterChange;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port;
- (void)didProcessSync;
- (void)didResetClock;
- (void)interruptedConnection;
- (void)removeClient:(id)client;
- (void)setPropertyUpdateQueue:(id)queue;
@end

@implementation TSKernelClock

- (TSKernelClock)initWithImplDC:(id)c
{
  cCopy = c;
  v6 = cCopy;
  if (!cCopy)
  {
    [(TSKernelClock *)self initWithImplDC:&v16];
    clients = v15;
    v8 = v16;
    goto LABEL_4;
  }

  v14.receiver = self;
  v14.super_class = TSKernelClock;
  v7 = -[TSClock initWithClockIdentifier:](&v14, sel_initWithClockIdentifier_, [cCopy clockIdentifier]);
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_impl, c);
    v13.receiver = v8;
    v13.super_class = TSKernelClock;
    propertyUpdateQueue = [(TSClock *)&v13 propertyUpdateQueue];
    [(TSDCKernelClock *)v8->_impl setPropertyUpdateQueue:?];

    [(TSDCKernelClock *)v8->_impl setClient:?];
    v8->_clientLock._os_unfair_lock_opaque = 0;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v8->_clients;
    v8->_clients = weakObjectsPointerArray;
LABEL_4:
  }

  return v8;
}

- (TSKernelClock)initWithClockIdentifier:(unint64_t)identifier
{
  v4 = [TSDCKernelClock clockWithIdentifier:?];
  if (v4)
  {
    v5 = [(TSKernelClock *)self initWithImplDC:?];
  }

  else
  {
    [TSKernelClock initWithClockIdentifier:?];
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  [(TSDCKernelClock *)self->_impl setClient:?];
  v3.receiver = self;
  v3.super_class = TSKernelClock;
  [(TSKernelClock *)&v3 dealloc];
}

- (void)setPropertyUpdateQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = TSKernelClock;
  [(TSClock *)&v6 setPropertyUpdateQueue:queue];
  v5.receiver = self;
  v5.super_class = TSKernelClock;
  propertyUpdateQueue = [(TSClock *)&v5 propertyUpdateQueue];
  [(TSDCKernelClock *)self->_impl setPropertyUpdateQueue:?];
}

- (void)addClient:(id)client
{
  v11 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = TSKernelClock;
  [(TSClock *)&v10 addClient:clientCopy];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v5 = self->_clients;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(8 * i) == clientCopy)
        {

          goto LABEL_11;
        }
      }

      v7 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:?];
LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)removeClient:(id)client
{
  v17 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_clients;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v13 + 1) + 8 * v10) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:?];
          goto LABEL_11;
        }

        ++v11;
        v10 = (v10 + 1);
      }

      while (v7 != v10);
      v7 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);
  v12.receiver = self;
  v12.super_class = TSKernelClock;
  [(TSClock *)&v12 removeClient:clientCopy];
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  string = [MEMORY[0x277CCAB68] string];
  v8 = [infoCopy objectForKeyedSubscript:?];
  [string appendFormat:indentCopy, v8];

  [string appendFormat:indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:?];
  v10 = v9;
  if (v9)
  {
    [string appendFormat:objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:?];
  }

  [string appendFormat:indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:?];

  if (v11 && [v11 intValue] > 2)
  {
    [string appendFormat:objc_msgSend(v11, "intValue")];
  }

  else
  {
    [string appendString:?];
  }

  return string;
}

- (void)didResetClock
{
  os_unfair_lock_lock(&self->_clientLock);
  v3 = self->_clients;
  v4 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 didResetClock:?];
        }
      }

      v5 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didChangeClockMaster
{
  os_unfair_lock_lock(&self->_clientLock);
  v3 = self->_clients;
  v4 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 didChangeClockMasterForClock:?];
        }
      }

      v5 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didChangeLockStateTo:(int)to
{
  os_unfair_lock_lock(&self->_clientLock);
  v4 = self->_clients;
  v5 = [NSPointerArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 didChangeLockStateTo:? forClock:?];
        }
      }

      v6 = [NSPointerArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didBeginClockGrandmasterChange
{
  os_unfair_lock_lock(&self->_clientLock);
  v3 = self->_clients;
  v4 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 didBeginClockGrandmasterChangeForClock:?];
        }
      }

      v5 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port
{
  os_unfair_lock_lock(&self->_clientLock);
  v5 = self->_clients;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 didBeginClockGrandmasterChangeWithGrandmasterID:? localPort:? forClock:?];
        }
      }

      v7 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didEndClockGrandmasterChange
{
  os_unfair_lock_lock(&self->_clientLock);
  v3 = self->_clients;
  v4 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 didEndClockGrandmasterChangeForClock:?];
        }
      }

      v5 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port
{
  os_unfair_lock_lock(&self->_clientLock);
  v5 = self->_clients;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 didEndClockGrandmasterChangeWithGrandmasterID:? localPort:? forClock:?];
        }
      }

      v7 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didProcessSync
{
  os_unfair_lock_lock(&self->_clientLock);
  v3 = self->_clients;
  v4 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 didProcessSync:?];
        }
      }

      v5 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didChangeLocalPortWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port
{
  os_unfair_lock_lock(&self->_clientLock);
  v5 = self->_clients;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 didChangeLocalPortWithGrandmasterID:? localPort:? forClock:?];
        }
      }

      v7 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)interruptedConnection
{
  interruptionHandler = [(TSKernelClock *)self interruptionHandler];

  if (interruptionHandler)
  {
    interruptionHandler2 = [(TSKernelClock *)self interruptionHandler];
    interruptionHandler2[2](interruptionHandler2, self);
  }
}

- (void)initWithImplDC:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 136316418;
    OUTLINED_FUNCTION_0();
    v7 = "";
    OUTLINED_FUNCTION_1();
    v8 = 71;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v6, 0x3Au);
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)initWithClockIdentifier:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136316418;
    OUTLINED_FUNCTION_0();
    v3 = "";
    OUTLINED_FUNCTION_1();
    v4 = 92;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, 0x3Au);
  }
}

@end