@interface ADAMAudioDataReceiver
- (ADAMAudioDataReceiver)initWithIdentifier:(id)identifier;
- (ADAMAudioDataReceiverDelegate)delegate;
- (BOOL)isMeasurementOnForAudioSampleType:(unsigned int)type;
- (id)getCurrentConfigurationForAudioSampleType:(unsigned int)type;
- (id)setupConnection;
- (void)configureAudioSampleType:(unsigned int)type configuration:(id)configuration;
- (void)dealloc;
- (void)handleAndLogError:(id)error;
- (void)receiveAudioSample:(id)sample;
- (void)receiveAudioSample:(id)sample type:(unsigned int)type metadata:(id)metadata;
- (void)reconnect;
- (void)reset;
- (void)startMeasuringAudioSampleType:(unsigned int)type withConfiguration:(id)configuration;
- (void)startReceivingAudioSampleType:(unsigned int)type;
- (void)startReceivingAudioSampleType:(unsigned int)type withCallback:(id)callback;
- (void)stopMeasuringAudioSampleType:(unsigned int)type;
- (void)stopReceivingAudioSampleType:(unsigned int)type;
@end

@implementation ADAMAudioDataReceiver

- (ADAMAudioDataReceiver)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = ADAMAudioDataReceiver;
  v6 = [(ADAMAudioDataReceiver *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, identifier);
    setupConnection = [(ADAMAudioDataReceiver *)v7 setupConnection];
    connection = v7->_connection;
    v7->_connection = setupConnection;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sensorStatus = v7->_sensorStatus;
    v7->_sensorStatus = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    callbacks = v7->_callbacks;
    v7->_callbacks = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    configs = v7->_configs;
    v7->_configs = v14;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)reset
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  name = self->_name;
  self->_name = 0;

  v5 = self->_connection;
  self->_connection = 0;

  sensorStatus = self->_sensorStatus;
  self->_sensorStatus = 0;

  callbacks = self->_callbacks;
  self->_callbacks = 0;

  configs = self->_configs;
  self->_configs = 0;
}

- (void)receiveAudioSample:(id)sample type:(unsigned int)type metadata:(id)metadata
{
  v6 = *&type;
  sampleCopy = sample;
  metadataCopy = metadata;
  os_unfair_lock_lock(&self->_lock);
  callbacks = self->_callbacks;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v12 = [(NSMutableDictionary *)callbacks objectForKey:v11];

  os_unfair_lock_unlock(&self->_lock);
  if (v12)
  {
    (v12)[2](v12, sampleCopy, metadataCopy);
  }

  else
  {
    v14 = ADAFLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ADAMAudioDataReceiver receiveAudioSample:type:metadata:];
    }

    [(ADAMAudioDataReceiver *)self stopReceivingAudioSampleType:v6];
  }
}

- (void)startReceivingAudioSampleType:(unsigned int)type withCallback:(id)callback
{
  v4 = *&type;
  v20 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  verifyInvariants = [(ADAMAudioDataReceiver *)self verifyInvariants];
  if (verifyInvariants)
  {
    v8 = ADAFLog(verifyInvariants);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [ADAFUtil stringFromDataType:v4];
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_241579000, v8, OS_LOG_TYPE_DEFAULT, "start receiving audio sample type: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    callbacks = self->_callbacks;
    v11 = [callbackCopy copy];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    [(NSMutableDictionary *)callbacks setObject:v11 forKey:v12];

    os_unfair_lock_unlock(&self->_lock);
    connection = self->_connection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke;
    v17[3] = &unk_278CE10C8;
    v17[4] = self;
    v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
    name = self->_name;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_6;
    v16[3] = &unk_278CE10C8;
    v16[4] = self;
    [v14 startListeningToAudioSampleWithIdentifier:name type:v4 withReply:v16];
  }
}

void __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_cold_1();
  }
}

id *__68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_6(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleAndLogError:a2];
  }

  return result;
}

- (void)startReceivingAudioSampleType:(unsigned int)type
{
  v3 = *&type;
  v17 = *MEMORY[0x277D85DE8];
  verifyInvariants = [(ADAMAudioDataReceiver *)self verifyInvariants];
  if (verifyInvariants)
  {
    v6 = ADAFLog(verifyInvariants);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [ADAFUtil stringFromDataType:v3];
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_241579000, v6, OS_LOG_TYPE_DEFAULT, "start receiving audio sample type: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    callbacks = self->_callbacks;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    [(NSMutableDictionary *)callbacks setObject:&__block_literal_global_9 forKey:v9];

    os_unfair_lock_unlock(&self->_lock);
    connection = self->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__ADAMAudioDataReceiver_startReceivingAudioSampleType___block_invoke_2;
    v14[3] = &unk_278CE10C8;
    v14[4] = self;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
    name = self->_name;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__ADAMAudioDataReceiver_startReceivingAudioSampleType___block_invoke_10;
    v13[3] = &unk_278CE10C8;
    v13[4] = self;
    [v11 startListeningToAudioSampleWithIdentifier:name type:v3 withReply:v13];
  }
}

void __55__ADAMAudioDataReceiver_startReceivingAudioSampleType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_cold_1();
  }
}

id *__55__ADAMAudioDataReceiver_startReceivingAudioSampleType___block_invoke_10(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleAndLogError:a2];
  }

  return result;
}

- (void)stopReceivingAudioSampleType:(unsigned int)type
{
  v3 = *&type;
  v17 = *MEMORY[0x277D85DE8];
  verifyInvariants = [(ADAMAudioDataReceiver *)self verifyInvariants];
  if (verifyInvariants)
  {
    v6 = ADAFLog(verifyInvariants);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [ADAFUtil stringFromDataType:v3];
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_241579000, v6, OS_LOG_TYPE_DEFAULT, "stop receiving audio sample type: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    callbacks = self->_callbacks;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    [(NSMutableDictionary *)callbacks removeObjectForKey:v9];

    os_unfair_lock_unlock(&self->_lock);
    connection = self->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke;
    v14[3] = &unk_278CE10C8;
    v14[4] = self;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
    name = self->_name;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke_11;
    v13[3] = &unk_278CE10C8;
    v13[4] = self;
    [v11 stopListeningToAudioSampleTypeWithIdentifier:name type:v3 withReply:v13];
  }
}

void __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke_cold_1();
  }
}

id *__54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke_11(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleAndLogError:a2];
  }

  return result;
}

- (void)startMeasuringAudioSampleType:(unsigned int)type withConfiguration:(id)configuration
{
  v4 = *&type;
  v27 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  verifyInvariants = [(ADAMAudioDataReceiver *)self verifyInvariants];
  if (verifyInvariants)
  {
    v8 = ADAFLog(verifyInvariants);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [ADAFUtil stringFromDataType:v4];
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_241579000, v8, OS_LOG_TYPE_DEFAULT, "attempting to start measuring %@ with configuration", buf, 0xCu);
    }

    if (v4 == 1702260324)
    {
      v11 = ADAFLog(v10);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (configurationCopy)
      {
        if (v12)
        {
          *buf = 138412290;
          v26 = configurationCopy;
          v13 = "%@";
          v14 = v11;
          v15 = 12;
LABEL_10:
          _os_log_impl(&dword_241579000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        }
      }

      else if (v12)
      {
        *buf = 0;
        v13 = "configuration empty";
        v14 = v11;
        v15 = 2;
        goto LABEL_10;
      }

      os_unfair_lock_lock(&self->_lock);
      sensorStatus = self->_sensorStatus;
      v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1702260324];
      [(NSMutableDictionary *)sensorStatus setObject:v17 forKey:v18];

      if (configurationCopy)
      {
        configs = self->_configs;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:configurationCopy];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1702260324];
        [(NSMutableDictionary *)configs setObject:v20 forKey:v21];
      }

      os_unfair_lock_unlock(&self->_lock);
      v22 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_14];
      name = self->_name;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_15;
      v24[3] = &unk_278CE10C8;
      v24[4] = self;
      [v22 startMeasuringAudioSampleTypeWithIdentifier:name type:1702260324 withConfiguration:configurationCopy andReply:v24];
    }
  }
}

void __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

id *__73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_15(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleAndLogError:a2];
  }

  return result;
}

- (void)stopMeasuringAudioSampleType:(unsigned int)type
{
  v19 = *MEMORY[0x277D85DE8];
  verifyInvariants = [(ADAMAudioDataReceiver *)self verifyInvariants];
  if (type == 1702260324 && verifyInvariants)
  {
    v6 = ADAFLog(verifyInvariants);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [ADAFUtil stringFromDataType:1702260324];
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_241579000, v6, OS_LOG_TYPE_DEFAULT, "attempting to stop measuring %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    sensorStatus = self->_sensorStatus;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1702260324];
    v10 = [(NSMutableDictionary *)sensorStatus objectForKey:v9];

    if (v10)
    {
      v11 = self->_sensorStatus;
      v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1702260324];
      [(NSMutableDictionary *)v11 setObject:v12 forKey:v13];
    }

    os_unfair_lock_unlock(&self->_lock);
    v14 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_17];
    name = self->_name;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__ADAMAudioDataReceiver_stopMeasuringAudioSampleType___block_invoke_18;
    v16[3] = &unk_278CE10C8;
    v16[4] = self;
    [v14 stopMeasuringAudioSampleTypeWithIdentifier:name type:1702260324 andReply:v16];
  }
}

void __54__ADAMAudioDataReceiver_stopMeasuringAudioSampleType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

id *__54__ADAMAudioDataReceiver_stopMeasuringAudioSampleType___block_invoke_18(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleAndLogError:a2];
  }

  return result;
}

- (void)configureAudioSampleType:(unsigned int)type configuration:(id)configuration
{
  v4 = *&type;
  v20 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  verifyInvariants = [(ADAMAudioDataReceiver *)self verifyInvariants];
  if (configurationCopy && verifyInvariants)
  {
    v8 = ADAFLog(verifyInvariants);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [ADAFUtil stringFromDataType:v4];
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = configurationCopy;
      _os_log_impl(&dword_241579000, v8, OS_LOG_TYPE_DEFAULT, "configuring %@ with configs: %@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    configs = self->_configs;
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:configurationCopy copyItems:1];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    [(NSMutableDictionary *)configs setObject:v11 forKey:v12];

    os_unfair_lock_unlock(&self->_lock);
    v13 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_20];
    name = self->_name;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__ADAMAudioDataReceiver_configureAudioSampleType_configuration___block_invoke_21;
    v15[3] = &unk_278CE10C8;
    v15[4] = self;
    [v13 configureAudioSampleTypeWithIdentifier:name type:v4 configuration:configurationCopy withReply:v15];
  }
}

void __64__ADAMAudioDataReceiver_configureAudioSampleType_configuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

id *__64__ADAMAudioDataReceiver_configureAudioSampleType_configuration___block_invoke_21(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleAndLogError:a2];
  }

  return result;
}

- (id)getCurrentConfigurationForAudioSampleType:(unsigned int)type
{
  v3 = *&type;
  v27 = *MEMORY[0x277D85DE8];
  if ([(ADAMAudioDataReceiver *)self verifyInvariants])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = dispatch_semaphore_create(0);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_23];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__ADAMAudioDataReceiver_getCurrentConfigurationForAudioSampleType___block_invoke_24;
    v12[3] = &unk_278CE1130;
    v12[4] = &v13;
    v12[5] = &v19;
    [v5 getCurrentConfigurationForAudioSampleType:v3 withReply:v12];

    v6 = v20[5];
    v7 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
    v8 = dispatch_semaphore_wait(v6, v7);
    if (v8)
    {
      v9 = ADAFLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = "[ADAMAudioDataReceiver getCurrentConfigurationForAudioSampleType:]";
        _os_log_impl(&dword_241579000, v9, OS_LOG_TYPE_DEFAULT, "connection timeout: %s", buf, 0xCu);
      }
    }

    v10 = v14[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __67__ADAMAudioDataReceiver_getCurrentConfigurationForAudioSampleType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

intptr_t __67__ADAMAudioDataReceiver_getCurrentConfigurationForAudioSampleType___block_invoke_24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v6);
}

- (BOOL)isMeasurementOnForAudioSampleType:(unsigned int)type
{
  v3 = *&type;
  v25 = *MEMORY[0x277D85DE8];
  if ([(ADAMAudioDataReceiver *)self verifyInvariants])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = dispatch_semaphore_create(0);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_27];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__ADAMAudioDataReceiver_isMeasurementOnForAudioSampleType___block_invoke_28;
    v12[3] = &unk_278CE1158;
    v12[4] = &v13;
    v12[5] = &v17;
    [v5 isMeasurementOnForAudioSampleType:v3 withReply:v12];

    v6 = v18[5];
    v7 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
    v8 = dispatch_semaphore_wait(v6, v7);
    if (v8)
    {
      v9 = ADAFLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v24 = "[ADAMAudioDataReceiver isMeasurementOnForAudioSampleType:]";
        _os_log_impl(&dword_241579000, v9, OS_LOG_TYPE_DEFAULT, "connection timeout: %s", buf, 0xCu);
      }
    }

    v10 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __59__ADAMAudioDataReceiver_isMeasurementOnForAudioSampleType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

intptr_t __59__ADAMAudioDataReceiver_isMeasurementOnForAudioSampleType___block_invoke_28(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v4 = ADAFLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "OFF";
    if (a2)
    {
      v5 = "ON";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_241579000, v4, OS_LOG_TYPE_DEFAULT, "measurement is %s", &v7, 0xCu);
  }

  return dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (void)receiveAudioSample:(id)sample
{
  v16 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v5 = ADAFLog(sampleCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = sampleCopy;
    _os_log_impl(&dword_241579000, v5, OS_LOG_TYPE_INFO, "receieved audio data analysis sample %@", &v12, 0xCu);
  }

  delegate = [(ADAMAudioDataReceiver *)self delegate];

  if (delegate)
  {
    v8 = ADAFLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      uuid = [sampleCopy uuid];
      WeakRetained = objc_loadWeakRetained(&self->delegate);
      v12 = 138412546;
      v13 = uuid;
      v14 = 2112;
      v15 = WeakRetained;
      _os_log_impl(&dword_241579000, v8, OS_LOG_TYPE_INFO, "sending sample [%@] to delegate %@", &v12, 0x16u);
    }

    delegate2 = [(ADAMAudioDataReceiver *)self delegate];
    [delegate2 receiveAudioSample:sampleCopy];
  }
}

- (id)setupConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.audio.adam.xpc" options:4096];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533EB90];
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533D668];
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:self];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ADAMAudioDataReceiver_setupConnection__block_invoke;
  v10[3] = &unk_278CE1180;
  objc_copyWeak(&v11, &location);
  [v3 setInterruptionHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ADAMAudioDataReceiver_setupConnection__block_invoke_97;
  v8[3] = &unk_278CE1180;
  objc_copyWeak(&v9, &location);
  [v3 setInvalidationHandler:v8];
  v6 = objc_loadWeakRetained(&location);
  [v6 setConnectionDidInvalidate:0];

  [v3 resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v3;
}

void __40__ADAMAudioDataReceiver_setupConnection__block_invoke(uint64_t a1)
{
  v2 = ADAFLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__ADAMAudioDataReceiver_setupConnection__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

void __40__ADAMAudioDataReceiver_setupConnection__block_invoke_97(uint64_t a1)
{
  v2 = ADAFLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__ADAMAudioDataReceiver_setupConnection__block_invoke_97_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionDidInvalidate:1];
}

- (void)reconnect
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __34__ADAMAudioDataReceiver_reconnect__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 unsignedIntegerValue];
  v8 = [v6 BOOLValue];

  if (v8)
  {
    v9 = [*(*(a1 + 32) + 32) objectForKey:v5];
    v10 = ADAFLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [ADAFUtil stringFromDataType:v7];
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_241579000, v10, OS_LOG_TYPE_DEFAULT, "*restart* measuring '%@' with cfg: %@", buf, 0x16u);
    }

    v12 = [*(*(a1 + 32) + 40) remoteObjectProxyWithErrorHandler:&__block_literal_global_100];
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__ADAMAudioDataReceiver_reconnect__block_invoke_101;
    v15[3] = &unk_278CE10C8;
    v15[4] = v13;
    [v12 startMeasuringAudioSampleTypeWithIdentifier:v14 type:v7 withConfiguration:v9 andReply:v15];
  }
}

void __34__ADAMAudioDataReceiver_reconnect__block_invoke_98(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

id *__34__ADAMAudioDataReceiver_reconnect__block_invoke_101(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleAndLogError:a2];
  }

  return result;
}

void __34__ADAMAudioDataReceiver_reconnect__block_invoke_103(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1();
  }
}

id *__34__ADAMAudioDataReceiver_reconnect__block_invoke_106(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleAndLogError:a2];
  }

  return result;
}

- (void)handleAndLogError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_12;
  }

  code = [errorCopy code];
  if (code == 560164457)
  {
LABEL_5:
    code = [(ADAMAudioDataReceiver *)self reset];
    goto LABEL_9;
  }

  if (code != 1969974894)
  {
    if (code != 560295540)
    {
      v7 = ADAFLog(code);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ADAMAudioDataReceiver handleAndLogError:];
      }

      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_9:
  v8 = ADAFLog(code);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ADAMAudioDataReceiver handleAndLogError:];
  }

LABEL_12:
}

- (void)dealloc
{
  [(ADAMAudioDataReceiver *)self reset];
  v3.receiver = self;
  v3.super_class = ADAMAudioDataReceiver;
  [(ADAMAudioDataReceiver *)&v3 dealloc];
}

- (ADAMAudioDataReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)receiveAudioSample:type:metadata:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__ADAMAudioDataReceiver_startReceivingAudioSampleType_withCallback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_241579000, v0, v1, "%@ : connection error %@");
}

void __54__ADAMAudioDataReceiver_stopReceivingAudioSampleType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_241579000, v0, v1, "%@ : connection error: %@");
}

void __73__ADAMAudioDataReceiver_startMeasuringAudioSampleType_withConfiguration___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __40__ADAMAudioDataReceiver_setupConnection__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__ADAMAudioDataReceiver_setupConnection__block_invoke_97_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleAndLogError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleAndLogError:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end