@interface _MFSocket
- (BOOL)_startSSLHandshakeWithProtocol:(id)protocol errorPtr:(id *)ptr;
- (BOOL)_waitForSocketOpenAndFlag;
- (BOOL)connectToHost:(id)host withPort:(unsigned int)port;
- (BOOL)isCellularConnection;
- (BOOL)isValid;
- (BOOL)setSecurityProtocol:(id)protocol;
- (NSArray)serverCertificates;
- (NSString)remoteHostname;
- (_MFSocket)initWithMambaID:(const char *)d rumba:(id)rumba;
- (__CFString)getConnectionServiceType;
- (id)_negotiatedProtocolVersion;
- (id)getClosingEventHandler;
- (id)getEventHandler;
- (id)securityProtocol;
- (int)timeout;
- (int64_t)readBytes:(char *)bytes length:(unint64_t)length;
- (int64_t)writeBytes:(const char *)bytes length:(unint64_t)length;
- (unsigned)remotePortNumber;
- (unsigned)threadsafe_bufferedByteCount;
- (void)__abort;
- (void)abort;
- (void)dealloc;
- (void)enableThroughputMonitoring:(BOOL)monitoring;
- (void)performAtomicAccessorBlock:(id)block;
- (void)setClosingEventHandler:(id)handler;
- (void)setConnectionServiceType:(__CFString *)type;
- (void)setEventHandler:(id)handler;
- (void)setSettings:(id)settings;
- (void)setTimeout:(int)timeout;
@end

@implementation _MFSocket

- (id)_negotiatedProtocolVersion
{
  protocol = kSSLProtocolUnknown;
  stream = [(_MFSocket *)self stream];
  v3 = [stream propertyForKey:*MEMORY[0x277CBAE58]];

  if (SSLGetNegotiatedProtocolVersion(v3, &protocol))
  {
    protocol = kSSLProtocolUnknown;
    protocol = @"kSSLProtocolUnknown";
  }

  else if (protocol >= kTLSProtocol13)
  {
    protocol = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown-protocol-version(%d)", protocol];
  }

  else
  {
    protocol = off_279E34660[protocol];
  }

  return protocol;
}

- (BOOL)_startSSLHandshakeWithProtocol:(id)protocol errorPtr:(id *)ptr
{
  v74 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  stream = [(_MFSocket *)self stream];
  if (!stream)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:54 localizedDescription:0];
    streamError = v17;
    if (ptr)
    {
      v17 = v17;
      *ptr = streamError;
    }

    if (self)
    {
      clientCertificates = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(clientCertificates, OS_LOG_TYPE_ERROR))
      {
        mambaID = self->mambaID;
        rumbaID = self->rumbaID;
        domain = [streamError domain];
        *buf = 136316930;
        *v71 = mambaID;
        *&v71[8] = 2080;
        *&v71[10] = " ";
        *&v71[18] = 2114;
        *&v71[20] = rumbaID;
        *&v71[28] = 2080;
        *&v71[30] = " ";
        v72 = 1024;
        *v73 = 1025;
        *&v73[4] = 2080;
        *&v73[6] = "start SSL";
        *&v73[14] = 2112;
        *&v73[16] = domain;
        *&v73[24] = 2048;
        *&v73[26] = 54;
        _os_log_error_impl(&dword_2720B1000, clientCertificates, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
      }
    }

    else
    {
      clientCertificates = vm_vmd_log(v17);
      if (os_log_type_enabled(clientCertificates, OS_LOG_TYPE_DEFAULT))
      {
        domain2 = [streamError domain];
        *buf = 67109890;
        *v71 = 1025;
        *&v71[4] = 2080;
        *&v71[6] = "start SSL";
        *&v71[14] = 2112;
        *&v71[16] = domain2;
        *&v71[24] = 2048;
        *&v71[26] = 54;
        _os_log_impl(&dword_2720B1000, clientCertificates, OS_LOG_TYPE_DEFAULT, "*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x26u);
      }
    }

    goto LABEL_46;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([protocolCopy isEqualToString:*MEMORY[0x277CBF098]])
  {
    v9 = *MEMORY[0x277CBAED8];
  }

  else
  {
    v9 = protocolCopy;
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CBAEB0], v9);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[_MFSocket disableEphemeralDiffieHellmanCiphers](self, "disableEphemeralDiffieHellmanCiphers")}];
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBACC0], v10);
  clientCertificates = [(_MFSocket *)self clientCertificates];
  if (clientCertificates)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CBAE98], clientCertificates);
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CBAED0], *MEMORY[0x277CBED10]);
  [(NSCondition *)self->_rw_condition lock];
  *&self->_socketCanRead = 0;
  [(NSCondition *)self->_rw_condition unlock];
  v12 = *MEMORY[0x277CBAE68];
  v13 = [stream setProperty:Mutable forKey:*MEMORY[0x277CBAE68]];
  CFRelease(Mutable);
  if (v13)
  {
    _waitForSocketOpenAndFlag = [(_MFSocket *)self _waitForSocketOpenAndFlag];
    [(NSCondition *)self->_rw_condition lock];
    if (self->_socketCanWrite)
    {
      stream2 = [(_MFSocket *)self stream];
      isOpen = [stream2 isOpen];
    }

    else
    {
      isOpen = 0;
    }

    [(NSCondition *)self->_rw_condition unlock];
    if (isOpen)
    {
      v26 = [stream propertyForKey:*MEMORY[0x277CBAE60]];
      if (v26)
      {
        error = 0;
        v27 = SecTrustEvaluateWithError(v26, &error);
        if (!v27)
        {
          v28 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = self->mambaID;
            v30 = self->rumbaID;
            *buf = 136316162;
            *v71 = v29;
            *&v71[8] = 2080;
            *&v71[10] = " ";
            *&v71[18] = 2114;
            *&v71[20] = v30;
            *&v71[28] = 2080;
            *&v71[30] = " ";
            v72 = 2112;
            *v73 = error;
            _os_log_impl(&dword_2720B1000, v28, OS_LOG_TYPE_DEFAULT, "#W %s%s%{public}@%suntrusted certificate, error: %@", buf, 0x34u);
          }

          if (ptr)
          {
            *ptr = error;
          }
        }

        if (error)
        {
          CFRelease(error);
        }

        if (v27)
        {
          v31 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = self->mambaID;
            v32 = self->rumbaID;
            securityProtocol = [(_MFSocket *)self securityProtocol];
            _negotiatedProtocolVersion = [(_MFSocket *)self _negotiatedProtocolVersion];
            v36 = [stream propertyForKey:v12];
            *buf = 136316674;
            *v71 = v33;
            *&v71[8] = 2080;
            *&v71[10] = " ";
            *&v71[18] = 2114;
            *&v71[20] = v32;
            *&v71[28] = 2080;
            *&v71[30] = " ";
            v72 = 2114;
            *v73 = securityProtocol;
            *&v73[8] = 2114;
            *&v73[10] = _negotiatedProtocolVersion;
            *&v73[18] = 2112;
            *&v73[20] = v36;
            _os_log_impl(&dword_2720B1000, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sSSL handshake completed successfully: %{public}@ %{public}@, %@", buf, 0x48u);
          }

          streamError = 0;
          v37 = 1;
LABEL_56:

          goto LABEL_47;
        }
      }

      streamError = 0;
      goto LABEL_44;
    }

    streamError = [stream streamError];
    domain3 = [streamError domain];
    v39 = *MEMORY[0x277CCA670];
    v40 = [domain3 isEqualToString:*MEMORY[0x277CCA670]];

    if (v40)
    {
      v41 = [MEMORY[0x277CCA9B8] errorWithDomain:v39 code:objc_msgSend(streamError localizedDescription:{"code"), 0}];
      v23 = v41;
      if (ptr)
      {
        v42 = v41;
        *ptr = v23;
      }

      v25 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v43 = self->mambaID;
        v44 = self->rumbaID;
        domain4 = [v23 domain];
        *buf = 136316930;
        *v71 = v43;
        *&v71[8] = 2080;
        *&v71[10] = " ";
        *&v71[18] = 2114;
        *&v71[20] = v44;
        *&v71[28] = 2080;
        *&v71[30] = " ";
        v72 = 1024;
        *v73 = 1091;
        *&v73[4] = 2080;
        *&v73[6] = "SSL negotiation failed";
        *&v73[14] = 2112;
        *&v73[16] = domain4;
        *&v73[24] = 2048;
        *&v73[26] = [streamError code];
        _os_log_error_impl(&dword_2720B1000, v25, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
      }
    }

    else
    {
      if (_waitForSocketOpenAndFlag)
      {
        goto LABEL_44;
      }

      v53 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 localizedDescription:0];
      v23 = v53;
      if (ptr)
      {
        v54 = v53;
        *ptr = v23;
      }

      v25 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v55 = self->mambaID;
        v56 = self->rumbaID;
        [v23 domain];
        *buf = 136316930;
        *v71 = v55;
        *&v71[8] = 2080;
        *&v71[10] = " ";
        *&v71[18] = 2114;
        *&v71[20] = v56;
        *&v71[28] = 2080;
        *&v71[30] = " ";
        v72 = 1024;
        *v73 = 1093;
        *&v73[4] = 2080;
        *&v73[6] = "Connection timed out while negotiating SSL";
        *&v73[16] = *&v73[14] = 2112;
        *&v73[24] = 2048;
        *&v73[26] = 60;
        v57 = *&v73[16];
        _os_log_error_impl(&dword_2720B1000, v25, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
      }
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA670] code:1029 localizedDescription:0];
    v23 = v22;
    if (ptr)
    {
      v24 = v22;
      *ptr = v23;
    }

    v25 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v59 = self->mambaID;
      v58 = self->rumbaID;
      domain5 = [v23 domain];
      *buf = 136316930;
      *v71 = v59;
      *&v71[8] = 2080;
      *&v71[10] = " ";
      *&v71[18] = 2114;
      *&v71[20] = v58;
      *&v71[28] = 2080;
      *&v71[30] = " ";
      v72 = 1024;
      *v73 = 1100;
      *&v73[4] = 2080;
      *&v73[6] = "Failed to set SSL properties";
      *&v73[14] = 2112;
      *&v73[16] = domain5;
      *&v73[24] = 2048;
      *&v73[26] = 1029;
      _os_log_error_impl(&dword_2720B1000, v25, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
    }

    streamError = 0;
  }

LABEL_44:
  if (ptr && !*ptr)
  {
    v47 = MEMORY[0x277CCA9B8];
    if (streamError)
    {
      domain6 = [streamError domain];
      v31 = [v47 errorWithDomain:domain6 code:objc_msgSend(streamError localizedDescription:{"code"), 0}];

      v49 = v31;
      *ptr = v31;
      v50 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v62 = self->mambaID;
        v61 = self->rumbaID;
        domain7 = [v31 domain];
        code = [streamError code];
        *buf = 136316930;
        *v71 = v62;
        *&v71[8] = 2080;
        *&v71[10] = " ";
        *&v71[18] = 2114;
        *&v71[20] = v61;
        *&v71[28] = 2080;
        *&v71[30] = " ";
        v72 = 1024;
        *v73 = 1112;
        *&v73[4] = 2080;
        *&v73[6] = "CFReadStreamSetProperty()";
        *&v73[14] = 2112;
        *&v73[16] = domain7;
        *&v73[24] = 2048;
        *&v73[26] = code;
        _os_log_error_impl(&dword_2720B1000, v50, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
      }
    }

    else
    {
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      v51 = v31;
      *ptr = v31;
      v52 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v66 = self->mambaID;
        v65 = self->rumbaID;
        domain8 = [v31 domain];
        *buf = 136316930;
        *v71 = v66;
        *&v71[8] = 2080;
        *&v71[10] = " ";
        *&v71[18] = 2114;
        *&v71[20] = v65;
        *&v71[28] = 2080;
        *&v71[30] = " ";
        v72 = 1024;
        *v73 = 1109;
        *&v73[4] = 2080;
        *&v73[6] = "CFReadStreamSetProperty()";
        *&v73[14] = 2112;
        *&v73[16] = domain8;
        *&v73[24] = 2048;
        *&v73[26] = 1029;
        _os_log_error_impl(&dword_2720B1000, v52, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
      }

      streamError = 0;
    }

    v37 = 0;
    goto LABEL_56;
  }

LABEL_46:
  v37 = 0;
LABEL_47:

  return v37;
}

- (BOOL)_waitForSocketOpenAndFlag
{
  [(NSCondition *)self->_rw_condition lock];
  while (!self->_socketCanWrite)
  {
    stream = [(_MFSocket *)self stream];
    isOpen = [stream isOpen];

    if (!isOpen)
    {
      break;
    }

    rw_condition = self->_rw_condition;
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
    LOBYTE(rw_condition) = [(NSCondition *)rw_condition waitUntilDate:v6];

    if ((rw_condition & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = 1;
LABEL_7:
  [(NSCondition *)self->_rw_condition unlock];
  return v7;
}

- (id)securityProtocol
{
  stream = [(_MFSocket *)self stream];
  v3 = [stream propertyForKey:*MEMORY[0x277CBF090]];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = *MEMORY[0x277CBF0A0];

    v3 = v4;
  }

  return v3;
}

- (BOOL)setSecurityProtocol:(id)protocol
{
  v32 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  protocol = [(_MFSocket *)self protocol];
  if ([protocol isEqualToString:protocolCopy])
  {
    v6 = 0;
  }

  else
  {
    v6 = protocol;
    [(_MFSocket *)self setProtocol:protocolCopy];
  }

  stream = [(_MFSocket *)self stream];
  v8 = stream;
  if (!stream || !protocolCopy || v6 == protocolCopy)
  {

    goto LABEL_14;
  }

  v9 = [protocolCopy isEqualToString:*MEMORY[0x277CBF0A0]];

  if (v9)
  {
LABEL_14:
    v10 = 1;
    goto LABEL_15;
  }

  v21 = 0;
  v10 = [(_MFSocket *)self _startSSLHandshakeWithProtocol:protocolCopy errorPtr:&v21];
  v11 = v21;
  v12 = v11;
  if (!v10)
  {
    if (!v11)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      v12 = v13;
      if (self)
      {
        v14 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          mambaID = self->mambaID;
          rumbaID = self->rumbaID;
          domain = [v12 domain];
          *buf = 136316930;
          *v23 = mambaID;
          *&v23[8] = 2080;
          *&v23[10] = " ";
          *&v23[18] = 2114;
          *&v23[20] = rumbaID;
          *&v23[28] = 2080;
          *&v23[30] = " ";
          v24 = 1024;
          v25 = 1171;
          v26 = 2080;
          v27 = "set security protocol";
          v28 = 2112;
          v29 = domain;
          v30 = 2048;
          v31 = 1029;
          _os_log_error_impl(&dword_2720B1000, v14, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
        }
      }

      else
      {
        v14 = vm_vmd_log(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          domain2 = [v12 domain];
          *buf = 67109890;
          *v23 = 1171;
          *&v23[4] = 2080;
          *&v23[6] = "set security protocol";
          *&v23[14] = 2112;
          *&v23[16] = domain2;
          *&v23[24] = 2048;
          *&v23[26] = 1029;
          _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x26u);
        }
      }
    }

    v20 = +[MFActivityMonitor currentMonitor];
    [v20 setError:v12];
  }

LABEL_15:
  return v10;
}

- (NSArray)serverCertificates
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31___MFSocket_serverCertificates__block_invoke;
  v4[3] = &unk_279E34578;
  v4[4] = self;
  v4[5] = &v5;
  execute_on_networkthread_sync(v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setConnectionServiceType:(__CFString *)type
{
  typeCopy = type;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38___MFSocket_setConnectionServiceType___block_invoke;
  v6[3] = &unk_279E34500;
  v6[4] = self;
  v7 = typeCopy;
  v5 = typeCopy;
  [(_MFSocket *)self performAtomicAccessorBlock:v6];
}

- (__CFString)getConnectionServiceType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37___MFSocket_getConnectionServiceType__block_invoke;
  v4[3] = &unk_279E345A0;
  v4[4] = self;
  v4[5] = &v5;
  [(_MFSocket *)self performAtomicAccessorBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setSettings:(id)settings
{
  v25 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    rumbaID = self->rumbaID;
    v13 = 136316418;
    v14 = mambaID;
    v15 = 2080;
    v16 = " ";
    v17 = 2114;
    v18 = rumbaID;
    v19 = 2080;
    v20 = " ";
    v21 = 2048;
    selfCopy = self;
    v23 = 2112;
    v24 = settingsCopy;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssocket (%p) setSettings:%@", &v13, 0x3Eu);
  }

  -[_MFSocket setConnectionServiceType:](self, "setConnectionServiceType:", [settingsCopy connectionServiceType]);
  -[_MFSocket setUsesOpportunisticSockets:](self, "setUsesOpportunisticSockets:", [settingsCopy usesOpportunisticSockets]);
  sourceApplicationBundleIdentifier = [settingsCopy sourceApplicationBundleIdentifier];
  [(_MFSocket *)self setSourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];

  accountIdentifier = [settingsCopy accountIdentifier];
  [(_MFSocket *)self setAccountIdentifier:accountIdentifier];

  networkAccountIdentifier = [settingsCopy networkAccountIdentifier];
  [(_MFSocket *)self setNetworkAccountIdentifier:networkAccountIdentifier];

  clientCertificates = [settingsCopy clientCertificates];
  LOBYTE(networkAccountIdentifier) = clientCertificates == 0;

  if ((networkAccountIdentifier & 1) == 0)
  {
    clientCertificates2 = [settingsCopy clientCertificates];
    [(_MFSocket *)self setClientCertificates:clientCertificates2];
  }

  if ([settingsCopy tryDirectSSL])
  {
    [(_MFSocket *)self setSecurityProtocol:*MEMORY[0x277CBF098]];
  }
}

- (void)setTimeout:(int)timeout
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __24___MFSocket_setTimeout___block_invoke;
  v3[3] = &unk_279E345C8;
  v3[4] = self;
  timeoutCopy = timeout;
  [(_MFSocket *)self performAtomicAccessorBlock:v3];
}

- (int)timeout
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __20___MFSocket_timeout__block_invoke;
  v4[3] = &unk_279E345A0;
  v4[4] = self;
  v4[5] = &v5;
  [(_MFSocket *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (_MFSocket)initWithMambaID:(const char *)d rumba:(id)rumba
{
  v8 = *MEMORY[0x277D85DE8];
  rumbaCopy = rumba;
  v7.receiver = self;
  v7.super_class = _MFSocket;
  if ([(_MFSocket *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  [(_MFSocket *)self resetConnectionServiceType];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __20___MFSocket_dealloc__block_invoke;
  v7[3] = &unk_279E34528;
  v7[4] = self;
  execute_on_networkthread_sync(v7);
  v3 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    rumbaID = self->rumbaID;
    *buf = 136316162;
    v9 = mambaID;
    v10 = 2080;
    v11 = " ";
    v12 = 2114;
    v13 = rumbaID;
    v14 = 2080;
    v15 = " ";
    v16 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssocket (%p) deleted", buf, 0x34u);
  }

  v6.receiver = self;
  v6.super_class = _MFSocket;
  [(_MFSocket *)&v6 dealloc];
}

- (void)__abort
{
  v21 = *MEMORY[0x277D85DE8];
  stream = [(_MFSocket *)self stream];

  if (stream)
  {
    stream2 = [(_MFSocket *)self stream];
    [(_MFSocket *)self setStream:0];
    [stream2 close];
    [(NSCondition *)self->_rw_condition lock];
    *&self->_socketCanRead = 0;
    [(NSCondition *)self->_rw_condition broadcast];
    [(NSCondition *)self->_rw_condition unlock];
    v5 = MFUserAgent();
    [v5 networkActivityEnded:self];

    v6 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      rumbaID = self->rumbaID;
      v11 = 136316162;
      v12 = mambaID;
      v13 = 2080;
      v14 = " ";
      v15 = 2114;
      v16 = rumbaID;
      v17 = 2080;
      v18 = " ";
      v19 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssocket (%p) aborted, stream closed", &v11, 0x34u);
    }
  }

  else
  {
    stream2 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(stream2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->mambaID;
      v10 = self->rumbaID;
      v11 = 136316162;
      v12 = v9;
      v13 = 2080;
      v14 = " ";
      v15 = 2114;
      v16 = v10;
      v17 = 2080;
      v18 = " ";
      v19 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_2720B1000, stream2, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssocket (%p) unexpected abort, stream already closed", &v11, 0x34u);
    }
  }
}

- (void)abort
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __18___MFSocket_abort__block_invoke;
  v2[3] = &unk_279E34528;
  v2[4] = self;
  execute_on_networkthread_sync(v2);
}

- (BOOL)isValid
{
  stream = [(_MFSocket *)self stream];
  isOpen = [stream isOpen];

  return isOpen;
}

- (BOOL)connectToHost:(id)host withPort:(unsigned int)port
{
  v56 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  v7 = MFUserAgent();
  [v7 networkActivityStarted:self];

  MFAssertNetworkActivityAllowed();
  v8 = [MFStream alloc];
  mambaID = self->mambaID;
  rumbaID = self->rumbaID;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __36___MFSocket_connectToHost_withPort___block_invoke;
  v45[3] = &unk_279E345F0;
  v45[4] = self;
  v11 = [(MFStream *)v8 initWithMambaID:mambaID rumba:rumbaID callBack:v45 onDispatchQueue:self->_socket_from_stream_callback_queue];
  [(_MFSocket *)self setStream:v11];
  getConnectionServiceType = [(_MFSocket *)self getConnectionServiceType];
  v13 = MEMORY[0x277CBED28];
  if (getConnectionServiceType)
  {
    [(MFStream *)v11 setProperty:getConnectionServiceType forKey:*MEMORY[0x277CBADD0]];
    [(MFStream *)v11 setProperty:*v13 forKey:*MEMORY[0x277CBADD8]];
  }

  if ([(_MFSocket *)self usesOpportunisticSockets])
  {
    [(MFStream *)v11 setProperty:*v13 forKey:*MEMORY[0x277CBAE48]];
  }

  v14 = +[MFActivityMonitor currentMonitor];
  objc_initWeak(&location, self);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __36___MFSocket_connectToHost_withPort___block_invoke_2;
  v41[3] = &unk_279E34618;
  objc_copyWeak(&v43, &location);
  v15 = v14;
  v42 = v15;
  v16 = [v41 copy];
  [(MFStream *)v11 setProperty:v16 forKey:*MEMORY[0x277CBAC98]];

  sourceApplicationBundleIdentifier = [(_MFSocket *)self sourceApplicationBundleIdentifier];
  LOBYTE(v16) = sourceApplicationBundleIdentifier == 0;

  if ((v16 & 1) == 0)
  {
    sourceApplicationBundleIdentifier2 = [(_MFSocket *)self sourceApplicationBundleIdentifier];
    [(MFStream *)v11 setProperty:sourceApplicationBundleIdentifier2 forKey:*MEMORY[0x277CBAE78]];
  }

  networkAccountIdentifier = [(_MFSocket *)self networkAccountIdentifier];
  v20 = networkAccountIdentifier == 0;

  if (!v20)
  {
    networkAccountIdentifier2 = [(_MFSocket *)self networkAccountIdentifier];
    [(MFStream *)v11 setProperty:networkAccountIdentifier2 forKey:*MEMORY[0x277CBADA0]];
  }

  v22 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->mambaID;
    v23 = self->rumbaID;
    networkAccountIdentifier3 = [(_MFSocket *)self networkAccountIdentifier];
    *buf = 136316930;
    v47 = v24;
    v48 = 2080;
    v49 = " ";
    v50 = 2114;
    v51 = v23;
    v52 = 2080;
    v53 = " ";
    v54 = 2048;
    *v55 = self;
    *&v55[8] = 2048;
    *&v55[10] = v11;
    *&v55[18] = 2112;
    *&v55[20] = hostCopy;
    *&v55[28] = 2112;
    *&v55[30] = networkAccountIdentifier3;
    _os_log_impl(&dword_2720B1000, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%ssocket %p (stream %p) opening connection to %@ (network account id: %@)", buf, 0x52u);
  }

  v26 = [VCIDNAEncoder stringByEncodingDomainName:hostCopy];
  [(MFStream *)v11 openToHostName:v26 port:port];
  protocol = [(_MFSocket *)self protocol];
  v28 = protocol;
  if (!protocol || ([protocol isEqualToString:*MEMORY[0x277CBF0A0]] & 1) != 0)
  {
    v29 = 0;
LABEL_14:
    LOBYTE(v30) = 1;
    goto LABEL_15;
  }

  v40 = 0;
  v33 = [(_MFSocket *)self _startSSLHandshakeWithProtocol:v28 errorPtr:&v40];
  v29 = v40;
  if (v33)
  {
    goto LABEL_14;
  }

  error = [v15 error];
  v30 = error == 0;

  if (v30)
  {
    if (!v29)
    {
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      v35 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = self->mambaID;
        v39 = self->rumbaID;
        domain = [v29 domain];
        *buf = 136316930;
        v47 = v36;
        v48 = 2080;
        v49 = " ";
        v50 = 2114;
        v51 = v39;
        v52 = 2080;
        v53 = " ";
        v54 = 1024;
        *v55 = 1489;
        *&v55[4] = 2080;
        *&v55[6] = "connect";
        *&v55[14] = 2112;
        *&v55[16] = domain;
        *&v55[24] = 2048;
        *&v55[26] = 1029;
        v38 = domain;
        _os_log_error_impl(&dword_2720B1000, v35, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", buf, 0x4Eu);
      }
    }

    [v15 setError:v29];
    LOBYTE(v30) = 0;
  }

LABEL_15:
  v31 = MFUserAgent();
  [v31 networkActivityEnded:self];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  return v30;
}

- (unsigned)threadsafe_bufferedByteCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41___MFSocket_threadsafe_bufferedByteCount__block_invoke;
  v4[3] = &unk_279E34578;
  v4[4] = self;
  v4[5] = &v5;
  execute_on_networkthread_sync(v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int64_t)writeBytes:(const char *)bytes length:(unint64_t)length
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = MFUserAgent();
  [v7 networkActivityStarted:self];

  MFAssertNetworkActivityAllowed();
  threadsafe_bufferedByteCount = [(_MFSocket *)self threadsafe_bufferedByteCount];
  [(NSCondition *)self->_rw_condition lock];
  stream = [(_MFSocket *)self stream];
  while (!self->_socketCanWrite && [stream isOpen])
  {
    rw_condition = self->_rw_condition;
    v11 = MEMORY[0x277CBEAA8];
    timeout = [(_MFSocket *)self timeout];
    v13 = timeout;
    if (!timeout)
    {
      v13 = 1.79769313e308;
    }

    v14 = [v11 dateWithTimeIntervalSinceNow:v13];
    v15 = [(NSCondition *)rw_condition waitUntilDate:v14];

    if (!v15)
    {
      threadsafe_bufferedByteCount2 = [(_MFSocket *)self threadsafe_bufferedByteCount];
      v17 = threadsafe_bufferedByteCount == threadsafe_bufferedByteCount2;
      threadsafe_bufferedByteCount = threadsafe_bufferedByteCount2;
      if (v17)
      {
        break;
      }
    }
  }

  if (self->_socketCanWrite && [stream isOpen])
  {
    self->_socketCanWrite = 0;
    [(NSCondition *)self->_rw_condition unlock];
    v18 = [stream write:bytes maxLength:length];
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    [(NSCondition *)self->_rw_condition unlock];
    v18 = -1;
  }

  streamError = [stream streamError];
  if (!streamError)
  {
    streamError = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
  }

  v20 = MEMORY[0x277CCA9B8];
  domain = [streamError domain];
  v22 = [v20 errorWithDomain:domain code:objc_msgSend(streamError localizedDescription:{"code"), 0}];

  v23 = v22;
  v24 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    mambaID = self->mambaID;
    rumbaID = self->rumbaID;
    domain2 = [v23 domain];
    v31 = 136316930;
    v32 = mambaID;
    v33 = 2080;
    v34 = " ";
    v35 = 2114;
    v36 = rumbaID;
    v37 = 2080;
    v38 = " ";
    v39 = 1024;
    v40 = 1567;
    v41 = 2080;
    v42 = "write";
    v43 = 2112;
    v44 = domain2;
    v45 = 2048;
    code = [streamError code];
    _os_log_error_impl(&dword_2720B1000, v24, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", &v31, 0x4Eu);
  }

  v25 = +[MFActivityMonitor currentMonitor];
  [v25 setError:v23];

LABEL_19:
  v26 = MFUserAgent();
  [v26 networkActivityEnded:self];

  return v18;
}

- (int64_t)readBytes:(char *)bytes length:(unint64_t)length
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = +[MFActivityMonitor currentMonitor];
  if (![v7 shouldCancel])
  {
    v14 = MFUserAgent();
    [v14 networkActivityStarted:self];

    MFAssertNetworkActivityAllowed();
    threadsafe_bufferedByteCount = [(_MFSocket *)self threadsafe_bufferedByteCount];
    [(NSCondition *)self->_rw_condition lock];
    stream = [(_MFSocket *)self stream];
    while (!self->_socketCanRead && [stream isOpen])
    {
      rw_condition = self->_rw_condition;
      v17 = MEMORY[0x277CBEAA8];
      timeout = [(_MFSocket *)self timeout];
      v19 = timeout;
      if (!timeout)
      {
        v19 = 1.79769313e308;
      }

      v20 = [v17 dateWithTimeIntervalSinceNow:v19];
      v21 = [(NSCondition *)rw_condition waitUntilDate:v20];

      if (!v21)
      {
        threadsafe_bufferedByteCount2 = [(_MFSocket *)self threadsafe_bufferedByteCount];
        v23 = threadsafe_bufferedByteCount == threadsafe_bufferedByteCount2;
        threadsafe_bufferedByteCount = threadsafe_bufferedByteCount2;
        if (v23)
        {
          break;
        }
      }
    }

    if (self->_socketCanRead && [stream isOpen])
    {
      self->_socketCanRead = 0;
      [(NSCondition *)self->_rw_condition unlock];
      v24 = [stream read:bytes maxLength:length];
      if (v24 != -1)
      {
LABEL_23:
        v33 = MFUserAgent();
        [v33 networkActivityEnded:self];

        goto LABEL_27;
      }
    }

    else
    {
      [(NSCondition *)self->_rw_condition unlock];
    }

    streamError = [stream streamError];
    v26 = 0x279E32000uLL;
    if (!streamError)
    {
      streamError = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    }

    v27 = MEMORY[0x277CCA9B8];
    domain = [streamError domain];
    v29 = [v27 errorWithDomain:domain code:objc_msgSend(streamError localizedDescription:{"code"), 0}];

    v30 = v29;
    v31 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      mambaID = self->mambaID;
      rumbaID = self->rumbaID;
      domain2 = [v30 domain];
      v39 = 136316930;
      *v40 = mambaID;
      *&v40[8] = 2080;
      *&v40[10] = " ";
      *&v40[18] = 2114;
      *&v40[20] = rumbaID;
      *&v40[28] = 2080;
      *&v40[30] = " ";
      v41 = 1024;
      v42 = 1629;
      v43 = 2080;
      v44 = "read";
      v45 = 2112;
      v46 = domain2;
      v47 = 2048;
      code = [streamError code];
      _os_log_error_impl(&dword_2720B1000, v31, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", &v39, 0x4Eu);

      v26 = 0x279E32000;
    }

    currentMonitor = [*(v26 + 2416) currentMonitor];
    [currentMonitor setError:v30];

    v24 = -1;
    goto LABEL_23;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:0];
  stream = v8;
  if (self)
  {
    v10 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = self->mambaID;
      v11 = self->rumbaID;
      domain3 = [stream domain];
      v39 = 136316930;
      *v40 = v12;
      *&v40[8] = 2080;
      *&v40[10] = " ";
      *&v40[18] = 2114;
      *&v40[20] = v11;
      *&v40[28] = 2080;
      *&v40[30] = " ";
      v41 = 1024;
      v42 = 1583;
      v43 = 2080;
      v44 = "read";
      v45 = 2112;
      v46 = domain3;
      v47 = 2048;
      code = 1028;
      _os_log_error_impl(&dword_2720B1000, v10, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%s*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", &v39, 0x4Eu);
    }
  }

  else
  {
    v10 = vm_vmd_log(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      domain4 = [stream domain];
      v39 = 67109890;
      *v40 = 1583;
      *&v40[4] = 2080;
      *&v40[6] = "read";
      *&v40[14] = 2112;
      *&v40[16] = domain4;
      *&v40[24] = 2048;
      *&v40[26] = 1028;
      _os_log_impl(&dword_2720B1000, v10, OS_LOG_TYPE_DEFAULT, "*** _NSSocket.m:%d (%s) failed; error=(%@, %ld)", &v39, 0x26u);
    }
  }

  [v7 setError:stream];
  v24 = -1;
LABEL_27:

  return v24;
}

- (void)setEventHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29___MFSocket_setEventHandler___block_invoke;
  v6[3] = &unk_279E34500;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(_MFSocket *)self performAtomicAccessorBlock:v6];
}

- (id)getEventHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28___MFSocket_getEventHandler__block_invoke;
  v4[3] = &unk_279E345A0;
  v4[4] = self;
  v4[5] = &v5;
  [(_MFSocket *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setClosingEventHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36___MFSocket_setClosingEventHandler___block_invoke;
  v6[3] = &unk_279E34500;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(_MFSocket *)self performAtomicAccessorBlock:v6];
}

- (id)getClosingEventHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35___MFSocket_getClosingEventHandler__block_invoke;
  v4[3] = &unk_279E345A0;
  v4[4] = self;
  v4[5] = &v5;
  [(_MFSocket *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSString)remoteHostname
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27___MFSocket_remoteHostname__block_invoke;
  v4[3] = &unk_279E345A0;
  v4[4] = self;
  v4[5] = &v5;
  execute_on_networkthread_sync(v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (unsigned)remotePortNumber
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29___MFSocket_remotePortNumber__block_invoke;
  v4[3] = &unk_279E34578;
  v4[4] = self;
  v4[5] = &v5;
  execute_on_networkthread_sync(v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isCellularConnection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33___MFSocket_isCellularConnection__block_invoke;
  v4[3] = &unk_279E345A0;
  v4[4] = self;
  v4[5] = &v5;
  execute_on_networkthread_sync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)enableThroughputMonitoring:(BOOL)monitoring
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40___MFSocket_enableThroughputMonitoring___block_invoke;
  v3[3] = &unk_279E34640;
  v3[4] = self;
  monitoringCopy = monitoring;
  execute_on_networkthread_sync(v3);
}

- (void)performAtomicAccessorBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = blockCopy;
    os_unfair_lock_lock_with_options();
    v5[2]();
    os_unfair_lock_unlock(&self->lock);
    blockCopy = v5;
  }
}

@end