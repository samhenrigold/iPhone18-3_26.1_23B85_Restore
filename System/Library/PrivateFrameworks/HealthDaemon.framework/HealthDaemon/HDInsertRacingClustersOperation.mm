@interface HDInsertRacingClustersOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertRacingClustersOperation)initWithClusters:(id)clusters provenance:(int64_t)provenance;
- (HDInsertRacingClustersOperation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDInsertRacingClustersOperation

- (HDInsertRacingClustersOperation)initWithClusters:(id)clusters provenance:(int64_t)provenance
{
  clustersCopy = clusters;
  v11.receiver = self;
  v11.super_class = HDInsertRacingClustersOperation;
  v7 = [(HDInsertRacingClustersOperation *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(clustersCopy);
    clusters = v7->_clusters;
    v7->_clusters = v8;

    v7->_provenance = provenance;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  selfCopy = self;
  obj = self->_clusters;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (!v9)
  {
    goto LABEL_24;
  }

  v11 = v9;
  v12 = *v48;
  *&v10 = 138543362;
  v36 = v10;
  errorCopy = error;
  v38 = transactionCopy;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v48 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v47 + 1) + 8 * i);
      eligibleClusterUUIDs = [v14 eligibleClusterUUIDs];
      v16 = [eligibleClusterUUIDs count];

      if (!v16)
      {
        syncIdentityManager = [profileCopy syncIdentityManager];
        legacySyncIdentity = [syncIdentityManager legacySyncIdentity];

        if ([v14 hasSyncIdentity])
        {
          syncIdentity = [v14 syncIdentity];
          v43 = 0;
          v23 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v43];
          v24 = v43;

          if (v23)
          {
            syncIdentityManager2 = [profileCopy syncIdentityManager];
            v42 = v24;
            v26 = [syncIdentityManager2 concreteIdentityForIdentity:v23 shouldCreate:1 transaction:v38 error:&v42];
            v27 = v42;

            if (v26)
            {

              legacySyncIdentity = v26;
              transactionCopy = v38;
              goto LABEL_13;
            }

            _HKInitializeLogging();
            v33 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
            {
              *buf = v36;
              v52 = v27;
              _os_log_fault_impl(&dword_228986000, v33, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
            }

            legacySyncIdentity = 0;
            v24 = v27;
            error = errorCopy;
          }

          else
          {
            _HKInitializeLogging();
            v32 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
            {
              *buf = v36;
              v52 = v24;
              _os_log_fault_impl(&dword_228986000, v32, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
            }
          }

          transactionCopy = v38;
        }

        else
        {
LABEL_13:
          provenance = selfCopy->_provenance;
          entity = [legacySyncIdentity entity];
          persistentID = [entity persistentID];
          v31 = provenance;
          error = errorCopy;
          v34 = [HDRaceRouteClusterEntity insertCodableCluster:v14 syncProvenance:v31 syncIdentity:persistentID transaction:transactionCopy error:errorCopy];

          if (!v34)
          {

            goto LABEL_25;
          }
        }

        continue;
      }

      eligibleClusterUUIDs2 = [v14 eligibleClusterUUIDs];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __72__HDInsertRacingClustersOperation_performWithProfile_transaction_error___block_invoke;
      v44[3] = &unk_278623BD0;
      v18 = transactionCopy;
      v45 = v18;
      v46 = selfCopy;
      v19 = [eligibleClusterUUIDs2 hk_map:v44];

      LOBYTE(eligibleClusterUUIDs2) = [HDRaceRouteClusterEntity pruneRaceRouteClustersWithEligibleEntities:v19 transaction:v18 error:error];
      if ((eligibleClusterUUIDs2 & 1) == 0)
      {
        LOBYTE(v34) = 0;
        goto LABEL_25;
      }
    }

    v11 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  }

  while (v11);
LABEL_24:
  LOBYTE(v34) = 1;
LABEL_25:

  return v34;
}

id __72__HDInsertRacingClustersOperation_performWithProfile_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAD78] hk_UUIDWithData:a2];
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [HDRaceRouteClusterEntity entityForClusterUUID:v3 transaction:v4 error:&v12];
  v6 = v12;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v3;
      v17 = 2114;
      v18 = v6;
      v11 = v10;
      _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "%{public}@: Failed to find eligible cluster (%{public}@) during pruning: %{public}@", buf, 0x20u);
    }
  }

  return v5;
}

- (HDInsertRacingClustersOperation)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = [v4 alloc];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v6 initWithArray:v7];

  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"clusters"];
  v10 = [coderCopy decodeInt64ForKey:@"provenance"];

  v11 = [(HDInsertRacingClustersOperation *)self initWithClusters:v9 provenance:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  clusters = self->_clusters;
  coderCopy = coder;
  [coderCopy encodeObject:clusters forKey:@"clusters"];
  [coderCopy encodeInt64:self->_provenance forKey:@"provenance"];
}

@end