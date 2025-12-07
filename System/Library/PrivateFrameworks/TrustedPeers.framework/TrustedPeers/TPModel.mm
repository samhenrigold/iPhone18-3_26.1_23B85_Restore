@interface TPModel
+ (BOOL)ignoreTDLForModel:(id)model;
+ (BOOL)isFullPeer:(id)peer;
+ (id)pickClock:(id)clock;
+ (id)preapprovalsFromKeys:(id)keys;
- (BOOL)anyTrustedPeerDistrustsOtherPeer:(id)peer error:(id *)error;
- (BOOL)canIntroduceCandidate:(id)candidate withSponsor:(id)sponsor toEpoch:(unint64_t)epoch underPolicy:(id)policy disposition:(id)disposition;
- (BOOL)checkIntroductionForCandidate:(id)candidate stableInfo:(id)info withSponsorID:(id)d error:(id *)error;
- (BOOL)considerPolicyFromPeerID:(id)d stableInfo:(id)info secrets:(id)secrets newestPolicyDoc:(id *)doc error:(id *)error;
- (BOOL)currentStatePossiblyMissingDataWithError:(id *)error;
- (BOOL)doAnyTrustedPeersMatchMachineID:(id)d error:(id *)error;
- (BOOL)doesOctagonContainDistrustedRecoveryKeysWithError:(id *)error;
- (BOOL)enumeratePeersUsingBlock:(id)block error:(id *)error;
- (BOOL)enumerateVouchersUsingBlock:(id)block error:(id *)error;
- (BOOL)hasPeerWithID:(id)d error:(id *)error;
- (BOOL)hasPotentiallyTrustedPeerPreapprovingKey:(id)key error:(id *)error;
- (BOOL)hasPotentiallyTrustedPeerTestingOnlyWithError:(id *)error;
- (BOOL)hasPotentiallyTrustedPeerWithSigningKey:(id)key error:(id *)error;
- (BOOL)isCustodianRecoveryKeyTrusted:(id)trusted error:(id *)error;
- (BOOL)isRecoveryKeyEnrolledWithError:(id *)error;
- (BOOL)isRecoveryKeyExcluded:(id)excluded error:(id *)error;
- (BOOL)validatePeerWithPreApproval:(id)approval sponsor:(id)sponsor;
- (BOOL)validateVoucherForPeer:(id)peer sponsor:(id)sponsor;
- (BOOL)verifyVoucherSignature:(id)signature;
- (TPModel)initWithDecrypter:(id)decrypter dbAdapter:(id)adapter;
- (id)_iterateOverPeersWithBlock:(id)block error:(id *)error;
- (id)actualPeerWithID:(id)d error:(id *)error;
- (id)allCustodianRecoveryKeyPeerIDs;
- (id)allCustodianRecoveryKeys;
- (id)allMachineIDsWithError:(id *)error;
- (id)allPeerIDs;
- (id)allPolicyVersionsWithError:(id *)error;
- (id)allRegisteredPolicyVersionsWithError:(id *)error;
- (id)allTrustedPeersWithCurrentRecoveryKeyWithError:(id *)error;
- (id)bestRecoveryKeyForStableInfo:(id)info vouchers:(id)vouchers error:(id *)error;
- (id)bestWalrusAcrossTrustedPeersWithError:(id *)error;
- (id)bestWalrusForStableInfo:(id)info walrusStableChanges:(id)changes error:(id *)error;
- (id)bestWebAccessAcrossTrustedPeersWithError:(id *)error;
- (id)bestWebAccessForStableInfo:(id)info webAccessStableChanges:(id)changes error:(id *)error;
- (id)calculateDynamicInfoForPeerWithID:(id)d addingPeerIDs:(id)ds removingPeerIDs:(id)iDs preapprovedKeys:(id)keys signingKeyPair:(id)pair currentMachineIDs:(id)machineIDs error:(id *)error;
- (id)calculateDynamicInfoFromModel:(id)model peer:(id)peer peerPermanentInfo:(id)info peerStableInfo:(id)stableInfo startingDynamicInfo:(id)dynamicInfo addingPeerIDs:(id)ds removingPeerIDs:(id)iDs preapprovedKeys:(id)self0 signingKeyPair:(id)self1 currentMachineIDs:(id)self2 sponsorPeerID:(id)self3 error:(id *)self4;
- (id)considerCandidateID:(id)d withSponsorID:(id)iD sponsorPermanentInfo:(id)info toExpandIncludedPeerIDs:(id)ds andExcludedPeerIDs:(id)iDs dispositions:(id)dispositions currentMachineIDs:(id)machineIDs forEpoch:(unint64_t)self0;
- (id)considerPreapprovalsSponsoredByPeer:(id)peer toRecursivelyExpandIncludedPeerIDs:(id)ds andExcludedPeerIDs:(id)iDs dispositions:(id)dispositions currentMachineIDs:(id)machineIDs forEpoch:(unint64_t)epoch;
- (id)copyPeerWithNewDynamicInfo:(id)info forPeerWithID:(id)d error:(id *)error;
- (id)copyPeerWithNewStableInfo:(id)info forPeerWithID:(id)d error:(id *)error;
- (id)createDynamicInfoWithIncludedPeerIDs:(id)ds excludedPeerIDs:(id)iDs dispositions:(id)dispositions preapprovals:(id)preapprovals signingKeyPair:(id)pair error:(id *)error;
- (id)createStableInfoWithFrozenPolicyVersion:(id)version flexiblePolicyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(int)views secureElementIdentity:(id)identity walrusSetting:(id)setting webAccess:(id)access deviceName:(id)self0 serialNumber:(id)self1 osVersion:(id)self2 signingKeyPair:(id)self3 recoverySigningPubKey:(id)self4 recoveryEncryptionPubKey:(id)self5 isInheritedAccount:(BOOL)self6 error:(id *)self7;
- (id)createVoucherForCandidate:(id)candidate stableInfo:(id)info withSponsorID:(id)d reason:(unint64_t)reason signingKeyPair:(id)pair error:(id *)error;
- (id)custodianPeerWithID:(id)d;
- (id)dynamicInfoForJoiningPeerID:(id)d peerPermanentInfo:(id)info peerStableInfo:(id)stableInfo sponsorID:(id)iD preapprovedKeys:(id)keys signingKeyPair:(id)pair currentMachineIDs:(id)ds error:(id *)self0;
- (id)filterPeerList:(id)list byMachineIDs:(id)ds sponsorPeerID:(id)d dispositions:(id)dispositions;
- (id)filterPreapprovals:(id)preapprovals forExistingPeers:(id)peers;
- (id)findCustodianRecoveryKeyWithUUID:(id)d;
- (id)getDynamicInfoForPeerWithID:(id)d error:(id *)error;
- (id)getPeerIDsTrustedByPeerWithDynamicInfo:(id)info toAccessView:(id)view error:(id *)error;
- (id)getPeerIDsTrustedByPeerWithID:(id)d toAccessView:(id)view error:(id *)error;
- (id)getStableInfoForPeerWithID:(id)d error:(id *)error;
- (id)getViewsForCRK:(id)k donorPermanentInfo:(id)info donorStableInfo:(id)stableInfo error:(id *)error;
- (id)getViewsForPeer:(id)peer stableInfo:(id)info error:(id *)error;
- (id)peerCountsByMachineIDWithError:(id *)error;
- (id)peerIDThatTrustsCustodianRecoveryKeys:(id)keys canIntroducePeer:(id)peer stableInfo:(id)info error:(id *)error;
- (id)peerIDThatTrustsRecoveryKeys:(id)keys canIntroducePeer:(id)peer stableInfo:(id)info error:(id *)error;
- (id)peerWithID:(id)d error:(id *)error;
- (id)peersWithMachineID:(id)d error:(id *)error;
- (id)policyForPeerIDs:(id)ds candidatePeerID:(id)d candidateStableInfo:(id)info error:(id *)error;
- (id)policyWithVersion:(unint64_t)version error:(id *)error;
- (id)possibleSponsorsForCustodianRecoveryKey:(id)key block:(id)block error:(id *)error;
- (id)possibleSponsorsForRecoveryKey:(id)key block:(id)block error:(id *)error;
- (id)recoveryKeyPeerID:(id)d;
- (id)recursivelyExpandIncludedPeerIDs:(id)ds andExcludedPeerIDs:(id)iDs dispositions:(id)dispositions withPeersTrustedBySponsorID:(id)d currentMachineIDs:(id)machineIDs forEpoch:(unint64_t)epoch;
- (id)trustedPeers:(id *)peers;
- (id)untrustedPeerIDsWithError:(id *)error;
- (id)vectorClockWithError:(id *)error;
- (id)viablePeerCountsByModelIDWithError:(id *)error;
- (int)userViewSyncabilityConsensusAmongTrustedPeers:(id)peers error:(id *)error;
- (unint64_t)countOfDistrustedRecoveryKeys;
- (unint64_t)countTotalNumberOfRecoveryKeys;
- (unint64_t)countTotalTrustedCustodians;
- (unint64_t)latestEpochAmongPeerIDs:(id)ds error:(id *)error;
- (unint64_t)maxClockWithError:(id *)error;
- (unint64_t)peerCountWithError:(id *)error;
- (unint64_t)statusOfPeerWithID:(id)d error:(id *)error;
- (unint64_t)trustedFullPeerCountWithError:(id *)error;
- (unint64_t)trustedPeerCountWithError:(id *)error;
- (unint64_t)voucherCountWithError:(id *)error;
- (void)considerVouchersSponsoredByPeerID:(id)d sponsorPermanentInfo:(id)info toRecursivelyExpandIncludedPeerIDs:(id)ds andExcludedPeerIDs:(id)iDs dispositions:(id)dispositions currentMachineIDs:(id)machineIDs forEpoch:(unint64_t)epoch;
- (void)registerCustodianRecoveryKey:(id)key;
- (void)removeCustodianRecoveryKey:(id)key;
- (void)removeRecoveryKey;
- (void)setRecoveryKeys:(id)keys;
@end

@implementation TPModel

- (BOOL)currentStatePossiblyMissingDataWithError:(id *)error
{
  errorCopy = error;
  v46 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  v34 = [MEMORY[0x277CBEB58] set];
  v4 = MEMORY[0x277CBEB98];
  custodianRecoveryKeys = [(TPModel *)self custodianRecoveryKeys];
  allKeys = [custodianRecoveryKeys allKeys];
  v7 = [v4 setWithArray:allKeys];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __52__TPModel_currentStatePossiblyMissingDataWithError___block_invoke;
  v29[3] = &unk_279DEDC00;
  v31 = v33;
  v8 = v7;
  v30 = v8;
  v32 = &v35;
  v28 = 0;
  [(TPModel *)self enumeratePeersUsingBlock:v29 error:&v28];
  v23 = v28;
  v21 = v8;
  if (v23 || ![v36[5] count])
  {
    v9 = 1;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v36[5];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v45 count:16];
    if (v11)
    {
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v36[5] objectForKeyedSubscript:{v14, errorCopy, v21, context}];
          v16 = TPModelLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v42 = v15;
            v43 = 2114;
            v44 = v14;
            _os_log_impl(&dword_26F78B000, v16, OS_LOG_TYPE_DEFAULT, "Peer %{public}@ trusts the following unknown peer IDs: %{public}@", buf, 0x16u);
          }

          if ([TPHashBuilder algoOfHash:v14]!= -1)
          {

            v9 = 0;
            goto LABEL_18;
          }

          v17 = TPModelLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v42 = v15;
            v43 = 2114;
            v44 = v14;
            _os_log_impl(&dword_26F78B000, v17, OS_LOG_TYPE_DEFAULT, "Peer %{public}@ trusts the following peer ID, but we don't recognize the hash: %{public}@", buf, 0x16u);
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v24 objects:v45 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_18:
  }

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

  objc_autoreleasePoolPop(context);
  if (v9 && errorCopy && v23)
  {
    v18 = v23;
    *errorCopy = v23;
  }

  return v9 ^ 1;
}

void __52__TPModel_currentStatePossiblyMissingDataWithError___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 peerID];
  [*(*(a1[5] + 8) + 40) addObject:v4];
  v5 = MEMORY[0x277CBEB58];
  v6 = [v3 dynamicInfo];
  v7 = [v6 includedPeerIDs];
  v8 = [v5 setWithSet:v7];

  [v8 minusSet:*(*(a1[5] + 8) + 40)];
  [v8 minusSet:a1[4]];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(a1[6] + 8) + 40) setObject:v4 forKeyedSubscript:{*(*(&v14 + 1) + 8 * v13++), v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [*(*(a1[6] + 8) + 40) setObject:0 forKeyedSubscript:v4];
}

- (id)allCustodianRecoveryKeyPeerIDs
{
  custodianRecoveryKeys = [(TPModel *)self custodianRecoveryKeys];
  allKeys = [custodianRecoveryKeys allKeys];

  return allKeys;
}

- (id)allCustodianRecoveryKeys
{
  custodianRecoveryKeys = [(TPModel *)self custodianRecoveryKeys];
  allValues = [custodianRecoveryKeys allValues];

  return allValues;
}

- (id)findCustodianRecoveryKeyWithUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(TPModel *)self custodianRecoveryKeys];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        custodianRecoveryKeys = [(TPModel *)self custodianRecoveryKeys];
        v11 = [custodianRecoveryKeys objectForKeyedSubscript:v9];
        uuid = [v11 uuid];
        v13 = [uuid isEqual:dCopy];

        if (v13)
        {
          custodianRecoveryKeys2 = [(TPModel *)self custodianRecoveryKeys];
          v14 = [custodianRecoveryKeys2 objectForKeyedSubscript:v9];

          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)removeCustodianRecoveryKey:(id)key
{
  v7 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = TPModelLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = keyCopy;
    _os_log_impl(&dword_26F78B000, v4, OS_LOG_TYPE_DEFAULT, "removeCustodianRecoveryKey: %{public}@", &v5, 0xCu);
  }
}

- (void)registerCustodianRecoveryKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TPModel.m" lineNumber:2847 description:@"custodianRecoveryKey"];
  }

  custodianRecoveryKeys = [(TPModel *)self custodianRecoveryKeys];
  peerID = [keyCopy peerID];
  v8 = [custodianRecoveryKeys objectForKeyedSubscript:peerID];

  if (!v8)
  {
    custodianRecoveryKeys2 = [(TPModel *)self custodianRecoveryKeys];
    peerID2 = [keyCopy peerID];
    [custodianRecoveryKeys2 setObject:keyCopy forKeyedSubscript:peerID2];
  }

  v11 = TPModelLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    peerID3 = [keyCopy peerID];
    custodianRecoveryKeys3 = [(TPModel *)self custodianRecoveryKeys];
    v15 = 138543618;
    v16 = peerID3;
    v17 = 2048;
    v18 = [custodianRecoveryKeys3 count];
    _os_log_impl(&dword_26F78B000, v11, OS_LOG_TYPE_DEFAULT, "registerCustodianRecoveryKey %{public}@ -- size now %lu", &v15, 0x16u);
  }
}

- (BOOL)isCustodianRecoveryKeyTrusted:(id)trusted error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v5 = [(TPModel *)self possibleSponsorsForCustodianRecoveryKey:trusted block:&__block_literal_global_156 error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = TPModelLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_26F78B000, v7, OS_LOG_TYPE_DEFAULT, "Error determining possible sponsors: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v8 = v6;
      v9 = 0;
      *error = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [v5 count] != 0;
  }

  return v9;
}

- (id)peerIDThatTrustsCustodianRecoveryKeys:(id)keys canIntroducePeer:(id)peer stableInfo:(id)info error:(id *)error
{
  peerCopy = peer;
  infoCopy = info;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__TPModel_peerIDThatTrustsCustodianRecoveryKeys_canIntroducePeer_stableInfo_error___block_invoke;
  v21[3] = &unk_279DEDB90;
  v21[4] = self;
  v12 = peerCopy;
  v22 = v12;
  v13 = infoCopy;
  v23 = v13;
  v20 = 0;
  v14 = [(TPModel *)self possibleSponsorsForCustodianRecoveryKey:keys block:v21 error:&v20];
  v15 = v20;
  v16 = v15;
  if (v15)
  {
    if (error)
    {
      v17 = v15;
      anyObject = 0;
      *error = v16;
    }

    else
    {
      anyObject = 0;
    }
  }

  else
  {
    anyObject = [v14 anyObject];
  }

  return anyObject;
}

uint64_t __83__TPModel_peerIDThatTrustsCustodianRecoveryKeys_canIntroducePeer_stableInfo_error___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 peerID];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v12 = 0;
  v7 = [v4 checkIntroductionForCandidate:v5 stableInfo:v6 withSponsorID:v3 error:&v12];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    v9 = TPModelLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1[5] peerID];
      *buf = 138543874;
      v14 = v3;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_26F78B000, v9, OS_LOG_TYPE_DEFAULT, "Peer %{public}@ supports this Custodian RK, but cannot sponsor peer %{public}@: %{public}@", buf, 0x20u);
    }
  }

  return v7;
}

- (id)possibleSponsorsForCustodianRecoveryKey:(id)key block:(id)block error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  blockCopy = block;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = [MEMORY[0x277CBEB58] set];
  v11 = objc_autoreleasePoolPush();
  v12 = TPModelLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [keyCopy uuid];
    peerID = [keyCopy peerID];
    *buf = 138543618;
    *&buf[4] = uuid;
    *&buf[12] = 2114;
    *&buf[14] = peerID;
    _os_log_impl(&dword_26F78B000, v12, OS_LOG_TYPE_DEFAULT, "possibleSponsorsForCustodianRecoveryKey: %{public}@/%{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = [MEMORY[0x277CBEB58] set];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__TPModel_possibleSponsorsForCustodianRecoveryKey_block_error___block_invoke;
  v29[3] = &unk_279DEDBD8;
  v14 = keyCopy;
  v30 = v14;
  v32 = buf;
  v15 = blockCopy;
  v31 = v15;
  v33 = &v34;
  v28 = 0;
  v16 = [(TPModel *)self _iterateOverPeersWithBlock:v29 error:&v28];
  v17 = v28;
  if (!v17)
  {
    [*(*&buf[8] + 40) intersectSet:v16];
    if ([*(*&buf[8] + 40) count])
    {
      v18 = TPModelLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [v14 uuid];
        peerID2 = [v14 peerID];
        *v40 = 138543618;
        v41 = uuid2;
        v42 = 2114;
        v43 = peerID2;
        _os_log_impl(&dword_26F78B000, v18, OS_LOG_TYPE_DEFAULT, "possibleSponsorsForCustodianRecoveryKey: CRK %{public}@/%{public}@ is not trusted", v40, 0x16u);
      }

LABEL_7:

      uuid = 0;
      goto LABEL_12;
    }

    [v35[5] intersectSet:v16];
    v21 = [v35[5] count];
    v18 = TPModelLog();
    v22 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!v21)
    {
      if (v22)
      {
        *v40 = 0;
        _os_log_impl(&dword_26F78B000, v18, OS_LOG_TYPE_DEFAULT, "possibleSponsorsForCustodianRecoveryKey: no sponsors, no distrust", v40, 2u);
      }

      goto LABEL_7;
    }

    if (v22)
    {
      uuid3 = [v14 uuid];
      peerID3 = [v14 peerID];
      v25 = v35[5];
      *v40 = 138543874;
      v41 = uuid3;
      v42 = 2114;
      v43 = peerID3;
      v44 = 2114;
      v45 = v25;
      _os_log_impl(&dword_26F78B000, v18, OS_LOG_TYPE_DEFAULT, "possibleSponsorsForCustodianRecoveryKey: CRK %{public}@/%{public}@ returning %{public}@", v40, 0x20u);
    }

    uuid = v35[5];
  }

LABEL_12:

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v11);
  if (v17)
  {
    if (error)
    {
      v26 = v17;
      uuid = 0;
      *error = v17;
    }

    else
    {
      uuid = 0;
    }
  }

  _Block_object_dispose(&v34, 8);

  return uuid;
}

void __63__TPModel_possibleSponsorsForCustodianRecoveryKey_block_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 peerID];
  v4 = [v13 dynamicInfo];
  v5 = [v4 excludedPeerIDs];
  v6 = [*(a1 + 32) peerID];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = *(a1 + 48);
LABEL_3:
    [*(*(v8 + 8) + 40) addObject:v3];
    goto LABEL_8;
  }

  v9 = [v13 dynamicInfo];
  v10 = [v9 includedPeerIDs];
  v11 = [*(a1 + 32) peerID];
  if ([v10 containsObject:v11])
  {
    v12 = (*(*(a1 + 40) + 16))();

    if (v12)
    {
      v8 = *(a1 + 56);
      goto LABEL_3;
    }
  }

  else
  {
  }

LABEL_8:
}

- (void)setRecoveryKeys:(id)keys
{
  v25 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  recoverySigningPubKey = [(TPModel *)self recoverySigningPubKey];
  signingKeyData = [keysCopy signingKeyData];
  if ([recoverySigningPubKey isEqualToData:signingKeyData])
  {
    recoveryEncryptionPubKey = [(TPModel *)self recoveryEncryptionPubKey];
    encryptionKeyData = [keysCopy encryptionKeyData];
    v9 = [recoveryEncryptionPubKey isEqualToData:encryptionKeyData];

    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = TPModelLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    recoverySigningPubKey2 = [(TPModel *)self recoverySigningPubKey];
    recoveryEncryptionPubKey2 = [(TPModel *)self recoveryEncryptionPubKey];
    signingKeyData2 = [keysCopy signingKeyData];
    encryptionKeyData2 = [keysCopy encryptionKeyData];
    v17 = 138544130;
    v18 = recoverySigningPubKey2;
    v19 = 2114;
    v20 = recoveryEncryptionPubKey2;
    v21 = 2114;
    v22 = signingKeyData2;
    v23 = 2114;
    v24 = encryptionKeyData2;
    _os_log_impl(&dword_26F78B000, v10, OS_LOG_TYPE_DEFAULT, "Recovery Keys changed! currently set signingKey: %{public}@, currently set encryptionKey: %{public}@, new signingKey: %{public}@, new encryption Key: %{public}@", &v17, 0x2Au);
  }

LABEL_8:
  encryptionKeyData3 = [keysCopy encryptionKeyData];
  [(TPModel *)self setRecoveryEncryptionPubKey:encryptionKeyData3];

  signingKeyData3 = [keysCopy signingKeyData];
  [(TPModel *)self setRecoverySigningPubKey:signingKeyData3];
}

- (void)removeRecoveryKey
{
  [(TPModel *)self setRecoverySigningPubKey:0];

  [(TPModel *)self setRecoveryEncryptionPubKey:0];
}

- (BOOL)isRecoveryKeyEnrolledWithError:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  recoverySigningPubKey = [(TPModel *)self recoverySigningPubKey];
  if (!recoverySigningPubKey)
  {
    return 0;
  }

  v6 = recoverySigningPubKey;
  recoveryEncryptionPubKey = [(TPModel *)self recoveryEncryptionPubKey];

  if (!recoveryEncryptionPubKey)
  {
    return 0;
  }

  v8 = [TPRecoveryKeyPair alloc];
  recoverySigningPubKey2 = [(TPModel *)self recoverySigningPubKey];
  recoveryEncryptionPubKey2 = [(TPModel *)self recoveryEncryptionPubKey];
  v11 = [(TPRecoveryKeyPair *)v8 initWithSigningKeyData:recoverySigningPubKey2 encryptionKeyData:recoveryEncryptionPubKey2];

  v18 = 0;
  v12 = [(TPModel *)self possibleSponsorsForRecoveryKey:v11 block:&__block_literal_global_154 error:&v18];
  v13 = v18;
  if (v13)
  {
    v14 = TPModelLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_26F78B000, v14, OS_LOG_TYPE_DEFAULT, "Error determining possible sponsors: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v15 = v13;
      v16 = 0;
      *error = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = [v12 count] != 0;
  }

  return v16;
}

- (id)peerIDThatTrustsRecoveryKeys:(id)keys canIntroducePeer:(id)peer stableInfo:(id)info error:(id *)error
{
  peerCopy = peer;
  infoCopy = info;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__TPModel_peerIDThatTrustsRecoveryKeys_canIntroducePeer_stableInfo_error___block_invoke;
  v18[3] = &unk_279DEDB90;
  v18[4] = self;
  v19 = peerCopy;
  v20 = infoCopy;
  v12 = infoCopy;
  v13 = peerCopy;
  v14 = [(TPModel *)self possibleSponsorsForRecoveryKey:keys block:v18 error:error];
  v15 = v14;
  if (*error)
  {
    anyObject = 0;
  }

  else
  {
    anyObject = [v14 anyObject];
  }

  return anyObject;
}

uint64_t __74__TPModel_peerIDThatTrustsRecoveryKeys_canIntroducePeer_stableInfo_error___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 peerID];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v12 = 0;
  v7 = [v4 checkIntroductionForCandidate:v5 stableInfo:v6 withSponsorID:v3 error:&v12];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    v9 = TPModelLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1[5] peerID];
      *buf = 138543874;
      v14 = v3;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_26F78B000, v9, OS_LOG_TYPE_DEFAULT, "Peer %{public}@ supports this recovery key, but cannot sponsor peer %{public}@: %{public}@", buf, 0x20u);
    }
  }

  return v7;
}

- (id)possibleSponsorsForRecoveryKey:(id)key block:(id)block error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  blockCopy = block;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = [MEMORY[0x277CBEB58] set];
  v11 = objc_autoreleasePoolPush();
  v12 = TPModelLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    signingKeyData = [keyCopy signingKeyData];
    encryptionKeyData = [keyCopy encryptionKeyData];
    *buf = 138543618;
    *&buf[4] = signingKeyData;
    *&buf[12] = 2114;
    *&buf[14] = encryptionKeyData;
    _os_log_impl(&dword_26F78B000, v12, OS_LOG_TYPE_DEFAULT, "possibleSponsorsForRecoveryKey: sign %{public}@, enc %{public}@", buf, 0x16u);
  }

  signingKeyData2 = [keyCopy signingKeyData];
  v15 = [(TPModel *)self recoveryKeyPeerID:signingKeyData2];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = [MEMORY[0x277CBEB58] set];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __54__TPModel_possibleSponsorsForRecoveryKey_block_error___block_invoke;
  v28[3] = &unk_279DEDB68;
  v16 = v15;
  v29 = v16;
  v32 = buf;
  v17 = keyCopy;
  v30 = v17;
  v18 = blockCopy;
  v31 = v18;
  v33 = &v34;
  v27 = 0;
  v19 = [(TPModel *)self _iterateOverPeersWithBlock:v28 error:&v27];
  v20 = v27;
  if (!v20)
  {
    [*(*&buf[8] + 40) intersectSet:v19];
    if ([*(*&buf[8] + 40) count])
    {
      v21 = TPModelLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&dword_26F78B000, v21, OS_LOG_TYPE_DEFAULT, "possibleSponsorsForRecoveryKey: registered recovery key is not trusted", v40, 2u);
      }

LABEL_7:

      encryptionKeyData = 0;
      goto LABEL_12;
    }

    [v35[5] intersectSet:v19];
    v22 = [v35[5] count];
    v21 = TPModelLog();
    v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (!v22)
    {
      if (v23)
      {
        *v40 = 0;
        _os_log_impl(&dword_26F78B000, v21, OS_LOG_TYPE_DEFAULT, "possibleSponsorsForRecoveryKey: no sponsors, no distrust", v40, 2u);
      }

      goto LABEL_7;
    }

    if (v23)
    {
      v24 = v35[5];
      *v40 = 138543362;
      v41 = v24;
      _os_log_impl(&dword_26F78B000, v21, OS_LOG_TYPE_DEFAULT, "possibleSponsorsForRecoveryKey: returning %{public}@", v40, 0xCu);
    }

    encryptionKeyData = v35[5];
  }

LABEL_12:

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v11);
  if (v20)
  {
    if (error)
    {
      v25 = v20;
      encryptionKeyData = 0;
      *error = v20;
    }

    else
    {
      encryptionKeyData = 0;
    }
  }

  _Block_object_dispose(&v34, 8);

  return encryptionKeyData;
}

void __54__TPModel_possibleSponsorsForRecoveryKey_block_error___block_invoke(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [v25 peerID];
  v4 = [v25 dynamicInfo];
  v5 = [v4 excludedPeerIDs];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (v6)
  {
    v7 = *(a1 + 56);
LABEL_3:
    [*(*(v7 + 8) + 40) addObject:v3];
    goto LABEL_13;
  }

  v8 = [v25 stableInfo];
  if (v8)
  {
    v9 = v8;
    v10 = [v25 stableInfo];
    v11 = [v10 recoverySigningPublicKey];
    if (v11)
    {
      v12 = v11;
      v13 = [v25 stableInfo];
      v14 = [v13 recoveryEncryptionPublicKey];
      if (v14)
      {
        v15 = v14;
        v16 = [*(a1 + 40) signingKeyData];
        v17 = [v25 stableInfo];
        v18 = [v17 recoverySigningPublicKey];
        if ([v16 isEqualToData:v18])
        {
          v22 = v17;
          v24 = v16;
          v19 = [*(a1 + 40) encryptionKeyData];
          v21 = [v25 stableInfo];
          v20 = [v21 recoveryEncryptionPublicKey];
          if ([v19 isEqualToData:v20])
          {
            v23 = (*(*(a1 + 48) + 16))();
          }

          else
          {
            v23 = 0;
          }

          if (!v23)
          {
            goto LABEL_13;
          }

          v7 = *(a1 + 64);
          goto LABEL_3;
        }
      }
    }
  }

LABEL_13:
}

- (id)untrustedPeerIDsWithError:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [MEMORY[0x277CBEB58] set];
  v10 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__TPModel_untrustedPeerIDsWithError___block_invoke;
  v11[3] = &unk_279DED8D0;
  v11[4] = &v12;
  [(TPModel *)self enumeratePeersUsingBlock:v11 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      v8 = 0;
      *error = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __37__TPModel_untrustedPeerIDsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [a2 dynamicInfo];
  v3 = [v5 excludedPeerIDs];
  if (v3)
  {
    [v2 unionSet:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
    [v2 unionSet:v4];
  }
}

- (id)bestWebAccessForStableInfo:(id)info webAccessStableChanges:(id)changes error:(id *)error
{
  infoCopy = info;
  changesCopy = changes;
  v22 = 0;
  webAccess4 = [(TPModel *)self bestWebAccessAcrossTrustedPeersWithError:&v22];
  v11 = v22;
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      webAccess3 = 0;
      *error = v12;
    }

    else
    {
      webAccess3 = 0;
    }
  }

  else
  {
    if (changesCopy && webAccess4)
    {
      clock = [webAccess4 clock];
      webAccess = [infoCopy webAccess];
      if (clock == [webAccess clock])
      {
        webAccess2 = [infoCopy webAccess];
        value = [webAccess2 value];
        value2 = [changesCopy value];

        if (value == value2)
        {
          webAccess3 = [infoCopy webAccess];
          goto LABEL_19;
        }
      }

      else
      {
      }

      [webAccess4 setClock:{objc_msgSend(webAccess4, "clock") + 1}];
      [webAccess4 setValue:{objc_msgSend(changesCopy, "value")}];
    }

    else
    {
      if (changesCopy && !webAccess4)
      {
        webAccess4 = [changesCopy copy];
        [webAccess4 setClock:0];
      }

      if (!webAccess4)
      {
        webAccess4 = [infoCopy webAccess];

        if (webAccess4)
        {
          webAccess5 = [infoCopy webAccess];
          webAccess4 = [webAccess5 copy];

          [webAccess4 setClock:0];
        }
      }
    }

    webAccess3 = webAccess4;
    webAccess4 = webAccess3;
  }

LABEL_19:

  return webAccess3;
}

- (id)bestWebAccessAcrossTrustedPeersWithError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__TPModel_bestWebAccessAcrossTrustedPeersWithError___block_invoke;
  v23[3] = &unk_279DED8A8;
  v23[4] = &v24;
  v7 = [(TPModel *)self _iterateOverPeersWithBlock:v23 error:&v22];
  v8 = v22;
  if (!v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v25[5];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v7 containsObject:{v14, v18}])
          {
            v15 = [v25[5] objectForKeyedSubscript:v14];
            [array addObject:v15];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v11);
    }

    v3 = [TPModel pickClock:array];
  }

  _Block_object_dispose(&v24, 8);
  objc_autoreleasePoolPop(v6);
  if (v8)
  {
    if (error)
    {
      v16 = v8;
      v3 = 0;
      *error = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __52__TPModel_bestWebAccessAcrossTrustedPeersWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 peerID];
  v4 = [v3 stableInfo];

  v5 = [v4 webAccess];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v6];
}

- (id)bestWalrusAcrossTrustedPeersWithError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __49__TPModel_bestWalrusAcrossTrustedPeersWithError___block_invoke;
  v23[3] = &unk_279DED8A8;
  v23[4] = &v24;
  v7 = [(TPModel *)self _iterateOverPeersWithBlock:v23 error:&v22];
  v8 = v22;
  if (!v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v25[5];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v7 containsObject:{v14, v18}])
          {
            v15 = [v25[5] objectForKeyedSubscript:v14];
            [array addObject:v15];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v11);
    }

    v3 = [TPModel pickClock:array];
  }

  _Block_object_dispose(&v24, 8);
  objc_autoreleasePoolPop(v6);
  if (v8)
  {
    if (error)
    {
      v16 = v8;
      v3 = 0;
      *error = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __49__TPModel_bestWalrusAcrossTrustedPeersWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 peerID];
  v4 = [v3 stableInfo];

  v5 = [v4 walrusSetting];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v6];
}

- (unint64_t)trustedFullPeerCountWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v28 = 0;
  v6 = [(TPModel *)self trustedPeers:&v28];
  v7 = v28;
  if (v7)
  {

    objc_autoreleasePoolPop(v5);
    if (error)
    {
      v8 = v7;
      v9 = 0;
      *error = v7;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v11)
  {

    objc_autoreleasePoolPop(v5);
    goto LABEL_15;
  }

  v12 = v11;
  context = v5;
  v9 = 0;
  v13 = *v25;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      v23 = 0;
      v16 = [(TPModel *)self peerWithID:v15 error:&v23];
      v17 = v16;
      if (v16)
      {
        permanentInfo = [v16 permanentInfo];
        modelID = [permanentInfo modelID];
        v20 = [TPModel isFullPeer:modelID];

        v9 += v20;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  }

  while (v12);

  objc_autoreleasePoolPop(context);
  v7 = 0;
LABEL_16:

  return v9;
}

- (unint64_t)trustedPeerCountWithError:(id *)error
{
  v5 = objc_autoreleasePoolPush();
  v11 = 0;
  v6 = [(TPModel *)self trustedPeers:&v11];
  v7 = v11;
  if (v7)
  {

    objc_autoreleasePoolPop(v5);
    if (error)
    {
      v8 = v7;
      v9 = 0;
      *error = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [v6 count];

    objc_autoreleasePoolPop(v5);
  }

  return v9;
}

- (id)trustedPeers:(id *)peers
{
  v5 = objc_autoreleasePoolPush();
  v11 = 0;
  v6 = [(TPModel *)self _iterateOverPeersWithBlock:&__block_literal_global error:&v11];
  v7 = v11;
  v8 = 0;
  if (!v7)
  {
    v8 = v6;
  }

  objc_autoreleasePoolPop(v5);
  if (peers)
  {
    v9 = v7;
    *peers = v7;
  }

  return v8;
}

- (id)bestWalrusForStableInfo:(id)info walrusStableChanges:(id)changes error:(id *)error
{
  infoCopy = info;
  changesCopy = changes;
  v22 = 0;
  walrusSetting4 = [(TPModel *)self bestWalrusAcrossTrustedPeersWithError:&v22];
  v11 = v22;
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      walrusSetting3 = 0;
      *error = v12;
    }

    else
    {
      walrusSetting3 = 0;
    }
  }

  else
  {
    if (changesCopy && walrusSetting4)
    {
      clock = [walrusSetting4 clock];
      walrusSetting = [infoCopy walrusSetting];
      if (clock == [walrusSetting clock])
      {
        walrusSetting2 = [infoCopy walrusSetting];
        value = [walrusSetting2 value];
        value2 = [changesCopy value];

        if (value == value2)
        {
          walrusSetting3 = [infoCopy walrusSetting];
          goto LABEL_19;
        }
      }

      else
      {
      }

      [walrusSetting4 setClock:{objc_msgSend(walrusSetting4, "clock") + 1}];
      [walrusSetting4 setValue:{objc_msgSend(changesCopy, "value")}];
    }

    else
    {
      if (changesCopy && !walrusSetting4)
      {
        walrusSetting4 = [changesCopy copy];
        [walrusSetting4 setClock:0];
      }

      if (!walrusSetting4)
      {
        walrusSetting4 = [infoCopy walrusSetting];

        if (walrusSetting4)
        {
          walrusSetting5 = [infoCopy walrusSetting];
          walrusSetting4 = [walrusSetting5 copy];

          [walrusSetting4 setClock:0];
        }
      }
    }

    walrusSetting3 = walrusSetting4;
    walrusSetting4 = walrusSetting3;
  }

LABEL_19:

  return walrusSetting3;
}

- (id)bestRecoveryKeyForStableInfo:(id)info vouchers:(id)vouchers error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  vouchersCopy = vouchers;
  v10 = [[TPRecoveryKeyPair alloc] initWithStableInfo:infoCopy];
  signingKeyData = [(TPRecoveryKeyPair *)v10 signingKeyData];
  v12 = [(TPModel *)self recoveryKeyPeerID:signingKeyData];

  v13 = objc_autoreleasePoolPush();
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = [MEMORY[0x277CBEB58] set];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = [MEMORY[0x277CBEB58] set];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__TPModel_bestRecoveryKeyForStableInfo_vouchers_error___block_invoke;
  v33[3] = &unk_279DEDB00;
  v14 = v12;
  v34 = v14;
  v37 = &v39;
  v15 = vouchersCopy;
  v35 = v15;
  selfCopy = self;
  v38 = &v45;
  v32 = 0;
  v16 = [(TPModel *)self _iterateOverPeersWithBlock:v33 error:&v32];
  v17 = v32;
  if (v17)
  {
    v18 = v17;
    v19 = 0;
LABEL_3:
    LODWORD(anyObject) = 1;
    goto LABEL_7;
  }

  [v40[5] intersectSet:v16];
  if (![v40[5] count])
  {
    [v46[5] intersectSet:v16];
    anyObject = [v46[5] anyObject];
    if (!anyObject)
    {
      goto LABEL_6;
    }

    v31 = 0;
    v30 = [(TPModel *)self peerWithID:anyObject error:&v31];
    v18 = v31;
    if (v30)
    {
      v24 = [TPRecoveryKeyPair alloc];
      stableInfo = [v30 stableInfo];
      v19 = [(TPRecoveryKeyPair *)v24 initWithStableInfo:stableInfo];
LABEL_25:

      goto LABEL_3;
    }

    stableInfo = TPModelLog();
    v26 = os_log_type_enabled(stableInfo, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v26)
      {
        *buf = 138543618;
        v52 = anyObject;
        v53 = 2114;
        v54 = v18;
        v27 = "Error finding peer %{public}@: %{public}@";
        v28 = stableInfo;
        v29 = 22;
LABEL_23:
        _os_log_impl(&dword_26F78B000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      }
    }

    else if (v26)
    {
      *buf = 138543362;
      v52 = anyObject;
      v27 = "Peer not in DB %{public}@";
      v28 = stableInfo;
      v29 = 12;
      goto LABEL_23;
    }

    v19 = 0;
    goto LABEL_25;
  }

  [(TPModel *)self removeRecoveryKey];
  LODWORD(anyObject) = 0;
LABEL_6:
  v18 = 0;
  v19 = 0;
LABEL_7:

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  objc_autoreleasePoolPop(v13);
  if (anyObject)
  {
    if (error)
    {
      v21 = v18;
      *error = v18;
    }

    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __55__TPModel_bestRecoveryKeyForStableInfo_vouchers_error___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 peerID];
  v5 = [v3 dynamicInfo];
  v6 = [v5 excludedPeerIDs];
  v7 = [v6 containsObject:*(a1 + 32)];

  v8 = v4;
  v9 = a1;

  if (v7)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v8];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 40);
  v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  v42 = a1;
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    v40 = v8;
    v41 = *v46;
    do
    {
      v13 = 0;
      v43 = v11;
      do
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * v13);
        v15 = [v14 sponsorID];
        v16 = [v8 isEqualToString:v15];

        if (v16)
        {
          v17 = [v3 stableInfo];
          v18 = [v17 recoverySigningPublicKey];
          if (!v18)
          {
            goto LABEL_15;
          }

          v19 = v18;
          v20 = [*(v9 + 48) recoverySigningPubKey];
          if (!v20)
          {

            v11 = v43;
LABEL_15:

            goto LABEL_16;
          }

          v21 = v20;
          [v3 stableInfo];
          v23 = v22 = v3;
          v24 = [v23 recoverySigningPublicKey];
          v25 = [*(v9 + 48) recoverySigningPubKey];
          v26 = [v24 isEqualToData:v25];

          v9 = v42;
          v12 = v41;

          v3 = v22;
          v8 = v40;

          v11 = v43;
          if (v26)
          {
            v27 = [v3 stableInfo];
            v28 = [v27 recoverySigningPublicKey];
            v29 = [v14 createRecoveryECPublicKey:v28];
            v30 = [v14 checkSignatureWithKey:v29];

            v12 = v41;
            v9 = v42;
            if (v30)
            {
              [*(*(*(v42 + 64) + 8) + 40) addObject:v40];
              goto LABEL_18;
            }
          }
        }

LABEL_16:
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v11);
  }

LABEL_18:

  v31 = [v3 stableInfo];

  if (v31)
  {
    v32 = v8;
    v33 = [v3 stableInfo];
    v34 = [v33 recoverySigningPublicKey];
    v35 = [*(v42 + 48) recoverySigningPubKey];
    if ([v34 isEqualToData:v35])
    {
      v36 = [v3 stableInfo];
      v37 = [v36 recoveryEncryptionPublicKey];
      v38 = [*(v42 + 48) recoveryEncryptionPubKey];
      v39 = [v37 isEqualToData:v38];

      v8 = v32;
      if (v39)
      {
        [*(*(*(v42 + 64) + 8) + 40) addObject:v32];
      }
    }

    else
    {

      v8 = v32;
    }
  }
}

- (BOOL)doesOctagonContainDistrustedRecoveryKeysWithError:(id *)error
{
  v6 = objc_autoreleasePoolPush();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = [MEMORY[0x277CBEB58] set];
  v11 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__TPModel_doesOctagonContainDistrustedRecoveryKeysWithError___block_invoke;
  v12[3] = &unk_279DED8A8;
  v12[4] = &v13;
  v7 = [(TPModel *)self _iterateOverPeersWithBlock:v12 error:&v11];
  v8 = v11;
  if (!v8)
  {
    [v14[5] intersectSet:v7];
    v3 = [v14[5] count] != 0;
  }

  _Block_object_dispose(&v13, 8);
  objc_autoreleasePoolPop(v6);
  if (v8)
  {
    if (error)
    {
      v9 = v8;
      v3 = 0;
      *error = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __61__TPModel_doesOctagonContainDistrustedRecoveryKeysWithError___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 peerID];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 dynamicInfo];
  v6 = [v5 excludedPeerIDs];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsString:@"RK-"])
        {
          [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (unint64_t)countOfDistrustedRecoveryKeys
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__TPModel_countOfDistrustedRecoveryKeys__block_invoke;
  v10[3] = &unk_279DED920;
  v5 = dictionary;
  v11 = v5;
  v9 = 0;
  [(TPModel *)self enumeratePeersUsingBlock:v10 error:&v9];
  v6 = v9;

  objc_autoreleasePoolPop(v4);
  v7 = [v5 count];

  return v7;
}

void __40__TPModel_countOfDistrustedRecoveryKeys__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 dynamicInfo];
  v4 = [v3 excludedPeerIDs];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 containsString:@"RK-"])
        {
          [*(a1 + 32) setObject:v9 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)vectorClockWithError:(id *)error
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__TPModel_vectorClockWithError___block_invoke;
  v13[3] = &unk_279DED920;
  v6 = dictionary;
  v14 = v6;
  v12 = 0;
  [(TPModel *)self enumeratePeersUsingBlock:v13 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

void __32__TPModel_vectorClockWithError___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 stableInfo];
  if (v3)
  {

LABEL_4:
    v5 = [v13 stableInfo];
    v6 = [v5 clock];

    v7 = [v13 dynamicInfo];
    v8 = [v7 clock];

    if (v6 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    v11 = *(a1 + 32);
    v12 = [v13 peerID];
    [v11 setObject:v10 forKeyedSubscript:v12];

    goto LABEL_8;
  }

  v4 = [v13 dynamicInfo];

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_8:
}

- (id)getPeerIDsTrustedByPeerWithDynamicInfo:(id)info toAccessView:(id)view error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  viewCopy = view;
  includedPeerIDs = [infoCopy includedPeerIDs];
  v10 = [MEMORY[0x277CBEB58] set];
  v40 = 0;
  v31 = [(TPModel *)self policyForPeerIDs:includedPeerIDs candidatePeerID:0 candidateStableInfo:0 error:&v40];
  v11 = v40;
  if (!v11)
  {
    v29 = v10;
    v27 = includedPeerIDs;
    v28 = infoCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = includedPeerIDs;
    v34 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    v12 = 0;
    if (!v34)
    {
      goto LABEL_20;
    }

    v33 = *v37;
    while (1)
    {
      for (i = 0; i != v34; ++i)
      {
        v16 = v12;
        if (*v37 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v35 = v12;
        v19 = [(TPModel *)self peerWithID:v17 error:&v35];
        v12 = v35;

        if (v19)
        {
          permanentInfo = [v19 permanentInfo];
          modelID = [permanentInfo modelID];
          v22 = [v31 categoryForModel:modelID];

          if ([v31 peerInCategory:v22 canAccessView:viewCopy])
          {
            [v29 addObject:v17];
          }
        }

        else
        {
          v22 = TPModelLog();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if (v12)
          {
            if (!v23)
            {
              goto LABEL_18;
            }

            *buf = 138543618;
            v42 = v17;
            v43 = 2114;
            v44 = v12;
            v24 = v22;
            v25 = "Error finding peer %{public}@: %{public}@";
          }

          else
          {
            if (!v23)
            {
              goto LABEL_18;
            }

            *buf = 138543618;
            v42 = v17;
            v43 = 2114;
            v44 = 0;
            v24 = v22;
            v25 = "Peer not in DB %{public}@: %{public}@";
          }

          _os_log_impl(&dword_26F78B000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
        }

LABEL_18:

        objc_autoreleasePoolPop(v18);
      }

      v34 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (!v34)
      {
LABEL_20:

        v10 = v29;
        v14 = v29;
        includedPeerIDs = v27;
        infoCopy = v28;
        goto LABEL_22;
      }
    }
  }

  v12 = v11;
  if (error)
  {
    v13 = v11;
    v14 = 0;
    *error = v12;
  }

  else
  {
    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (id)getPeerIDsTrustedByPeerWithID:(id)d toAccessView:(id)view error:(id *)error
{
  viewCopy = view;
  v9 = [(TPModel *)self actualPeerWithID:d error:error];
  v10 = v9;
  if (v9)
  {
    dynamicInfo = [v9 dynamicInfo];
    v12 = [(TPModel *)self getPeerIDsTrustedByPeerWithDynamicInfo:dynamicInfo toAccessView:viewCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getViewsForCRK:(id)k donorPermanentInfo:(id)info donorStableInfo:(id)stableInfo error:(id *)error
{
  kCopy = k;
  infoCopy = info;
  stableInfoCopy = stableInfo;
  v13 = [(TPModel *)self getViewsForPeer:infoCopy stableInfo:stableInfoCopy error:error];
  v14 = [v13 mutableCopy];

  if (v14)
  {
    if ([kCopy kind] != 2)
    {
LABEL_9:
      v19 = v14;
      goto LABEL_11;
    }

    v15 = MEMORY[0x277CBEB98];
    peerID = [infoCopy peerID];
    v17 = [v15 setWithObject:peerID];
    peerID2 = [infoCopy peerID];
    v19 = [(TPModel *)self policyForPeerIDs:v17 candidatePeerID:peerID2 candidateStableInfo:stableInfoCopy error:error];

    if (!v19)
    {
      goto LABEL_11;
    }

    inheritedExcludedViews = [v19 inheritedExcludedViews];
    version = [v19 version];
    if ([version versionNumber] <= 0xB)
    {
      v22 = [inheritedExcludedViews count];

      if (v22)
      {
LABEL_8:
        [v14 minusSet:inheritedExcludedViews];

        goto LABEL_9;
      }

      [MEMORY[0x277CBEB98] setWithArray:&unk_287FD1A28];
      inheritedExcludedViews = version = inheritedExcludedViews;
    }

    goto LABEL_8;
  }

  v19 = 0;
LABEL_11:

  return v19;
}

- (id)getViewsForPeer:(id)peer stableInfo:(id)info error:(id *)error
{
  peerCopy = peer;
  v9 = MEMORY[0x277CBEB98];
  infoCopy = info;
  peerID = [peerCopy peerID];
  v12 = [v9 setWithObject:peerID];
  peerID2 = [peerCopy peerID];
  v14 = [(TPModel *)self policyForPeerIDs:v12 candidatePeerID:peerID2 candidateStableInfo:infoCopy error:error];

  if (v14)
  {
    modelID = [peerCopy modelID];
    v16 = [v14 viewsForModel:modelID error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)considerPolicyFromPeerID:(id)d stableInfo:(id)info secrets:(id)secrets newestPolicyDoc:(id *)doc error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  secretsCopy = secrets;
  if (!infoCopy)
  {
    v27 = 1;
    goto LABEL_25;
  }

  v57 = dCopy;
  docCopy = doc;
  errorCopy = error;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  policySecrets = [infoCopy policySecrets];
  v16 = [policySecrets countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v62;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(policySecrets);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        policySecrets2 = [infoCopy policySecrets];
        v22 = [policySecrets2 objectForKeyedSubscript:v20];
        [secretsCopy setObject:v22 forKeyedSubscript:v20];
      }

      v17 = [policySecrets countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v17);
  }

  if (!*docCopy || ([*docCopy version], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "versionNumber"), objc_msgSend(infoCopy, "bestPolicyVersion"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "versionNumber"), v25, v23, v24 <= v26))
  {
    dbAdapter = [(TPModel *)self dbAdapter];
    bestPolicyVersion = [infoCopy bestPolicyVersion];
    v60 = 0;
    v30 = [dbAdapter policyWithVersion:objc_msgSend(bestPolicyVersion error:{"versionNumber"), &v60}];
    v31 = v60;

    dCopy = v57;
    if (v31)
    {
      if (errorCopy)
      {
        v32 = v31;
        v27 = 0;
        *errorCopy = v31;
LABEL_24:

        goto LABEL_25;
      }
    }

    else if (v30)
    {
      version = [v30 version];
      policyHash = [version policyHash];
      bestPolicyVersion2 = [infoCopy bestPolicyVersion];
      policyHash2 = [bestPolicyVersion2 policyHash];
      v37 = [policyHash isEqualToString:policyHash2];

      if (v37)
      {
        v38 = v30;
        *docCopy = v30;
        v27 = 1;
        goto LABEL_24;
      }

      if (errorCopy)
      {
        v53 = TPErrorDomain;
        v54 = MEMORY[0x277CCA9B8];
        v66[0] = v57;
        v65[0] = @"peerID";
        v65[1] = @"policyVersion";
        v45 = MEMORY[0x277CCABB0];
        bestPolicyVersion3 = [infoCopy bestPolicyVersion];
        v55 = [v45 numberWithUnsignedLongLong:{objc_msgSend(bestPolicyVersion3, "versionNumber")}];
        v66[1] = v55;
        v65[2] = @"policyDocHash";
        v46 = v30;
        version2 = [v30 version];
        policyHash3 = [version2 policyHash];
        v66[2] = policyHash3;
        v65[3] = @"peerExpectsHash";
        bestPolicyVersion4 = [infoCopy bestPolicyVersion];
        policyHash4 = [bestPolicyVersion4 policyHash];
        v66[3] = policyHash4;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:4];
        *errorCopy = [v54 errorWithDomain:v53 code:2 userInfo:v51];

        v30 = v46;
      }
    }

    else if (errorCopy)
    {
      v39 = MEMORY[0x277CCA9B8];
      v40 = TPErrorDomain;
      v67[0] = @"peerID";
      v67[1] = @"policyVersion";
      v68[0] = v57;
      v41 = MEMORY[0x277CCABB0];
      bestPolicyVersion5 = [infoCopy bestPolicyVersion];
      v43 = [v41 numberWithUnsignedLongLong:{objc_msgSend(bestPolicyVersion5, "versionNumber")}];
      v68[1] = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
      *errorCopy = [v39 errorWithDomain:v40 code:1 userInfo:v44];
    }

    v27 = 0;
    goto LABEL_24;
  }

  v27 = 1;
  dCopy = v57;
LABEL_25:

  return v27;
}

- (id)policyForPeerIDs:(id)ds candidatePeerID:(id)d candidateStableInfo:(id)info error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  infoCopy = info;
  if (![dsCopy count])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:TPErrorDomain code:8 userInfo:0];
      *error = v30 = 0;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_35;
  }

  errorCopy = error;
  v36 = infoCopy;
  v37 = dCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = dsCopy;
  obj = dsCopy;
  v13 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_25;
  }

  v14 = v13;
  v15 = 0;
  v40 = *v47;
  while (2)
  {
    v16 = 0;
    v17 = v15;
    do
    {
      if (*v47 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v46 + 1) + 8 * v16);
      v19 = objc_autoreleasePoolPush();
      v45 = 0;
      v20 = [(TPModel *)self peerWithID:v18 error:&v45];
      v21 = v45;
      if (!v20)
      {
        v22 = TPModelLog();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          if (v23)
          {
            *buf = 138543618;
            v51 = v18;
            v52 = 2114;
            v53 = v21;
            v24 = v22;
            v25 = "Error finding peer %{public}@: %{public}@";
LABEL_13:
            _os_log_impl(&dword_26F78B000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
          }
        }

        else if (v23)
        {
          *buf = 138543618;
          v51 = v18;
          v52 = 2114;
          v53 = 0;
          v24 = v22;
          v25 = "Peer not in DB %{public}@: %{public}@";
          goto LABEL_13;
        }
      }

      stableInfo = [v20 stableInfo];
      v43 = 0;
      v44 = v17;
      v27 = [(TPModel *)self considerPolicyFromPeerID:v18 stableInfo:stableInfo secrets:dictionary newestPolicyDoc:&v44 error:&v43];
      v15 = v44;

      v28 = v43;
      objc_autoreleasePoolPop(v19);
      if (!v27)
      {
        if (errorCopy)
        {
          v29 = v28;
          *errorCopy = v28;
        }

        v30 = 0;
        dCopy = v37;
        dsCopy = v38;
        infoCopy = v36;
        goto LABEL_34;
      }

      ++v16;
      v17 = v15;
    }

    while (v14 != v16);
    v14 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_25:
  v31 = v15;

  v42 = v15;
  infoCopy = v36;
  dCopy = v37;
  v32 = [(TPModel *)self considerPolicyFromPeerID:v37 stableInfo:v36 secrets:dictionary newestPolicyDoc:&v42 error:errorCopy];
  v15 = v42;

  if (!v32)
  {
    goto LABEL_32;
  }

  if (!v15)
  {
    if (errorCopy)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:TPErrorDomain code:3 userInfo:0];
      v15 = 0;
      *errorCopy = v30 = 0;
      goto LABEL_33;
    }

    v15 = 0;
LABEL_32:
    v30 = 0;
    goto LABEL_33;
  }

  decrypter = [(TPModel *)self decrypter];
  v30 = [v15 policyWithSecrets:dictionary decrypter:decrypter error:errorCopy];

LABEL_33:
  dsCopy = v38;
LABEL_34:

LABEL_35:

  return v30;
}

- (id)dynamicInfoForJoiningPeerID:(id)d peerPermanentInfo:(id)info peerStableInfo:(id)stableInfo sponsorID:(id)iD preapprovedKeys:(id)keys signingKeyPair:(id)pair currentMachineIDs:(id)ds error:(id *)self0
{
  v70 = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  stableInfoCopy = stableInfo;
  iDCopy = iD;
  keysCopy = keys;
  pairCopy = pair;
  dsCopy = ds;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy_;
  v62 = __Block_byref_object_dispose_;
  v49 = dCopy;
  v63 = [MEMORY[0x277CBEB58] setWithObject:dCopy];
  v20 = [MEMORY[0x277CBEB98] set];
  if (!iDCopy)
  {
    goto LABEL_13;
  }

  v57 = 0;
  v21 = [(TPModel *)self peerWithID:iDCopy error:&v57];
  v22 = v57;
  if (!v21)
  {
    dynamicInfo2 = TPModelLog();
    v28 = os_log_type_enabled(dynamicInfo2, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (!v28)
      {
        goto LABEL_10;
      }

      *buf = 138543618;
      v65 = iDCopy;
      v66 = 2114;
      v67 = v22;
      v29 = "Error finding peer %{public}@: %{public}@";
    }

    else
    {
      if (!v28)
      {
        goto LABEL_10;
      }

      *buf = 138543618;
      v65 = iDCopy;
      v66 = 2114;
      v67 = 0;
      v29 = "Peer not in DB %{public}@: %{public}@";
    }

    _os_log_impl(&dword_26F78B000, dynamicInfo2, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
    goto LABEL_10;
  }

  v23 = v59[5];
  dynamicInfo = [v21 dynamicInfo];
  includedPeerIDs = [dynamicInfo includedPeerIDs];
  [v23 unionSet:includedPeerIDs];

  dynamicInfo2 = [v21 dynamicInfo];
  excludedPeerIDs = [dynamicInfo2 excludedPeerIDs];

  v20 = excludedPeerIDs;
LABEL_10:

  v30 = TPModelLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v59[5];
    *buf = 138543874;
    v65 = iDCopy;
    v66 = 2114;
    v67 = v31;
    v68 = 2114;
    v69 = v20;
    _os_log_impl(&dword_26F78B000, v30, OS_LOG_TYPE_DEFAULT, "From our sponsor (%{public}@), included: %{public}@ excluded: %{public}@", buf, 0x20u);
  }

LABEL_13:
  if (keysCopy)
  {
    publicKey = [pairCopy publicKey];
    spki = [publicKey spki];

    v34 = MEMORY[0x277CCAC30];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __137__TPModel_dynamicInfoForJoiningPeerID_peerPermanentInfo_peerStableInfo_sponsorID_preapprovedKeys_signingKeyPair_currentMachineIDs_error___block_invoke;
    v55[3] = &unk_279DEDAB0;
    v35 = spki;
    v56 = v35;
    v36 = [v34 predicateWithBlock:v55];
    v37 = [keysCopy filteredArrayUsingPredicate:v36];

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __137__TPModel_dynamicInfoForJoiningPeerID_peerPermanentInfo_peerStableInfo_sponsorID_preapprovedKeys_signingKeyPair_currentMachineIDs_error___block_invoke_2;
    v51[3] = &unk_279DEDAD8;
    keysCopy = v37;
    v52 = keysCopy;
    v53 = v20;
    v54 = &v58;
    v50 = 0;
    [(TPModel *)self enumeratePeersUsingBlock:v51 error:&v50];
    v38 = v50;
    if (v38)
    {
      v39 = v38;
      v40 = TPModelLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v65 = v39;
        _os_log_impl(&dword_26F78B000, v40, OS_LOG_TYPE_DEFAULT, "Error enumerating peers: %{public}@", buf, 0xCu);
      }

      if (error)
      {
        v41 = v39;
        *error = v39;
      }

      v42 = 0;
      v43 = v56;
      goto LABEL_26;
    }
  }

  v35 = [TPModel preapprovalsFromKeys:keysCopy];
  v43 = [(TPModel *)self createDynamicInfoWithIncludedPeerIDs:v59[5] excludedPeerIDs:v20 dispositions:MEMORY[0x277CBEC10] preapprovals:v35 signingKeyPair:pairCopy error:error];
  if (v43)
  {
    v42 = [(TPModel *)self calculateDynamicInfoFromModel:v49 peer:0 peerPermanentInfo:infoCopy peerStableInfo:stableInfoCopy startingDynamicInfo:v43 addingPeerIDs:MEMORY[0x277CBEBF8] removingPeerIDs:keysCopy preapprovedKeys:pairCopy signingKeyPair:dsCopy currentMachineIDs:iDCopy sponsorPeerID:error error:?];
  }

  else
  {
    v44 = TPModelLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v65 = v49;
      _os_log_impl(&dword_26F78B000, v44, OS_LOG_TYPE_DEFAULT, "Unable to create initial dynamic info for peer: %{public}@", buf, 0xCu);
    }

    v43 = 0;
    v42 = 0;
  }

LABEL_26:

  _Block_object_dispose(&v58, 8);

  return v42;
}

void __137__TPModel_dynamicInfoForJoiningPeerID_peerPermanentInfo_peerStableInfo_sponsorID_preapprovedKeys_signingKeyPair_currentMachineIDs_error___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 permanentInfo];
  v5 = [v4 signingPubKey];
  v6 = [v5 spki];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138543362;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        if ([v6 isEqual:{*(*(&v22 + 1) + 8 * i), v21, v22}])
        {
          v13 = *(a1 + 40);
          v14 = [v3 peerID];
          LOBYTE(v13) = [v13 containsObject:v14];

          if (v13)
          {
            v15 = TPModelLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v3 peerID];
              *buf = v21;
              v27 = v16;
              v17 = v15;
              v18 = "Not including %{public}@ even through they are preapproved";
              goto LABEL_12;
            }
          }

          else
          {
            v19 = *(*(*(a1 + 48) + 8) + 40);
            v20 = [v3 peerID];
            [v19 addObject:v20];

            v15 = TPModelLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v3 peerID];
              *buf = v21;
              v27 = v16;
              v17 = v15;
              v18 = "Trusting %{public}@ due to preapproval";
LABEL_12:
              _os_log_impl(&dword_26F78B000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
            }
          }

          continue;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }
}

- (id)filterPreapprovals:(id)preapprovals forExistingPeers:(id)peers
{
  v29 = *MEMORY[0x277D85DE8];
  preapprovalsCopy = preapprovals;
  peersCopy = peers;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allObjects = [preapprovalsCopy allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [TPHashBuilder algoOfHash:v13];
        if (v14 != -1)
        {
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __47__TPModel_filterPreapprovals_forExistingPeers___block_invoke;
          v20[3] = &unk_279DEDA88;
          v23 = v14;
          v20[4] = v13;
          v21 = peersCopy;
          v22 = preapprovalsCopy;
          v19 = 0;
          [(TPModel *)self enumeratePeersUsingBlock:v20 error:&v19];
          v15 = v19;
          v16 = v22;
          if (v15)
          {
            v17 = v15;

            goto LABEL_13;
          }
        }
      }

      v10 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

void __47__TPModel_filterPreapprovals_forExistingPeers___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v11 = [v5 peerID];
  v6 = *(a1 + 56);
  v7 = [v5 permanentInfo];

  v8 = [v7 signingPubKey];
  v9 = [v8 spki];
  v10 = [TPHashBuilder hashWithAlgo:v6 ofData:v9];

  if ([*(a1 + 32) isEqualToString:v10] && objc_msgSend(*(a1 + 40), "containsObject:", v11))
  {
    [*(a1 + 48) removeObject:*(a1 + 32)];
    *a3 = 1;
  }
}

- (id)peersWithMachineID:(id)d error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (error)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = [MEMORY[0x277CBEB58] set];
    *error = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__TPModel_peersWithMachineID_error___block_invoke;
    v11[3] = &unk_279DEDA60;
    v12 = dCopy;
    p_buf = &buf;
    [(TPModel *)self enumeratePeersUsingBlock:v11 error:error];
    if (*error)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(*(&buf + 1) + 40);
    }

    v9 = v7;

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = TPModelLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = dCopy;
      _os_log_error_impl(&dword_26F78B000, v8, OS_LOG_TYPE_ERROR, "Unexpected nil error in peersWithMachineID:%{public}@", &buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

void __36__TPModel_peersWithMachineID_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 permanentInfo];
  v4 = [v3 machineID];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v8 peerID];
    [v6 addObject:v7];
  }
}

- (id)filterPeerList:(id)list byMachineIDs:(id)ds sponsorPeerID:(id)d dispositions:(id)dispositions
{
  v74 = *MEMORY[0x277D85DE8];
  listCopy = list;
  dsCopy = ds;
  dCopy = d;
  dispositionsCopy = dispositions;
  v59 = dsCopy;
  if (dsCopy)
  {
    [MEMORY[0x277CBEB58] set];
    v56 = v55 = listCopy;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = listCopy;
    v13 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (!v13)
    {
      goto LABEL_48;
    }

    v14 = v13;
    v63 = *v66;
    selfCopy = self;
    v58 = dCopy;
    while (1)
    {
      v15 = 0;
      v60 = v14;
      do
      {
        if (*v66 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v65 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v64 = 0;
        v18 = [(TPModel *)self peerWithID:v16 error:&v64];
        v19 = v64;
        v20 = v19;
        if (v18)
        {
          if ([v16 isEqualToString:dCopy])
          {
            goto LABEL_46;
          }

          permanentInfo = [v18 permanentInfo];
          machineID = [permanentInfo machineID];
          v23 = [v59 entryFor:machineID];

          if (v23)
          {
            status = [v23 status];
          }

          else
          {
            status = 0;
          }

          peerID = [v18 peerID];
          v26 = [dispositionsCopy objectForKeyedSubscript:peerID];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = objc_alloc_init(TPPBDisposition);
          }

          v29 = v28;

          if (status > 2)
          {
            v14 = v60;
            switch(status)
            {
              case 3:
                [(TPPBDisposition *)v29 setUnknownMachineID:0];
                [(TPPBDisposition *)v29 setDisallowedMachineID:0];
                [(TPPBDisposition *)v29 setUnknownReasonRemovalMachineID:0];
                v48 = objc_alloc_init(TPPBDispositionEvictedMachineID);
                [(TPPBDisposition *)v29 setEvictedMachineID:v48];

                peerID2 = [v18 peerID];
                [dispositionsCopy setObject:v29 forKeyedSubscript:peerID2];

                v43 = TPModelLog();
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_43;
                }

                permanentInfo2 = [v18 permanentInfo];
                machineID2 = [permanentInfo2 machineID];
                *buf = 138543618;
                v70 = v16;
                v71 = 2114;
                v72 = machineID2;
                v46 = v43;
                v47 = "Peer (%{public}@) has an evicted machine ID (%{public}@)";
                break;
              case 4:
                [(TPPBDisposition *)v29 setUnknownMachineID:0];
                [(TPPBDisposition *)v29 setDisallowedMachineID:0];
                [(TPPBDisposition *)v29 setEvictedMachineID:0];
                v50 = objc_alloc_init(TPPBDispositionUnknownReasonRemovalMachineID);
                [(TPPBDisposition *)v29 setUnknownReasonRemovalMachineID:v50];

                peerID3 = [v18 peerID];
                [dispositionsCopy setObject:v29 forKeyedSubscript:peerID3];

                v43 = TPModelLog();
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_43;
                }

                permanentInfo2 = [v18 permanentInfo];
                machineID2 = [permanentInfo2 machineID];
                *buf = 138543618;
                v70 = v16;
                v71 = 2114;
                v72 = machineID2;
                v46 = v43;
                v47 = "Peer (%{public}@) with machine ID (%{public}@) has been removed with an unknown reason";
                break;
              case 5:
                v35 = TPModelLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  permanentInfo3 = [v18 permanentInfo];
                  machineID3 = [permanentInfo3 machineID];
                  *buf = 138543618;
                  v70 = v16;
                  v71 = 2114;
                  v72 = machineID3;
                  _os_log_impl(&dword_26F78B000, v35, OS_LOG_TYPE_DEFAULT, "Peer (%{public}@) with machine ID (%{public}@) has ghosted the TDL", buf, 0x16u);

                  v14 = v60;
                }

                v38 = objc_alloc_init(TPPBDispositionGhostedMachineID);
                [(TPPBDisposition *)v29 setGhostedMachineID:v38];

                peerID4 = [v18 peerID];
                v40 = dispositionsCopy;
                v41 = v29;
                goto LABEL_37;
              default:
LABEL_44:

                self = selfCopy;
                dCopy = v58;
                goto LABEL_45;
            }
          }

          else
          {
            v14 = v60;
            if (status)
            {
              if (status != 1)
              {
                if (status == 2)
                {
                  v30 = objc_alloc_init(TPPBDispositionDisallowedMachineID);
                  [(TPPBDisposition *)v29 setDisallowedMachineID:v30];

                  peerID5 = [v18 peerID];
                  [dispositionsCopy setObject:v29 forKeyedSubscript:peerID5];

                  v32 = TPModelLog();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    permanentInfo4 = [v18 permanentInfo];
                    machineID4 = [permanentInfo4 machineID];
                    *buf = 138543618;
                    v70 = v16;
                    v71 = 2114;
                    v72 = machineID4;
                    _os_log_impl(&dword_26F78B000, v32, OS_LOG_TYPE_DEFAULT, "Peer (%{public}@) has a disallowed machine ID (%{public}@)", buf, 0x16u);

                    v14 = v60;
                  }

                  [v56 addObject:v16];
                }

                goto LABEL_44;
              }

              peerID4 = [v18 peerID];
              v40 = dispositionsCopy;
              v41 = 0;
LABEL_37:
              [v40 setObject:v41 forKeyedSubscript:peerID4];

              goto LABEL_44;
            }

            disallowedMachineID = [(TPPBDisposition *)v29 disallowedMachineID];

            if (disallowedMachineID)
            {
              v43 = TPModelLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                permanentInfo2 = [v18 permanentInfo];
                machineID2 = [permanentInfo2 machineID];
                *buf = 138543618;
                v70 = v16;
                v71 = 2114;
                v72 = machineID2;
                v46 = v43;
                v47 = "Peer (%{public}@) has an unknown machine ID (%{public}@), but leaving disposition as 'disallowed'";
                goto LABEL_42;
              }

LABEL_43:

              goto LABEL_44;
            }

            v52 = objc_alloc_init(TPPBUnknownMachineID);
            [(TPPBDisposition *)v29 setUnknownMachineID:v52];

            peerID6 = [v18 peerID];
            [dispositionsCopy setObject:v29 forKeyedSubscript:peerID6];

            v43 = TPModelLog();
            if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_43;
            }

            permanentInfo2 = [v18 permanentInfo];
            machineID2 = [permanentInfo2 machineID];
            *buf = 138543618;
            v70 = v16;
            v71 = 2114;
            v72 = machineID2;
            v46 = v43;
            v47 = "Peer (%{public}@) has an unknown machine ID (%{public}@)";
          }

LABEL_42:
          _os_log_impl(&dword_26F78B000, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 0x16u);

          v14 = v60;
          goto LABEL_43;
        }

        if (!v19)
        {
          goto LABEL_46;
        }

        v23 = TPModelLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v70 = v16;
          v71 = 2114;
          v72 = v20;
          _os_log_impl(&dword_26F78B000, v23, OS_LOG_TYPE_DEFAULT, "Error finding peer %{public}@: %{public}@", buf, 0x16u);
        }

LABEL_45:

LABEL_46:
        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v14 != v15);
      v14 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (!v14)
      {
LABEL_48:

        listCopy = v55;
        goto LABEL_50;
      }
    }
  }

  v56 = [MEMORY[0x277CBEB98] set];
LABEL_50:

  return v56;
}

- (id)calculateDynamicInfoFromModel:(id)model peer:(id)peer peerPermanentInfo:(id)info peerStableInfo:(id)stableInfo startingDynamicInfo:(id)dynamicInfo addingPeerIDs:(id)ds removingPeerIDs:(id)iDs preapprovedKeys:(id)self0 signingKeyPair:(id)self1 currentMachineIDs:(id)self2 sponsorPeerID:(id)self3 error:(id *)self4
{
  v303 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  peerCopy = peer;
  infoCopy = info;
  stableInfoCopy = stableInfo;
  dynamicInfoCopy = dynamicInfo;
  dsCopy = ds;
  iDsCopy = iDs;
  keysCopy = keys;
  pairCopy = pair;
  machineIDsCopy = machineIDs;
  v212 = infoCopy;
  dCopy = d;
  epoch = [infoCopy epoch];
  v21 = MEMORY[0x277CBEB98];
  selfCopy = self;
  allPeerIDs = [(TPModel *)self allPeerIDs];
  v217 = [v21 setWithArray:allPeerIDs];

  v23 = TPModelLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = modelCopy;
    *&buf[12] = 2114;
    *&buf[14] = v217;
    _os_log_impl(&dword_26F78B000, v23, OS_LOG_TYPE_DEFAULT, "Calculating dynamic info for peer %{public}@ with peer set %{public}@", buf, 0x16u);
  }

  if ([dsCopy count])
  {
    v24 = TPModelLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = dsCopy;
      _os_log_impl(&dword_26F78B000, v24, OS_LOG_TYPE_DEFAULT, "Adding peer IDs: %{public}@", buf, 0xCu);
    }
  }

  if ([iDsCopy count])
  {
    v25 = TPModelLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = iDsCopy;
      _os_log_impl(&dword_26F78B000, v25, OS_LOG_TYPE_DEFAULT, "Removing peer IDs: %{public}@", buf, 0xCu);
    }
  }

  excludedPeerIDs = [dynamicInfoCopy excludedPeerIDs];
  v27 = [excludedPeerIDs containsObject:modelCopy];

  if (v27)
  {
    v28 = TPModelLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = modelCopy;
      _os_log_impl(&dword_26F78B000, v28, OS_LOG_TYPE_DEFAULT, "Peer (%{public}@) excludes itself", buf, 0xCu);
    }

    v29 = dynamicInfoCopy;
    goto LABEL_260;
  }

  v30 = MEMORY[0x277CBEB58];
  includedPeerIDs = [dynamicInfoCopy includedPeerIDs];
  v229 = [v30 setWithSet:includedPeerIDs];

  v32 = MEMORY[0x277CBEB58];
  excludedPeerIDs2 = [dynamicInfoCopy excludedPeerIDs];
  v226 = [v32 setWithSet:excludedPeerIDs2];

  v34 = TPModelLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v229;
    *&buf[12] = 2114;
    *&buf[14] = v226;
    _os_log_impl(&dword_26F78B000, v34, OS_LOG_TYPE_DEFAULT, "Initial sets: included:%{public}@ excluded:%{public}@", buf, 0x16u);
  }

  v35 = MEMORY[0x277CBEB38];
  dispositions = [dynamicInfoCopy dispositions];
  v234 = [v35 dictionaryWithDictionary:dispositions];

  [v229 addObject:modelCopy];
  v209 = [[TPRecoveryKeyPair alloc] initWithStableInfo:stableInfoCopy];
  signingKeyData = [(TPRecoveryKeyPair *)v209 signingKeyData];
  v38 = [TPHashBuilder hashWithAlgo:2 ofData:signingKeyData];

  v208 = [v38 stringByReplacingOccurrencesOfString:@"SHA384:" withString:&stru_287FCB740];

  v208 = [MEMORY[0x277CCACA8] stringWithFormat:@"RK-%@", v208];
  v231 = [MEMORY[0x277CBEB58] setWithSet:v217];
  [v231 addObject:v208];
  allCustodianRecoveryKeyPeerIDs = [(TPModel *)self allCustodianRecoveryKeyPeerIDs];
  [v231 addObjectsFromArray:allCustodianRecoveryKeyPeerIDs];

  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  obj = iDsCopy;
  v40 = [obj countByEnumeratingWithState:&v284 objects:v302 count:16];
  if (v40)
  {
    v41 = *v285;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v285 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v284 + 1) + 8 * i);
        if (([v231 containsObject:v43] & 1) == 0)
        {
          v59 = TPModelLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v43;
            _os_log_impl(&dword_26F78B000, v59, OS_LOG_TYPE_DEFAULT, "No peer for given peer id: %{public}@", buf, 0xCu);
          }

          failWithNoPeerWithIDError(error);
          v29 = 0;
          goto LABEL_259;
        }
      }

      v40 = [obj countByEnumeratingWithState:&v284 objects:v302 count:16];
    }

    while (v40);
  }

  [v229 addObjectsFromArray:dsCopy];
  [v226 addObjectsFromArray:obj];
  [v229 minusSet:v226];
  v44 = TPModelLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v229;
    *&buf[12] = 2114;
    *&buf[14] = v226;
    _os_log_impl(&dword_26F78B000, v44, OS_LOG_TYPE_DEFAULT, "After removals: included:%{public}@ excluded:%{public}@", buf, 0x16u);
  }

  v45 = TPModelLog();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = machineIDsCopy;
    _os_log_impl(&dword_26F78B000, v45, OS_LOG_TYPE_DEFAULT, "Beginning sponsor checking; machine ID list: %{public}@", buf, 0xCu);
  }

  v282 = 0u;
  v283 = 0u;
  v280 = 0u;
  v281 = 0u;
  obj = [v229 copy];
  v46 = [obj countByEnumeratingWithState:&v280 objects:v301 count:16];
  if (v46)
  {
    v47 = *v281;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v281 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v280 + 1) + 8 * j);
        v50 = objc_autoreleasePoolPush();
        v51 = [(TPModel *)selfCopy recursivelyExpandIncludedPeerIDs:v229 andExcludedPeerIDs:v226 dispositions:v234 withPeersTrustedBySponsorID:v49 currentMachineIDs:machineIDsCopy forEpoch:epoch];
        objc_autoreleasePoolPop(v50);
        if (v51)
        {

          v60 = TPModelLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v51;
            _os_log_impl(&dword_26F78B000, v60, OS_LOG_TYPE_DEFAULT, "Error sponsor checking: %{public}@", buf, 0xCu);
          }

          if (error)
          {
            v61 = v51;
            v29 = 0;
            *error = v51;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_258;
        }
      }

      v46 = [obj countByEnumeratingWithState:&v280 objects:v301 count:16];
    }

    while (v46);
  }

  v52 = TPModelLog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v229;
    *&buf[12] = 2114;
    *&buf[14] = v226;
    _os_log_impl(&dword_26F78B000, v52, OS_LOG_TYPE_DEFAULT, "After sponsor checking: included:%{public}@ excluded:%{public}@", buf, 0x16u);
  }

  if (peerCopy)
  {
    peerID = [peerCopy peerID];
    permanentInfo = [peerCopy permanentInfo];
    [(TPModel *)selfCopy considerVouchersSponsoredByPeerID:peerID sponsorPermanentInfo:permanentInfo toRecursivelyExpandIncludedPeerIDs:v229 andExcludedPeerIDs:v226 dispositions:v234 currentMachineIDs:machineIDsCopy forEpoch:epoch];
  }

  v55 = TPModelLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v229;
    *&buf[12] = 2114;
    *&buf[14] = v226;
    _os_log_impl(&dword_26F78B000, v55, OS_LOG_TYPE_DEFAULT, "After voucher checking: included:%{public}@ excluded:%{public}@", buf, 0x16u);
  }

  if (keysCopy)
  {
    v56 = TPModelLog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = keysCopy;
      _os_log_impl(&dword_26F78B000, v56, OS_LOG_TYPE_DEFAULT, "Preapproved keys: %{public}@", buf, 0xCu);
    }

    v206 = [TPModel preapprovalsFromKeys:keysCopy];
    v57 = TPModelLog();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    *buf = 138543362;
    *&buf[4] = v206;
    v58 = "New preapproval list: %{public}@";
    goto LABEL_58;
  }

  v62 = MEMORY[0x277CBEB58];
  preapprovals = [dynamicInfoCopy preapprovals];
  v206 = [v62 setWithSet:preapprovals];

  v57 = TPModelLog();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v206;
    v58 = "Using existing preapproval list: %{public}@";
LABEL_58:
    _os_log_impl(&dword_26F78B000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, 0xCu);
  }

LABEL_59:

  v205 = [v229 setByAddingObjectsFromSet:v226];
  v210 = [(TPModel *)selfCopy filterPreapprovals:v206 forExistingPeers:v205];
  v64 = TPModelLog();
  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
  if (v210)
  {
    if (v65)
    {
      *buf = 138543362;
      *&buf[4] = v210;
      _os_log_impl(&dword_26F78B000, v64, OS_LOG_TYPE_DEFAULT, "Error filtering preapprovals: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v66 = v210;
      v29 = 0;
      *error = v210;
      goto LABEL_257;
    }

    goto LABEL_90;
  }

  if (v65)
  {
    *buf = 138543362;
    *&buf[4] = v206;
    _os_log_impl(&dword_26F78B000, v64, OS_LOG_TYPE_DEFAULT, "Final preapproval list: %{public}@", buf, 0xCu);
  }

  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  allObjects = [v206 allObjects];
  v68 = [allObjects countByEnumeratingWithState:&v276 objects:v300 count:16];
  if (!v68)
  {
    v210 = 0;
    goto LABEL_92;
  }

  v210 = 0;
  v69 = *v277;
  do
  {
    for (k = 0; k != v68; ++k)
    {
      if (*v277 != v69)
      {
        objc_enumerationMutation(allObjects);
      }

      v71 = *(*(&v276 + 1) + 8 * k);
      v72 = [TPHashBuilder algoOfHash:v71];
      if (v72 == -1)
      {
        continue;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v298 = __Block_byref_object_copy_;
      *&v299 = __Block_byref_object_dispose_;
      *(&v299 + 1) = 0;
      v267[0] = MEMORY[0x277D85DD0];
      v267[1] = 3221225472;
      v267[2] = __198__TPModel_calculateDynamicInfoFromModel_peer_peerPermanentInfo_peerStableInfo_startingDynamicInfo_addingPeerIDs_removingPeerIDs_preapprovedKeys_signingKeyPair_currentMachineIDs_sponsorPeerID_error___block_invoke;
      v267[3] = &unk_279DED9E8;
      v267[4] = v71;
      v267[5] = selfCopy;
      v274 = v72;
      v275 = epoch;
      v268 = v229;
      v273 = buf;
      v269 = v226;
      v270 = v234;
      v271 = machineIDsCopy;
      v272 = v206;
      v266 = 0;
      [(TPModel *)selfCopy enumeratePeersUsingBlock:v267 error:&v266];
      v73 = v266;
      v210 = v73;
      if (v73)
      {
        v74 = v73;
        v75 = TPModelLog();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *v295 = 138543362;
          v296 = v74;
          _os_log_impl(&dword_26F78B000, v75, OS_LOG_TYPE_DEFAULT, "Error enumerating peers: %{public}@", v295, 0xCu);
        }

        if (error)
        {
          v76 = v210;
          v77 = v210;
LABEL_82:
          v80 = 0;
          *error = v77;
          goto LABEL_85;
        }

LABEL_83:
        v80 = 0;
        goto LABEL_85;
      }

      if (*(*&buf[8] + 40))
      {
        v78 = TPModelLog();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = *(*&buf[8] + 40);
          *v295 = 138543362;
          v296 = v79;
          _os_log_impl(&dword_26F78B000, v78, OS_LOG_TYPE_DEFAULT, "Error recursively expanding peers: %{public}@", v295, 0xCu);
        }

        if (error)
        {
          v77 = 0;
          goto LABEL_82;
        }

        goto LABEL_83;
      }

      v80 = 1;
LABEL_85:

      _Block_object_dispose(buf, 8);
      if (!v80)
      {

LABEL_90:
        v29 = 0;
        goto LABEL_257;
      }
    }

    v68 = [allObjects countByEnumeratingWithState:&v276 objects:v300 count:16];
  }

  while (v68);
LABEL_92:

  [v229 minusSet:v226];
  dbAdapter = [(TPModel *)selfCopy dbAdapter];
  v82 = [dbAdapter distrustedEgoSponsoredBeneficiaryIDs:modelCopy];
  [v229 minusSet:v82];

  v83 = TPModelLog();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v229;
    *&buf[12] = 2114;
    *&buf[14] = v226;
    _os_log_impl(&dword_26F78B000, v83, OS_LOG_TYPE_DEFAULT, "After preapproval checking: included:%{public}@ excluded:%{public}@", buf, 0x16u);
  }

  permanentInfo2 = [peerCopy permanentInfo];
  modelID = [permanentInfo2 modelID];

  if ([TPModel ignoreTDLForModel:modelID])
  {
    v85 = TPModelLog();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F78B000, v85, OS_LOG_TYPE_DEFAULT, "Ignoring TDL Disallowed Machine IDs", buf, 2u);
    }

    v86 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v86 = [(TPModel *)selfCopy filterPeerList:v229 byMachineIDs:machineIDsCopy sponsorPeerID:dCopy dispositions:v234];
  }

  v203 = v86;

  v201 = [(TPModel *)selfCopy filterPeerList:v226 byMachineIDs:machineIDsCopy sponsorPeerID:dCopy dispositions:v234];
  if ([v229 count] != 1 || (objc_msgSend(v229, "containsObject:", modelCopy) & 1) == 0)
  {
    [v229 minusSet:v203];
    [v226 unionSet:v203];
    [v226 unionSet:v201];
  }

  if (dCopy)
  {
    v87 = TPModelLog();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F78B000, v87, OS_LOG_TYPE_DEFAULT, "Joining using a sponsor! Opting not to kick out past selves yet.", buf, 2u);
    }

    goto LABEL_105;
  }

  machineID = [v212 machineID];
  v108 = [machineID length] == 0;

  if (v108)
  {
    v87 = TPModelLog();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F78B000, v87, OS_LOG_TYPE_DEFAULT, "No local machine ID; not filtering peers", buf, 2u);
    }

LABEL_105:

LABEL_106:
    v88 = TPModelLog();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v229;
      *&buf[12] = 2114;
      *&buf[14] = v226;
      _os_log_impl(&dword_26F78B000, v88, OS_LOG_TYPE_DEFAULT, "After machine ID checking: included:%{public}@ excluded:%{public}@", buf, 0x16u);
    }

    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    context = v229;
    v89 = [context countByEnumeratingWithState:&v257 objects:v293 count:16];
    if (v89)
    {
      v90 = *v258;
      do
      {
        v91 = 0;
        do
        {
          if (*v258 != v90)
          {
            objc_enumerationMutation(context);
          }

          v92 = *(*(&v257 + 1) + 8 * v91);
          v93 = [v234 objectForKeyedSubscript:v92];
          v94 = v93;
          if (v93)
          {
            if ([v93 hasUnknownMachineID])
            {
              v95 = objc_alloc_init(TPPBDisposition);

              unknownMachineID = [v94 unknownMachineID];
              [(TPPBDisposition *)v95 setUnknownMachineID:unknownMachineID];

              if ([v94 hasEvictedMachineID])
              {
                if (v95)
                {
                  v97 = v95;
                  goto LABEL_120;
                }

LABEL_119:
                v97 = objc_alloc_init(TPPBDisposition);
LABEL_120:
                v95 = v97;

                evictedMachineID = [v94 evictedMachineID];
                [(TPPBDisposition *)v95 setEvictedMachineID:evictedMachineID];
              }

              if ([v94 hasUnknownReasonRemovalMachineID])
              {
                if (v95)
                {
                  v99 = v95;
                  goto LABEL_126;
                }

LABEL_125:
                v99 = objc_alloc_init(TPPBDisposition);
LABEL_126:
                v95 = v99;

                unknownReasonRemovalMachineID = [v94 unknownReasonRemovalMachineID];
                [(TPPBDisposition *)v95 setUnknownReasonRemovalMachineID:unknownReasonRemovalMachineID];
              }

              if ([v94 hasGhostedMachineID])
              {
                if (v95)
                {
                  v101 = v95;
                  goto LABEL_132;
                }

LABEL_131:
                v101 = objc_alloc_init(TPPBDisposition);
LABEL_132:
                v95 = v101;

                ghostedMachineID = [v94 ghostedMachineID];
                [(TPPBDisposition *)v95 setGhostedMachineID:ghostedMachineID];
              }
            }

            else
            {
              if ([v94 hasEvictedMachineID])
              {
                goto LABEL_119;
              }

              if ([v94 hasUnknownReasonRemovalMachineID])
              {
                goto LABEL_125;
              }

              if ([v94 hasGhostedMachineID])
              {
                goto LABEL_131;
              }

              v95 = 0;
            }

            [v234 setObject:v95 forKeyedSubscript:v92];
          }

          ++v91;
        }

        while (v89 != v91);
        v103 = [context countByEnumeratingWithState:&v257 objects:v293 count:16];
        v89 = v103;
      }

      while (v103);
    }

    v256 = 0;
    v232 = [(TPModel *)selfCopy policyForPeerIDs:context candidatePeerID:modelCopy candidateStableInfo:stableInfoCopy error:&v256];
    v104 = v256;
    if (v104)
    {
      v105 = TPModelLog();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v104;
        _os_log_impl(&dword_26F78B000, v105, OS_LOG_TYPE_DEFAULT, "ignoring error getting policy for peerIDs %{public}@", buf, 0xCu);
      }
    }

    if (v232 && ([v232 unknownRedactions] & 1) == 0)
    {
      if (stableInfoCopy)
      {
        version = [v232 version];
        versionNumber = [version versionNumber];
        flexiblePolicyVersion = [stableInfoCopy flexiblePolicyVersion];
        v106 = versionNumber == [flexiblePolicyVersion versionNumber];
      }

      else
      {
        v106 = 1;
      }
    }

    else
    {
      v106 = 0;
    }

    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v251 = 0;
    v114 = [(TPModel *)selfCopy allPolicyVersionsWithError:&v251];
    v204 = v251;
    v115 = [v114 countByEnumeratingWithState:&v252 objects:v292 count:16];
    if (v115)
    {
      v116 = *v253;
      do
      {
        for (m = 0; m != v115; ++m)
        {
          if (*v253 != v116)
          {
            objc_enumerationMutation(v114);
          }

          v118 = *(*(&v252 + 1) + 8 * m);
          versionNumber2 = [v118 versionNumber];
          version2 = [v232 version];
          v121 = versionNumber2 <= [version2 versionNumber];

          versionNumber3 = [v118 versionNumber];
          version3 = [v232 version];
          v106 &= v121;
          if (versionNumber3 == [version3 versionNumber])
          {
            policyHash = [v118 policyHash];
            version4 = [v232 version];
            policyHash2 = [version4 policyHash];
            v127 = policyHash2;
            if (policyHash2)
            {
              v128 = policyHash2;
            }

            else
            {
              v128 = &stru_287FCB740;
            }

            v129 = [policyHash isEqualToString:v128];

            v106 &= v129;
          }

          else
          {
          }
        }

        v115 = [v114 countByEnumeratingWithState:&v252 objects:v292 count:16];
      }

      while (v115);
    }

    if (v204)
    {
      if (error)
      {
        v130 = v204;
        v29 = 0;
        *error = v204;
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_255;
    }

    if (v106)
    {
      v131 = [MEMORY[0x277CBEB58] setWithSet:v217];
      [v131 minusSet:context];
      [v131 minusSet:v226];
      v132 = TPModelLog();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v131;
        _os_log_impl(&dword_26F78B000, v132, OS_LOG_TYPE_DEFAULT, "Unknown peers, distrusting by default: %{public}@", buf, 0xCu);
      }

      [v226 unionSet:v131];
    }

    else
    {
      v131 = TPModelLog();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        bestPolicyVersion = [stableInfoCopy bestPolicyVersion];
        versionNumber4 = [bestPolicyVersion versionNumber];
        *buf = 138544130;
        *&buf[4] = modelCopy;
        *&buf[12] = 2048;
        *&buf[14] = versionNumber4;
        *&buf[22] = 2114;
        v298 = v232;
        LOWORD(v299) = 2114;
        *(&v299 + 2) = 0;
        _os_log_impl(&dword_26F78B000, v131, OS_LOG_TYPE_DEFAULT, "Peer (%{public}@) is using an unknown policy version (%llu, %{public}@), not distrusting unknown peers (error: %{public}@)", buf, 0x2Au);
      }
    }

    if ([v226 containsObject:modelCopy])
    {
      v135 = TPModelLog();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F78B000, v135, OS_LOG_TYPE_DEFAULT, "Peer distrusts self", buf, 2u);
      }

      v250 = 0;
      v136 = [(TPModel *)selfCopy untrustedPeerIDsWithError:&v250];
      v137 = v250;
      v138 = v137;
      if (v137)
      {
        if (error)
        {
          v139 = v137;
          v29 = 0;
          *error = v138;
        }

        else
        {
          v29 = 0;
        }

        goto LABEL_254;
      }

      v160 = [v136 setByAddingObjectsFromSet:v226];
      if ([v217 isSubsetOfSet:v160])
      {
        v161 = TPModelLog();
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F78B000, v161, OS_LOG_TYPE_DEFAULT, "Update would result in zero trusted peers; failing", buf, 2u);
        }

        if (!error)
        {
          v29 = 0;
          goto LABEL_253;
        }

        v162 = MEMORY[0x277CCA9B8];
        v163 = TPErrorDomain;
        v290 = *MEMORY[0x277CCA450];
        v291 = @"Update would result in no trusted peers";
        v164 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
        [v162 errorWithDomain:v163 code:11 userInfo:v164];
        *error = v29 = 0;
      }

      else
      {
        v164 = [MEMORY[0x277CBEB58] setWithSet:v160];
        dbAdapter2 = [(TPModel *)selfCopy dbAdapter];
        v194 = [dbAdapter2 egoSponsoredBeneficiaryIDs:modelCopy];
        [v164 intersectSet:v194];

        [v164 addObject:modelCopy];
        v195 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
        v29 = [(TPModel *)selfCopy createDynamicInfoWithIncludedPeerIDs:v195 excludedPeerIDs:v164 dispositions:v234 preapprovals:v206 signingKeyPair:pairCopy error:error];
      }

LABEL_253:
LABEL_254:

      goto LABEL_255;
    }

    v249[0] = MEMORY[0x277D85DD0];
    v249[1] = 3221225472;
    v249[2] = __198__TPModel_calculateDynamicInfoFromModel_peer_peerPermanentInfo_peerStableInfo_startingDynamicInfo_addingPeerIDs_removingPeerIDs_preapprovedKeys_signingKeyPair_currentMachineIDs_sponsorPeerID_error___block_invoke_104;
    v249[3] = &unk_279DEDA10;
    v249[4] = selfCopy;
    v249[5] = epoch;
    v140 = [v226 objectsPassingTest:v249];
    v225 = [v140 mutableCopy];

    v141 = objc_autoreleasePoolPush();
    v142 = [MEMORY[0x277CBEB58] set];
    v143 = [MEMORY[0x277CBEB58] set];
    v245[0] = MEMORY[0x277D85DD0];
    v245[1] = 3221225472;
    v245[2] = __198__TPModel_calculateDynamicInfoFromModel_peer_peerPermanentInfo_peerStableInfo_startingDynamicInfo_addingPeerIDs_removingPeerIDs_preapprovedKeys_signingKeyPair_currentMachineIDs_sponsorPeerID_error___block_invoke_106;
    v245[3] = &unk_279DEDA38;
    v245[4] = selfCopy;
    v200 = context;
    v246 = v200;
    v144 = v142;
    v247 = v144;
    v145 = v143;
    v248 = v145;
    v244 = 0;
    v146 = [(TPModel *)selfCopy _iterateOverPeersWithBlock:v245 error:&v244];
    v147 = v244;
    if (v147)
    {
      v148 = TPModelLog();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v147;
        _os_log_impl(&dword_26F78B000, v148, OS_LOG_TYPE_DEFAULT, "Failed to iterate peers to check recovery keys, not changing RK trust: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v165 = [v145 mutableCopy];
      [v165 minusSet:v144];
      v166 = TPModelLog();
      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v165;
        _os_log_impl(&dword_26F78B000, v166, OS_LOG_TYPE_DEFAULT, "Excluding not-trusted RKs: %{public}@", buf, 0xCu);
      }

      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v148 = v165;
      v167 = [v148 countByEnumeratingWithState:&v240 objects:v289 count:16];
      if (v167)
      {
        v168 = *v241;
        do
        {
          for (n = 0; n != v167; ++n)
          {
            if (*v241 != v168)
            {
              objc_enumerationMutation(v148);
            }

            [v225 addObject:*(*(&v240 + 1) + 8 * n)];
          }

          v167 = [v148 countByEnumeratingWithState:&v240 objects:v289 count:16];
        }

        while (v167);
      }
    }

    objc_autoreleasePoolPop(v141);
    v238 = 0u;
    v239 = 0u;
    v236 = 0u;
    v237 = 0u;
    v170 = v226;
    v171 = [v170 countByEnumeratingWithState:&v236 objects:v288 count:16];
    if (v171)
    {
      v172 = *v237;
      do
      {
        v173 = 0;
        do
        {
          if (*v237 != v172)
          {
            objc_enumerationMutation(v170);
          }

          v174 = *(*(&v236 + 1) + 8 * v173);
          if ([v174 containsString:@"RK-"] & 1) != 0 || (-[TPModel allCustodianRecoveryKeyPeerIDs](selfCopy, "allCustodianRecoveryKeyPeerIDs"), v175 = objc_claimAutoreleasedReturnValue(), v176 = objc_msgSend(v175, "containsObject:", v174), v175, (v176))
          {
            v177 = 0;
            goto LABEL_223;
          }

          v235 = 0;
          v178 = [(TPModel *)selfCopy peerWithID:v174 error:&v235];
          v177 = v235;

          if (!v178)
          {
            v179 = TPModelLog();
            v180 = os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT);
            if (v177)
            {
              if (v180)
              {
                *buf = 138543618;
                *&buf[4] = v174;
                *&buf[12] = 2114;
                *&buf[14] = v177;
                v181 = v179;
                v182 = "Error finding peer %{public}@ in model, removing: %{public}@";
                v183 = 22;
                goto LABEL_231;
              }
            }

            else if (v180)
            {
              *buf = 138543362;
              *&buf[4] = v174;
              v181 = v179;
              v182 = "Peer %{public}@ not registered in the model, removing";
              v183 = 12;
LABEL_231:
              _os_log_impl(&dword_26F78B000, v181, OS_LOG_TYPE_DEFAULT, v182, buf, v183);
            }

            [v225 removeObject:v174];
          }

LABEL_223:

          v173 = v173 + 1;
        }

        while (v171 != v173);
        v184 = [v170 countByEnumeratingWithState:&v236 objects:v288 count:16];
        v171 = v184;
      }

      while (v184);
    }

    dbAdapter3 = [(TPModel *)selfCopy dbAdapter];
    v186 = [dbAdapter3 distrustedEgoSponsoredBeneficiaryIDs:modelCopy];
    [v225 unionSet:v186];

    v187 = TPModelLog();
    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v225;
      _os_log_impl(&dword_26F78B000, v187, OS_LOG_TYPE_DEFAULT, "After retaining sponsored beneficiary IDs in excluded list: excluded:%{public}@", buf, 0xCu);
    }

    includedPeerIDs2 = [dynamicInfoCopy includedPeerIDs];
    if ([v200 isEqualToSet:includedPeerIDs2])
    {
      excludedPeerIDs3 = [dynamicInfoCopy excludedPeerIDs];
      if ([v225 isEqualToSet:excludedPeerIDs3])
      {
        if (!v206 || ([dynamicInfoCopy preapprovals], v171 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v206, "isEqual:", v171) & 1) != 0))
        {
          dispositions2 = [dynamicInfoCopy dispositions];
          v198 = [v234 isEqualToDictionary:dispositions2];

          if (v206)
          {

            if ((v198 & 1) == 0)
            {
              goto LABEL_243;
            }
          }

          else
          {

            if (!v198)
            {
              goto LABEL_243;
            }
          }

          v199 = TPModelLog();
          if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F78B000, v199, OS_LOG_TYPE_DEFAULT, "Analysis didn't actually change anything, returning old dynamicInfo", buf, 2u);
          }

          v29 = dynamicInfoCopy;
          goto LABEL_248;
        }
      }
    }

LABEL_243:
    v190 = TPModelLog();
    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v200;
      *&buf[12] = 2114;
      *&buf[14] = v225;
      _os_log_impl(&dword_26F78B000, v190, OS_LOG_TYPE_DEFAULT, "After exclusion filtering: included:%{public}@ excluded:%{public}@", buf, 0x16u);
    }

    v191 = [(TPModel *)selfCopy createDynamicInfoWithIncludedPeerIDs:v200 excludedPeerIDs:v225 dispositions:v234 preapprovals:v206 signingKeyPair:pairCopy error:error];
    v192 = TPModelLog();
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v191;
      _os_log_impl(&dword_26F78B000, v192, OS_LOG_TYPE_DEFAULT, "Returning new dynamicinfo: %{public}@", buf, 0xCu);
    }

    v29 = v191;
LABEL_248:

LABEL_255:
    goto LABEL_256;
  }

  contexta = objc_autoreleasePoolPush();
  machineID2 = [v212 machineID];
  v265 = 0;
  v233 = [(TPModel *)selfCopy peersWithMachineID:machineID2 error:&v265];
  v204 = v265;

  if (!v204)
  {
    v149 = [v233 mutableCopy];
    [v149 removeObject:modelCopy];
    v150 = TPModelLog();
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v149;
      _os_log_impl(&dword_26F78B000, v150, OS_LOG_TYPE_DEFAULT, "Remote peers with the ego machine ID: %{public}@", buf, 0xCu);
    }

    [v229 minusSet:v149];
    [v226 unionSet:v149];
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v151 = v149;
    v152 = [v151 countByEnumeratingWithState:&v261 objects:v294 count:16];
    if (v152)
    {
      v153 = *v262;
      do
      {
        for (ii = 0; ii != v152; ++ii)
        {
          if (*v262 != v153)
          {
            objc_enumerationMutation(v151);
          }

          v155 = *(*(&v261 + 1) + 8 * ii);
          v156 = [v234 objectForKeyedSubscript:v155];
          v157 = v156;
          if (v156)
          {
            v158 = v156;
          }

          else
          {
            v158 = objc_alloc_init(TPPBDisposition);
          }

          v159 = objc_alloc_init(TPPBDispositionDuplicateMachineID);
          [(TPPBDisposition *)v158 setDuplicateMachineID:v159];

          [v234 setObject:v158 forKeyedSubscript:v155];
        }

        v152 = [v151 countByEnumeratingWithState:&v261 objects:v294 count:16];
      }

      while (v152);
    }

    objc_autoreleasePoolPop(contexta);
    goto LABEL_106;
  }

  objc_autoreleasePoolPop(contexta);
  if (error)
  {
    v110 = v204;
    v29 = 0;
    *error = v204;
  }

  else
  {
    v29 = 0;
  }

LABEL_256:

LABEL_257:
  v51 = v210;
LABEL_258:

LABEL_259:
LABEL_260:

  return v29;
}

void __198__TPModel_calculateDynamicInfoFromModel_peer_peerPermanentInfo_peerStableInfo_startingDynamicInfo_addingPeerIDs_removingPeerIDs_preapprovedKeys_signingKeyPair_currentMachineIDs_sponsorPeerID_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 peerID];
  v7 = *(a1 + 96);
  v8 = [v5 permanentInfo];
  v9 = [v8 signingPubKey];
  v10 = [v9 spki];
  v11 = [TPHashBuilder hashWithAlgo:v7 ofData:v10];

  if ([*(a1 + 32) isEqualToString:v11])
  {
    v12 = *(a1 + 40);
    v13 = [v5 permanentInfo];
    LODWORD(v12) = [v12 canTrustCandidate:v13 inEpoch:*(a1 + 104)];

    if (v12)
    {
      v14 = TPModelLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = v6;
        _os_log_impl(&dword_26F78B000, v14, OS_LOG_TYPE_DEFAULT, "Peer %{public}@ preapproved", &v18, 0xCu);
      }

      [*(a1 + 48) addObject:v6];
      v15 = [*(a1 + 40) recursivelyExpandIncludedPeerIDs:*(a1 + 48) andExcludedPeerIDs:*(a1 + 56) dispositions:*(a1 + 64) withPeersTrustedBySponsorID:v6 currentMachineIDs:*(a1 + 72) forEpoch:*(a1 + 104)];
      v16 = *(*(a1 + 88) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      [*(a1 + 80) removeObject:*(a1 + 32)];
      *a3 = 1;
    }
  }
}

uint64_t __198__TPModel_calculateDynamicInfoFromModel_peer_peerPermanentInfo_peerStableInfo_startingDynamicInfo_addingPeerIDs_removingPeerIDs_preapprovedKeys_signingKeyPair_currentMachineIDs_sponsorPeerID_error___block_invoke_104(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v13 = 0;
  v6 = [v5 peerWithID:v3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v10 = [v6 permanentInfo];
    v11 = [v9 canTrustCandidate:v10 inEpoch:*(a1 + 40)];
  }

  else
  {
    if (!v7)
    {
      v11 = 1;
      goto LABEL_8;
    }

    v10 = TPModelLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_26F78B000, v10, OS_LOG_TYPE_DEFAULT, "Error finding excluded peer %{public}@: %{public}@", buf, 0x16u);
    }

    v11 = 1;
  }

LABEL_8:
  objc_autoreleasePoolPop(v4);

  return v11;
}

void __198__TPModel_calculateDynamicInfoFromModel_peer_peerPermanentInfo_peerStableInfo_startingDynamicInfo_addingPeerIDs_removingPeerIDs_preapprovedKeys_signingKeyPair_currentMachineIDs_sponsorPeerID_error___block_invoke_106(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 stableInfo];
  v4 = [v3 recoverySigningPublicKey];

  v5 = v12;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = [v12 stableInfo];
    v8 = [v7 recoverySigningPublicKey];
    v9 = [v6 recoveryKeyPeerID:v8];

    v10 = *(a1 + 40);
    v11 = [v12 peerID];
    LODWORD(v10) = [v10 containsObject:v11];

    if (v10)
    {
      [*(a1 + 48) addObject:v9];
    }

    [*(a1 + 56) addObject:v9];

    v5 = v12;
  }
}

- (id)calculateDynamicInfoForPeerWithID:(id)d addingPeerIDs:(id)ds removingPeerIDs:(id)iDs preapprovedKeys:(id)keys signingKeyPair:(id)pair currentMachineIDs:(id)machineIDs error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  iDsCopy = iDs;
  keysCopy = keys;
  pairCopy = pair;
  machineIDsCopy = machineIDs;
  v20 = [(TPModel *)self actualPeerWithID:dCopy error:error];
  v21 = v20;
  if (v20)
  {
    peerID = [v20 peerID];
    v33 = dCopy;
    permanentInfo = [v21 permanentInfo];
    [v21 stableInfo];
    v23 = pairCopy;
    v25 = v24 = keysCopy;
    dynamicInfo = [v21 dynamicInfo];
    selfCopy = self;
    v28 = dsCopy;
    v34 = [(TPModel *)selfCopy calculateDynamicInfoFromModel:peerID peer:v21 peerPermanentInfo:permanentInfo peerStableInfo:v25 startingDynamicInfo:dynamicInfo addingPeerIDs:dsCopy removingPeerIDs:iDsCopy preapprovedKeys:v24 signingKeyPair:v23 currentMachineIDs:machineIDsCopy sponsorPeerID:0 error:error];

    dCopy = v33;
    keysCopy = v24;
  }

  else
  {
    v29 = machineIDsCopy;
    v23 = pairCopy;
    v28 = dsCopy;
    v30 = TPModelLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = dCopy;
      _os_log_impl(&dword_26F78B000, v30, OS_LOG_TYPE_DEFAULT, "No peer for ID %{public}@", buf, 0xCu);
    }

    v34 = 0;
    machineIDsCopy = v29;
  }

  return v34;
}

- (id)recursivelyExpandIncludedPeerIDs:(id)ds andExcludedPeerIDs:(id)iDs dispositions:(id)dispositions withPeersTrustedBySponsorID:(id)d currentMachineIDs:(id)machineIDs forEpoch:(unint64_t)epoch
{
  v65 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  iDsCopy = iDs;
  dispositionsCopy = dispositions;
  dCopy = d;
  machineIDsCopy = machineIDs;
  v57 = 0;
  selfCopy = self;
  v18 = [(TPModel *)self peerWithID:dCopy error:&v57];
  v19 = v57;
  v20 = v19;
  if (v18)
  {
    v46 = v19;
    v48 = machineIDsCopy;
    v49 = dispositionsCopy;
    v50 = dsCopy;
    v21 = TPModelLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      peerID = [v18 peerID];
      dynamicInfo = [v18 dynamicInfo];
      includedPeerIDs = [dynamicInfo includedPeerIDs];
      dynamicInfo2 = [v18 dynamicInfo];
      excludedPeerIDs = [dynamicInfo2 excludedPeerIDs];
      *buf = 138543874;
      v60 = peerID;
      v61 = 2114;
      v62 = includedPeerIDs;
      v63 = 2114;
      v64 = excludedPeerIDs;
      _os_log_impl(&dword_26F78B000, v21, OS_LOG_TYPE_INFO, "Including information from sponsor (%{public}@): included: %{public}@ excluded: %{public}@", buf, 0x20u);
    }

    v47 = dCopy;

    dynamicInfo3 = [v18 dynamicInfo];
    excludedPeerIDs2 = [dynamicInfo3 excludedPeerIDs];
    v29 = iDsCopy;
    [iDsCopy unionSet:excludedPeerIDs2];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    dynamicInfo4 = [v18 dynamicInfo];
    includedPeerIDs2 = [dynamicInfo4 includedPeerIDs];

    v32 = [includedPeerIDs2 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v54;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(includedPeerIDs2);
          }

          v36 = *(*(&v53 + 1) + 8 * i);
          v37 = objc_autoreleasePoolPush();
          peerID2 = [v18 peerID];
          permanentInfo = [v18 permanentInfo];
          v40 = [(TPModel *)selfCopy considerCandidateID:v36 withSponsorID:peerID2 sponsorPermanentInfo:permanentInfo toExpandIncludedPeerIDs:v50 andExcludedPeerIDs:v29 dispositions:v49 currentMachineIDs:v48 forEpoch:epoch];

          objc_autoreleasePoolPop(v37);
        }

        v33 = [includedPeerIDs2 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v33);
    }

    peerID3 = [v18 peerID];
    permanentInfo2 = [v18 permanentInfo];
    dispositionsCopy = v49;
    dsCopy = v50;
    iDsCopy = v29;
    machineIDsCopy = v48;
    [(TPModel *)selfCopy considerVouchersSponsoredByPeerID:peerID3 sponsorPermanentInfo:permanentInfo2 toRecursivelyExpandIncludedPeerIDs:v50 andExcludedPeerIDs:v29 dispositions:v49 currentMachineIDs:v48 forEpoch:epoch];

    v43 = [(TPModel *)selfCopy considerPreapprovalsSponsoredByPeer:v18 toRecursivelyExpandIncludedPeerIDs:v50 andExcludedPeerIDs:v29 dispositions:v49 currentMachineIDs:v48 forEpoch:epoch];
    v20 = v46;
    dCopy = v47;
  }

  else if (v19)
  {
    v44 = TPModelLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v60 = dCopy;
      v61 = 2114;
      v62 = v20;
      _os_log_impl(&dword_26F78B000, v44, OS_LOG_TYPE_DEFAULT, "Could not find peer %{public}@: %{public}@", buf, 0x16u);
    }

    v43 = v20;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (id)considerPreapprovalsSponsoredByPeer:(id)peer toRecursivelyExpandIncludedPeerIDs:(id)ds andExcludedPeerIDs:(id)iDs dispositions:(id)dispositions currentMachineIDs:(id)machineIDs forEpoch:(unint64_t)epoch
{
  v50 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  dsCopy = ds;
  iDsCopy = iDs;
  dispositionsCopy = dispositions;
  machineIDsCopy = machineIDs;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  dynamicInfo = [peerCopy dynamicInfo];
  preapprovals = [dynamicInfo preapprovals];

  v17 = [preapprovals countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v44;
    *&v18 = 138543362;
    v27 = v18;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v44 != v20)
      {
        objc_enumerationMutation(preapprovals);
      }

      v22 = *(*(&v43 + 1) + 8 * v21);
      v23 = [TPHashBuilder algoOfHash:v22, v27];
      if (v23 != -1)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __141__TPModel_considerPreapprovalsSponsoredByPeer_toRecursivelyExpandIncludedPeerIDs_andExcludedPeerIDs_dispositions_currentMachineIDs_forEpoch___block_invoke;
        v34[3] = &unk_279DED9C0;
        v41 = v23;
        v34[4] = v22;
        v35 = peerCopy;
        selfCopy = self;
        v37 = dsCopy;
        v38 = iDsCopy;
        v39 = dispositionsCopy;
        v40 = machineIDsCopy;
        epochCopy = epoch;
        v33 = 0;
        [(TPModel *)self enumeratePeersUsingBlock:v34 error:&v33];
        v24 = v33;
        if (v24)
        {
          v25 = TPModelLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v48 = v24;
            _os_log_impl(&dword_26F78B000, v25, OS_LOG_TYPE_DEFAULT, "Error enumerating peers: %{public}@", buf, 0xCu);
          }

          v28 = v24;
        }

        if (v24)
        {
          break;
        }
      }

      if (v19 == ++v21)
      {
        v19 = [preapprovals countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v28 = 0;
  }

  return v28;
}

void __141__TPModel_considerPreapprovalsSponsoredByPeer_toRecursivelyExpandIncludedPeerIDs_andExcludedPeerIDs_dispositions_currentMachineIDs_forEpoch___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 peerID];
  v5 = *(a1 + 88);
  v6 = [v3 permanentInfo];

  v7 = [v6 signingPubKey];
  v8 = [v7 spki];
  v9 = [TPHashBuilder hashWithAlgo:v5 ofData:v8];

  if ([*(a1 + 32) isEqualToString:v9])
  {
    v10 = TPModelLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) peerID];
      *buf = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_26F78B000, v10, OS_LOG_TYPE_DEFAULT, "Sponsor %{public}@ preapproves peer %{public}@", buf, 0x16u);
    }

    v12 = *(a1 + 48);
    v13 = [*(a1 + 40) peerID];
    v14 = [*(a1 + 40) permanentInfo];
    v15 = [v12 considerCandidateID:v4 withSponsorID:v13 sponsorPermanentInfo:v14 toExpandIncludedPeerIDs:*(a1 + 56) andExcludedPeerIDs:*(a1 + 64) dispositions:*(a1 + 72) currentMachineIDs:*(a1 + 80) forEpoch:*(a1 + 96)];
  }
}

- (void)considerVouchersSponsoredByPeerID:(id)d sponsorPermanentInfo:(id)info toRecursivelyExpandIncludedPeerIDs:(id)ds andExcludedPeerIDs:(id)iDs dispositions:(id)dispositions currentMachineIDs:(id)machineIDs forEpoch:(unint64_t)epoch
{
  dCopy = d;
  infoCopy = info;
  dsCopy = ds;
  iDsCopy = iDs;
  dispositionsCopy = dispositions;
  machineIDsCopy = machineIDs;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  dbAdapter = [(TPModel *)self dbAdapter];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __160__TPModel_considerVouchersSponsoredByPeerID_sponsorPermanentInfo_toRecursivelyExpandIncludedPeerIDs_andExcludedPeerIDs_dispositions_currentMachineIDs_forEpoch___block_invoke;
  v31[3] = &unk_279DED998;
  v22 = dCopy;
  v32 = v22;
  v23 = dsCopy;
  v33 = v23;
  v24 = iDsCopy;
  v39 = &v41;
  v34 = v24;
  selfCopy = self;
  v25 = infoCopy;
  v36 = v25;
  v26 = dispositionsCopy;
  v37 = v26;
  v27 = machineIDsCopy;
  v38 = v27;
  epochCopy = epoch;
  v30 = 0;
  [dbAdapter enumerateVouchersUsingBlock:v31 error:&v30];
  v28 = v30;

  if (!v28)
  {
    v29 = v42[5];
    if (v29)
    {
      v28 = v29;
    }

    else
    {
      v28 = 0;
    }
  }

  _Block_object_dispose(&v41, 8);
}

void __160__TPModel_considerVouchersSponsoredByPeerID_sponsorPermanentInfo_toRecursivelyExpandIncludedPeerIDs_andExcludedPeerIDs_dispositions_currentMachineIDs_forEpoch___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 sponsorID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v5 beneficiaryID];
    if ([v8 containsObject:v9])
    {

LABEL_5:
      v12 = TPModelLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_8:

        goto LABEL_9;
      }

      *buf = 138543362;
      v29 = v5;
      v13 = "Skipping voucher for already known beneficiary: %{public}@";
LABEL_7:
      _os_log_impl(&dword_26F78B000, v12, OS_LOG_TYPE_INFO, v13, buf, 0xCu);
      goto LABEL_8;
    }

    v10 = *(a1 + 48);
    v11 = [v5 beneficiaryID];
    LODWORD(v10) = [v10 containsObject:v11];

    if (v10)
    {
      goto LABEL_5;
    }

    v14 = *(*(a1 + 88) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    v16 = *(a1 + 56);
    v17 = [v5 sponsorID];
    v18 = *(*(a1 + 88) + 8);
    obj = *(v18 + 40);
    LOBYTE(v16) = [v16 hasPeerWithID:v17 error:&obj];
    objc_storeStrong((v18 + 40), obj);

    if ((v16 & 1) == 0)
    {
      v12 = TPModelLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

      *buf = 138543362;
      v29 = v5;
      v13 = "Skipping voucher for unknown sponsor: %{public}@";
      goto LABEL_7;
    }

    if (*(*(*(a1 + 88) + 8) + 40))
    {
      v19 = TPModelLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138543618;
        v29 = v5;
        v30 = 2114;
        v31 = v26;
        _os_log_error_impl(&dword_26F78B000, v19, OS_LOG_TYPE_ERROR, "DB error for sponsor %{public}@: %{public}@", buf, 0x16u);
      }

      *a3 = 1;
    }

    else
    {
      v20 = [*(a1 + 56) verifyVoucherSignature:v5];
      v21 = TPModelLog();
      v22 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v29 = v5;
          _os_log_impl(&dword_26F78B000, v22, OS_LOG_TYPE_INFO, "Inspecting voucher claiming to be from sponsor: %{public}@", buf, 0xCu);
        }

        v23 = *(a1 + 56);
        v24 = [v5 beneficiaryID];
        v25 = [v23 considerCandidateID:v24 withSponsorID:*(a1 + 32) sponsorPermanentInfo:*(a1 + 64) toExpandIncludedPeerIDs:*(a1 + 40) andExcludedPeerIDs:*(a1 + 48) dispositions:*(a1 + 72) currentMachineIDs:*(a1 + 80) forEpoch:*(a1 + 96)];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v5;
          _os_log_impl(&dword_26F78B000, v22, OS_LOG_TYPE_DEFAULT, "voucher: voucher has failed signature checking: %{public}@", buf, 0xCu);
        }
      }
    }
  }

LABEL_9:
}

- (id)considerCandidateID:(id)d withSponsorID:(id)iD sponsorPermanentInfo:(id)info toExpandIncludedPeerIDs:(id)ds andExcludedPeerIDs:(id)iDs dispositions:(id)dispositions currentMachineIDs:(id)machineIDs forEpoch:(unint64_t)self0
{
  v79 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  dsCopy = ds;
  iDsCopy = iDs;
  dispositionsCopy = dispositions;
  machineIDsCopy = machineIDs;
  if ([dsCopy containsObject:dCopy])
  {
    goto LABEL_8;
  }

  if ([iDsCopy containsObject:dCopy])
  {
    v23 = TPModelLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v76 = dCopy;
      _os_log_impl(&dword_26F78B000, v23, OS_LOG_TYPE_DEFAULT, "voucher: peer (%{public}@) already excluded", buf, 0xCu);
    }

    goto LABEL_8;
  }

  allCustodianRecoveryKeyPeerIDs = [(TPModel *)self allCustodianRecoveryKeyPeerIDs];
  v25 = [allCustodianRecoveryKeyPeerIDs containsObject:dCopy];

  if (v25)
  {
    [dsCopy addObject:dCopy];
LABEL_8:
    v26 = 0;
    goto LABEL_9;
  }

  v74 = 0;
  v28 = [(TPModel *)self peerWithID:dCopy error:&v74];
  v29 = v74;
  v30 = v29;
  if (!v28)
  {
    v35 = 0;
    v36 = TPModelLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v76 = dCopy;
      v77 = 2114;
      v78 = v30;
      _os_log_impl(&dword_26F78B000, v36, OS_LOG_TYPE_DEFAULT, "voucher: no peer for id %{public}@: %{public}@", buf, 0x16u);
    }

    v37 = v30;
    v26 = v30;
    goto LABEL_66;
  }

  v67 = v29;
  v68 = iDCopy;
  v71 = v28;
  permanentInfo = [v28 permanentInfo];
  machineID = [permanentInfo machineID];
  v33 = [machineIDsCopy entryFor:machineID];

  v70 = v33;
  if (v33)
  {
    status = [v33 status];
  }

  else
  {
    status = 0;
  }

  v38 = [dispositionsCopy objectForKeyedSubscript:dCopy];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = objc_alloc_init(TPPBDisposition);
  }

  v72 = v40;

  if (status > 2)
  {
    v41 = v72;
    switch(status)
    {
      case 3:
        v48 = TPModelLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v76 = v33;
          v77 = 2114;
          v78 = v72;
          _os_log_impl(&dword_26F78B000, v48, OS_LOG_TYPE_DEFAULT, "voucher: evicted machineID %{public}@ %{public}@", buf, 0x16u);
        }

        [(TPPBDisposition *)v72 setUnknownMachineID:0];
        [(TPPBDisposition *)v72 setDisallowedMachineID:0];
        [(TPPBDisposition *)v72 setUnknownReasonRemovalMachineID:0];
        v45 = objc_alloc_init(TPPBDispositionEvictedMachineID);
        [(TPPBDisposition *)v72 setEvictedMachineID:v45];
        break;
      case 4:
        v51 = TPModelLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v76 = v33;
          v77 = 2114;
          v78 = v72;
          _os_log_impl(&dword_26F78B000, v51, OS_LOG_TYPE_DEFAULT, "voucher: unknown reason removed machineID %{public}@ %{public}@", buf, 0x16u);
        }

        [(TPPBDisposition *)v72 setUnknownMachineID:0];
        [(TPPBDisposition *)v72 setDisallowedMachineID:0];
        [(TPPBDisposition *)v72 setEvictedMachineID:0];
        v45 = objc_alloc_init(TPPBDispositionUnknownReasonRemovalMachineID);
        [(TPPBDisposition *)v72 setUnknownReasonRemovalMachineID:v45];
        break;
      case 5:
        v44 = TPModelLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v76 = v33;
          v77 = 2114;
          v78 = v72;
          _os_log_impl(&dword_26F78B000, v44, OS_LOG_TYPE_DEFAULT, "voucher: ghosted machineID %{public}@ %{public}@", buf, 0x16u);
        }

        v45 = objc_alloc_init(TPPBDispositionGhostedMachineID);
        [(TPPBDisposition *)v72 setGhostedMachineID:v45];
        break;
      default:
        goto LABEL_49;
    }

    v49 = dispositionsCopy;
    v50 = v72;
    goto LABEL_48;
  }

  v41 = v72;
  switch(status)
  {
    case 0:
      if (machineIDsCopy)
      {
        v46 = objc_alloc_init(TPPBUnknownMachineID);
        [(TPPBDisposition *)v72 setUnknownMachineID:v46];
      }

      [(TPPBDisposition *)v72 setDisallowedMachineID:0];
      [(TPPBDisposition *)v72 setEvictedMachineID:0];
      [(TPPBDisposition *)v72 setUnknownReasonRemovalMachineID:0];
      [dispositionsCopy setObject:v72 forKeyedSubscript:dCopy];
      v47 = TPModelLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v76 = v33;
        v77 = 2114;
        v78 = v72;
        _os_log_impl(&dword_26F78B000, v47, OS_LOG_TYPE_DEFAULT, "voucher: unknown machineID %{public}@ %{public}@", buf, 0x16u);
      }

      break;
    case 1:
      v49 = dispositionsCopy;
      v50 = 0;
LABEL_48:
      [v49 setObject:v50 forKeyedSubscript:dCopy];
      break;
    case 2:
      v42 = objc_alloc_init(TPPBDispositionDisallowedMachineID);
      [(TPPBDisposition *)v72 setDisallowedMachineID:v42];

      [dispositionsCopy setObject:v72 forKeyedSubscript:dCopy];
      v43 = TPModelLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v76 = v33;
        v77 = 2114;
        v78 = v72;
        _os_log_impl(&dword_26F78B000, v43, OS_LOG_TYPE_DEFAULT, "voucher: disallowed machineID %{public}@ %{public}@", buf, 0x16u);
      }

      v26 = 0;
      v35 = v71;
      goto LABEL_65;
  }

LABEL_49:
  v65 = infoCopy;
  v52 = [MEMORY[0x277CBEB58] setWithSet:dsCopy];
  [v52 minusSet:iDsCopy];
  [v52 addObject:dCopy];
  v73 = 0;
  v53 = [(TPModel *)self policyForPeerIDs:v52 candidatePeerID:dCopy candidateStableInfo:0 error:&v73];
  v54 = v73;
  v69 = v53;
  v66 = v52;
  if (!v53)
  {
    v57 = TPModelLog();
    v56 = v54;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v76 = v54;
      _os_log_impl(&dword_26F78B000, v57, OS_LOG_TYPE_DEFAULT, "voucher: failed to fetch policy: %{public}@", buf, 0xCu);
    }

    v26 = v54;
    infoCopy = v65;
    goto LABEL_64;
  }

  unknownMachineID = [(TPPBDisposition *)v41 unknownMachineID];
  if (unknownMachineID)
  {
    v56 = v54;
LABEL_56:
    infoCopy = v65;
LABEL_57:

LABEL_58:
    [dispositionsCopy setObject:v41 forKeyedSubscript:dCopy];
    goto LABEL_59;
  }

  unknownMachineID = [(TPPBDisposition *)v41 evictedMachineID];
  v56 = v54;
  if (unknownMachineID)
  {
    goto LABEL_56;
  }

  unknownMachineID = [(TPPBDisposition *)v41 unknownReasonRemovalMachineID];
  infoCopy = v65;
  if (unknownMachineID)
  {
    goto LABEL_57;
  }

  unknownMachineID = [(TPPBDisposition *)v41 unknownMachineID];
  if (unknownMachineID)
  {
    goto LABEL_57;
  }

  unknownMachineID = [(TPPBDisposition *)v41 disallowedMachineID];
  if (unknownMachineID)
  {
    goto LABEL_57;
  }

  ghostedMachineID = [(TPPBDisposition *)v41 ghostedMachineID];

  if (ghostedMachineID)
  {
    goto LABEL_58;
  }

LABEL_59:
  permanentInfo2 = [v71 permanentInfo];
  v59 = [(TPModel *)self canIntroduceCandidate:permanentInfo2 withSponsor:infoCopy toEpoch:epoch underPolicy:v69 disposition:v41];

  if (v59)
  {
    v60 = TPModelLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      peerID = [v71 peerID];
      *buf = 138543618;
      v76 = peerID;
      v77 = 2114;
      v78 = v68;
      _os_log_impl(&dword_26F78B000, v60, OS_LOG_TYPE_DEFAULT, "voucher: %{public}@ presented valid voucher from %{public}@", buf, 0x16u);
    }

    [dsCopy addObject:dCopy];
    dynamicInfo = [v71 dynamicInfo];
    excludedPeerIDs = [dynamicInfo excludedPeerIDs];
    [iDsCopy unionSet:excludedPeerIDs];

    v26 = [(TPModel *)self recursivelyExpandIncludedPeerIDs:dsCopy andExcludedPeerIDs:iDsCopy dispositions:dispositionsCopy withPeersTrustedBySponsorID:dCopy currentMachineIDs:machineIDsCopy forEpoch:epoch];
  }

  else
  {
    v26 = 0;
  }

LABEL_64:

  v33 = v70;
  v35 = v71;
  v43 = v66;
LABEL_65:

  v37 = v67;
  iDCopy = v68;
LABEL_66:

LABEL_9:

  return v26;
}

- (BOOL)validateVoucherForPeer:(id)peer sponsor:(id)sponsor
{
  peerCopy = peer;
  sponsorCopy = sponsor;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  dbAdapter = [(TPModel *)self dbAdapter];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__TPModel_validateVoucherForPeer_sponsor___block_invoke;
  v14[3] = &unk_279DED970;
  v9 = peerCopy;
  v15 = v9;
  v10 = sponsorCopy;
  v16 = v10;
  selfCopy = self;
  v18 = &v19;
  v13 = 0;
  [dbAdapter enumerateVouchersUsingBlock:v14 error:&v13];
  v11 = v13;

  LOBYTE(dbAdapter) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  return dbAdapter;
}

void __42__TPModel_validateVoucherForPeer_sponsor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 beneficiaryID];
  v6 = [*(a1 + 32) peerID];
  if (([v5 isEqualToString:v6] & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = [v10 sponsorID];
  v8 = [*(a1 + 40) peerID];
  if (![v7 isEqualToString:v8])
  {

LABEL_6:
    goto LABEL_7;
  }

  v9 = [*(a1 + 48) verifyVoucherSignature:v10];

  if (v9)
  {
    *a3 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_7:
}

- (BOOL)verifyVoucherSignature:(id)signature
{
  v42 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  sponsorID = [signatureCopy sponsorID];
  v36 = 0;
  v6 = [(TPModel *)self peerWithID:sponsorID error:&v36];
  v7 = v36;

  if (v6 && !v7)
  {
    goto LABEL_26;
  }

  v8 = TPModelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sponsorID2 = [signatureCopy sponsorID];
    *buf = 138543618;
    v39 = sponsorID2;
    v40 = 2114;
    v41 = v7;
    _os_log_impl(&dword_26F78B000, v8, OS_LOG_TYPE_DEFAULT, "Can't find peer %{public}@: %{public}@", buf, 0x16u);
  }

  if (v6)
  {
LABEL_26:
    permanentInfo = [v6 permanentInfo];
    signingPubKey = [permanentInfo signingPubKey];
    v12 = [signatureCopy checkSignatureWithKey:signingPubKey];

    if (v12)
    {
      goto LABEL_9;
    }
  }

  stableInfo = [v6 stableInfo];
  recoverySigningPublicKey = [stableInfo recoverySigningPublicKey];

  if (recoverySigningPublicKey && ([v6 stableInfo], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "recoverySigningPublicKey"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(signatureCopy, "createRecoveryECPublicKey:", v16), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(signatureCopy, "checkSignatureWithKey:", v17), v17, v16, v15, (v18 & 1) != 0))
  {
LABEL_9:
    v19 = 1;
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    custodianRecoveryKeys = [(TPModel *)self custodianRecoveryKeys];
    v21 = [custodianRecoveryKeys countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v31 = v7;
      v23 = *v33;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(custodianRecoveryKeys);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          custodianRecoveryKeys2 = [(TPModel *)self custodianRecoveryKeys];
          v27 = [custodianRecoveryKeys2 objectForKeyedSubscript:v25];

          signingPublicKey = [v27 signingPublicKey];
          v29 = [signatureCopy checkSignatureWithKey:signingPublicKey];

          if (v29)
          {
            v19 = 1;
            goto LABEL_20;
          }
        }

        v22 = [custodianRecoveryKeys countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_20:
      v7 = v31;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)createVoucherForCandidate:(id)candidate stableInfo:(id)info withSponsorID:(id)d reason:(unint64_t)reason signingKeyPair:(id)pair error:(id *)error
{
  candidateCopy = candidate;
  dCopy = d;
  pairCopy = pair;
  if ([(TPModel *)self checkIntroductionForCandidate:candidateCopy stableInfo:info withSponsorID:dCopy error:error])
  {
    peerID = [candidateCopy peerID];
    v18 = [TPVoucher voucherWithReason:reason beneficiaryID:peerID sponsorID:dCopy signingKeyPair:pairCopy error:error];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)checkIntroductionForCandidate:(id)candidate stableInfo:(id)info withSponsorID:(id)d error:(id *)error
{
  v48[2] = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  infoCopy = info;
  v12 = [(TPModel *)self actualPeerWithID:d error:error];
  v13 = v12;
  if (v12)
  {
    trustedPeerIDs = [v12 trustedPeerIDs];
    peerID = [candidateCopy peerID];
    v16 = [(TPModel *)self policyForPeerIDs:trustedPeerIDs candidatePeerID:peerID candidateStableInfo:infoCopy error:error];

    if (!v16)
    {
      v22 = 0;
LABEL_20:

      goto LABEL_21;
    }

    modelID = [candidateCopy modelID];
    v18 = [v16 categoryForModel:modelID];

    if (v18)
    {
      modelID2 = objc_alloc_init(TPPBDisposition);
      permanentInfo = [v13 permanentInfo];
      permanentInfo2 = [v13 permanentInfo];
      v22 = -[TPModel canIntroduceCandidate:withSponsor:toEpoch:underPolicy:disposition:](self, "canIntroduceCandidate:withSponsor:toEpoch:underPolicy:disposition:", candidateCopy, permanentInfo, [permanentInfo2 epoch], v16, modelID2);

      if (!error || v22)
      {
        goto LABEL_18;
      }

      v39 = TPErrorDomain;
      v40 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v46[0] = @"Policy prohibits introducing candidate";
      v45[0] = v23;
      v45[1] = @"sponsorID";
      policyProhibits = [(TPPBDisposition *)modelID2 policyProhibits];
      sponsorId = [policyProhibits sponsorId];
      v46[1] = sponsorId;
      v45[2] = @"sponsorCategory";
      policyProhibits2 = [(TPPBDisposition *)modelID2 policyProhibits];
      sponsorCategory = [policyProhibits2 sponsorCategory];
      v38 = sponsorCategory;
      v44 = v18;
      if (sponsorCategory)
      {
        v25 = sponsorCategory;
      }

      else
      {
        v25 = @"unknown";
      }

      v46[2] = v25;
      v45[3] = @"candidateCategory";
      policyProhibits3 = [(TPPBDisposition *)modelID2 policyProhibits];
      candidateCategory = [policyProhibits3 candidateCategory];
      v27 = candidateCategory;
      if (candidateCategory)
      {
        v28 = candidateCategory;
      }

      else
      {
        v28 = @"unknown";
      }

      v46[3] = v28;
      v45[4] = @"policyVersion";
      v29 = MEMORY[0x277CCABB0];
      policyProhibits4 = [(TPPBDisposition *)modelID2 policyProhibits];
      v31 = [v29 numberWithUnsignedLongLong:{objc_msgSend(policyProhibits4, "policyVersion")}];
      v46[4] = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:5];
      *error = [v40 errorWithDomain:v39 code:6 userInfo:v32];

      v18 = v44;
      v33 = policyProhibits;
    }

    else
    {
      if (!error)
      {
        v22 = 0;
        goto LABEL_19;
      }

      v34 = MEMORY[0x277CCA9B8];
      v35 = TPErrorDomain;
      v47[0] = *MEMORY[0x277CCA450];
      v47[1] = @"model";
      v48[0] = @"Unrecognized modelID for candidate";
      modelID2 = [candidateCopy modelID];
      v48[1] = modelID2;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
      *error = [v34 errorWithDomain:v35 code:9 userInfo:v33];
    }

    v22 = 0;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v22 = 0;
LABEL_21:

  return v22;
}

- (BOOL)canIntroduceCandidate:(id)candidate withSponsor:(id)sponsor toEpoch:(unint64_t)epoch underPolicy:(id)policy disposition:(id)disposition
{
  candidateCopy = candidate;
  sponsorCopy = sponsor;
  policyCopy = policy;
  dispositionCopy = disposition;
  if ([(TPModel *)self canTrustCandidate:candidateCopy inEpoch:epoch])
  {
    modelID = [sponsorCopy modelID];
    ancientEpoch2 = [policyCopy categoryForModel:modelID];

    modelID2 = [candidateCopy modelID];
    v19 = [policyCopy categoryForModel:modelID2];

    v20 = [policyCopy trustedPeerInCategory:ancientEpoch2 canIntroduceCategory:v19];
    if ((v20 & 1) == 0)
    {
      v21 = objc_alloc_init(TPPBPolicyProhibits);
      [dispositionCopy setPolicyProhibits:v21];

      version = [policyCopy version];
      versionNumber = [version versionNumber];
      policyProhibits = [dispositionCopy policyProhibits];
      [policyProhibits setPolicyVersion:versionNumber];

      peerID = [sponsorCopy peerID];
      policyProhibits2 = [dispositionCopy policyProhibits];
      [policyProhibits2 setSponsorId:peerID];

      policyProhibits3 = [dispositionCopy policyProhibits];
      [policyProhibits3 setSponsorCategory:ancientEpoch2];

      policyProhibits4 = [dispositionCopy policyProhibits];
      [policyProhibits4 setCandidateCategory:v19];

      if (v19)
      {
        v29 = 0;
      }

      else
      {
        v33 = MEMORY[0x277CCACA8];
        policyProhibits4 = [candidateCopy modelID];
        v29 = [v33 stringWithFormat:@"unrecognized modelID: %@", policyProhibits4];
      }

      policyProhibits5 = [dispositionCopy policyProhibits];
      [policyProhibits5 setExplanation:v29];

      if (!v19)
      {
      }
    }
  }

  else
  {
    v30 = objc_alloc_init(TPPBAncientEpoch);
    [dispositionCopy setAncientEpoch:v30];

    epoch = [candidateCopy epoch];
    ancientEpoch = [dispositionCopy ancientEpoch];
    [ancientEpoch setCandidateEpoch:epoch];

    ancientEpoch2 = [dispositionCopy ancientEpoch];
    [ancientEpoch2 setMyEpoch:epoch];
    v20 = 0;
  }

  return v20;
}

- (id)createDynamicInfoWithIncludedPeerIDs:(id)ds excludedPeerIDs:(id)iDs dispositions:(id)dispositions preapprovals:(id)preapprovals signingKeyPair:(id)pair error:(id *)error
{
  dsCopy = ds;
  iDsCopy = iDs;
  dispositionsCopy = dispositions;
  preapprovalsCopy = preapprovals;
  pairCopy = pair;
  v25 = 0;
  v19 = [(TPModel *)self maxClockWithError:&v25];
  v20 = v25;
  v21 = v20;
  if (v20)
  {
    if (error)
    {
      v22 = v20;
      v23 = 0;
      *error = v21;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = [TPPeerDynamicInfo dynamicInfoWithClock:v19 + 1 includedPeerIDs:dsCopy excludedPeerIDs:iDsCopy dispositions:dispositionsCopy preapprovals:preapprovalsCopy signingKeyPair:pairCopy error:error];
  }

  return v23;
}

- (unint64_t)maxClockWithError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__TPModel_maxClockWithError___block_invoke;
  v10[3] = &unk_279DED8D0;
  v10[4] = &v11;
  [(TPModel *)self enumeratePeersUsingBlock:v10 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = TPModelLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_26F78B000, v5, OS_LOG_TYPE_DEFAULT, "maxClock error enumerating peers: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v6 = v4;
      v7 = 0;
      *error = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

void __29__TPModel_maxClockWithError___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 stableInfo];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v5 = [v13 stableInfo];
    v6 = [v5 clock];

    if (v4 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    *(*(*(a1 + 32) + 8) + 24) = v7;
  }

  v8 = [v13 dynamicInfo];

  if (v8)
  {
    v9 = *(*(*(a1 + 32) + 8) + 24);
    v10 = [v13 dynamicInfo];
    v11 = [v10 clock];

    if (v9 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    *(*(*(a1 + 32) + 8) + 24) = v12;
  }
}

- (id)createStableInfoWithFrozenPolicyVersion:(id)version flexiblePolicyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(int)views secureElementIdentity:(id)identity walrusSetting:(id)setting webAccess:(id)access deviceName:(id)self0 serialNumber:(id)self1 osVersion:(id)self2 signingKeyPair:(id)self3 recoverySigningPubKey:(id)self4 recoveryEncryptionPubKey:(id)self5 isInheritedAccount:(BOOL)self6 error:(id *)self7
{
  versionCopy = version;
  policyVersionCopy = policyVersion;
  secretsCopy = secrets;
  identityCopy = identity;
  settingCopy = setting;
  accessCopy = access;
  nameCopy = name;
  numberCopy = number;
  osVersionCopy = osVersion;
  pairCopy = pair;
  keyCopy = key;
  pubKeyCopy = pubKey;
  v48[0] = 0;
  v28 = [(TPModel *)self maxClockWithError:v48];
  v29 = v48[0];
  v30 = v29;
  if (v29)
  {
    v42 = keyCopy;
    v31 = secretsCopy;
    if (error)
    {
      v32 = v29;
      v33 = 0;
      *error = v30;
    }

    else
    {
      v33 = 0;
    }

    v36 = v42;
  }

  else
  {
    v34 = [TPPeerStableInfo alloc];
    LOBYTE(v39) = account;
    v38 = keyCopy;
    v35 = v28 + 1;
    v36 = keyCopy;
    v31 = secretsCopy;
    v33 = [(TPPeerStableInfo *)v34 initWithClock:v35 frozenPolicyVersion:versionCopy flexiblePolicyVersion:policyVersionCopy policySecrets:secretsCopy syncUserControllableViews:views secureElementIdentity:identityCopy walrusSetting:settingCopy webAccess:accessCopy deviceName:nameCopy serialNumber:numberCopy osVersion:osVersionCopy signingKeyPair:pairCopy recoverySigningPubKey:v38 recoveryEncryptionPubKey:pubKeyCopy isInheritedAccount:v39 error:error];
  }

  return v33;
}

- (int)userViewSyncabilityConsensusAmongTrustedPeers:(id)peers error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  peersCopy = peers;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  includedPeerIDs = [peersCopy includedPeerIDs];
  v8 = [includedPeerIDs countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = *v33;
    v11 = 1;
    v30 = peersCopy;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(includedPeerIDs);
      }

      v13 = *(*(&v32 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      v31 = 0;
      v15 = [(TPModel *)self peerWithID:v13 error:&v31];
      v16 = v31;
      if (v16)
      {
        break;
      }

      stableInfo = [v15 stableInfo];
      syncUserControllableViews = [stableInfo syncUserControllableViews];

      if (syncUserControllableViews == 1)
      {
        v26 = TPModelLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          peerID = [v15 peerID];
          *buf = 138543362;
          v37 = peerID;
          _os_log_impl(&dword_26F78B000, v26, OS_LOG_TYPE_DEFAULT, "Peer %{public}@ has disabled user view syncing", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        v23 = 0;
LABEL_24:
        v11 = 1;
        peersCopy = v30;
        goto LABEL_25;
      }

      stableInfo2 = [v15 stableInfo];
      syncUserControllableViews2 = [stableInfo2 syncUserControllableViews];

      if (syncUserControllableViews2 == 2)
      {
        v21 = TPModelLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          peerID2 = [v15 peerID];
          *buf = 138543362;
          v37 = peerID2;
          _os_log_impl(&dword_26F78B000, v21, OS_LOG_TYPE_DEFAULT, "Peer %{public}@ has enabled user view syncing", buf, 0xCu);
        }

        v11 = 2;
      }

      objc_autoreleasePoolPop(v14);
      if (v9 == ++v12)
      {
        v9 = [includedPeerIDs countByEnumeratingWithState:&v32 objects:v40 count:16];
        peersCopy = v30;
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    v23 = v16;
    v24 = TPModelLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v37 = v13;
      v38 = 2114;
      v39 = v23;
      _os_log_impl(&dword_26F78B000, v24, OS_LOG_TYPE_DEFAULT, "Can't find peer %{public}@: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (errorCopy)
    {
      v25 = v23;
      *errorCopy = v23;
    }

    goto LABEL_24;
  }

  v11 = 1;
LABEL_16:

  v23 = 0;
LABEL_25:

  return v11;
}

- (id)getDynamicInfoForPeerWithID:(id)d error:(id *)error
{
  v4 = [(TPModel *)self peerWithID:d error:error];
  dynamicInfo = [v4 dynamicInfo];

  return dynamicInfo;
}

- (id)getStableInfoForPeerWithID:(id)d error:(id *)error
{
  v4 = [(TPModel *)self peerWithID:d error:error];
  stableInfo = [v4 stableInfo];

  return stableInfo;
}

- (unint64_t)statusOfPeerWithID:(id)d error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29 = 0;
  v7 = [(TPModel *)self peerWithID:dCopy error:&v29];
  v8 = v29;
  v9 = v8;
  if (v7)
  {
    goto LABEL_2;
  }

  if (!v8)
  {
    v31[3] |= 0x20uLL;
LABEL_2:
    dynamicInfo = [v7 dynamicInfo];
    includedPeerIDs = [dynamicInfo includedPeerIDs];
    v12 = [includedPeerIDs count] == 0;

    if (v12)
    {
      v16 = TPModelLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = dCopy;
        _os_log_impl(&dword_26F78B000, v16, OS_LOG_TYPE_DEFAULT, "status: peerID %{public}@ has no included peer IDs?", buf, 0xCu);
      }
    }

    else
    {
      v31[3] |= 2uLL;
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __36__TPModel_statusOfPeerWithID_error___block_invoke;
    v24[3] = &unk_279DED948;
    v17 = dCopy;
    v25 = v17;
    v28 = &v30;
    v26 = v7;
    selfCopy = self;
    v23 = 0;
    [(TPModel *)self enumeratePeersUsingBlock:v24 error:&v23];
    v9 = v23;
    v18 = TPModelLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v19)
      {
        *buf = 138543362;
        v35 = v9;
        _os_log_impl(&dword_26F78B000, v18, OS_LOG_TYPE_DEFAULT, "status: error enumerating peers: %{public}@", buf, 0xCu);
      }

      if (error)
      {
        v20 = v9;
        v15 = 0;
        *error = v9;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      if (v19)
      {
        v21 = TPPeerStatusToString(v31[3]);
        *buf = 138543618;
        v35 = v17;
        v36 = 2114;
        v37 = v21;
        _os_log_impl(&dword_26F78B000, v18, OS_LOG_TYPE_DEFAULT, "status: peer %{public}@ trust status is: %{public}@", buf, 0x16u);
      }

      v15 = v31[3];
    }

    goto LABEL_22;
  }

  v13 = TPModelLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = dCopy;
    v36 = 2114;
    v37 = v9;
    _os_log_impl(&dword_26F78B000, v13, OS_LOG_TYPE_DEFAULT, "can't find peer for status %{public}@: %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v14 = v9;
    v15 = 0;
    *error = v9;
  }

  else
  {
    v15 = 0;
  }

LABEL_22:

  _Block_object_dispose(&v30, 8);
  return v15;
}

void __36__TPModel_statusOfPeerWithID_error___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 peerID];
  v5 = [v3 dynamicInfo];
  v6 = [v5 includedPeerIDs];
  v7 = [v6 containsObject:*(a1 + 32)];

  v8 = [v3 dynamicInfo];
  v9 = [v8 excludedPeerIDs];
  v10 = [v9 containsObject:*(a1 + 32)];

  if ([v4 isEqualToString:*(a1 + 32)])
  {
    if (v7)
    {
      v11 = TPModelLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138543362;
        *&v37[4] = v4;
        _os_log_impl(&dword_26F78B000, v11, OS_LOG_TYPE_DEFAULT, "status: peerID %{public}@ trusts itself", v37, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) |= 0x40uLL;
    }

    if (v10)
    {
      v12 = TPModelLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *v37 = 138543362;
        *&v37[4] = v13;
        _os_log_impl(&dword_26F78B000, v12, OS_LOG_TYPE_DEFAULT, "status: peer %{public}@ excludes itself", v37, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) |= 4uLL;
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 24) & 0xFFFFFFFFFFFFFFBFLL;
LABEL_31:
      *(v14 + 24) = v15;
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (((v10 | v7) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) |= 0x80uLL;
  }

  v16 = [*(a1 + 40) dynamicInfo];
  v17 = [v16 includedPeerIDs];
  v18 = [v17 containsObject:v4];

  if (!v18)
  {
    goto LABEL_32;
  }

  if ((v7 & 1) != 0 || ([*(a1 + 48) validateVoucherForPeer:*(a1 + 40) sponsor:v3] & 1) != 0 || objc_msgSend(*(a1 + 48), "validatePeerWithPreApproval:sponsor:", *(a1 + 40), v3))
  {
    *(*(*(a1 + 56) + 8) + 24) |= 1uLL;
    v19 = TPModelLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v20 = *(a1 + 32);
    *v37 = 138543618;
    *&v37[4] = v4;
    *&v37[12] = 2114;
    *&v37[14] = v20;
    v21 = "status: peer %{public}@ trusts %{public}@";
    goto LABEL_18;
  }

  *(*(*(a1 + 56) + 8) + 24) &= ~2uLL;
  v19 = TPModelLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v36 = *(a1 + 32);
    *v37 = 138543618;
    *&v37[4] = v4;
    *&v37[12] = 2114;
    *&v37[14] = v36;
    v21 = "status: peer %{public}@ doesn't trust %{public}@";
LABEL_18:
    _os_log_impl(&dword_26F78B000, v19, OS_LOG_TYPE_INFO, v21, v37, 0x16u);
  }

LABEL_19:

  if (v10)
  {
    v22 = TPModelLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      *v37 = 138543618;
      *&v37[4] = v4;
      *&v37[12] = 2114;
      *&v37[14] = v23;
      _os_log_impl(&dword_26F78B000, v22, OS_LOG_TYPE_DEFAULT, "status: peer %{public}@ excludes %{public}@", v37, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) |= 4uLL;
  }

  v24 = [v3 permanentInfo];
  v25 = [v24 epoch];
  v26 = [*(a1 + 40) permanentInfo];
  v27 = [v26 epoch];

  if (v25 > v27)
  {
    v28 = TPModelLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      *v37 = 138543618;
      *&v37[4] = v4;
      *&v37[12] = 2114;
      *&v37[14] = v29;
      _os_log_impl(&dword_26F78B000, v28, OS_LOG_TYPE_DEFAULT, "status: peer %{public}@ outdates %{public}@", v37, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) |= 8uLL;
  }

  v30 = [v3 permanentInfo];
  v31 = [v30 epoch];
  v32 = [*(a1 + 40) permanentInfo];
  v33 = [v32 epoch] + 1;

  if (v31 > v33)
  {
    v34 = TPModelLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 32);
      *v37 = 138543618;
      *&v37[4] = v4;
      *&v37[12] = 2114;
      *&v37[14] = v35;
      _os_log_impl(&dword_26F78B000, v34, OS_LOG_TYPE_DEFAULT, "status: peer %{public}@ far outdates %{public}@", v37, 0x16u);
    }

    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 24) | 0x10;
    goto LABEL_31;
  }

LABEL_32:
}

- (BOOL)validatePeerWithPreApproval:(id)approval sponsor:(id)sponsor
{
  approvalCopy = approval;
  sponsorCopy = sponsor;
  dynamicInfo = [sponsorCopy dynamicInfo];
  preapprovals = [dynamicInfo preapprovals];
  v9 = [preapprovals count];

  if (v9)
  {
    permanentInfo = [approvalCopy permanentInfo];
    signingPubKey = [permanentInfo signingPubKey];
    spki = [signingPubKey spki];
    v13 = [TPHashBuilder hashWithAlgo:1 ofData:spki];

    dynamicInfo2 = [sponsorCopy dynamicInfo];
    preapprovals2 = [dynamicInfo2 preapprovals];
    v16 = [preapprovals2 containsObject:v13];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)hasPotentiallyTrustedPeerWithSigningKey:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = objc_autoreleasePoolPush();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = [MEMORY[0x277CBEB58] set];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__TPModel_hasPotentiallyTrustedPeerWithSigningKey_error___block_invoke;
  v15[3] = &unk_279DED8F8;
  v9 = keyCopy;
  v16 = v9;
  v17 = &v18;
  v14 = 0;
  v10 = [(TPModel *)self _iterateOverPeersWithBlock:v15 error:&v14];
  v11 = v14;
  if (!v11)
  {
    [v19[5] intersectSet:v10];
    v4 = [v19[5] count] != 0;
  }

  _Block_object_dispose(&v18, 8);
  objc_autoreleasePoolPop(v8);
  if (v11)
  {
    if (error)
    {
      v12 = v11;
      v4 = 0;
      *error = v11;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __57__TPModel_hasPotentiallyTrustedPeerWithSigningKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 peerID];
  v4 = [v3 permanentInfo];

  v5 = [v4 signingPubKey];
  v6 = [v5 spki];
  v7 = [v6 isEqualToData:*(a1 + 32)];

  if (v7)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
  }
}

- (BOOL)anyTrustedPeerDistrustsOtherPeer:(id)peer error:(id *)error
{
  peerCopy = peer;
  v8 = objc_autoreleasePoolPush();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = [MEMORY[0x277CBEB58] set];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__TPModel_anyTrustedPeerDistrustsOtherPeer_error___block_invoke;
  v15[3] = &unk_279DED8F8;
  v9 = peerCopy;
  v16 = v9;
  v17 = &v18;
  v14 = 0;
  v10 = [(TPModel *)self _iterateOverPeersWithBlock:v15 error:&v14];
  v11 = v14;
  if (!v11)
  {
    [v19[5] intersectSet:v10];
    v4 = [v19[5] count] != 0;
  }

  _Block_object_dispose(&v18, 8);
  objc_autoreleasePoolPop(v8);
  if (v11)
  {
    if (error)
    {
      v12 = v11;
      v4 = 0;
      *error = v11;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __50__TPModel_anyTrustedPeerDistrustsOtherPeer_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 dynamicInfo];
  v4 = [v3 excludedPeerIDs];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v8 peerID];
    [v6 addObject:v7];
  }
}

- (BOOL)hasPotentiallyTrustedPeerPreapprovingKey:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = objc_autoreleasePoolPush();
  v9 = [TPHashBuilder hashWithAlgo:1 ofData:keyCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = [MEMORY[0x277CBEB58] set];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__TPModel_hasPotentiallyTrustedPeerPreapprovingKey_error___block_invoke;
  v16[3] = &unk_279DED8F8;
  v10 = v9;
  v17 = v10;
  v18 = &v19;
  v15 = 0;
  v11 = [(TPModel *)self _iterateOverPeersWithBlock:v16 error:&v15];
  v12 = v15;
  if (!v12)
  {
    [v20[5] intersectSet:v11];
    v4 = [v20[5] count] != 0;
  }

  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v8);
  if (v12)
  {
    if (error)
    {
      v13 = v12;
      v4 = 0;
      *error = v12;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __58__TPModel_hasPotentiallyTrustedPeerPreapprovingKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 peerID];
  v4 = [v3 dynamicInfo];

  v5 = [v4 preapprovals];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

- (unint64_t)countTotalTrustedCustodians
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(TPModel *)self allCustodianRecoveryKeys];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v8);
        v22 = v9;
        v11 = [(TPModel *)self isCustodianRecoveryKeyTrusted:v10 error:&v22];
        v6 = v22;

        if (v11)
        {
          peerID = [v10 peerID];
          v13 = [dictionary objectForKeyedSubscript:peerID];

          v14 = MEMORY[0x277CCABB0];
          if (v13)
          {
            peerID2 = [v10 peerID];
            peerID4 = [dictionary objectForKeyedSubscript:peerID2];
            v17 = [v14 numberWithInt:{objc_msgSend(peerID4, "intValue") + 1}];
            peerID3 = [v10 peerID];
            [dictionary setObject:v17 forKeyedSubscript:peerID3];
          }

          else
          {
            peerID2 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
            peerID4 = [v10 peerID];
            [dictionary setObject:peerID2 forKeyedSubscript:peerID4];
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v19 = [dictionary count];
  return v19;
}

- (unint64_t)countTotalNumberOfRecoveryKeys
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__TPModel_countTotalNumberOfRecoveryKeys__block_invoke;
  v10[3] = &unk_279DED920;
  v5 = dictionary;
  v11 = v5;
  v9 = 0;
  [(TPModel *)self enumeratePeersUsingBlock:v10 error:&v9];
  v6 = v9;

  objc_autoreleasePoolPop(v4);
  v7 = [v5 count];

  return v7;
}

void __41__TPModel_countTotalNumberOfRecoveryKeys__block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 stableInfo];
  v4 = [v3 recoverySigningPublicKey];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v19 stableInfo];
    v7 = [v6 recoverySigningPublicKey];
    v8 = [v5 objectForKeyedSubscript:v7];

    v9 = MEMORY[0x277CCABB0];
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [v19 stableInfo];
      v12 = [v11 recoverySigningPublicKey];
      v13 = [v10 objectForKeyedSubscript:v12];
      v14 = [v9 numberWithInt:{objc_msgSend(v13, "intValue") + 1}];
      v15 = *(a1 + 32);
      v16 = [v19 stableInfo];
      v17 = [v16 recoverySigningPublicKey];
      [v15 setObject:v14 forKeyedSubscript:v17];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
      v18 = *(a1 + 32);
      v12 = [v19 stableInfo];
      v13 = [v12 recoverySigningPublicKey];
      [v18 setObject:v11 forKeyedSubscript:v13];
    }
  }
}

- (id)allTrustedPeersWithCurrentRecoveryKeyWithError:(id *)error
{
  v5 = &v13;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = [MEMORY[0x277CBEB58] set];
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__TPModel_allTrustedPeersWithCurrentRecoveryKeyWithError___block_invoke;
  v12[3] = &unk_279DED8F8;
  v12[4] = self;
  v12[5] = &v13;
  v7 = [(TPModel *)self _iterateOverPeersWithBlock:v12 error:&v11];
  v8 = v11;
  if (!v8)
  {
    [v14[5] intersectSet:v7];
    v5 = v14[5];
  }

  objc_autoreleasePoolPop(v6);
  if (v8)
  {
    if (error)
    {
      v9 = v8;
      v5 = 0;
      *error = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  _Block_object_dispose(&v13, 8);

  return v5;
}

void __58__TPModel_allTrustedPeersWithCurrentRecoveryKeyWithError___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 peerID];
  v4 = [v19 stableInfo];
  v5 = [v4 recoverySigningPublicKey];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v19 stableInfo];
  v8 = [v7 recoveryEncryptionPublicKey];
  if (!v8)
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [*(a1 + 32) recoverySigningPublicKey];
  v11 = [v19 stableInfo];
  v12 = [v11 recoverySigningPublicKey];
  if (![v10 isEqualToData:v12])
  {

    goto LABEL_7;
  }

  v13 = [*(a1 + 32) recoveryEncryptionPublicKey];
  [v19 stableInfo];
  v14 = v18 = v3;
  [v14 recoveryEncryptionPublicKey];
  v15 = v16 = a1;
  v17 = [v13 isEqualToData:v15];

  v3 = v18;
  if (v17)
  {
    [*(*(*(v16 + 40) + 8) + 40) addObject:v18];
  }

LABEL_9:
}

- (BOOL)isRecoveryKeyExcluded:(id)excluded error:(id *)error
{
  excludedCopy = excluded;
  v8 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = [MEMORY[0x277CBEB58] set];
  v9 = [(TPModel *)self recoveryKeyPeerID:excludedCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__TPModel_isRecoveryKeyExcluded_error___block_invoke;
  v16[3] = &unk_279DED8F8;
  v10 = v9;
  v17 = v10;
  v18 = &v19;
  v15 = 0;
  v11 = [(TPModel *)self _iterateOverPeersWithBlock:v16 error:&v15];
  v12 = v15;
  if (!v12)
  {
    [v20[5] intersectSet:v11];
    v4 = [v20[5] count] != 0;
  }

  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v8);
  if (v12)
  {
    if (error)
    {
      v13 = v12;
      v4 = 0;
      *error = v12;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __39__TPModel_isRecoveryKeyExcluded_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 peerID];
  v4 = [v3 dynamicInfo];

  v5 = [v4 excludedPeerIDs];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

- (id)peerCountsByMachineIDWithError:(id *)error
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__TPModel_peerCountsByMachineIDWithError___block_invoke;
  v13[3] = &unk_279DED920;
  v6 = dictionary;
  v14 = v6;
  v12 = 0;
  [(TPModel *)self enumeratePeersUsingBlock:v13 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

void __42__TPModel_peerCountsByMachineIDWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 permanentInfo];
  v7 = [v3 machineID];

  v4 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v4, "longValue") + 1}];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    [*(a1 + 32) setObject:&unk_287FD1A58 forKeyedSubscript:v7];
  }
}

- (BOOL)doAnyTrustedPeersMatchMachineID:(id)d error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = [MEMORY[0x277CBEB58] set];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__TPModel_doAnyTrustedPeersMatchMachineID_error___block_invoke;
  v16[3] = &unk_279DED8F8;
  v9 = dCopy;
  v17 = v9;
  p_buf = &buf;
  v15 = 0;
  v10 = [(TPModel *)self _iterateOverPeersWithBlock:v16 error:&v15];
  v11 = v15;
  if (!v11)
  {
    [*(*(&buf + 1) + 40) intersectSet:v10];
    v4 = [*(*(&buf + 1) + 40) count] != 0;
  }

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(v8);
  if (v11)
  {
    v12 = TPModelLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_26F78B000, v12, OS_LOG_TYPE_DEFAULT, "doAnyTrustedPeersMatchMachineID error: %{public}@", &buf, 0xCu);
    }

    if (error)
    {
      v13 = v11;
      v4 = 0;
      *error = v11;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __49__TPModel_doAnyTrustedPeersMatchMachineID_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 permanentInfo];
  v4 = [v3 machineID];

  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = [v7 peerID];
    [v5 addObject:v6];
  }
}

- (id)viablePeerCountsByModelIDWithError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  context = objc_autoreleasePoolPush();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46__TPModel_viablePeerCountsByModelIDWithError___block_invoke;
  v26[3] = &unk_279DED8A8;
  v26[4] = &v27;
  v7 = [(TPModel *)self _iterateOverPeersWithBlock:v26 error:&v25];
  v20 = v25;
  if (v20)
  {

    _Block_object_dispose(&v27, 8);
    objc_autoreleasePoolPop(context);
    if (error)
    {
      v8 = v20;
      v9 = 0;
      *error = v20;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [v28[5] objectForKeyedSubscript:{*(*(&v21 + 1) + 8 * i), context}];
          v15 = [dictionary objectForKeyedSubscript:v14];
          v16 = v15;
          if (v15)
          {
            v3 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v15, "longValue") + 1}];
            v17 = v3;
          }

          else
          {
            v17 = &unk_287FD1A58;
          }

          [dictionary setObject:v17 forKeyedSubscript:v14];
          if (v16)
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v11);
    }

    _Block_object_dispose(&v27, 8);
    objc_autoreleasePoolPop(context);
    v9 = dictionary;
  }

  return v9;
}

void __46__TPModel_viablePeerCountsByModelIDWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 peerID];
  v4 = [v3 permanentInfo];

  v5 = [v4 modelID];

  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v6];
}

- (id)allMachineIDsWithError:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [MEMORY[0x277CBEB58] set];
  v10 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__TPModel_allMachineIDsWithError___block_invoke;
  v11[3] = &unk_279DED8D0;
  v11[4] = &v12;
  [(TPModel *)self enumeratePeersUsingBlock:v11 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      v8 = 0;
      *error = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __34__TPModel_allMachineIDsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 permanentInfo];
  v3 = [v4 machineID];
  [v2 addObject:v3];
}

- (id)actualPeerWithID:(id)d error:(id *)error
{
  v10 = 0;
  v5 = [(TPModel *)self peerWithID:d error:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      if (error)
      {
        v9 = v6;
        *error = v7;
      }
    }

    else
    {
      failWithNoPeerWithIDError(error);
    }
  }

  return v5;
}

- (id)custodianPeerWithID:(id)d
{
  dCopy = d;
  custodianRecoveryKeys = [(TPModel *)self custodianRecoveryKeys];
  v6 = [custodianRecoveryKeys objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)copyPeerWithNewDynamicInfo:(id)info forPeerWithID:(id)d error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  v29 = 0;
  v10 = [(TPModel *)self peerWithID:dCopy error:&v29];
  v11 = v29;
  v12 = v11;
  if (v10)
  {
    v28 = 0;
    v13 = [v10 peerWithUpdatedDynamicInfo:infoCopy error:&v28];
    v14 = v28;
    if (!v13)
    {
      v24 = TPModelLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = dCopy;
        v32 = 2114;
        v33 = v14;
        _os_log_impl(&dword_26F78B000, v24, OS_LOG_TYPE_DEFAULT, "failed to update dynamic info for peerID %{public}@: %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v25 = v14;
        *error = v14;
      }

      goto LABEL_26;
    }

    if (-[TPModel suppressInitialInfoLogging](self, "suppressInitialInfoLogging") && ([v10 dynamicInfo], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v18 = TPModelLog();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 138543362;
      v31 = dCopy;
      v20 = "peer(%{public}@) initially loaded dynamic info";
    }

    else
    {
      dynamicInfo = [v10 dynamicInfo];
      dynamicInfo2 = [v13 dynamicInfo];

      v18 = TPModelLog();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (dynamicInfo != dynamicInfo2)
      {
        if (v19)
        {
          *buf = 138543618;
          v31 = dCopy;
          v32 = 2114;
          v33 = infoCopy;
          v20 = "peer(%{public}@) dynamic info is now: %{public}@";
          v21 = v18;
          v22 = 22;
LABEL_24:
          _os_log_impl(&dword_26F78B000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        }

LABEL_25:

        v26 = v13;
LABEL_26:

        goto LABEL_27;
      }

      if (!v19)
      {
        goto LABEL_25;
      }

      *buf = 138543362;
      v31 = dCopy;
      v20 = "peer(%{public}@) dynamic info didn't actually change";
    }

    v21 = v18;
    v22 = 12;
    goto LABEL_24;
  }

  if (v11)
  {
    if (error)
    {
      v23 = v11;
      *error = v12;
    }
  }

  else
  {
    failWithNoPeerWithIDError(error);
  }

  v14 = TPModelLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = dCopy;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_26F78B000, v14, OS_LOG_TYPE_DEFAULT, "can't update dynamic info for peerID %{public}@: %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_27:

  return v13;
}

- (id)copyPeerWithNewStableInfo:(id)info forPeerWithID:(id)d error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  v29 = 0;
  v10 = [(TPModel *)self peerWithID:dCopy error:&v29];
  v11 = v29;
  v12 = v11;
  if (v10)
  {
    v28 = 0;
    v13 = [v10 peerWithUpdatedStableInfo:infoCopy error:&v28];
    v14 = v28;
    if (!v13)
    {
      v24 = TPModelLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = dCopy;
        v32 = 2114;
        v33 = v14;
        _os_log_impl(&dword_26F78B000, v24, OS_LOG_TYPE_DEFAULT, "failed to update stable info for peerID %{public}@: %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v25 = v14;
        *error = v14;
      }

      goto LABEL_26;
    }

    if (-[TPModel suppressInitialInfoLogging](self, "suppressInitialInfoLogging") && ([v10 stableInfo], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v18 = TPModelLog();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 138543362;
      v31 = dCopy;
      v20 = "peer(%{public}@) initially loaded stable info";
    }

    else
    {
      stableInfo = [v10 stableInfo];
      stableInfo2 = [v13 stableInfo];

      v18 = TPModelLog();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (stableInfo != stableInfo2)
      {
        if (v19)
        {
          *buf = 138543618;
          v31 = dCopy;
          v32 = 2114;
          v33 = infoCopy;
          v20 = "peer(%{public}@) stable info is now: %{public}@";
          v21 = v18;
          v22 = 22;
LABEL_24:
          _os_log_impl(&dword_26F78B000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        }

LABEL_25:

        v26 = v13;
LABEL_26:

        goto LABEL_27;
      }

      if (!v19)
      {
        goto LABEL_25;
      }

      *buf = 138543362;
      v31 = dCopy;
      v20 = "peer(%{public}@) stable info didn't actually change";
    }

    v21 = v18;
    v22 = 12;
    goto LABEL_24;
  }

  if (v11)
  {
    if (error)
    {
      v23 = v11;
      *error = v12;
    }
  }

  else
  {
    failWithNoPeerWithIDError(error);
  }

  v14 = TPModelLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = dCopy;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_26F78B000, v14, OS_LOG_TYPE_DEFAULT, "can't update stable info for peerID %{public}@: %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_27:

  return v13;
}

- (id)peerWithID:(id)d error:(id *)error
{
  dCopy = d;
  dbAdapter = [(TPModel *)self dbAdapter];
  v8 = [dbAdapter peerWithID:dCopy error:error];

  return v8;
}

- (BOOL)hasPeerWithID:(id)d error:(id *)error
{
  v4 = [(TPModel *)self peerWithID:d error:error];
  v5 = v4 != 0;

  return v5;
}

- (id)allRegisteredPolicyVersionsWithError:(id *)error
{
  dbAdapter = [(TPModel *)self dbAdapter];
  v5 = [dbAdapter allRegisteredPolicyVersions:error];

  return v5;
}

- (id)allPolicyVersionsWithError:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [MEMORY[0x277CBEB58] set];
  v10 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__TPModel_allPolicyVersionsWithError___block_invoke;
  v11[3] = &unk_279DED8D0;
  v11[4] = &v12;
  [(TPModel *)self enumeratePeersUsingBlock:v11 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      v8 = 0;
      *error = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __38__TPModel_allPolicyVersionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 stableInfo];
  v4 = [v3 frozenPolicyVersion];

  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [v13 stableInfo];
    v7 = [v6 frozenPolicyVersion];
    [v5 addObject:v7];
  }

  v8 = [v13 stableInfo];
  v9 = [v8 flexiblePolicyVersion];

  if (v9)
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v11 = [v13 stableInfo];
    v12 = [v11 flexiblePolicyVersion];
    [v10 addObject:v12];
  }
}

- (id)recoveryKeyPeerID:(id)d
{
  dCopy = d;
  ccsha384_di();
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:*ccsha384_di()];
  [dCopy length];
  [dCopy bytes];

  [v4 mutableBytes];
  ccdigest();
  v5 = [v4 base64EncodedStringWithOptions:0];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"RK-%@", v5];

  return v6;
}

- (BOOL)hasPotentiallyTrustedPeerTestingOnlyWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = [MEMORY[0x277CBEB58] set];
  v12 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__TPModel_hasPotentiallyTrustedPeerTestingOnlyWithError___block_invoke;
  v13[3] = &unk_279DED8A8;
  v13[4] = &buf;
  v7 = [(TPModel *)self _iterateOverPeersWithBlock:v13 error:&v12];
  v8 = v12;
  if (!v8)
  {
    [*(*(&buf + 1) + 40) intersectSet:v7];
    v3 = [*(*(&buf + 1) + 40) count] != 0;
  }

  _Block_object_dispose(&buf, 8);
  objc_autoreleasePoolPop(v6);
  if (v8)
  {
    v9 = TPModelLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_26F78B000, v9, OS_LOG_TYPE_DEFAULT, "hasPotentiallyTrustedPeer error: %{public}@", &buf, 0xCu);
    }

    if (error)
    {
      v10 = v8;
      v3 = 0;
      *error = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __57__TPModel_hasPotentiallyTrustedPeerTestingOnlyWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 peerID];
  v4 = [v3 dynamicInfo];

  v5 = [v4 includedPeerIDs];
  v6 = [v5 containsObject:v7];

  if (v6)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  }
}

- (id)_iterateOverPeersWithBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v7 = &v24;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = [MEMORY[0x277CBEB58] set];
  v8 = objc_autoreleasePoolPush();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = [MEMORY[0x277CBEB58] set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__TPModel__iterateOverPeersWithBlock_error___block_invoke;
  v14[3] = &unk_279DED880;
  v16 = &v24;
  v17 = &v18;
  v9 = blockCopy;
  v15 = v9;
  v13 = 0;
  [(TPModel *)self enumeratePeersUsingBlock:v14 error:&v13];
  v10 = v13;
  if (!v10)
  {
    [v25[5] minusSet:v19[5]];
    v7 = v25[5];
  }

  _Block_object_dispose(&v18, 8);
  objc_autoreleasePoolPop(v8);
  if (v10)
  {
    if (error)
    {
      v11 = v10;
      v7 = 0;
      *error = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  _Block_object_dispose(&v24, 8);

  return v7;
}

void __44__TPModel__iterateOverPeersWithBlock_error___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = [v8 peerID];
  [*(*(a1[5] + 8) + 40) addObject:v3];
  v4 = *(*(a1[6] + 8) + 40);
  v5 = [v8 dynamicInfo];
  v6 = [v5 excludedPeerIDs];
  if (v6)
  {
    [v4 unionSet:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    [v4 unionSet:v7];
  }

  (*(a1[4] + 16))();
}

- (unint64_t)voucherCountWithError:(id *)error
{
  dbAdapter = [(TPModel *)self dbAdapter];
  v5 = [dbAdapter voucherCount:error];

  return v5;
}

- (BOOL)enumerateVouchersUsingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  dbAdapter = [(TPModel *)self dbAdapter];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__TPModel_enumerateVouchersUsingBlock_error___block_invoke;
  v14[3] = &unk_279DED858;
  v9 = blockCopy;
  v15 = v9;
  v13 = 0;
  [dbAdapter enumerateVouchersUsingBlock:v14 error:&v13];
  v10 = v13;

  objc_autoreleasePoolPop(v7);
  if (error && v10)
  {
    v11 = v10;
    *error = v10;
  }

  return v10 == 0;
}

void __45__TPModel_enumerateVouchersUsingBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

- (BOOL)enumeratePeersUsingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  dbAdapter = [(TPModel *)self dbAdapter];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__TPModel_enumeratePeersUsingBlock_error___block_invoke;
  v14[3] = &unk_279DED830;
  v9 = blockCopy;
  v15 = v9;
  v13 = 0;
  [dbAdapter enumeratePeersUsingBlock:v14 error:&v13];
  v10 = v13;

  objc_autoreleasePoolPop(v7);
  if (error && v10)
  {
    v11 = v10;
    *error = v10;
  }

  return v10 == 0;
}

void __42__TPModel_enumeratePeersUsingBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

- (unint64_t)peerCountWithError:(id *)error
{
  dbAdapter = [(TPModel *)self dbAdapter];
  v5 = [dbAdapter peerCount:error];

  return v5;
}

- (id)allPeerIDs
{
  dbAdapter = [(TPModel *)self dbAdapter];
  v5 = 0;
  v3 = [dbAdapter allPeerIDs:&v5];

  return v3;
}

- (id)policyWithVersion:(unint64_t)version error:(id *)error
{
  dbAdapter = [(TPModel *)self dbAdapter];
  v7 = [dbAdapter policyWithVersion:version error:error];

  return v7;
}

- (unint64_t)latestEpochAmongPeerIDs:(id)ds error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  dsCopy = ds;
  v7 = [dsCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = 0;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(dsCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v23 = 0;
        v14 = [(TPModel *)self peerWithID:v12 error:&v23];
        v15 = v23;
        if (v15)
        {
          v18 = v15;
          v19 = TPModelLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = v12;
            v30 = 2114;
            v31 = v18;
            _os_log_impl(&dword_26F78B000, v19, OS_LOG_TYPE_DEFAULT, "error determining epoch of peerID %{public}@: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          if (errorCopy)
          {
            v20 = v18;
            v9 = 0;
            *errorCopy = v18;
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_20;
        }

        if (v14)
        {
          permanentInfo = [v14 permanentInfo];
          epoch = [permanentInfo epoch];

          if (v9 <= epoch)
          {
            v9 = epoch;
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v8 = [dsCopy countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = 0;
LABEL_20:

  return v9;
}

- (TPModel)initWithDecrypter:(id)decrypter dbAdapter:(id)adapter
{
  decrypterCopy = decrypter;
  adapterCopy = adapter;
  v14.receiver = self;
  v14.super_class = TPModel;
  v9 = [(TPModel *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_suppressInitialInfoLogging = 0;
    objc_storeStrong(&v9->_dbAdapter, adapter);
    objc_storeStrong(&v10->_decrypter, decrypter);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    custodianRecoveryKeys = v10->_custodianRecoveryKeys;
    v10->_custodianRecoveryKeys = v11;
  }

  return v10;
}

+ (id)pickClock:(id)clock
{
  clockCopy = clock;
  [clockCopy sortUsingComparator:&__block_literal_global_150];
  firstObject = [clockCopy firstObject];
  v5 = [firstObject copy];

  if ([clockCopy count] >= 2)
  {
    v6 = 1;
    while (1)
    {
      v7 = [clockCopy objectAtIndexedSubscript:v6];
      clock = [v7 clock];
      if (clock < [v5 clock])
      {
        break;
      }

      clock2 = [v7 clock];
      if (clock2 == [v5 clock])
      {
        value = [v7 value];
        if (value != [v5 value])
        {
          [v5 setValue:1];
          break;
        }
      }

      if (++v6 >= [clockCopy count])
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:

  return v5;
}

uint64_t __21__TPModel_pickClock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 clock];
  if (v6 <= [v5 clock])
  {
    v8 = [v4 clock];
    v7 = v8 != [v5 clock];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (BOOL)isFullPeer:(id)peer
{
  v15 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&unk_287FD1A40 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&unk_287FD1A40);
        }

        if ([peerCopy containsString:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [&unk_287FD1A40 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (BOOL)ignoreTDLForModel:(id)model
{
  modelCopy = model;
  if ([modelCopy containsString:@"AppleTV"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [modelCopy containsString:@"AudioAccessory"];
  }

  return v4;
}

+ (id)preapprovalsFromKeys:(id)keys
{
  v17 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = keysCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [TPHashBuilder hashWithAlgo:1 ofData:*(*(&v12 + 1) + 8 * i), v12];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end