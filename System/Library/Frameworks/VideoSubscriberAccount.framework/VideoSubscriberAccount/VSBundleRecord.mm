@interface VSBundleRecord
- (VSBundleRecord)initWithBundleID:(id)d;
- (id)bundleVersion;
@end

@implementation VSBundleRecord

- (VSBundleRecord)initWithBundleID:(id)d
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v45.receiver = self;
  v45.super_class = VSBundleRecord;
  v5 = [(VSBundleRecord *)&v45 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    lsQueue = v5->_lsQueue;
    v5->_lsQueue = v6;

    v8 = v5->_lsQueue;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(NSOperationQueue *)v8 setName:v10];

    [(NSOperationQueue *)v5->_lsQueue setMaxConcurrentOperationCount:1];
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__4;
    v43 = __Block_byref_object_dispose__4;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__4;
    v37 = __Block_byref_object_dispose__4;
    v38 = 0;
    v11 = objc_alloc_init(VSWaitGroup);
    [(VSWaitGroup *)v11 enter];
    v12 = v5->_lsQueue;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __35__VSBundleRecord_initWithBundleID___block_invoke;
    v28 = &unk_278B741E8;
    v31 = &v33;
    v13 = dCopy;
    v29 = v13;
    v32 = &v39;
    v14 = v11;
    v30 = v14;
    [(NSOperationQueue *)v12 addOperationWithBlock:&v25];
    v15 = [(VSWaitGroup *)v14 waitWithMilliseconds:5000, v25, v26, v27, v28];
    if ((v15 & 1) == 0)
    {
      v16 = VSDefaultLogObject(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v13;
        _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "LaunchServices timed out while obtaining LSBundleRecord for bundleID %@", buf, 0xCu);
      }
    }

    if (v34[5])
    {
      goto LABEL_14;
    }

    if (v40[5])
    {
      v17 = VSDefaultLogObject(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v40[5];
        *buf = 138412546;
        v47 = v13;
        v48 = 2112;
        v49 = v18;
        v19 = "Received error while obtaining LSBundleRecord for bundleID %@: %@";
        v20 = v17;
        v21 = 22;
LABEL_12:
        _os_log_impl(&dword_23AB8E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }

    else
    {
      v17 = VSDefaultLogObject(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v13;
        v19 = "No LSBundleRecord found for bundleID %@";
        v20 = v17;
        v21 = 12;
        goto LABEL_12;
      }
    }

LABEL_14:
    v22 = [v34[5] copy];
    record = v5->_record;
    v5->_record = v22;

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v39, 8);
  }

  return v5;
}

uint64_t __35__VSBundleRecord_initWithBundleID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v2 allowPlaceholder:0 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return [*(a1 + 40) leave];
}

- (id)bundleVersion
{
  record = [(VSBundleRecord *)self record];

  if (record)
  {
    record2 = [(VSBundleRecord *)self record];
    bundleVersion = [record2 bundleVersion];
  }

  else
  {
    bundleVersion = 0;
  }

  return bundleVersion;
}

@end