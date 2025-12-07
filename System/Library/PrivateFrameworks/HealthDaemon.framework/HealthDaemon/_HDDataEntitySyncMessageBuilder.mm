@interface _HDDataEntitySyncMessageBuilder
- (BOOL)finishAndFlushWithError:(id *)error;
- (_HDDataEntitySyncMessageBuilder)init;
- (_HDDataEntitySyncMessageBuilder)initWithProfile:(id)profile transaction:(id)transaction entityClass:(Class)class version:(id)version provenanceCache:(id)cache encodingOptions:(id)options messageHandler:(id)handler bytesPerChangeSet:(int64_t)self0 bytesPerChange:(int64_t)self1;
- (id)_sendCurrentCollectionIsFinal:(uint64_t)final error:;
- (int64_t)addEntity:(id)entity row:(HDSQLiteRow *)row anchor:(int64_t)anchor error:(id *)error;
@end

@implementation _HDDataEntitySyncMessageBuilder

- (_HDDataEntitySyncMessageBuilder)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HDDataEntitySyncMessageBuilder)initWithProfile:(id)profile transaction:(id)transaction entityClass:(Class)class version:(id)version provenanceCache:(id)cache encodingOptions:(id)options messageHandler:(id)handler bytesPerChangeSet:(int64_t)self0 bytesPerChange:(int64_t)self1
{
  profileCopy = profile;
  transactionCopy = transaction;
  cacheCopy = cache;
  optionsCopy = options;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = _HDDataEntitySyncMessageBuilder;
  v21 = [(_HDDataEntitySyncMessageBuilder *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeWeak(&v21->_profile, profileCopy);
    v22->_entityClass = class;
    v22->_entityVersion = version;
    objc_storeStrong(&v22->_provenanceCache, cache);
    objc_storeStrong(&v22->_transaction, transaction);
    v23 = [(objc_class *)class entityEncoderForProfile:profileCopy transaction:transactionCopy purpose:0 encodingOptions:optionsCopy authorizationFilter:0];
    entityEncoder = v22->_entityEncoder;
    v22->_entityEncoder = v23;

    objc_storeStrong(&v22->_messageHandler, handler);
    v22->_maxEncodedBytesPerChangeSet = set;
    v22->_maxEncodedBytesPerChange = change;
    *&v22->_totalEncodedBytes = 0u;
    *&v22->_lastEntityAnchor = 0u;
    *&v22->_hasEncodedAnyObject = 0;
  }

  return v22;
}

- (int64_t)addEntity:(id)entity row:(HDSQLiteRow *)row anchor:(int64_t)anchor error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v12 = [(HDDataProvenanceCache *)self->_provenanceCache provenanceWithID:v11];
  if (!v12)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Failed to retrieve provenance for id %@", v11}];
LABEL_9:
    v24 = 2;
    goto LABEL_10;
  }

  provenanceCache = self->_provenanceCache;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [(HDDataProvenanceCache *)provenanceCache codableObjectCollectionForProvenance:v12 profile:WeakRetained];

  if (!v15)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Failed to find/create codable object collection for provenance %@", v12}];
    goto LABEL_9;
  }

  v16 = entityCopy;
  v17 = v12;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  entityEncoder = self->_entityEncoder;
  v26 = v16;
  persistentID = [v16 persistentID];
  maxEncodedBytesPerChange = self->_maxEncodedBytesPerChange;
  anchorCopy = anchor;
  v32 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __68___HDDataEntitySyncMessageBuilder__addEntity_row_anchor_provenance___block_invoke;
  v27[3] = &unk_2786215C0;
  v27[4] = self;
  v29 = &v33;
  v30 = v37;
  v21 = v17;
  v28 = v21;
  LOBYTE(v17) = [(HDEntityEncoder *)entityEncoder generateCodableRepresentationsForPersistentID:persistentID row:row maxBytesPerRepresentation:maxEncodedBytesPerChange error:&v32 handler:v27];
  v22 = v32;
  if ((v17 & 1) == 0)
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v41 = 2114;
      v42 = v22;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: failed to generate codable representation for sync: %{public}@", buf, 0x16u);
    }
  }

  v24 = v34[3];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);

LABEL_10:
  return v24;
}

- (BOOL)finishAndFlushWithError:(id *)error
{
  [(HDEntityEncoder *)self->_entityEncoder finish];
  if (!self->_hasEncodedAnyObject || self->_didSendFinal)
  {
    return 1;
  }

  self->_didSendFinal = 1;

  return [(_HDDataEntitySyncMessageBuilder *)&self->super.isa _sendCurrentCollectionIsFinal:error error:?];
}

- (id)_sendCurrentCollectionIsFinal:(uint64_t)final error:
{
  if (result)
  {
    v5 = result;
    allCodableObjectCollections = [result[4] allCodableObjectCollections];
    v7 = [v5[7] sendCodableChange:allCodableObjectCollections version:v5[3] resultAnchor:v5[12] sequence:v5[13] done:a2 error:final];
    [v5[4] clearCodableObjectCollections];
    v5[11] = 0;

    return v7;
  }

  return result;
}

@end