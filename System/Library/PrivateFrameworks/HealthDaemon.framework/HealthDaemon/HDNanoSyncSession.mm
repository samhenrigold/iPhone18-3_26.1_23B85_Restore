@interface HDNanoSyncSession
- (BOOL)shouldOverrideCycleTrackingSymptomsForBackwardsCompatibilty;
- (HDNanoSyncSession)initWithSyncStore:(id)store options:(unint64_t)options reason:(id)reason delegate:(id)delegate completion:(id)completion;
- (id)_intervalForSecondsSinceDaysAgo:(void *)ago;
- (id)changeSetWithChanges:(id)changes statusCode:(int)code error:(id)error;
- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class;
- (void)invokeCompletionWithSuccess:(BOOL)success error:(id)error;
@end

@implementation HDNanoSyncSession

- (HDNanoSyncSession)initWithSyncStore:(id)store options:(unint64_t)options reason:(id)reason delegate:(id)delegate completion:(id)completion
{
  v128[53] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v124.receiver = self;
  v124.super_class = HDNanoSyncSession;
  v13 = [(HDSyncSession *)&v124 initWithSyncStore:store reason:reason delegate:delegate];
  v14 = v13;
  if (v13)
  {
    v13->_options = options;
    v15 = objc_msgSend_copy(completionCopy);
    completion = v14->_completion;
    v14->_completion = v15;

    nanoSyncStore = [(HDNanoSyncSession *)v14 nanoSyncStore];
    isMaster = [nanoSyncStore isMaster];

    v19 = [HDSyncPredicate alloc];
    v20 = MEMORY[0x277CBEB98];
    v21 = MEMORY[0x277CCABB0];
    syncStore = [(HDSyncSession *)v14 syncStore];
    v23 = [v21 numberWithLongLong:{objc_msgSend(syncStore, "syncProvenance")}];
    v24 = [v20 setWithObject:v23];
    if (isMaster)
    {
      v123 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v122 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
    }

    else
    {
      v122 = 0;
      v123 = 0;
    }

    nanoSyncStore2 = [(HDNanoSyncSession *)v14 nanoSyncStore];
    isMaster2 = [nanoSyncStore2 isMaster];

    if (isMaster2)
    {
      v111 = v19;
      v112 = v24;
      v113 = v23;
      v114 = isMaster;
      v115 = syncStore;
      v116 = completionCopy;
      v27 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v28 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v29 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v30 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v121 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v120 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v119 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v118 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v117 = [(HDNanoSyncSession *)v14 _intervalForSecondsSinceDaysAgo:?];
      v31 = MEMORY[0x277CCABB0];
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      [distantPast timeIntervalSinceReferenceDate];
      v34 = [v31 numberWithDouble:-v33];

      v106 = [MEMORY[0x277CCD8D8] dataTypeWithCode:76];
      v127[0] = v106;
      v110 = v27;
      v128[0] = v27;
      v105 = [MEMORY[0x277CCD8D8] dataTypeWithCode:67];
      v127[1] = v105;
      v128[1] = v34;
      v104 = [MEMORY[0x277CCD720] dataTypeWithCode:180];
      v127[2] = v104;
      v128[2] = v34;
      v103 = [MEMORY[0x277CCD720] dataTypeWithCode:190];
      v127[3] = v103;
      v128[3] = v34;
      v102 = [MEMORY[0x277CCD720] dataTypeWithCode:299];
      v127[4] = v102;
      v128[4] = v34;
      v101 = [MEMORY[0x277CCD720] dataTypeWithCode:300];
      v127[5] = v101;
      v128[5] = v34;
      v100 = [MEMORY[0x277CCD720] dataTypeWithCode:105];
      v127[6] = v100;
      v128[6] = v34;
      v99 = [MEMORY[0x277CCD720] dataTypeWithCode:104];
      v127[7] = v99;
      v128[7] = v34;
      v98 = [MEMORY[0x277CCD8D8] dataTypeWithCode:249];
      v127[8] = v98;
      v109 = v28;
      v128[8] = v28;
      v97 = [MEMORY[0x277CCD8D8] dataTypeWithCode:118];
      v127[9] = v97;
      v108 = v29;
      v128[9] = v29;
      v96 = [MEMORY[0x277CCD8D8] dataTypeWithCode:95];
      v127[10] = v96;
      v128[10] = v30;
      v95 = [MEMORY[0x277CCD8D8] dataTypeWithCode:96];
      v127[11] = v95;
      v128[11] = v30;
      v94 = [MEMORY[0x277CCD8D8] dataTypeWithCode:91];
      v127[12] = v94;
      v128[12] = v30;
      v93 = [MEMORY[0x277CCD8D8] dataTypeWithCode:97];
      v127[13] = v93;
      v128[13] = v30;
      v92 = [MEMORY[0x277CCD8D8] dataTypeWithCode:90];
      v127[14] = v92;
      v128[14] = v30;
      v91 = [MEMORY[0x277CCD8D8] dataTypeWithCode:92];
      v127[15] = v91;
      v128[15] = v30;
      v90 = [MEMORY[0x277CCD8D8] dataTypeWithCode:243];
      v127[16] = v90;
      v128[16] = v30;
      v89 = [MEMORY[0x277CCD8D8] dataTypeWithCode:244];
      v127[17] = v89;
      v128[17] = v30;
      v88 = [MEMORY[0x277CCD8D8] dataTypeWithCode:157];
      v127[18] = v88;
      v128[18] = v30;
      v87 = [MEMORY[0x277CCD8D8] dataTypeWithCode:158];
      v127[19] = v87;
      v128[19] = v30;
      v86 = [MEMORY[0x277CCD8D8] dataTypeWithCode:159];
      v127[20] = v86;
      v128[20] = v30;
      v85 = [MEMORY[0x277CCD8D8] dataTypeWithCode:160];
      v127[21] = v85;
      v128[21] = v30;
      v84 = [MEMORY[0x277CCD8D8] dataTypeWithCode:161];
      v127[22] = v84;
      v128[22] = v30;
      v83 = [MEMORY[0x277CCD8D8] dataTypeWithCode:162];
      v127[23] = v83;
      v128[23] = v30;
      v82 = [MEMORY[0x277CCD8D8] dataTypeWithCode:163];
      v127[24] = v82;
      v128[24] = v30;
      v81 = [MEMORY[0x277CCD8D8] dataTypeWithCode:164];
      v127[25] = v81;
      v128[25] = v30;
      v80 = [MEMORY[0x277CCD8D8] dataTypeWithCode:165];
      v127[26] = v80;
      v128[26] = v30;
      v79 = [MEMORY[0x277CCD8D8] dataTypeWithCode:166];
      v127[27] = v79;
      v128[27] = v30;
      v78 = [MEMORY[0x277CCD8D8] dataTypeWithCode:167];
      v127[28] = v78;
      v128[28] = v30;
      v77 = [MEMORY[0x277CCD8D8] dataTypeWithCode:168];
      v127[29] = v77;
      v128[29] = v30;
      v76 = [MEMORY[0x277CCD8D8] dataTypeWithCode:169];
      v127[30] = v76;
      v128[30] = v30;
      v75 = [MEMORY[0x277CCD8D8] dataTypeWithCode:170];
      v127[31] = v75;
      v128[31] = v30;
      v73 = [MEMORY[0x277CCD8D8] dataTypeWithCode:171];
      v127[32] = v73;
      v128[32] = v30;
      v72 = [MEMORY[0x277CCD8D8] dataTypeWithCode:229];
      v127[33] = v72;
      v128[33] = v30;
      v71 = [MEMORY[0x277CCD8D8] dataTypeWithCode:230];
      v127[34] = v71;
      v128[34] = v30;
      v70 = [MEMORY[0x277CCD8D8] dataTypeWithCode:231];
      v127[35] = v70;
      v128[35] = v30;
      v69 = [MEMORY[0x277CCD8D8] dataTypeWithCode:232];
      v127[36] = v69;
      v128[36] = v30;
      v68 = [MEMORY[0x277CCD8D8] dataTypeWithCode:233];
      v127[37] = v68;
      v128[37] = v30;
      v67 = [MEMORY[0x277CCD8D8] dataTypeWithCode:234];
      v127[38] = v67;
      v128[38] = v30;
      v66 = [MEMORY[0x277CCD8D8] dataTypeWithCode:235];
      v127[39] = v66;
      v128[39] = v30;
      v65 = [MEMORY[0x277CCD8D8] dataTypeWithCode:192];
      v127[40] = v65;
      v128[40] = v34;
      v64 = [MEMORY[0x277CCD8D8] dataTypeWithCode:191];
      v127[41] = v64;
      v128[41] = v34;
      v63 = [MEMORY[0x277CCD8D8] dataTypeWithCode:193];
      v127[42] = v63;
      v128[42] = v34;
      v62 = [MEMORY[0x277CCD720] dataTypeWithCode:63];
      v127[43] = v62;
      v128[43] = v121;
      v61 = [MEMORY[0x277CCD720] dataTypeWithCode:197];
      v127[44] = v61;
      v128[44] = v34;
      v35 = [MEMORY[0x277CCD720] dataTypeWithCode:198];
      v127[45] = v35;
      v128[45] = v34;
      v36 = [MEMORY[0x277CCD720] dataTypeWithCode:256];
      v127[46] = v36;
      v128[46] = v30;
      v37 = [MEMORY[0x277CCD8D8] dataTypeWithCode:284];
      v127[47] = v37;
      v128[47] = v120;
      v38 = [MEMORY[0x277CCD8D8] dataTypeWithCode:283];
      v127[48] = v38;
      v107 = v34;
      v128[48] = v34;
      v39 = [MEMORY[0x277CCD8D8] dataTypeWithCode:298];
      v127[49] = v39;
      v128[49] = v119;
      v40 = [MEMORY[0x277CCD8D8] dataTypeWithCode:304];
      v127[50] = v40;
      v128[50] = v119;
      v41 = [MEMORY[0x277CCD8D8] dataTypeWithCode:79];
      v127[51] = v41;
      v128[51] = v118;
      v42 = [MEMORY[0x277CCD8D8] dataTypeWithCode:144];
      v127[52] = v42;
      v128[52] = v117;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:53];

      syncStore2 = [(HDSyncSession *)v14 syncStore];
      profile = [syncStore2 profile];
      daemon = [profile daemon];
      behavior = [daemon behavior];
      features = [behavior features];
      LODWORD(v39) = [features extendedLocalWatchData];

      if (v39)
      {
        v48 = [MEMORY[0x277CCD830] _quantityTypeWithCode:139];
        v125[0] = v48;
        v126[0] = v30;
        v49 = [MEMORY[0x277CCD830] _quantityTypeWithCode:14];
        v125[1] = v49;
        v126[1] = v30;
        v50 = [MEMORY[0x277CCD830] _quantityTypeWithCode:61];
        v125[2] = v50;
        v126[2] = v30;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:3];
        v52 = [v74 hk_dictionaryByAddingEntriesFromDictionary:v51];

        v53 = v52;
        syncStore = v115;
        isMaster = v114;
        v24 = v112;
        v23 = v113;
        v55 = v122;
        v54 = v123;
      }

      else
      {
        syncStore = v115;
        isMaster = v114;
        v24 = v112;
        v23 = v113;
        v55 = v122;
        v54 = v123;
        v53 = v74;
      }

      completionCopy = v116;
      v19 = v111;
    }

    else
    {
      v53 = 0;
      v55 = v122;
      v54 = v123;
    }

    v56 = [(HDSyncPredicate *)v19 initWithExcludedSyncProvenances:v24 dateInterval:0 shouldIncludeDatelessObjects:0 includedObjectTypes:0 defaultMaximumObjectAge:v54 defaultMaximumTombstoneAge:v55 maximumObjectAgeByType:v53];
    v57 = v53;
    v58 = v56;

    if (isMaster)
    {
    }

    syncPredicate = v14->_syncPredicate;
    v14->_syncPredicate = v58;
  }

  return v14;
}

- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 0x20000;
  }

  return [(HDNanoSyncSession *)self maxEncodedBytesPerChangeSetForSyncEntityClass:class];
}

- (id)_intervalForSecondsSinceDaysAgo:(void *)ago
{
  v4 = MEMORY[0x277CCABB0];
  calendar = [ago calendar];
  startDate = [ago startDate];
  v7 = [calendar hk_dateBySubtractingDays:a2 fromDate:startDate];
  startDate2 = [ago startDate];
  [v7 timeIntervalSinceDate:startDate2];
  v10 = [v4 numberWithDouble:-v9];

  return v10;
}

- (BOOL)shouldOverrideCycleTrackingSymptomsForBackwardsCompatibilty
{
  syncStore = [(HDSyncSession *)self syncStore];
  v3 = [syncStore protocolVersion] < 12;

  return v3;
}

- (id)changeSetWithChanges:(id)changes statusCode:(int)code error:(id)error
{
  v5 = *&code;
  errorCopy = error;
  changesCopy = changes;
  sessionUUID = [(HDSyncSession *)self sessionUUID];
  startDate = [(HDSyncSession *)self startDate];
  v12 = [HDCodableNanoSyncChangeSet changeSetWithChanges:changesCopy sessionUUID:sessionUUID startDate:startDate sessionError:errorCopy statusCode:v5];

  return v12;
}

- (void)invokeCompletionWithSuccess:(BOOL)success error:(id)error
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, success, error);
    v6 = self->_completion;
    self->_completion = 0;
  }
}

@end