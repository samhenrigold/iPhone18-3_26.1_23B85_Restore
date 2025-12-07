@interface _MFSocket
- (BOOL)_certificateIsTrustedForAccount:(id)account;
- (BOOL)_evaluateTrust:(__SecTrust *)trust errorPtr:(id *)ptr;
- (BOOL)_startSSLHandshakeWithProtocol:(id)protocol errorPtr:(id *)ptr;
- (BOOL)_waitForSocketOpenAndFlag:(BOOL *)flag;
- (BOOL)connectToHost:(id)host withPort:(unsigned int)port service:(id)service;
- (BOOL)isCellularConnection;
- (BOOL)isValid;
- (BOOL)setSecurityProtocol:(id)protocol;
- (NSArray)serverCertificates;
- (NSData)sourceIPAddress;
- (NSString)remoteHostname;
- (_MFSocket)init;
- (id)_negotiatedProtocolVersion;
- (id)securityProtocol;
- (int64_t)readBytes:(char *)bytes length:(unint64_t)length;
- (int64_t)writeBytes:(const char *)bytes length:(unint64_t)length;
- (unsigned)_bufferedByteCount;
- (unsigned)remotePortNumber;
- (void)_setCertificateIsTrusted:(BOOL)trusted forAccount:(id)account;
- (void)abort;
- (void)dealloc;
- (void)enableThroughputMonitoring:(BOOL)monitoring;
- (void)setConnectionServiceType:(__CFString *)type;
- (void)setEventHandler:(id)handler;
@end

@implementation _MFSocket

- (BOOL)_certificateIsTrustedForAccount:(id)account
{
  v3 = [account valueInAccountPropertiesForKey:@"MFServerSSLCertificateIsTrusted"];

  return [v3 BOOLValue];
}

- (void)_setCertificateIsTrusted:(BOOL)trusted forAccount:(id)account
{
  [account setValueInAccountProperties:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", trusted), @"MFServerSSLCertificateIsTrusted"}];

  [account savePersistentAccount];
}

- (BOOL)_evaluateTrust:(__SecTrust *)trust errorPtr:(id *)ptr
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_class() existingAccountForUniqueID:self->_accountIdentifier];
  v8 = [(_MFSocket *)self _certificateIsTrustedForAccount:v7];
  v9 = [objc_msgSend(MEMORY[0x277CF9710] "defaultTrustManager")];
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v30 = objc_opt_class();
    v31 = 2048;
    selfCopy = self;
    v33 = 1024;
    v34 = v9;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_INFO, "#Network <%{public}@:%p> Got SecTrustResultType %u for %@", buf, 0x26u);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  switch(v9)
  {
    case 1:
      v26 = 1;
      break;
    case 5:
      if ([(_MFSocket *)self allowsTrustPrompt])
      {
        v12 = objc_alloc_init(MEMORY[0x277CF9708]);
        [v12 setHost:self->_host];
        [v12 setService:self->_service];
        [v12 setTrust:trust];
        if (v8)
        {
          v13 = *MEMORY[0x277CF9738];
          v27[0] = *MEMORY[0x277CF9740];
          v27[1] = v13;
          v28[0] = MEMORY[0x277CBEC28];
          v28[1] = MEMORY[0x277CBEC28];
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
        }

        else
        {
          v14 = 0;
        }

        v19 = dispatch_semaphore_create(0);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __37___MFSocket__evaluateTrust_errorPtr___block_invoke;
        v22[3] = &unk_2798B6210;
        v22[8] = &v23;
        v22[9] = ptr;
        v22[4] = self;
        v22[5] = v7;
        v22[10] = trust;
        v22[6] = v12;
        v22[7] = v19;
        [v12 showPromptWithOptions:v14 responseBlock:v22];
        dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v19);
      }

      else
      {
        v17 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
        if (!v17)
        {
          v17 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
        }

        *ptr = v17;
        v18 = MFLogGeneral();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(_MFSocket *)self _evaluateTrust:buf errorPtr:?];
        }
      }

      break;
    case 4:
      if (v8)
      {
        v11 = &v23;
      }

      else
      {
        [(_MFSocket *)self _setCertificateIsTrusted:1 forAccount:v7];
        v11 = v24;
      }

      *(v11 + 24) = 1;
      break;
    default:
      v15 = [MFError errorWithDomain:*MEMORY[0x277CCA670] code:-9825 localizedDescription:0];
      if (!v15)
      {
        v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      }

      *ptr = v15;
      v16 = MFLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(_MFSocket *)self _evaluateTrust:buf errorPtr:?];
      }

      break;
  }

  v20 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);
  return v20;
}

- (id)_negotiatedProtocolVersion
{
  protocol = kSSLProtocolUnknown;
  stream = [(_MFSocket *)self stream];
  if (SSLGetNegotiatedProtocolVersion([(MFStream *)stream propertyForKey:*MEMORY[0x277CBAE58]], &protocol))
  {
    return @"kSSLProtocolUnknown";
  }

  if (protocol >= kTLSProtocol13)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"unknown-protocol-version(%d)", protocol];
  }

  return off_2798B62A0[protocol];
}

- (BOOL)_startSSLHandshakeWithProtocol:(id)protocol errorPtr:(id *)ptr
{
  v46 = *MEMORY[0x277D85DE8];
  stream = [(_MFSocket *)self stream];
  if (!stream)
  {
    v18 = [MFError errorWithDomain:*MEMORY[0x277CCA5B8] code:54 localizedDescription:0];
    if (!v18)
    {
      v18 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
    }

    *ptr = v18;
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_MFSocket _startSSLHandshakeWithProtocol:errorPtr:];
    }

    return 0;
  }

  v8 = stream;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([protocol isEqualToString:*MEMORY[0x277CBF098]])
  {
    protocolCopy = *MEMORY[0x277CBAED8];
  }

  else
  {
    protocolCopy = protocol;
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CBAEB0], protocolCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBACC0], [MEMORY[0x277CCABB0] numberWithBool:self->_disableEphemeralDiffieHellmanCiphers]);
  clientCertificates = [(_MFSocket *)self clientCertificates];
  if (clientCertificates)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CBAE98], clientCertificates);
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CBAED0], *MEMORY[0x277CBED10]);
  *&self->_socketCanRead = 0;
  v12 = *MEMORY[0x277CBAE68];
  v13 = [(MFStream *)v8 setProperty:Mutable forKey:*MEMORY[0x277CBAE68]];
  CFRelease(Mutable);
  if (!v13)
  {
    v20 = [MFError errorWithDomain:*MEMORY[0x277CCA670] code:1029 localizedDescription:0];
    if (!v20)
    {
      v20 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
    }

    *ptr = v20;
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_MFSocket _startSSLHandshakeWithProtocol:errorPtr:];
    }

    streamError = 0;
    goto LABEL_35;
  }

  v14 = [(_MFSocket *)self _waitForSocketOpenAndFlag:&self->_socketCanWrite];
  if (!self->_socketCanWrite || ![(MFStream *)v8 isOpen])
  {
    streamError = [(MFStream *)v8 streamError];
    domain = [(NSError *)streamError domain];
    v24 = *MEMORY[0x277CCA670];
    if ([(NSString *)domain isEqualToString:*MEMORY[0x277CCA670]])
    {
      v25 = [MFError errorWithDomain:v24 code:[(NSError *)streamError code] localizedDescription:0];
      if (!v25)
      {
        v25 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      }

      *ptr = v25;
      v26 = MFLogGeneral();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315906;
        v37 = "SSL negotiation failed";
        v38 = 2048;
        selfCopy3 = self;
        v40 = 2112;
        domain2 = [(MFError *)v25 domain];
        v42 = 2048;
        code = [(NSError *)streamError code];
        _os_log_error_impl(&dword_258BDA000, v26, OS_LOG_TYPE_ERROR, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", &v36, 0x2Au);
      }

      goto LABEL_35;
    }

    if (!v14)
    {
      v27 = [MFError errorWithDomain:*MEMORY[0x277CCA5B8] code:60 localizedDescription:0];
      if (!v27)
      {
        v27 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      }

      *ptr = v27;
      v28 = MFLogGeneral();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_MFSocket _startSSLHandshakeWithProtocol:errorPtr:];
      }

      goto LABEL_35;
    }

LABEL_34:
    if (!ptr)
    {
      return 0;
    }

LABEL_35:
    if (!*ptr)
    {
      if (streamError)
      {
        v29 = [MFError errorWithDomain:[(NSError *)streamError domain] code:[(NSError *)streamError code] localizedDescription:0];
        if (!v29)
        {
          v29 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
        }

        *ptr = v29;
        v30 = MFLogGeneral();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          domain3 = [(MFError *)v29 domain];
          code2 = [(NSError *)streamError code];
          v36 = 136315906;
          v37 = "CFReadStreamSetProperty()";
          v38 = 2048;
          selfCopy3 = self;
          v40 = 2112;
          domain2 = domain3;
          v42 = 2048;
          code = code2;
          _os_log_error_impl(&dword_258BDA000, v30, OS_LOG_TYPE_ERROR, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", &v36, 0x2Au);
        }
      }

      else
      {
        v33 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
        if (!v33)
        {
          v33 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
        }

        *ptr = v33;
        v34 = MFLogGeneral();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [_MFSocket _startSSLHandshakeWithProtocol:errorPtr:];
        }
      }
    }

    return 0;
  }

  v15 = [(MFStream *)v8 propertyForKey:*MEMORY[0x277CBAE60]];
  if (!v15 || ![(_MFSocket *)self _evaluateTrust:v15 errorPtr:ptr])
  {
    streamError = 0;
    goto LABEL_34;
  }

  v16 = MFLogGeneral();
  v17 = 1;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v36 = 138544386;
    v37 = objc_opt_class();
    v38 = 2048;
    selfCopy3 = self;
    v40 = 2114;
    domain2 = [(_MFSocket *)self securityProtocol];
    v42 = 2114;
    code = [(_MFSocket *)self _negotiatedProtocolVersion];
    v44 = 2112;
    v45 = [(MFStream *)v8 propertyForKey:v12];
    v17 = 1;
    _os_log_impl(&dword_258BDA000, v16, OS_LOG_TYPE_INFO, "#Network <%{public}@:%p> SSL handshake completed successfully: %{public}@ %{public}@, %@", &v36, 0x34u);
  }

  return v17;
}

- (BOOL)_waitForSocketOpenAndFlag:(BOOL *)flag
{
  [(NSCondition *)self->_condition lock];
  while (!*flag && [(MFStream *)[(_MFSocket *)self stream] isOpen])
  {
    if (!-[NSCondition waitUntilDate:](self->_condition, "waitUntilDate:", [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0]))
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  v5 = 1;
LABEL_7:
  [(NSCondition *)self->_condition unlock];
  return v5;
}

- (id)securityProtocol
{
  stream = [(_MFSocket *)self stream];
  v3 = [(MFStream *)stream propertyForKey:*MEMORY[0x277CBF090]];
  if (!v3)
  {
    return *MEMORY[0x277CBF0A0];
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return *MEMORY[0x277CBF0A0];
  }

  return v4;
}

- (BOOL)setSecurityProtocol:(id)protocol
{
  _MFLockGlobalLock();
  if ([(NSString *)self->_protocol isEqualToString:protocol])
  {
    protocol = 0;
  }

  else
  {
    protocol = self->_protocol;
    self->_protocol = protocol;
  }

  _MFUnlockGlobalLock();
  v6 = 1;
  if (-[_MFSocket stream](self, "stream") && protocol && protocol != protocol && ([protocol isEqualToString:*MEMORY[0x277CBF0A0]] & 1) == 0)
  {
    v11 = 0;
    v6 = [(_MFSocket *)self _startSSLHandshakeWithProtocol:protocol errorPtr:&v11];
    if (!v6)
    {
      if (!v11)
      {
        v7 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
        if (!v7)
        {
          v7 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
        }

        v11 = v7;
        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [_MFSocket setSecurityProtocol:];
        }
      }

      v9 = +[MFActivityMonitor currentMonitor];
      [v9 setError:v11];
    }
  }

  return v6;
}

- (NSArray)serverCertificates
{
  stream = [(_MFSocket *)self stream];
  v3 = [(MFStream *)stream propertyForKey:*MEMORY[0x277CBAE60]];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CertificateCount = SecTrustGetCertificateCount(v3);
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:CertificateCount];
  if (CertificateCount >= 1)
  {
    for (i = 0; i != CertificateCount; ++i)
    {
      [(NSArray *)v6 addObject:SecTrustGetCertificateAtIndex(v4, i)];
    }
  }

  return v6;
}

- (void)setConnectionServiceType:(__CFString *)type
{
  [(_MFSocket *)self mf_lock];
  connectionServiceType = self->_connectionServiceType;
  if (connectionServiceType != type)
  {
    if (connectionServiceType)
    {
      CFRelease(connectionServiceType);
    }

    if (type)
    {
      v6 = CFRetain(type);
    }

    else
    {
      v6 = 0;
    }

    self->_connectionServiceType = v6;
  }

  [(_MFSocket *)self mf_unlock];
}

- (_MFSocket)init
{
  v4.receiver = self;
  v4.super_class = _MFSocket;
  v2 = [(_MFSocket *)&v4 init];
  if (v2)
  {
    if (init_once != -1)
    {
      [_MFSocket init];
    }

    v2->_numTimeoutSecs = _DefaultTimeout;
    v2->_condition = objc_alloc_init(MEMORY[0x277CCA928]);
  }

  return v2;
}

- (void)dealloc
{
  connectionServiceType = self->_connectionServiceType;
  if (connectionServiceType)
  {
    CFRelease(connectionServiceType);
  }

  [(_MFSocket *)self abort];

  v4.receiver = self;
  v4.super_class = _MFSocket;
  [(_MFSocket *)&v4 dealloc];
}

- (void)abort
{
  stream = [(_MFSocket *)self stream];
  [(_MFSocket *)self setStream:0];
  [(MFStream *)stream close];
  [(NSCondition *)self->_condition lock];
  *&self->_socketCanRead = 0;
  [(NSCondition *)self->_condition broadcast];
  [(NSCondition *)self->_condition unlock];
  v4 = MFUserAgent();

  [v4 networkActivityEnded:self];
}

- (BOOL)isValid
{
  stream = [(_MFSocket *)self stream];

  return [(MFStream *)stream isOpen];
}

- (BOOL)connectToHost:(id)host withPort:(unsigned int)port service:(id)service
{
  v37 = *MEMORY[0x277D85DE8];
  if ([+[MFNetworkController inAirplaneMode] sharedInstance]
  {
    return 0;
  }

  [MFUserAgent() networkActivityStarted:self];
  if (![(NSString *)self->_host isEqualToString:host])
  {

    self->_host = [host copy];
  }

  if (![(NSString *)self->_service isEqualToString:service])
  {

    self->_service = [service copy];
  }

  v28 = 0;
  MFAssertNetworkActivityAllowed();
  v10 = [MFStream alloc];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __44___MFSocket_connectToHost_withPort_service___block_invoke;
  v27[3] = &unk_2798B6258;
  v27[4] = self;
  v11 = [(MFStream *)v10 initCallBack:v27 onDispatchQueue:+[MFStream _networkDispatchQueue]];
  [(_MFSocket *)self setStream:v11];

  connectionServiceType = self->_connectionServiceType;
  v13 = MEMORY[0x277CBED28];
  if (connectionServiceType)
  {
    [v11 setProperty:connectionServiceType forKey:*MEMORY[0x277CBADD0]];
    [v11 setProperty:*v13 forKey:*MEMORY[0x277CBADD8]];
  }

  if (self->_usesOpportunisticSockets)
  {
    [v11 setProperty:*v13 forKey:*MEMORY[0x277CBAE48]];
  }

  v14 = +[MFActivityMonitor currentMonitor];
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44___MFSocket_connectToHost_withPort_service___block_invoke_2;
  v24[3] = &unk_2798B6280;
  objc_copyWeak(&v25, &location);
  v24[4] = v14;
  v15 = [v24 copy];
  [v11 setProperty:v15 forKey:*MEMORY[0x277CBAC98]];
  sourceApplicationBundleIdentifier = self->_sourceApplicationBundleIdentifier;
  if (sourceApplicationBundleIdentifier)
  {
    [v11 setProperty:sourceApplicationBundleIdentifier forKey:*MEMORY[0x277CBAE78]];
  }

  networkAccountIdentifier = self->_networkAccountIdentifier;
  if (networkAccountIdentifier)
  {
    [v11 setProperty:networkAccountIdentifier forKey:*MEMORY[0x277CBADA0]];
  }

  v18 = MFLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = self->_networkAccountIdentifier;
    *buf = 134218754;
    selfCopy = self;
    v31 = 2048;
    v32 = v11;
    v33 = 2112;
    hostCopy = host;
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&dword_258BDA000, v18, OS_LOG_TYPE_INFO, "#Streams socket %p (stream %p) opening connection to %@ (network account id: %@)", buf, 0x2Au);
  }

  [v11 openToHostName:objc_msgSend(MEMORY[0x277D070A8] port:{"stringByEncodingDomainName:", host), port}];
  _MFLockGlobalLock();
  v20 = self->_protocol;
  _MFUnlockGlobalLock();
  v9 = !v20 || [(NSString *)v20 isEqualToString:*MEMORY[0x277CBF0A0]]|| [(_MFSocket *)self _startSSLHandshakeWithProtocol:v20 errorPtr:&v28];

  if (!v9 && ![v14 error])
  {
    if (!v28)
    {
      v21 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      if (!v21)
      {
        v21 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      }

      v28 = v21;
      v22 = MFLogGeneral();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [_MFSocket connectToHost:[(MFError *)v21 domain] withPort:buf service:?];
      }
    }

    [v14 setError:v28];
  }

  [MFUserAgent() networkActivityEnded:self];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  return v9;
}

- (unsigned)_bufferedByteCount
{
  v8 = 0;
  stream = [(_MFSocket *)self stream];
  v3 = [(MFStream *)stream propertyForKey:*MEMORY[0x277CBF078]];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length] == 4 && (v5 = *objc_msgSend(v4, "bytes"), v5 != -1))
    {
      v7 = 4;
      getsockopt(v5, 0xFFFF, 4132, &v8, &v7);
      LODWORD(v3) = v8;
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

  return v3;
}

- (int64_t)writeBytes:(const char *)bytes length:(unint64_t)length
{
  v27 = *MEMORY[0x277D85DE8];
  [MFUserAgent() networkActivityStarted:self];
  MFAssertNetworkActivityAllowed();
  _bufferedByteCount = [(_MFSocket *)self _bufferedByteCount];
  [(NSCondition *)self->_condition lock];
  stream = [(_MFSocket *)self stream];
  while (!self->_socketCanWrite && [(MFStream *)stream isOpen])
  {
    numTimeoutSecs = self->_numTimeoutSecs;
    v10 = numTimeoutSecs;
    if (!numTimeoutSecs)
    {
      v10 = 1.79769313e308;
    }

    if (!-[NSCondition waitUntilDate:](self->_condition, "waitUntilDate:", [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v10]))
    {
      _bufferedByteCount2 = [(_MFSocket *)self _bufferedByteCount];
      v12 = _bufferedByteCount == _bufferedByteCount2;
      _bufferedByteCount = _bufferedByteCount2;
      if (v12)
      {
        break;
      }
    }
  }

  [(NSCondition *)self->_condition unlock];
  if (self->_socketCanWrite && [(MFStream *)stream isOpen])
  {
    self->_socketCanWrite = 0;
    v13 = [(MFStream *)stream write:bytes maxLength:length];
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = -1;
  }

  streamError = [(MFStream *)stream streamError];
  if (!streamError)
  {
    streamError = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
  }

  v15 = [MFError errorWithDomain:[(NSError *)streamError domain] code:[(NSError *)streamError code] localizedDescription:0];
  if (!v15)
  {
    v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
  }

  v16 = v15;
  v17 = MFLogGeneral();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315906;
    v20 = "";
    v21 = 2048;
    selfCopy = self;
    v23 = 2112;
    domain = [(MFError *)v15 domain];
    v25 = 2048;
    code = [(NSError *)streamError code];
    _os_log_error_impl(&dword_258BDA000, v17, OS_LOG_TYPE_ERROR, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", &v19, 0x2Au);
  }

  [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];

LABEL_21:
  [MFUserAgent() networkActivityEnded:self];
  return v13;
}

- (int64_t)readBytes:(char *)bytes length:(unint64_t)length
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = +[MFActivityMonitor currentMonitor];
  if ([v7 shouldCancel])
  {
    v8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:0];
    if (!v8)
    {
      v8 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
    }

    v9 = v8;
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_MFSocket readBytes:length:];
    }

    [v7 setError:v9];

    return -1;
  }

  else
  {
    [MFUserAgent() networkActivityStarted:self];
    MFAssertNetworkActivityAllowed();
    _bufferedByteCount = [(_MFSocket *)self _bufferedByteCount];
    [(NSCondition *)self->_condition lock];
    stream = [(_MFSocket *)self stream];
    while (!self->_socketCanRead && [(MFStream *)stream isOpen])
    {
      numTimeoutSecs = self->_numTimeoutSecs;
      v15 = numTimeoutSecs;
      if (!numTimeoutSecs)
      {
        v15 = 1.79769313e308;
      }

      if (!-[NSCondition waitUntilDate:](self->_condition, "waitUntilDate:", [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v15]))
      {
        _bufferedByteCount2 = [(_MFSocket *)self _bufferedByteCount];
        v17 = _bufferedByteCount == _bufferedByteCount2;
        _bufferedByteCount = _bufferedByteCount2;
        if (v17)
        {
          break;
        }
      }
    }

    [(NSCondition *)self->_condition unlock];
    if (!self->_socketCanRead || ![(MFStream *)stream isOpen]|| (self->_socketCanRead = 0, v11 = [(MFStream *)stream read:bytes maxLength:length], v11 == -1))
    {
      streamError = [(MFStream *)stream streamError];
      if (!streamError)
      {
        streamError = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
      }

      v19 = [MFError errorWithDomain:[(NSError *)streamError domain] code:[(NSError *)streamError code] localizedDescription:0];
      if (!v19)
      {
        v19 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      }

      v20 = v19;
      v21 = MFLogGeneral();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315906;
        v24 = "";
        v25 = 2048;
        selfCopy = self;
        v27 = 2112;
        domain = [(MFError *)v19 domain];
        v29 = 2048;
        code = [(NSError *)streamError code];
        _os_log_error_impl(&dword_258BDA000, v21, OS_LOG_TYPE_ERROR, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", &v23, 0x2Au);
      }

      [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];

      v11 = -1;
    }

    [MFUserAgent() networkActivityEnded:self];
  }

  return v11;
}

- (void)setEventHandler:(id)handler
{
  [(_MFSocket *)self mf_lock];
  eventHandler = self->_eventHandler;
  if (eventHandler != handler)
  {

    self->_eventHandler = handler;
  }

  [(_MFSocket *)self mf_unlock];
}

- (NSString)remoteHostname
{
  stream = [(_MFSocket *)self stream];
  v3 = *MEMORY[0x277CBF080];

  return [(MFStream *)stream propertyForKey:v3];
}

- (unsigned)remotePortNumber
{
  stream = [(_MFSocket *)self stream];
  v3 = [(MFStream *)stream propertyForKey:*MEMORY[0x277CBF088]];
  if (v3)
  {

    LODWORD(v3) = [v3 unsignedIntValue];
  }

  return v3;
}

- (NSData)sourceIPAddress
{
  v10 = *MEMORY[0x277D85DE8];
  stream = [(_MFSocket *)self stream];
  v3 = [(MFStream *)stream propertyForKey:*MEMORY[0x277CBF078]];
  if (v3 && (v4 = v3, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 length] == 4 && (v5 = *objc_msgSend(v4, "bytes"), v8 = 255, (v5 & 0x80000000) == 0) && (!getsockname(v5, &v9, &v8) ? (v6 = v8 == 0) : (v6 = 1), !v6))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:&v9 length:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isCellularConnection
{
  v2 = *MEMORY[0x277CBED28];
  stream = [(_MFSocket *)self stream];
  return v2 == [(MFStream *)stream propertyForKey:*MEMORY[0x277CBADC0]];
}

- (void)enableThroughputMonitoring:(BOOL)monitoring
{
  v13 = *MEMORY[0x277D85DE8];
  if ((_LowThroughputThreshold & 1) == 0)
  {
    monitoringCopy = monitoring;
    stream = [(_MFSocket *)self stream];
    v6 = stream;
    if (!monitoringCopy)
    {
      [(MFStream *)stream setProperty:&unk_286A05340 forKey:*MEMORY[0x277CBACA0]];
      self->_lowThroughputCounter = 0;
      v9 = MFLogGeneral();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v11 = 138412290;
      v12 = v6;
      v10 = "#Streams throughput monitoring OFF for stream %@";
      goto LABEL_10;
    }

    if (_LowThroughputThreshold)
    {
      v7 = 0;
    }

    else
    {
      v7 = 512;
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [(MFStream *)v6 setProperty:v8 forKey:*MEMORY[0x277CBACA0]];
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      v10 = "#Streams throughput monitoring ON for stream %@";
LABEL_10:
      _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_INFO, v10, &v11, 0xCu);
    }
  }
}

- (void)_evaluateTrust:(_DWORD *)a3 errorPtr:.cold.1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 136315906;
  OUTLINED_FUNCTION_1(a1, a2, a3);
  *(v3 + 34) = 1030;
  OUTLINED_FUNCTION_10(&dword_258BDA000, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v4, v5);
}

- (void)_evaluateTrust:(_DWORD *)a3 errorPtr:.cold.2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 136315906;
  OUTLINED_FUNCTION_1(a1, a2, a3);
  *(v3 + 34) = -9825;
  OUTLINED_FUNCTION_10(&dword_258BDA000, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v4, v5);
}

- (void)_startSSLHandshakeWithProtocol:errorPtr:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(v0, *MEMORY[0x277D85DE8]);
  v7 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_258BDA000, v1, v2, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v3, v4, v5, v6, v7);
}

- (void)_startSSLHandshakeWithProtocol:errorPtr:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(v0, *MEMORY[0x277D85DE8]);
  v7 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_258BDA000, v1, v2, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v3, v4, v5, v6, v7);
}

- (void)_startSSLHandshakeWithProtocol:errorPtr:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(v0, *MEMORY[0x277D85DE8]);
  v7 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_258BDA000, v1, v2, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v3, v4, v5, v6, v7);
}

- (void)_startSSLHandshakeWithProtocol:errorPtr:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(v0, *MEMORY[0x277D85DE8]);
  v7 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_258BDA000, v1, v2, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v3, v4, v5, v6, v7);
}

- (void)setSecurityProtocol:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(v0, *MEMORY[0x277D85DE8]);
  v7 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_258BDA000, v1, v2, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v3, v4, v5, v6, v7);
}

- (void)connectToHost:(uint64_t)a1 withPort:(uint64_t)a2 service:(_DWORD *)a3 .cold.1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 136315906;
  OUTLINED_FUNCTION_1(a1, a2, a3);
  *(v3 + 34) = 1029;
  OUTLINED_FUNCTION_10(&dword_258BDA000, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v4, v5);
}

- (void)readBytes:length:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(v0, *MEMORY[0x277D85DE8]);
  v7 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_258BDA000, v1, v2, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v3, v4, v5, v6, v7);
}

@end