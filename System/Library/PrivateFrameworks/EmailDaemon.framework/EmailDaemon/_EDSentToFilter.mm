@interface _EDSentToFilter
- (_EDSentToFilter)init;
- (unint64_t)mayHaveSentToSimpleAddress:(id)address;
- (void)loadFromDisk;
- (void)updateWithSentToSimpleAddresses:(id)addresses recentNotSentToSimpleAddresses:(id)simpleAddresses;
@end

@implementation _EDSentToFilter

- (_EDSentToFilter)init
{
  v8.receiver = self;
  v8.super_class = _EDSentToFilter;
  v2 = [(_EDSentToFilter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    firstFilter = v2->_firstFilter;
    v2->_firstFilter = 0;

    secondFilter = v3->_secondFilter;
    v3->_secondFilter = 0;

    thirdFilter = v3->_thirdFilter;
    v3->_thirdFilter = 0;
  }

  return v3;
}

- (void)loadFromDisk
{
  v3 = __31___EDSentToFilter_loadFromDisk__block_invoke(self, @"SentToFilter", &unk_1F45E6A60);
  firstFilter = self->_firstFilter;
  self->_firstFilter = v3;

  v6 = __31___EDSentToFilter_loadFromDisk__block_invoke(v5, @"SentToFilter2", &unk_1F45E6A78);
  secondFilter = self->_secondFilter;
  self->_secondFilter = v6;

  v9 = __31___EDSentToFilter_loadFromDisk__block_invoke(v8, @"SentToFilter3", &unk_1F45E6A90);
  thirdFilter = self->_thirdFilter;
  self->_thirdFilter = v9;
}

- (unint64_t)mayHaveSentToSimpleAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (self->_firstFilter)
  {
    lowercaseString = [addressCopy lowercaseString];

    if (([(EFBloomFilter *)self->_firstFilter mayContainString:lowercaseString]& 1) != 0)
    {
      secondFilter = self->_secondFilter;
      if (!secondFilter || ![(EFBloomFilter *)secondFilter mayContainString:lowercaseString])
      {
        v9 = 2;
        goto LABEL_12;
      }

      thirdFilter = self->_thirdFilter;
      if (thirdFilter)
      {
        if ([(EFBloomFilter *)thirdFilter mayContainString:lowercaseString])
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        goto LABEL_12;
      }
    }

    v9 = 1;
LABEL_12:
    v5 = lowercaseString;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)updateWithSentToSimpleAddresses:(id)addresses recentNotSentToSimpleAddresses:(id)simpleAddresses
{
  v103 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  simpleAddressesCopy = simpleAddresses;
  if (_os_feature_enabled_impl())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDSenderPersistence.m" lineNumber:1964 description:@"No sent to address filter needed when all data is class C."];
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(addressesCopy, "count")}];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v10 = addressesCopy;
  v11 = [v10 countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v11)
  {
    v12 = *v94;
    do
    {
      v13 = 0;
      do
      {
        if (*v94 != v12)
        {
          objc_enumerationMutation(v10);
        }

        lowercaseString = [*(*(&v93 + 1) + 8 * v13) lowercaseString];
        [v9 addObject:lowercaseString];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v93 objects:v102 count:16];
    }

    while (v11);
  }

  allObjects = [v9 allObjects];

  v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(simpleAddressesCopy, "count")}];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v17 = simpleAddressesCopy;
  v18 = [v17 countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v18)
  {
    v19 = *v90;
    do
    {
      v20 = 0;
      do
      {
        if (*v90 != v19)
        {
          objc_enumerationMutation(v17);
        }

        lowercaseString2 = [*(*(&v89 + 1) + 8 * v20) lowercaseString];
        if (([v9 containsObject:lowercaseString2] & 1) == 0)
        {
          [v16 addObject:lowercaseString2];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v18);
  }

  allObjects2 = [v16 allObjects];

  v23 = EDSenderLog(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [allObjects count];
    [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
  }

  v25 = EDSenderLog(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [allObjects2 count];
    [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
  }

  v88 = 0;
  v26 = [MEMORY[0x1E699B788] bestBloomFilterForValues:allObjects excludingValues:allObjects2 falsePositiveRate:&v88 knownFalsePositives:0.1];
  v80 = v88;
  firstFilter = self->_firstFilter;
  self->_firstFilter = v26;

  v28 = [v80 count];
  if (v28)
  {
    v29 = EDSenderLog(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [v80 count];
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

    v31 = EDSenderLog(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [allObjects count];
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

    v87 = 0;
    v32 = [MEMORY[0x1E699B788] bestBloomFilterForValues:v80 excludingValues:allObjects falsePositiveRate:&v87 knownFalsePositives:0.01];
    v33 = v87;
    secondFilter = self->_secondFilter;
    self->_secondFilter = v32;

    v35 = [(EFBloomFilter *)v33 count];
    if (v35)
    {
      v36 = EDSenderLog(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [(EFBloomFilter *)v33 count];
        [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
      }

      v38 = EDSenderLog(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [v80 count];
        [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
      }

      v86 = 0;
      v39 = [MEMORY[0x1E699B788] bestBloomFilterForValues:v33 excludingValues:v80 falsePositiveRate:&v86 knownFalsePositives:0.1];
      v40 = v86;
      thirdFilter = self->_thirdFilter;
      self->_thirdFilter = v39;

      v42 = [(EFBloomFilter *)v40 count];
      if (v42)
      {
        v43 = EDSenderLog(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [(EFBloomFilter *)v40 count];
          v45 = [(EFBloomFilter *)v40 ef_map:&__block_literal_global_503];
          *buf = 134218242;
          v98 = v44;
          v99 = 2114;
          v100 = v45;
          _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_DEFAULT, "'Sent to' filter has %lu known false positives: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v40 = self->_thirdFilter;
      self->_thirdFilter = 0;
    }
  }

  else
  {
    v46 = self->_secondFilter;
    self->_secondFilter = 0;

    v33 = self->_thirdFilter;
    self->_thirdFilter = 0;
  }

  v47 = self->_firstFilter;
  mailDataDirectory = [MEMORY[0x1E699AE20] mailDataDirectory];
  v49 = [mailDataDirectory URLByAppendingPathComponent:@"SentToFilter"];

  v85 = 0;
  v50 = [(EFBloomFilter *)v47 writeToFile:v49 options:1342177281 error:&v85];
  v51 = v85;

  if ((v50 & 1) == 0)
  {
    v53 = EDSenderLog(v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [v51 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }
  }

  v54 = self->_secondFilter;
  if (v54)
  {
    mailDataDirectory2 = [MEMORY[0x1E699AE20] mailDataDirectory];
    v56 = [mailDataDirectory2 URLByAppendingPathComponent:@"SentToFilter2"];

    v84 = v51;
    LOBYTE(mailDataDirectory2) = [(EFBloomFilter *)v54 writeToFile:v56 options:1342177281 error:&v84];
    v57 = v84;

    if (mailDataDirectory2)
    {
      goto LABEL_51;
    }

    defaultManager = EDSenderLog(v58);
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      [v57 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

    goto LABEL_50;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  mailDataDirectory3 = [MEMORY[0x1E699AE20] mailDataDirectory];
  v61 = [mailDataDirectory3 URLByAppendingPathComponent:@"SentToFilter2"];

  v83 = v51;
  v62 = [defaultManager removeItemAtURL:v61 error:&v83];
  v57 = v83;

  if (v62)
  {

LABEL_50:
    goto LABEL_51;
  }

  v74 = isNoSuchFileError(v57);

  if (!v74)
  {
    defaultManager = EDSenderLog(v75);
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      [v57 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

    goto LABEL_50;
  }

LABEL_51:
  v63 = v57;
  v64 = self->_thirdFilter;
  if (!v64)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    mailDataDirectory4 = [MEMORY[0x1E699AE20] mailDataDirectory];
    v72 = [mailDataDirectory4 URLByAppendingPathComponent:@"SentToFilter3"];

    v81 = v63;
    v73 = [defaultManager2 removeItemAtURL:v72 error:&v81];
    v68 = v81;

    if (v73)
    {
    }

    else
    {
      v76 = isNoSuchFileError(v68);

      if (v76)
      {
        goto LABEL_58;
      }

      defaultManager2 = EDSenderLog(v77);
      if (os_log_type_enabled(defaultManager2, OS_LOG_TYPE_ERROR))
      {
        [v68 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
      }
    }

    goto LABEL_57;
  }

  mailDataDirectory5 = [MEMORY[0x1E699AE20] mailDataDirectory];
  v66 = [mailDataDirectory5 URLByAppendingPathComponent:@"SentToFilter3"];

  v82 = v63;
  v67 = [(EFBloomFilter *)v64 writeToFile:v66 options:1342177281 error:&v82];
  v68 = v82;

  if ((v67 & 1) == 0)
  {
    defaultManager2 = EDSenderLog(v69);
    if (os_log_type_enabled(defaultManager2, OS_LOG_TYPE_ERROR))
    {
      [v68 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

LABEL_57:
  }

LABEL_58:
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.1()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_2(&dword_1C61EF000, "Building filter with addresses (%lu): %@", v3, v4);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.2()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_2(&dword_1C61EF000, "ignoring addresses (%lu): %@", v3, v4);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.3()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_2(&dword_1C61EF000, "Building second filter with addresses (%lu): %@", v3, v4);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.5()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_2(&dword_1C61EF000, "Building third filter with addresses (%lu): %@", v3, v4);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to write sent to addresses filter 1: %{public}@", v5);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to write sent to addresses filter 2: %{public}@", v5);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to delete sent to addresses filter 2: %{public}@", v5);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to write sent to addresses filter 3: %{public}@", v5);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to delete sent to addresses filter 3: %{public}@", v5);
}

@end