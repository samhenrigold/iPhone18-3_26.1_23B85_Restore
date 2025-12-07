@interface ACHAwardsProfileExtension
- (ACHAwardsProfileExtension)initWithProfile:(id)profile;
- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)instances provenance:(int64_t)provenance;
- (HDProfile)profile;
- (void)daemonReady:(id)ready;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)earnedInstanceEntityDidApplyJournalEntriesInsertedEarnedInstances:(id)instances removedEarnedInstances:(id)earnedInstances;
- (void)keyValuePairsDidUpdate:(id)update;
- (void)templateEntityDidReceiveSyncedTemplates:(id)templates provenance:(int64_t)provenance;
@end

@implementation ACHAwardsProfileExtension

- (ACHAwardsProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = ACHAwardsProfileExtension;
  v5 = [(ACHAwardsProfileExtension *)&v18 init];
  if (v5)
  {
    v6 = ACHLogDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_29E9F4000, v6, OS_LOG_TYPE_DEFAULT, "Starting Activity Awards Plugin", v17, 2u);
    }

    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = [objc_alloc(MEMORY[0x29EDBE0A8]) initWithProfile:profileCopy];
    earnedInstanceEntityWrapper = v5->_earnedInstanceEntityWrapper;
    v5->_earnedInstanceEntityWrapper = v7;

    [(ACHEarnedInstanceEntityWrapper *)v5->_earnedInstanceEntityWrapper setSyncedEarnedInstancesObserver:v5];
    [MEMORY[0x29EDBE0A0] setJournalEntryAppliedObserver:v5];
    v9 = [objc_alloc(MEMORY[0x29EDBE0C0]) initWithProfile:profileCopy];
    templateEntityWrapper = v5->_templateEntityWrapper;
    v5->_templateEntityWrapper = v9;

    [(ACHTemplateEntityWrapper *)v5->_templateEntityWrapper setSyncedTemplatesObserver:v5];
    v11 = HDCreateSerialUtilityDispatchQueue();
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v11;

    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_keyValuePairsDidUpdate_ name:*MEMORY[0x29EDBE040] object:0];

    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v5 queue:v5->_databaseQueue];
  }

  return v5;
}

- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)instances provenance:(int64_t)provenance
{
  v31 = *MEMORY[0x29EDCA608];
  instancesCopy = instances;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_29E9F58A4;
  v27 = sub_29E9F58B4;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  databaseQueue = [(ACHAwardsProfileExtension *)self databaseQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29E9F58BC;
  block[3] = &unk_29F376C60;
  v16 = &v19;
  v8 = instancesCopy;
  v14 = v8;
  selfCopy = self;
  v17 = &v23;
  provenanceCopy = provenance;
  dispatch_sync(databaseQueue, block);

  if (v24[5] || (v20[3] & 1) == 0)
  {
    v9 = ACHLogDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v24[5];
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_29E9F4000, v9, OS_LOG_TYPE_DEFAULT, "Error inserting synced earned instances: %@", buf, 0xCu);
    }
  }

  notify_post([*MEMORY[0x29EDBE010] UTF8String]);
  v11 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v11 & 1;
}

- (void)earnedInstanceEntityDidApplyJournalEntriesInsertedEarnedInstances:(id)instances removedEarnedInstances:(id)earnedInstances
{
  uTF8String = [*MEMORY[0x29EDBE010] UTF8String];

  notify_post(uTF8String);
}

- (void)templateEntityDidReceiveSyncedTemplates:(id)templates provenance:(int64_t)provenance
{
  v29 = *MEMORY[0x29EDCA608];
  templatesCopy = templates;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_29E9F58A4;
  v25 = sub_29E9F58B4;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  databaseQueue = [(ACHAwardsProfileExtension *)self databaseQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29E9F5BE4;
  block[3] = &unk_29F376C60;
  v14 = &v17;
  v8 = templatesCopy;
  v12 = v8;
  selfCopy = self;
  v15 = &v21;
  provenanceCopy = provenance;
  dispatch_sync(databaseQueue, block);

  if (v22[5] || (v18[3] & 1) == 0)
  {
    v9 = ACHLogDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v22[5];
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&dword_29E9F4000, v9, OS_LOG_TYPE_DEFAULT, "Error inserting synced templates: %@", buf, 0xCu);
    }
  }

  notify_post([*MEMORY[0x29EDBE020] UTF8String]);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

- (void)keyValuePairsDidUpdate:(id)update
{
  uTF8String = [*MEMORY[0x29EDBE018] UTF8String];

  notify_post(uTF8String);
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  uTF8String = [*MEMORY[0x29EDBE038] UTF8String];

  notify_post(uTF8String);
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self];

  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  if ([behavior isAppleWatch])
  {
  }

  else
  {
    mEMORY[0x29EDBAEC0] = [MEMORY[0x29EDBAEC0] sharedBehavior];
    isStandalonePhoneFitnessMode = [mEMORY[0x29EDBAEC0] isStandalonePhoneFitnessMode];

    if (!isStandalonePhoneFitnessMode)
    {
      goto LABEL_5;
    }
  }

  v9 = objc_alloc_init(MEMORY[0x29EDBE0C8]);
  v10 = [[AAPTriggerGenerator alloc] initWithProfile:WeakRetained awardsClient:v9];
  triggerGenerator = self->_triggerGenerator;
  self->_triggerGenerator = v10;

LABEL_5:
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end