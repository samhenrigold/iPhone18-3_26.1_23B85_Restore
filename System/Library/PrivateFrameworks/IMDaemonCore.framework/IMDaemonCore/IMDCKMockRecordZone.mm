@interface IMDCKMockRecordZone
- (IMDCKMockRecordZone)initWithIdentifier:(id)identifier;
- (id)_ckRecordFromData:(id)data;
- (id)_fetchRecordZoneChangesOptionsFromOperation:(id)operation;
- (id)_serializedCKRecordData:(id)data;
- (unint64_t)_fetchResultLimit:(id)limit;
- (void)_handleFetchZoneChangesOperation:(id)operation;
- (void)_handleModifyRecordsOperation:(id)operation;
- (void)dealloc;
- (void)handleOperation:(id)operation;
@end

@implementation IMDCKMockRecordZone

- (IMDCKMockRecordZone)initWithIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = IMDCKMockRecordZone;
  v4 = [(IMDCKMockRecordZone *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_identifier = identifier;
    v4->_queue = dispatch_queue_create([identifier cStringUsingEncoding:4], 0);
    v5->_recordStore = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:-[IMDCKMockRecordZone _kvStorePath](v5 storeName:"_kvStorePath") dataProtectionClass:{v5->_identifier, 0}];
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  v3.receiver = self;
  v3.super_class = IMDCKMockRecordZone;
  [(IMDCKMockRecordZone *)&v3 dealloc];
}

- (void)handleOperation:(id)operation
{
  v16 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      operationCopy = operation;
      v14 = 2112;
      identifier = [(IMDCKMockRecordZone *)self identifier];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Mock Handle operation %@ identifier %@", buf, 0x16u);
    }
  }

  v6 = arc4random() % 0x3C;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      *buf = 138412290;
      operationCopy = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Adding random delay of %@ seconds", buf, 0xCu);
    }
  }

  v9 = dispatch_time(0, v6);
  queue = [(IMDCKMockRecordZone *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B61E210;
  v11[3] = &unk_2787043C8;
  v11[4] = operation;
  v11[5] = self;
  dispatch_after(v9, queue, v11);
}

- (id)_fetchRecordZoneChangesOptionsFromOperation:(id)operation
{
  v3 = [objc_msgSend(operation "configurationsByRecordZoneID")];

  return [v3 firstObject];
}

- (unint64_t)_fetchResultLimit:(id)limit
{
  v3 = [(IMDCKMockRecordZone *)self _fetchRecordZoneChangesOptionsFromOperation:limit];

  return MEMORY[0x2821F9670](v3, sel_resultsLimit);
}

- (id)_ckRecordFromData:(id)data
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:data error:&v6];
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v8 = v6;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to unarchive mock ck record data. Error: %@", buf, 0xCu);
      }
    }
  }

  return v3;
}

- (void)_handleFetchZoneChangesOperation:(id)operation
{
  v48 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      identifier = [(IMDCKMockRecordZone *)self identifier];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "ID %@ MOCK Handling fetchRecordZoneChangesOperation", buf, 0xCu);
    }
  }

  fetchAllChanges = [operation fetchAllChanges];
  v7 = [(IMDCKMockRecordZone *)self _fetchResultLimit:operation];
  v8 = @"NO";
  if (fetchAllChanges)
  {
    v8 = @"YES";
  }

  v32 = v8;
  v33 = *MEMORY[0x277CBBF50];
  do
  {
    v39 = 0;
    v40 = 0;
    v9 = [(IDSKVStore *)[(IMDCKMockRecordZone *)self recordStore] datasUpToLimit:v7 deleteContext:&v40 error:&v39];
    if (v39)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          identifier2 = [(IMDCKMockRecordZone *)self identifier];
          *buf = 138412546;
          identifier = identifier2;
          v44 = 2112;
          v45 = v39;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "%@ Error reading from MOCK store %@ ", buf, 0x16u);
        }
      }
    }

    v12 = [v9 count];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        *buf = 138412802;
        v15 = @"NO";
        if (v12 >= v7)
        {
          v15 = @"YES";
        }

        identifier = v14;
        v44 = 2112;
        v45 = v15;
        v46 = 2112;
        v47 = v32;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "About to give back %@ records moreComing %@ fetchAllChanges %@", buf, 0x20u);
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v16)
    {
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v19 = [(IMDCKMockRecordZone *)self _ckRecordFromData:*(*(&v35 + 1) + 8 * i)];
          recordChangedBlock = [operation recordChangedBlock];
          (*(recordChangedBlock + 16))(recordChangedBlock, v19);
        }

        v16 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v16);
    }

    v34 = 0;
    recordStore = [(IMDCKMockRecordZone *)self recordStore];
    [(IDSKVStore *)recordStore deleteBatchWithContext:v40 error:&v34];
    if (v34)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          identifier3 = [(IMDCKMockRecordZone *)self identifier];
          *buf = 138412546;
          identifier = identifier3;
          v44 = 2112;
          v45 = v34;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "%@ Error deleting from MOCK store %@ ", buf, 0x16u);
        }
      }
    }

    recordZoneChangeTokensUpdatedBlock = [operation recordZoneChangeTokensUpdatedBlock];
    (*(recordZoneChangeTokensUpdatedBlock + 16))(recordZoneChangeTokensUpdatedBlock, [objc_msgSend(operation "recordZoneIDs")], 0, 0);
    HIDWORD(v25) = -858993459 * arc4random();
    LODWORD(v25) = HIDWORD(v25);
    if ((v25 >> 1) <= 0x19999999)
    {
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283F4EA38, &unk_283F4EA50, &unk_283F4EA68, 0}];
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:v33 code:objc_msgSend(objc_msgSend(v27 userInfo:{"objectAtIndex:", arc4random() % objc_msgSend(v27, "count")), "integerValue"), 0}];
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          identifier = v26;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Introducing random error %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v29 = v12 >= v7;
    recordZoneFetchCompletionBlock = [operation recordZoneFetchCompletionBlock];
    (*(recordZoneFetchCompletionBlock + 16))(recordZoneFetchCompletionBlock, [objc_msgSend(operation "recordZoneIDs")], 0, 0, v29, v26);
  }

  while (v29 & fetchAllChanges);
  fetchRecordZoneChangesCompletionBlock = [operation fetchRecordZoneChangesCompletionBlock];
  (*(fetchRecordZoneChangesCompletionBlock + 16))(fetchRecordZoneChangesCompletionBlock, 0);
}

- (id)_serializedCKRecordData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:data requiringSecureCoding:1 error:&v7];
  if (!v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v9 = "[IMDCKMockRecordZone _serializedCKRecordData:]";
        v10 = 2112;
        dataCopy = data;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%s: Unable to archive record %@, error %@", buf, 0x20u);
      }
    }
  }

  return v4;
}

- (void)_handleModifyRecordsOperation:(id)operation
{
  v32 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      identifier = [(IMDCKMockRecordZone *)self identifier];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "ID %@ MOCK Handling modifyRecordsOperation", buf, 0xCu);
    }
  }

  recordsToSave = [operation recordsToSave];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [recordsToSave countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v9 = *v24;
    *&v8 = 138412290;
    v21 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(recordsToSave);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [(IMDCKMockRecordZone *)self _serializedCKRecordData:v11, v21];
        v22 = 0;
        -[IDSKVStore persistData:forKey:error:](-[IMDCKMockRecordZone recordStore](self, "recordStore"), "persistData:forKey:error:", v12, [objc_msgSend(v11 "recordID")], &v22);
        v13 = v22 == 0;
        v14 = IMOSLoggingEnabled();
        if (v13)
        {
          if (v14)
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [objc_msgSend(v11 "recordID")];
              *buf = v21;
              identifier = v18;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Successfully persisted record %@ ", buf, 0xCu);
            }
          }

          perRecordCompletionBlock = [operation perRecordCompletionBlock];
          (*(perRecordCompletionBlock + 16))(perRecordCompletionBlock, v11, 0);
        }

        else if (v14)
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [objc_msgSend(v11 "recordID")];
            *buf = 138412546;
            identifier = v16;
            v29 = 2112;
            v30 = v22;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Error persisting record %@ error %@", buf, 0x16u);
          }
        }
      }

      v7 = [recordsToSave countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  modifyRecordsCompletionBlock = [operation modifyRecordsCompletionBlock];
  (*(modifyRecordsCompletionBlock + 16))(modifyRecordsCompletionBlock, recordsToSave, 0, 0);
}

@end