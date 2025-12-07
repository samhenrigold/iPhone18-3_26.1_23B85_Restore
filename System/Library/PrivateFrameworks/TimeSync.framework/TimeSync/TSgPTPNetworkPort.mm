@interface TSgPTPNetworkPort
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (TSgPTPNetworkPort)initWithImplDC:(id)c;
- (void)addClient:(id)client;
- (void)didAnnounceTimeoutForPort:(id)port;
- (void)didChangeASCapable:(BOOL)capable forPort:(id)port;
- (void)didChangeAdministrativeEnable:(BOOL)enable forPort:(id)port;
- (void)didSyncTimeoutForPort:(id)port;
- (void)didSyncTimeoutWithMean:(int64_t)mean median:(int64_t)median standardDeviation:(unint64_t)deviation minimum:(int64_t)minimum maximum:(int64_t)maximum numberOfSamples:(unsigned int)samples forPort:(id)port;
- (void)didTerminateServiceForPort:(id)port;
- (void)didTimeoutOnMACLookupForPort:(id)port;
- (void)removeClient:(id)client;
@end

@implementation TSgPTPNetworkPort

- (TSgPTPNetworkPort)initWithImplDC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPNetworkPort initWithImplDC:];
    clients = v12;
    v7 = v13;
    goto LABEL_4;
  }

  v11.receiver = self;
  v11.super_class = TSgPTPNetworkPort;
  v6 = [(TSgPTPPort *)&v11 initWithImplDC:cCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, c);
    v7->_clientLock._os_unfair_lock_opaque = 0;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v7->_clients;
    v7->_clients = weakObjectsPointerArray;
LABEL_4:
  }

  return v7;
}

- (void)addClient:(id)client
{
  v17 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(TSgPTPNetworkPort *)self description];
    *buf = 136315394;
    v14 = uTF8String;
    v15 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Adding Client %s to port %s\n", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v8 = self->_clients;
  v9 = [NSPointerArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(8 * i) == clientCopy)
        {

          goto LABEL_14;
        }
      }

      v10 = [NSPointerArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:?];
  if ([(NSPointerArray *)self->_clients count]== 1)
  {
    [(_TSF_TSDgPTPNetworkPort *)self->_impl addClient:?];
  }

LABEL_14:
  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)removeClient:(id)client
{
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(TSgPTPNetworkPort *)self description];
    *buf = 136315394;
    v16 = uTF8String;
    v17 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removing Client %s from port %s\n", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v8 = self->_clients;
  v9 = [NSPointerArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = MEMORY[0];
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v8);
        }

        if (*(8 * v13) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:?];
          goto LABEL_13;
        }

        ++v14;
        v13 = (v13 + 1);
      }

      while (v10 != v13);
      v10 = [NSPointerArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  if (![(NSPointerArray *)self->_clients count])
  {
    [(_TSF_TSDgPTPNetworkPort *)self->_impl removeClient:?];
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didChangeASCapable:(BOOL)capable forPort:(id)port
{
  capableCopy = capable;
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    portNumber = [(TSgPTPPort *)self portNumber];
    v10 = @"NO";
    *buf = 138413058;
    v19 = 2048;
    v18 = v7;
    if (capableCopy)
    {
      v10 = @"YES";
    }

    v20 = clockIdentifier;
    v21 = 1024;
    v22 = portNumber;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): changedASCapable:%@", buf, 0x26u);
  }

  v11 = self->_clients;
  v12 = [NSPointerArray countByEnumeratingWithState:v11 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0];
    do
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 didChangeASCapable:? forPort:?];
        }
      }

      v13 = [NSPointerArray countByEnumeratingWithState:v11 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didChangeAdministrativeEnable:(BOOL)enable forPort:(id)port
{
  enableCopy = enable;
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    portNumber = [(TSgPTPPort *)self portNumber];
    v10 = @"NO";
    *buf = 138413058;
    v19 = 2048;
    v18 = v7;
    if (enableCopy)
    {
      v10 = @"YES";
    }

    v20 = clockIdentifier;
    v21 = 1024;
    v22 = portNumber;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): changedAdministrativeEnable:%@", buf, 0x26u);
  }

  v11 = self->_clients;
  v12 = [NSPointerArray countByEnumeratingWithState:v11 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0];
    do
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 didChangeAdministrativeEnable:? forPort:?];
        }
      }

      v13 = [NSPointerArray countByEnumeratingWithState:v11 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didTimeoutOnMACLookupForPort:(id)port
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412802;
    v13 = v5;
    v14 = 2048;
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v16 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): timedoutMACLookup", buf, 0x1Cu);
  }

  v6 = self->_clients;
  v7 = [NSPointerArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v11 didTimeoutOnMACLookupForPort:?];
        }
      }

      v8 = [NSPointerArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didAnnounceTimeoutForPort:(id)port
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412802;
    v13 = v5;
    v14 = 2048;
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v16 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): announceTimeout", buf, 0x1Cu);
  }

  v6 = self->_clients;
  v7 = [NSPointerArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v11 didAnnounceTimeoutForPort:?];
        }
      }

      v8 = [NSPointerArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didSyncTimeoutForPort:(id)port
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412802;
    v13 = v5;
    v14 = 2048;
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v16 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): syncTimeout", buf, 0x1Cu);
  }

  v6 = self->_clients;
  v7 = [NSPointerArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v11 didSyncTimeoutForPort:?];
        }
      }

      v8 = [NSPointerArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didSyncTimeoutWithMean:(int64_t)mean median:(int64_t)median standardDeviation:(unint64_t)deviation minimum:(int64_t)minimum maximum:(int64_t)maximum numberOfSamples:(unsigned int)samples forPort:(id)port
{
  v42 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138414338;
    v25 = v14;
    v26 = 2048;
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v28 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
    v30 = 2048;
    meanCopy = mean;
    v32 = 2048;
    medianCopy = median;
    v34 = 2048;
    deviationCopy = deviation;
    v36 = 2048;
    minimumCopy = minimum;
    v38 = 2048;
    maximumCopy = maximum;
    v40 = 1024;
    samplesCopy = samples;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): syncTimeoutWithMean:%lld median:%lld standardDeviation:%llu minimum:%lld maximum:%lld numberOfSamples:%u", buf, 0x54u);
  }

  v15 = self->_clients;
  v16 = [NSPointerArray countByEnumeratingWithState:v15 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v17; i = (i + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v20 didSyncTimeoutWithMean:self median:? standardDeviation:? minimum:? maximum:? numberOfSamples:? forPort:?];
        }
      }

      v17 = [NSPointerArray countByEnumeratingWithState:v15 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v17);
  }

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)didTerminateServiceForPort:(id)port
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412802;
    v13 = v5;
    v14 = 2048;
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v16 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): terminatedService", buf, 0x1Cu);
  }

  v6 = self->_clients;
  v7 = [NSPointerArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v11 didTerminateServiceForPort:?];
        }
      }

      v8 = [NSPointerArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  [(TSgPTPPort *)self serviceTerminated];
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  v59.receiver = self;
  v59.super_class = &OBJC_METACLASS___TSgPTPNetworkPort;
  v8 = objc_msgSendSuper2(&v59, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  v9 = [infoCopy objectForKeyedSubscript:?];
  [v8 appendFormat:indentCopy];
  if (v9)
  {
    [v8 appendFormat:v9];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v10 = [infoCopy objectForKeyedSubscript:?];
  v11 = v10;
  if (v10)
  {
    [v8 appendFormat:v10];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v12 = [infoCopy objectForKeyedSubscript:?];

  if (v12)
  {
    [v8 appendFormat:v12];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v13 = [infoCopy objectForKeyedSubscript:?];
  v14 = v13;
  if (v13)
  {
    [v8 appendFormat:objc_msgSend(v13, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v15 = [infoCopy objectForKeyedSubscript:?];

  if (v15)
  {
    [v8 appendFormat:objc_msgSend(v15, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v16 = [infoCopy objectForKeyedSubscript:?];

  if (v16)
  {
    [v8 appendFormat:objc_msgSend(v16, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v17 = [infoCopy objectForKeyedSubscript:?];

  if (v17)
  {
    [v8 appendFormat:objc_msgSend(v17, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v18 = [infoCopy objectForKeyedSubscript:?];

  if (v18)
  {
    [v8 appendFormat:objc_msgSend(v18, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v19 = [infoCopy objectForKeyedSubscript:?];

  if (v19)
  {
    [v8 appendFormat:objc_msgSend(v19, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v20 = [infoCopy objectForKeyedSubscript:?];

  if (v20)
  {
    [v8 appendFormat:objc_msgSend(v20, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v21 = [infoCopy objectForKeyedSubscript:?];

  if (v21)
  {
    [v8 appendFormat:objc_msgSend(v21, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v22 = [infoCopy objectForKeyedSubscript:?];

  if (v22)
  {
    [v8 appendFormat:objc_msgSend(v22, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v23 = [infoCopy objectForKeyedSubscript:?];

  if (v23)
  {
    [v8 appendFormat:objc_msgSend(v23, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v24 = [infoCopy objectForKeyedSubscript:?];

  if (v24)
  {
    [v8 appendFormat:objc_msgSend(v24, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v25 = [infoCopy objectForKeyedSubscript:?];

  if (v25)
  {
    [v8 appendFormat:objc_msgSend(v25, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v26 = [infoCopy objectForKeyedSubscript:?];

  if (v26)
  {
    [v8 appendFormat:objc_msgSend(v26, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v27 = [infoCopy objectForKeyedSubscript:?];

  if (v27)
  {
    [v8 appendFormat:objc_msgSend(v27, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v28 = [infoCopy objectForKeyedSubscript:?];

  if (v28)
  {
    [v8 appendFormat:objc_msgSend(v28, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v29 = [infoCopy objectForKeyedSubscript:?];

  if (v29)
  {
    [v8 appendFormat:objc_msgSend(v29, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v30 = [infoCopy objectForKeyedSubscript:?];

  if (!v30)
  {
    goto LABEL_61;
  }

  unsignedCharValue = [v30 unsignedCharValue];
  if (unsignedCharValue <= 2)
  {
    if (unsignedCharValue <= 2)
    {
LABEL_61:
      [v8 appendString:?];
      goto LABEL_62;
    }
  }

  else if (unsignedCharValue <= 5 || unsignedCharValue == 6)
  {
    goto LABEL_61;
  }

  [v8 appendFormat:objc_msgSend(v30, "unsignedCharValue")];
LABEL_62:
  [v8 appendFormat:indentCopy];
  v32 = [infoCopy objectForKeyedSubscript:?];

  if (!v32)
  {
    goto LABEL_65;
  }

  unsignedCharValue2 = [v32 unsignedCharValue];
  if (unsignedCharValue2 <= 2)
  {
    if (unsignedCharValue2 > 2)
    {
      goto LABEL_150;
    }

LABEL_65:
    [v8 appendString:?];
    goto LABEL_66;
  }

  if (unsignedCharValue2 <= 5 || unsignedCharValue2 == 6)
  {
    goto LABEL_65;
  }

LABEL_150:
  [v8 appendFormat:objc_msgSend(v32, "unsignedCharValue")];
LABEL_66:
  [v8 appendFormat:indentCopy];
  v34 = [infoCopy objectForKeyedSubscript:?];

  if (!v34)
  {
    goto LABEL_83;
  }

  unsignedCharValue3 = [v34 unsignedCharValue];
  if (unsignedCharValue3 > 1)
  {
    if (unsignedCharValue3 == 2 || unsignedCharValue3 == 3)
    {
      goto LABEL_83;
    }

LABEL_82:
    [v8 appendFormat:objc_msgSend(v34, "unsignedCharValue")];
    goto LABEL_84;
  }

  if (unsignedCharValue3 > 1)
  {
    goto LABEL_82;
  }

LABEL_83:
  [v8 appendString:?];
LABEL_84:
  [v8 appendFormat:indentCopy];
  v36 = [infoCopy objectForKeyedSubscript:?];

  if (!v36)
  {
    goto LABEL_92;
  }

  unsignedCharValue4 = [v36 unsignedCharValue];
  if (unsignedCharValue4 > 1)
  {
    if (unsignedCharValue4 == 2 || unsignedCharValue4 == 3)
    {
      goto LABEL_92;
    }

LABEL_91:
    [v8 appendFormat:objc_msgSend(v36, "unsignedCharValue")];
    goto LABEL_93;
  }

  if (unsignedCharValue4 > 1)
  {
    goto LABEL_91;
  }

LABEL_92:
  [v8 appendString:?];
LABEL_93:
  [v8 appendFormat:indentCopy];
  v38 = [infoCopy objectForKeyedSubscript:?];

  if (!v38)
  {
    goto LABEL_96;
  }

  unsignedCharValue5 = [v38 unsignedCharValue];
  if (unsignedCharValue5 > 4)
  {
    if (unsignedCharValue5 > 9)
    {
      goto LABEL_151;
    }

LABEL_96:
    [v8 appendString:?];
    goto LABEL_97;
  }

  if (unsignedCharValue5 > 1 || unsignedCharValue5 <= 1)
  {
    goto LABEL_96;
  }

LABEL_151:
  [v8 appendFormat:objc_msgSend(v38, "unsignedCharValue")];
LABEL_97:
  [v8 appendFormat:indentCopy];
  v40 = [infoCopy objectForKeyedSubscript:?];

  if (!v40)
  {
    goto LABEL_100;
  }

  unsignedCharValue6 = [v40 unsignedCharValue];
  if (unsignedCharValue6 > 4)
  {
    if (unsignedCharValue6 > 9)
    {
      goto LABEL_152;
    }

LABEL_100:
    [v8 appendString:?];
    goto LABEL_101;
  }

  if (unsignedCharValue6 > 1 || unsignedCharValue6 <= 1)
  {
    goto LABEL_100;
  }

LABEL_152:
  [v8 appendFormat:objc_msgSend(v40, "unsignedCharValue")];
LABEL_101:
  [v8 appendFormat:indentCopy];
  v42 = [infoCopy objectForKeyedSubscript:?];

  if (v42)
  {
    [v8 appendFormat:objc_msgSend(v42, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v43 = [infoCopy objectForKeyedSubscript:?];

  if (v43)
  {
    [v8 appendFormat:objc_msgSend(v43, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v44 = [infoCopy objectForKeyedSubscript:?];

  if (v44)
  {
    [v8 appendFormat:objc_msgSend(v44, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v45 = [infoCopy objectForKeyedSubscript:?];

  if (v45)
  {
    [v8 appendFormat:objc_msgSend(v45, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v46 = [infoCopy objectForKeyedSubscript:?];

  if (v46)
  {
    [v8 appendFormat:objc_msgSend(v46, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v47 = [infoCopy objectForKeyedSubscript:?];

  if (v47)
  {
    [v8 appendFormat:objc_msgSend(v47, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v48 = [infoCopy objectForKeyedSubscript:?];

  if (v48)
  {
    [v8 appendFormat:objc_msgSend(v48, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v49 = [infoCopy objectForKeyedSubscript:?];

  if (v49)
  {
    [v8 appendFormat:objc_msgSend(v49, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  v50 = [infoCopy objectForKeyedSubscript:?];

  if (v50)
  {
    if ([v50 BOOLValue])
    {
      v51 = @"YES";
    }

    else
    {
      v51 = @"NO";
    }

    [v8 appendFormat:indentCopy, v51];
    [v8 appendFormat:indentCopy];
    v52 = [infoCopy objectForKeyedSubscript:?];

    if (v52)
    {
      [v8 appendFormat:objc_msgSend(v52, "unsignedLongLongValue")];
    }

    else
    {
      [v8 appendString:?];
    }

    [v8 appendFormat:indentCopy];
    v53 = [infoCopy objectForKeyedSubscript:?];

    if (v53)
    {
      [v8 appendFormat:objc_msgSend(v53, "unsignedShortValue")];
    }

    else
    {
      [v8 appendString:?];
    }
  }

  v54 = [infoCopy objectForKeyedSubscript:?];
  v55 = v54;
  if (v54)
  {
    if ([v54 BOOLValue])
    {
      v56 = @"YES";
    }

    else
    {
      v56 = @"NO";
    }

    [v8 appendFormat:indentCopy, v56];
  }

  v57 = v8;

  return v8;
}

- (void)initWithImplDC:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

@end