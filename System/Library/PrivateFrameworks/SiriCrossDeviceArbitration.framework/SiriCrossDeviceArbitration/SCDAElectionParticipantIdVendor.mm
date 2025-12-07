@interface SCDAElectionParticipantIdVendor
+ (id)computeId:(id)id withPayload:(id)payload;
+ (void)initialize;
- (SCDAElectionParticipantIdVendor)init;
- (id)computeIds:(id)ids;
- (void)_clearCBAdvertiser;
- (void)_fetchBTLEAddress;
- (void)_init;
- (void)_reinit;
- (void)dealloc;
- (void)fetchBTLEAddressIfRequired;
@end

@implementation SCDAElectionParticipantIdVendor

- (void)fetchBTLEAddressIfRequired
{
  if (self->_reinitialize)
  {
    [(SCDAElectionParticipantIdVendor *)self _reinit];
  }

  if (!self->_bleAddress)
  {

    [(SCDAElectionParticipantIdVendor *)self _fetchBTLEAddress];
  }
}

- (void)dealloc
{
  self->_deallocInProgress = 1;
  bleAddress = self->_bleAddress;
  self->_bleAddress = 0;

  rotatedBLEAddress = self->_rotatedBLEAddress;
  self->_rotatedBLEAddress = 0;

  [(SCDAElectionParticipantIdVendor *)self _clearCBAdvertiser];
  v5.receiver = self;
  v5.super_class = SCDAElectionParticipantIdVendor;
  [(SCDAElectionParticipantIdVendor *)&v5 dealloc];
}

- (void)_clearCBAdvertiser
{
  cbAdvertiser = self->_cbAdvertiser;
  if (cbAdvertiser)
  {
    self->_cbAdvertiser = 0;
    v3 = cbAdvertiser;

    [(CBAdvertiser *)v3 setInvalidationHandler:0];
    [(CBAdvertiser *)v3 setInterruptionHandler:0];
    [(CBAdvertiser *)v3 setAdvertisingAddressChangedHandler:0];
    [(CBAdvertiser *)v3 invalidate];
  }
}

- (id)computeIds:(id)ids
{
  v29 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  [(SCDAElectionParticipantIdVendor *)self fetchBTLEAddressIfRequired];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_bleAddress;
  v7 = selfCopy->_lastAddressChange;
  v8 = selfCopy->_rotatedBLEAddress;
  v9 = selfCopy->_lastRotatedAddressChange;
  objc_sync_exit(selfCopy);

  if (!idsCopy || !v6)
  {
    v13 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v22 = 136315650;
      v23 = "[SCDAElectionParticipantIdVendor computeIds:]";
      v24 = 1024;
      *v25 = v6 == 0;
      *&v25[4] = 1024;
      *&v25[6] = idsCopy == 0;
      _os_log_debug_impl(&dword_1DA758000, v13, OS_LOG_TYPE_DEBUG, "%s #scda Returning null sentinel id. addressNil?%d payloadNil?%d", &v22, 0x18u);
    }

    v12 = _nullId;
    goto LABEL_10;
  }

  [(NSDate *)v7 timeIntervalSinceNow];
  if (v10 < -1202.0)
  {
    v11 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v22 = 136315394;
      v23 = "[SCDAElectionParticipantIdVendor computeIds:]";
      v24 = 2112;
      *v25 = v7;
      _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s #scda Returning stale sentinel id. lastChange: %@", &v22, 0x16u);
    }

    v12 = _staleId;
LABEL_10:
    v14 = v12;
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v14 = [SCDAElectionParticipantIdVendor computeId:v6 withPayload:idsCopy];
  v18 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315906;
    v23 = "[SCDAElectionParticipantIdVendor computeIds:]";
    v24 = 2112;
    *v25 = v14;
    *&v25[8] = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = idsCopy;
    _os_log_debug_impl(&dword_1DA758000, v18, OS_LOG_TYPE_DEBUG, "%s #scda Primary electionParticipantId: %@ from address %@ and payload %@", &v22, 0x2Au);
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else if (!v8)
  {
    goto LABEL_11;
  }

  [(NSDate *)v9 timeIntervalSinceNow];
  if (v19 < -1202.0)
  {
    v20 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v22 = 136315394;
      v23 = "[SCDAElectionParticipantIdVendor computeIds:]";
      v24 = 2112;
      *v25 = v9;
      _os_log_debug_impl(&dword_1DA758000, v20, OS_LOG_TYPE_DEBUG, "%s #scda Ignoring stale rotated address. lastChange: %@", &v22, 0x16u);
    }

    goto LABEL_11;
  }

  v15 = [SCDAElectionParticipantIdVendor computeId:v8 withPayload:idsCopy];
  v21 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315650;
    v23 = "[SCDAElectionParticipantIdVendor computeIds:]";
    v24 = 2112;
    *v25 = v15;
    *&v25[8] = 2112;
    v26 = v8;
    _os_log_debug_impl(&dword_1DA758000, v21, OS_LOG_TYPE_DEBUG, "%s #scda Rotated electionParticipantId: %@ from address %@", &v22, 0x20u);
  }

LABEL_12:
  v16 = [[SCDAElectionParticipantIds alloc] init:v14 rotatedElectionParticipantId:v15];

  return v16;
}

- (void)_fetchBTLEAddress
{
  v24 = *MEMORY[0x1E69E9840];
  cbAdvertiser = self->_cbAdvertiser;
  if (cbAdvertiser)
  {
    advertisingAddressDataNonConnectable = [(CBAdvertiser *)cbAdvertiser advertisingAddressDataNonConnectable];
    v5 = [advertisingAddressDataNonConnectable copy];

    v6 = [MEMORY[0x1E695DF00] now];
    if (!v5)
    {
      v13 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315138;
        v19 = "[SCDAElectionParticipantIdVendor _fetchBTLEAddress]";
        _os_log_debug_impl(&dword_1DA758000, v13, OS_LOG_TYPE_DEBUG, "%s #scda BTLE address is not available", &v18, 0xCu);
      }

      goto LABEL_13;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    bleAddress = selfCopy->_bleAddress;
    if (bleAddress)
    {
      if ([(NSData *)bleAddress isEqualToData:v5])
      {
        v9 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          v18 = 136315138;
          v19 = "[SCDAElectionParticipantIdVendor _fetchBTLEAddress]";
          v10 = "%s #scda Ignoring duplicate BTLE address change";
          v11 = v9;
          v12 = 12;
LABEL_16:
          _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, v10, &v18, v12);
        }
      }

      else
      {
        objc_storeStrong(&selfCopy->_rotatedBLEAddress, selfCopy->_bleAddress);
        objc_storeStrong(&selfCopy->_lastRotatedAddressChange, selfCopy->_lastAddressChange);
        objc_storeStrong(&selfCopy->_bleAddress, v5);
        objc_storeStrong(&selfCopy->_lastAddressChange, v6);
        v15 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          rotatedBLEAddress = selfCopy->_rotatedBLEAddress;
          v17 = selfCopy->_bleAddress;
          v18 = 136315650;
          v19 = "[SCDAElectionParticipantIdVendor _fetchBTLEAddress]";
          v20 = 2112;
          v21 = rotatedBLEAddress;
          v22 = 2112;
          v23 = v17;
          v10 = "%s #scda BTLE address changed from %@ to %@";
          v11 = v15;
          v12 = 32;
          goto LABEL_16;
        }
      }
    }

    else
    {
      objc_storeStrong(&selfCopy->_bleAddress, v5);
      objc_storeStrong(&selfCopy->_lastAddressChange, v6);
      v14 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315394;
        v19 = "[SCDAElectionParticipantIdVendor _fetchBTLEAddress]";
        v20 = 2112;
        v21 = v5;
        v10 = "%s #scda BTLE address initialized to %@ due to address change";
        v11 = v14;
        v12 = 22;
        goto LABEL_16;
      }
    }

    objc_sync_exit(selfCopy);

LABEL_13:
  }
}

- (void)_reinit
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_deallocInProgress)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[SCDAElectionParticipantIdVendor _reinit]";
      _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda ElectionParticipantIdVendor reinit", &v6, 0xCu);
    }

    bleAddress = self->_bleAddress;
    self->_bleAddress = 0;

    rotatedBLEAddress = self->_rotatedBLEAddress;
    self->_rotatedBLEAddress = 0;

    [(SCDAElectionParticipantIdVendor *)self _clearCBAdvertiser];
    [(SCDAElectionParticipantIdVendor *)self _init];
  }
}

- (void)_init
{
  self->_reinitialize = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695D250]);
  cbAdvertiser = self->_cbAdvertiser;
  self->_cbAdvertiser = v3;

  v5 = self->_cbAdvertiser;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__SCDAElectionParticipantIdVendor__init__block_invoke;
  v15[3] = &unk_1E85D3850;
  v15[4] = self;
  [(CBAdvertiser *)v5 setInterruptionHandler:v15];
  v6 = self->_cbAdvertiser;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__SCDAElectionParticipantIdVendor__init__block_invoke_24;
  v14[3] = &unk_1E85D3850;
  v14[4] = self;
  [(CBAdvertiser *)v6 setInvalidationHandler:v14];
  objc_initWeak(&location, self);
  v7 = self->_cbAdvertiser;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SCDAElectionParticipantIdVendor__init__block_invoke_25;
  v11[3] = &unk_1E85D31B8;
  objc_copyWeak(&v12, &location);
  [(CBAdvertiser *)v7 setAdvertisingAddressChangedHandler:v11];
  v8 = self->_cbAdvertiser;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__SCDAElectionParticipantIdVendor__init__block_invoke_2;
  v9[3] = &unk_1E85D31E0;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  [(CBAdvertiser *)v8 activateWithCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __40__SCDAElectionParticipantIdVendor__init__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[SCDAElectionParticipantIdVendor _init]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s #scda CBAdvertiser interrupted. Will flag for reinitialization", &v3, 0xCu);
  }

  *(*(a1 + 32) + 8) = 1;
}

void __40__SCDAElectionParticipantIdVendor__init__block_invoke_24(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[SCDAElectionParticipantIdVendor _init]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s #scda CBAdvertiser invalidated. Will flag for reinitialization", &v3, 0xCu);
  }

  *(*(a1 + 32) + 8) = 1;
}

void __40__SCDAElectionParticipantIdVendor__init__block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchBTLEAddress];
}

void __40__SCDAElectionParticipantIdVendor__init__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    *(*(a1 + 32) + 8) = 1;
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[SCDAElectionParticipantIdVendor _init]_block_invoke_2";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_1DA758000, v4, OS_LOG_TYPE_ERROR, "%s #scda CBAdvertiser activation failed with %@; BTLE address may not be available", &v6, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _fetchBTLEAddress];
  }
}

- (SCDAElectionParticipantIdVendor)init
{
  v8 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = SCDAElectionParticipantIdVendor;
  v2 = [(SCDAElectionParticipantIdVendor *)&v5 init];
  if (v2)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v7 = "[SCDAElectionParticipantIdVendor init]";
      _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda ElectionParticipantIdVendor init", buf, 0xCu);
    }

    v2->_deallocInProgress = 0;
    [(SCDAElectionParticipantIdVendor *)v2 _init];
  }

  return v2;
}

+ (id)computeId:(id)id withPayload:(id)payload
{
  data[2] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  idCopy = id;
  v7 = [payloadCopy length];
  if (v7 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  data[0] = 0;
  data[1] = 0;
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"73fa281b-4376-5284-8d9f-dc7ec5ad068f"];
  [v9 getUUIDBytes:data];

  memset(&v15, 0, sizeof(v15));
  CC_SHA1_Init(&v15);
  CC_SHA1_Update(&v15, data, 0x10u);
  bytes = [idCopy bytes];
  v11 = [idCopy length];

  CC_SHA1_Update(&v15, bytes, v11);
  bytes2 = [payloadCopy bytes];

  CC_SHA1_Update(&v15, bytes2, v8);
  CC_SHA1_Final(md, &v15);
  v17 = v17 & 0xF | 0x50;
  v18 = v18 & 0x3F | 0x80;
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:md];

  return v13;
}

+ (void)initialize
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v3 = _nullId;
  _nullId = v2;

  _staleId = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"];

  MEMORY[0x1EEE66BB8]();
}

@end