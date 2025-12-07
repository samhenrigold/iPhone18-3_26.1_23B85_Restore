@interface CCFetchMergeableDeltasRequest
+ (id)fetchMergableDeltasRequestFromPeerToPeerMessage:(id)message set:(id)set stateVector:(id)vector atomBatchVersion:(unint64_t)version requestOptions:(unsigned __int16)options;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (void)dictionaryRepresentation;
@end

@implementation CCFetchMergeableDeltasRequest

+ (id)fetchMergableDeltasRequestFromPeerToPeerMessage:(id)message set:(id)set stateVector:(id)vector atomBatchVersion:(unint64_t)version requestOptions:(unsigned __int16)options
{
  optionsCopy = options;
  vectorCopy = vector;
  setCopy = set;
  messageCopy = message;
  v14 = [CCFetchMergeableDeltasRequest alloc];
  syncReason = [messageCopy syncReason];
  senderDeviceUUID = [messageCopy senderDeviceUUID];
  protocolVersion = [messageCopy protocolVersion];
  [messageCopy walltime];
  v19 = v18;

  v20 = [(CCPeerToPeerMessage *)v14 initWithSyncReason:syncReason senderDeviceUUID:senderDeviceUUID protocolVersion:protocolVersion wallTime:v19];
  [(CCFetchMergeableDeltasRequest *)v20 setSet:setCopy];

  [(CCFetchMergeableDeltasRequest *)v20 setStateVector:vectorCopy];
  [(CCFetchMergeableDeltasRequest *)v20 setAtomBatchVersion:version];
  [(CCFetchMergeableDeltasRequest *)v20 setRequestOptions:optionsCopy];

  return v20;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = CCFetchMergeableDeltasRequest;
  v5 = [(CCPeerToPeerMessage *)&v29 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6993A50]);
    v7 = [dictionaryCopy objectForKeyedSubscript:@"set"];
    v8 = [v6 initFromDictionary:v7];
    v9 = v5[6];
    v5[6] = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"atomBatchVersion"];
    v5[8] = [v10 unsignedIntegerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"stateVector"];
    v12 = MEMORY[0x1E696ACD0];
    v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v28 = 0;
    v14 = [v12 unarchivedObjectOfClasses:v13 fromData:v11 error:&v28];
    v15 = v28;
    v16 = v5[7];
    v5[7] = v14;

    if (v15)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(CCFetchMergeableDeltasRequest *)v15 initFromDictionary:v17];
      }
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"fetchDeltasRequestOptions"];
    *(v5 + 20) = [v18 unsignedIntValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"peerPublicKey"];
    v20 = v5[9];
    v5[9] = v19;

    senderDeviceUUID = [v5 senderDeviceUUID];

    if (!senderDeviceUUID)
    {
      v22 = objc_alloc(MEMORY[0x1E69939E0]);
      v23 = [dictionaryCopy objectForKeyedSubscript:@"deviceSite"];
      v24 = [v22 initFromDictionary:v23];

      device = [v24 device];
      deviceUUID = [device deviceUUID];
      [v5 setSenderDeviceUUID:deviceUUID];
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v21[5] = *MEMORY[0x1E69E9840];
  stateVector = self->_stateVector;
  v19 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:stateVector requiringSecureCoding:1 error:&v19];
  v5 = v19;
  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(CCFetchMergeableDeltasRequest *)v5 dictionaryRepresentation];
    }
  }

  v17 = v5;
  v20[0] = @"stateVector";
  data = v4;
  if (!v4)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v21[0] = data;
  v20[1] = @"atomBatchVersion";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_atomBatchVersion];
  v21[1] = v8;
  v20[2] = @"fetchDeltasRequestOptions";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_requestOptions];
  v21[2] = v9;
  v20[3] = @"peerPublicKey";
  peerPublicKey = self->_peerPublicKey;
  data2 = peerPublicKey;
  if (!peerPublicKey)
  {
    data2 = [MEMORY[0x1E695DEF0] data];
  }

  v21[3] = data2;
  v20[4] = @"set";
  dictionaryRepresentation = [(CCSet *)self->_set dictionaryRepresentation];
  v21[4] = dictionaryRepresentation;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v14 = [v13 mutableCopy];

  if (!peerPublicKey)
  {
  }

  if (!v4)
  {
  }

  v18.receiver = self;
  v18.super_class = CCFetchMergeableDeltasRequest;
  dictionaryRepresentation2 = [(CCPeerToPeerMessage *)&v18 dictionaryRepresentation];
  [v14 addEntriesFromDictionary:dictionaryRepresentation2];

  return v14;
}

- (void)initFromDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1DA444000, a2, OS_LOG_TYPE_FAULT, "failed to unarchive CKDistributedTimestampStateVector with error %@", &v2, 0xCu);
}

- (void)dictionaryRepresentation
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1DA444000, a2, OS_LOG_TYPE_FAULT, "failed to archive CKDistributedTimestampStateVector with error %@", &v2, 0xCu);
}

@end