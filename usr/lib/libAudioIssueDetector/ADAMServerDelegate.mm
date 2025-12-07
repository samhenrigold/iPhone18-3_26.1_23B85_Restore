@interface ADAMServerDelegate
- (ADAMServerDelegate)initWithConnection:(id)connection andErrorCode:(int64_t)code;
- (BOOL)isActive:(unsigned int)active;
- (BOOL)verifyInvariantsWithReply:(id)reply;
- (id)DatatypeTo4CC:(unsigned int)c;
- (id)describeErrorCode:(int64_t)code;
- (id)errorWithCode:(int64_t)code andReason:(id)reason;
- (void)configureAudioSampleTypeWithIdentifier:(id)identifier type:(unsigned int)type configuration:(id)configuration withReply:(id)reply;
- (void)deactivateAll;
- (void)getCurrentConfigurationForAudioSampleType:(unsigned int)type withReply:(id)reply;
- (void)isMeasurementOnForAudioSampleType:(unsigned int)type withReply:(id)reply;
- (void)registerDelegate:(unsigned int)delegate;
- (void)sendAudioSample:(id)sample;
- (void)sendAudioSample:(id)sample withType:(unsigned int)type metadata:(id)metadata;
- (void)setupConnection:(id)connection;
- (void)startListeningToAudioSampleWithIdentifier:(id)identifier type:(unsigned int)type withReply:(id)reply;
- (void)startMeasuringAudioSampleTypeWithIdentifier:(id)identifier type:(unsigned int)type withConfiguration:(id)configuration andReply:(id)reply;
- (void)stopListeningToAudioSampleTypeWithIdentifier:(id)identifier type:(unsigned int)type withReply:(id)reply;
- (void)stopMeasuringAudioSampleTypeWithIdentifier:(id)identifier type:(unsigned int)type andReply:(id)reply;
- (void)unregisterDelegate;
@end

@implementation ADAMServerDelegate

- (id)describeErrorCode:(int64_t)code
{
  if (code <= 560295539)
  {
    if (!code)
    {
      return @"No Error";
    }

    if (code == 560164457)
    {
      return @"Invalid connection";
    }
  }

  else
  {
    switch(code)
    {
      case 560295540:
        return @"Missing Entitlements";
      case 560950886:
        return @"data type does not support on/off";
      case 1969974894:
        return @"Unknown Client";
    }
  }

  return @"Unknown Error";
}

- (BOOL)verifyInvariantsWithReply:(id)reply
{
  replyCopy = reply;
  error_code = self->_error_code;
  if (error_code)
  {
    v6 = [(ADAMServerDelegate *)self describeErrorCode:self->_error_code];
    v7 = [(ADAMServerDelegate *)self errorWithCode:error_code andReason:v6];
    replyCopy[2](replyCopy, v7);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);

    if (WeakRetained)
    {
      v8 = 1;
      goto LABEL_6;
    }

    v6 = [(ADAMServerDelegate *)self describeErrorCode:560164457];
    v7 = [(ADAMServerDelegate *)self errorWithCode:560164457 andReason:v6];
    replyCopy[2](replyCopy, v7);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)errorWithCode:(int64_t)code andReason:(id)reason
{
  v11[1] = *MEMORY[0x29EDCA608];
  reasonCopy = reason;
  v6 = MEMORY[0x29EDB9FA0];
  v10 = *MEMORY[0x29EDB9ED8];
  v11[0] = reasonCopy;
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v6 errorWithDomain:@"AudioDataAnalysisManager(ADAM)" code:code userInfo:v7];

  return v8;
}

- (id)DatatypeTo4CC:(unsigned int)c
{
  v5[4] = 0;
  v5[2] = BYTE1(c);
  v5[3] = c;
  v5[1] = BYTE2(c);
  v5[0] = HIBYTE(c);
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v5];

  return v3;
}

- (void)unregisterDelegate
{
  v6 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_lock);
  memset(v4, 0, sizeof(v4));
  v3 = self->_dataTypeStatus;
  if ([(NSMutableDictionary *)v3 countByEnumeratingWithState:v4 objects:v5 count:16])
  {
    [**(&v4[0] + 1) unsignedIntegerValue];
    operator new();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerDelegate:(unsigned int)delegate
{
  inited = objc_initWeak(&v15, self);
  ADAM::AudioDataAnalysisManager::instance(inited);
  v5 = objc_loadWeakRetained(&v15);
  objc_initWeak(&location, v5);
  delegateCopy = delegate;
  v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:delegate];
  v8 = qword_2A18A5240;
  std::mutex::lock((qword_2A18A5240 + 24));
  v9 = [*(qword_2A18A5240 + 16) objectForKey:v7];

  if (v9)
  {
    v10 = [*(qword_2A18A5240 + 16) objectForKey:v7];
    v11 = objc_loadWeakRetained(&location);
    [v10 addObject:v11];
  }

  else
  {
    v12 = MEMORY[0x29EDB8DE8];
    v13 = objc_loadWeakRetained(&location);
    v10 = [v12 arrayWithObject:v13];

    v14 = *(qword_2A18A5240 + 16);
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:delegateCopy];
    [v14 setObject:v10 forKey:v11];
  }

  std::mutex::unlock((v8 + 24));
  objc_destroyWeak(&location);

  objc_destroyWeak(&v15);
}

- (void)deactivateAll
{
  v14 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_dataTypeStatus;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [MEMORY[0x29EDBA070] numberWithBool:{0, v9}];
        [(NSMutableDictionary *)self->_dataTypeStatus setObject:v8 forKeyedSubscript:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isActive:(unsigned int)active
{
  os_unfair_lock_lock(&self->_lock);
  dataTypeStatus = self->_dataTypeStatus;
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:active];
  v7 = [(NSMutableDictionary *)dataTypeStatus objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)isMeasurementOnForAudioSampleType:(unsigned int)type withReply:(id)reply
{
  v4 = *&type;
  replyCopy = reply;
  v6 = [(ADAMServerDelegate *)self isActive:v4];
  v7 = v6;
  if ((v6 & 1) == 0)
  {
    ADAM::AudioDataAnalysisManager::instance(v6);
  }

  (replyCopy)[2](replyCopy, v7);
}

- (void)getCurrentConfigurationForAudioSampleType:(unsigned int)type withReply:(id)reply
{
  replyCopy = reply;
  ADAM::AudioDataAnalysisManager::instance(replyCopy);
  (*(replyCopy + 2))(replyCopy, 0);
}

- (void)sendAudioSample:(id)sample
{
  sampleCopy = sample;
  if (-[ADAMServerDelegate isActive:](self, "isActive:", [sampleCopy type]))
  {
    if ([sampleCopy type] == 1751213428)
    {
      os_unfair_lock_lock(&self->_lock);
      configs = self->_configs;
      v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:1751213428];
      WeakRetained = [(NSMutableDictionary *)configs objectForKey:v6];

      v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:1751215219];
      v9 = [WeakRetained objectForKey:v8];

      os_unfair_lock_unlock(&self->_lock);
      if (v9 && [v9 BOOLValue])
      {
        metadata = [sampleCopy metadata];
        v11 = [metadata objectForKey:@"_ADAFMetadataKeyIsLoud"];

        if (v11 && ([v11 BOOLValue] & 1) == 0)
        {

          goto LABEL_10;
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __38__ADAMServerDelegate_sendAudioSample___block_invoke;
    v12[3] = &unk_29EE524E8;
    v12[4] = self;
    v9 = [WeakRetained remoteObjectProxyWithErrorHandler:v12];
    [v9 receiveAudioSample:sampleCopy];
LABEL_10:
  }
}

void __38__ADAMServerDelegate_sendAudioSample___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = 136315906;
    v8 = "ADAMServerDelegate.mm";
    v9 = 1024;
    v10 = 226;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d connection to %@ failed: %@", &v7, 0x26u);
  }

LABEL_10:
}

- (void)sendAudioSample:(id)sample withType:(unsigned int)type metadata:(id)metadata
{
  v6 = *&type;
  sampleCopy = sample;
  metadataCopy = metadata;
  if ([(ADAMServerDelegate *)self isActive:v6])
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __56__ADAMServerDelegate_sendAudioSample_withType_metadata___block_invoke;
    v12[3] = &unk_29EE524E8;
    v12[4] = self;
    v11 = [WeakRetained remoteObjectProxyWithErrorHandler:v12];
    [v11 receiveAudioSample:sampleCopy type:v6 metadata:metadataCopy];
  }
}

void __56__ADAMServerDelegate_sendAudioSample_withType_metadata___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = 136315906;
    v8 = "ADAMServerDelegate.mm";
    v9 = 1024;
    v10 = 199;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d connection to %@ failed: %@", &v7, 0x26u);
  }

LABEL_10:
}

- (void)setupConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeWeak(&self->_connection, connectionCopy);

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __38__ADAMServerDelegate_setupConnection___block_invoke;
  v9[3] = &unk_29EE524C0;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained setInvalidationHandler:v9];

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __38__ADAMServerDelegate_setupConnection___block_invoke_6;
  v7[3] = &unk_29EE524C0;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  v6 = objc_loadWeakRetained(&self->_connection);
  [v6 setInterruptionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__ADAMServerDelegate_setupConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 16);
    v7 = 136315650;
    v8 = "ADAMServerDelegate.mm";
    v9 = 1024;
    v10 = 183;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d client connection invalidated: %@", &v7, 0x1Cu);
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deactivateAll];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 unregisterDelegate];
}

void __38__ADAMServerDelegate_setupConnection___block_invoke_6(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v2 = *ADAM::ADAMLogScope(void)::scope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 16);
    v7 = 136315650;
    v8 = "ADAMServerDelegate.mm";
    v9 = 1024;
    v10 = 189;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d client connection interrupted: %@", &v7, 0x1Cu);
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deactivateAll];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 unregisterDelegate];
}

- (void)configureAudioSampleTypeWithIdentifier:(id)identifier type:(unsigned int)type configuration:(id)configuration withReply:(id)reply
{
  v8 = *&type;
  v37 = *MEMORY[0x29EDCA608];
  objc_initWeak(&v26, identifier);
  configurationCopy = configuration;
  replyCopy = reply;
  if ([(ADAMServerDelegate *)self verifyInvariantsWithReply:replyCopy])
  {
    if (!self->_clientName)
    {
      v12 = objc_loadWeakRetained(&v26);
      clientName = self->_clientName;
      self->_clientName = v12;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v14 = *ADAM::ADAMLogScope(void)::scope;
      v15 = v14;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = MEMORY[0x29EDCA988];
      v16 = MEMORY[0x29EDCA988];
    }

    v17 = v15;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = self->_clientName;
      v19 = [ADAFUtil stringFromDataType:v8];
      *buf = 136315906;
      v30 = "ADAMServerDelegate.mm";
      v31 = 1024;
      v32 = 163;
      v33 = 2112;
      p_p = v18;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_296C34000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d [configure] audio sample for client: %@ with data type: %@", buf, 0x26u);
    }

LABEL_13:
    if (configurationCopy)
    {
      os_unfair_lock_lock(&self->_lock);
      configs = self->_configs;
      v21 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithDictionary:configurationCopy copyItems:1];
      v22 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v8];
      [(NSMutableDictionary *)configs setObject:v21 forKey:v22];

      os_unfair_lock_unlock(&self->_lock);
    }

    ADAM::AudioDataAnalysisManager::instance(v14);
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v23 = *ADAM::ADAMLogScope(void)::scope;
      if (!v23)
      {
LABEL_25:
        replyCopy[2](replyCopy, 0);
        goto LABEL_26;
      }
    }

    else
    {
      v23 = MEMORY[0x29EDCA988];
      v24 = MEMORY[0x29EDCA988];
    }

    v25 = v23;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 4;
      *(&__p + 3) = v8;
      BYTE2(__p) = BYTE1(v8);
      BYTE1(__p) = BYTE2(v8);
      LOBYTE(__p) = BYTE3(v8);
      *buf = 136315650;
      v30 = "AudioDataAnalysisManager.cpp";
      v31 = 1024;
      v32 = 516;
      v33 = 2080;
      p_p = &__p;
      _os_log_impl(&dword_296C34000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d type %s does not support configuring inside ADAM", buf, 0x1Cu);
      if (v28 < 0)
      {
        operator delete(__p);
      }
    }

    goto LABEL_25;
  }

LABEL_26:

  objc_destroyWeak(&v26);
}

- (void)stopMeasuringAudioSampleTypeWithIdentifier:(id)identifier type:(unsigned int)type andReply:(id)reply
{
  v5 = *&type;
  v30 = *MEMORY[0x29EDCA608];
  replyCopy = reply;
  if ([(ADAMServerDelegate *)self verifyInvariantsWithReply:replyCopy])
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v8 = *ADAM::ADAMLogScope(void)::scope;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = MEMORY[0x29EDCA988];
      v9 = MEMORY[0x29EDCA988];
    }

    v10 = v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      clientName = self->_clientName;
      v12 = [ADAFUtil stringFromDataType:v5];
      v22 = 136315906;
      v23 = "ADAMServerDelegate.mm";
      v24 = 1024;
      v25 = 140;
      v26 = 2112;
      v27 = clientName;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_296C34000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [stop] measuring audio sample for client: %@ with data type: %@", &v22, 0x26u);
    }

LABEL_11:
    v13 = [(ADAMServerDelegate *)self datatypeSupportsONOFF:v5];
    if (v13)
    {
      ADAM::AudioDataAnalysisManager::instance(v13);
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v14 = *ADAM::ADAMLogScope(void)::scope;
        if (!v14)
        {
LABEL_31:
          replyCopy[2](replyCopy, 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = MEMORY[0x29EDCA988];
        v21 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315650;
        v23 = "AudioDataAnalysisManager.cpp";
        v24 = 1024;
        v25 = 488;
        v26 = 1024;
        LODWORD(v27) = v5;
        _os_log_impl(&dword_296C34000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EAE type %u does not support disabling", &v22, 0x18u);
      }

      goto LABEL_31;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v15 = *ADAM::ADAMLogScope(void)::scope;
      if (!v15)
      {
LABEL_26:
        v19 = [(ADAMServerDelegate *)self describeErrorCode:560950886];
        v20 = [(ADAMServerDelegate *)self errorWithCode:560950886 andReason:v19];
        (replyCopy)[2](replyCopy, v20);

        goto LABEL_32;
      }
    }

    else
    {
      v15 = MEMORY[0x29EDCA988];
      v16 = MEMORY[0x29EDCA988];
    }

    v17 = v15;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [ADAFUtil stringFromDataType:v5];
      v22 = 136315650;
      v23 = "ADAMServerDelegate.mm";
      v24 = 1024;
      v25 = 143;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_296C34000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d datatype %@ cannot be turned OFF", &v22, 0x1Cu);
    }

    goto LABEL_26;
  }

LABEL_32:
}

- (void)startMeasuringAudioSampleTypeWithIdentifier:(id)identifier type:(unsigned int)type withConfiguration:(id)configuration andReply:(id)reply
{
  v8 = *&type;
  v40 = *MEMORY[0x29EDCA608];
  objc_initWeak(&location, identifier);
  configurationCopy = configuration;
  replyCopy = reply;
  if ([(ADAMServerDelegate *)self verifyInvariantsWithReply:replyCopy])
  {
    if (!self->_clientName)
    {
      v12 = objc_loadWeakRetained(&location);
      clientName = self->_clientName;
      self->_clientName = v12;
    }

    if (configurationCopy)
    {
      os_unfair_lock_lock(&self->_lock);
      configs = self->_configs;
      v15 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithDictionary:configurationCopy copyItems:1];
      v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v8];
      [(NSMutableDictionary *)configs setObject:v15 forKey:v16];

      os_unfair_lock_unlock(&self->_lock);
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v17 = *ADAM::ADAMLogScope(void)::scope;
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v17 = MEMORY[0x29EDCA988];
      v18 = MEMORY[0x29EDCA988];
    }

    v19 = v17;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = self->_clientName;
      v21 = [ADAFUtil stringFromDataType:v8];
      *buf = 136315906;
      v33 = "ADAMServerDelegate.mm";
      v34 = 1024;
      v35 = 122;
      v36 = 2112;
      v37 = v20;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&dword_296C34000, v19, OS_LOG_TYPE_INFO, "%25s:%-5d [start] measuring audio sample for client: %@ with data type: %@", buf, 0x26u);
    }

LABEL_15:
    v22 = [(ADAMServerDelegate *)self datatypeSupportsONOFF:v8];
    if (v22)
    {
      ADAM::AudioDataAnalysisManager::instance(v22);
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v23 = *ADAM::ADAMLogScope(void)::scope;
        if (!v23)
        {
LABEL_35:
          replyCopy[2](replyCopy, 0);
          goto LABEL_36;
        }
      }

      else
      {
        v23 = MEMORY[0x29EDCA988];
        v30 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v33 = "AudioDataAnalysisManager.cpp";
        v34 = 1024;
        v35 = 459;
        v36 = 1024;
        LODWORD(v37) = v8;
        _os_log_impl(&dword_296C34000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EAE type %u does not support enabling", buf, 0x18u);
      }

      goto LABEL_35;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v24 = *ADAM::ADAMLogScope(void)::scope;
      if (!v24)
      {
LABEL_30:
        v28 = [(ADAMServerDelegate *)self describeErrorCode:560950886];
        v29 = [(ADAMServerDelegate *)self errorWithCode:560950886 andReason:v28];
        (replyCopy)[2](replyCopy, v29);

        goto LABEL_36;
      }
    }

    else
    {
      v24 = MEMORY[0x29EDCA988];
      v25 = MEMORY[0x29EDCA988];
    }

    v26 = v24;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [ADAFUtil stringFromDataType:v8];
      *buf = 136315650;
      v33 = "ADAMServerDelegate.mm";
      v34 = 1024;
      v35 = 125;
      v36 = 2112;
      v37 = v27;
      _os_log_impl(&dword_296C34000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d datatype %@ cannot be turned ON", buf, 0x1Cu);
    }

    goto LABEL_30;
  }

LABEL_36:

  objc_destroyWeak(&location);
}

- (void)stopListeningToAudioSampleTypeWithIdentifier:(id)identifier type:(unsigned int)type withReply:(id)reply
{
  v5 = *&type;
  v27 = *MEMORY[0x29EDCA608];
  replyCopy = reply;
  if ([(ADAMServerDelegate *)self verifyInvariantsWithReply:replyCopy])
  {
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v5];
    os_unfair_lock_lock(&self->_lock);
    v9 = [(NSMutableDictionary *)self->_dataTypeStatus objectForKey:v8];
    if (v9)
    {
      v10 = [MEMORY[0x29EDBA070] numberWithBool:0];
      [(NSMutableDictionary *)self->_dataTypeStatus setObject:v10 forKeyedSubscript:v8];
    }

    os_unfair_lock_unlock(&self->_lock);
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v11 = *ADAM::ADAMLogScope(void)::scope;
      if (!v11)
      {
LABEL_18:
        replyCopy[2](replyCopy, 0);

        goto LABEL_19;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
      v12 = MEMORY[0x29EDCA988];
    }

    v13 = v11;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      clientName = self->_clientName;
      v15 = [ADAFUtil stringFromDataType:v5];
      if (v9)
      {
        stringValue = [v9 stringValue];
      }

      else
      {
        stringValue = @"nil";
      }

      v17 = 136316162;
      v18 = "ADAMServerDelegate.mm";
      v19 = 1024;
      v20 = 104;
      v21 = 2112;
      v22 = clientName;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = stringValue;
      _os_log_impl(&dword_296C34000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d [stop] recording for client: %@ with dataType: %@, previous status: %@", &v17, 0x30u);
      if (v9)
      {
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)startListeningToAudioSampleWithIdentifier:(id)identifier type:(unsigned int)type withReply:(id)reply
{
  v6 = *&type;
  v35 = *MEMORY[0x29EDCA608];
  objc_initWeak(&location, identifier);
  replyCopy = reply;
  if ([(ADAMServerDelegate *)self verifyInvariantsWithReply:replyCopy])
  {
    if (!self->_clientName)
    {
      v9 = objc_loadWeakRetained(&location);
      clientName = self->_clientName;
      self->_clientName = v9;
    }

    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v6];
    os_unfair_lock_lock(&self->_lock);
    v12 = [(NSMutableDictionary *)self->_dataTypeStatus objectForKey:v11];
    v13 = v12;
    if (!v12 || ([v12 BOOLValue] & 1) == 0)
    {
      dataTypeStatus = self->_dataTypeStatus;
      v16 = [MEMORY[0x29EDBA070] numberWithBool:1];
      [(NSMutableDictionary *)dataTypeStatus setObject:v16 forKey:v11];

      os_unfair_lock_unlock(&self->_lock);
      if (!v13)
      {
        [(ADAMServerDelegate *)self registerDelegate:v6];
      }

LABEL_18:
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v21 = *ADAM::ADAMLogScope(void)::scope;
        if (!v21)
        {
LABEL_27:
          replyCopy[2](replyCopy, 0);

          goto LABEL_28;
        }
      }

      else
      {
        v21 = MEMORY[0x29EDCA988];
        v22 = MEMORY[0x29EDCA988];
      }

      v23 = v21;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_loadWeakRetained(&location);
        v25 = [ADAFUtil stringFromDataType:v6];
        *buf = 136315906;
        v28 = "ADAMServerDelegate.mm";
        v29 = 1024;
        v30 = 85;
        v31 = 2112;
        v32 = v24;
        v33 = 2112;
        v34 = v25;
        _os_log_impl(&dword_296C34000, v23, OS_LOG_TYPE_INFO, "%25s:%-5d [start] recording for a new client: %@ with type: %@", buf, 0x26u);
      }

      goto LABEL_27;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v14 = *ADAM::ADAMLogScope(void)::scope;
      if (!v14)
      {
LABEL_17:
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_18;
      }
    }

    else
    {
      v14 = MEMORY[0x29EDCA988];
      v17 = MEMORY[0x29EDCA988];
    }

    v18 = v14;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_loadWeakRetained(&location);
      v20 = [ADAFUtil stringFromDataType:v6];
      *buf = 136315906;
      v28 = "ADAMServerDelegate.mm";
      v29 = 1024;
      v30 = 75;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_296C34000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d client %@ is already listening to type: %@", buf, 0x26u);
    }

    goto LABEL_17;
  }

LABEL_28:

  objc_destroyWeak(&location);
}

- (ADAMServerDelegate)initWithConnection:(id)connection andErrorCode:(int64_t)code
{
  objc_initWeak(&location, connection);
  v16.receiver = self;
  v16.super_class = ADAMServerDelegate;
  v6 = [(ADAMServerDelegate *)&v16 init];
  v7 = v6;
  if (v6)
  {
    clientName = v6->_clientName;
    v6->_clientName = 0;

    if (code)
    {
      objc_storeWeak(&v7->_connection, 0);
      dataTypeStatus = v7->_dataTypeStatus;
      v7->_dataTypeStatus = 0;

      v10 = 0;
    }

    else
    {
      v11 = objc_loadWeakRetained(&location);
      [(ADAMServerDelegate *)v7 setupConnection:v11];

      v12 = objc_alloc_init(MEMORY[0x29EDB8E00]);
      v13 = v7->_dataTypeStatus;
      v7->_dataTypeStatus = v12;

      v10 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    }

    configs = v7->_configs;
    v7->_configs = v10;

    v7->_error_code = code;
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  objc_destroyWeak(&location);
  return v7;
}

@end