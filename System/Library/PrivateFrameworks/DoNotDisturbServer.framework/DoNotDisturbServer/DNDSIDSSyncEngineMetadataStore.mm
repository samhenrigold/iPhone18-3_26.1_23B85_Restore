@interface DNDSIDSSyncEngineMetadataStore
- (BOOL)_areSyncDatesValidAtDate:(id)date;
- (BOOL)_canTombstoneBeRemovedWithRecordID:(id)d;
- (BOOL)_isMetadataValidAtDate:(id)date;
- (BOOL)_isPairedDeviceOutdated:(id)outdated;
- (BOOL)hasMetadataForPairedDeviceIdentifier:(id)identifier;
- (BOOL)isValidAtDate:(id)date;
- (DNDSIDSSyncEngineMetadataStore)initWithDeviceObsoletionDuration:(double)duration tombstoneObsoletionDuration:(double)obsoletionDuration;
- (DNDSIDSSyncEngineMetadataStore)initWithURL:(id)l;
- (id)deletedRecordIDsForPairedDeviceIdentifier:(id)identifier;
- (id)modifiedRecordIDsForPairedDeviceIdentifier:(id)identifier;
- (id)unknownRecordIDsInRecordIDs:(id)ds;
- (void)_forgetMetadataForRecordID:(id)d;
- (void)_forgetObsoleteTombstones;
- (void)_forgetRecordID:(id)d;
- (void)_forgetSyncDatesForDevicesWithoutInitialSync;
- (void)_forgetSyncDatesForOutdatedDevices;
- (void)_forgetSyncDatesForRecordID:(id)d;
- (void)_parseDictionary:(id)dictionary;
- (void)_read;
- (void)_write;
- (void)garbageCollect;
- (void)purge;
- (void)removePairedDeviceIdentifier:(id)identifier;
- (void)setDeletedAtDate:(id)date forRecordIDs:(id)ds;
- (void)setLastModifiedDate:(id)date forRecordIDs:(id)ds;
- (void)setPerformedInitialSyncForPairedDeviceIdentifier:(id)identifier;
- (void)setSyncDate:(id)date forRecordIDs:(id)ds forPairedDeviceIdentifier:(id)identifier;
- (void)setSyncDate:(id)date forRecordsMatchingMetadata:(id)metadata forPairedDeviceIdentifier:(id)identifier;
- (void)updateMetadata:(id)metadata;
@end

@implementation DNDSIDSSyncEngineMetadataStore

- (DNDSIDSSyncEngineMetadataStore)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = DNDSIDSSyncEngineMetadataStore;
  v5 = [(DNDSIDSSyncEngineMetadataStore *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    *(v5 + 40) = xmmword_2491FFC00;
    [v5 _read];
    [v5 garbageCollect];
    [v5 _write];
  }

  return v5;
}

- (DNDSIDSSyncEngineMetadataStore)initWithDeviceObsoletionDuration:(double)duration tombstoneObsoletionDuration:(double)obsoletionDuration
{
  v9.receiver = self;
  v9.super_class = DNDSIDSSyncEngineMetadataStore;
  v6 = [(DNDSIDSSyncEngineMetadataStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_deviceObsoletionDuration = duration;
    v6->_tombstoneObsoletionDuration = obsoletionDuration;
    [(DNDSIDSSyncEngineMetadataStore *)v6 _parseDictionary:0];
  }

  return v7;
}

- (id)unknownRecordIDsInRecordIDs:(id)ds
{
  v19 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v11, v14];
        if (!v12)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)modifiedRecordIDsForPairedDeviceIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [MEMORY[0x277CBEB18] array];
  v17 = v16 = identifierCopy;
  v5 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifierCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_recordMetadataByRecordID;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v10];
        if (([v12 isDeleted] & 1) == 0)
        {
          if (!v11 || ([v12 lastModified], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "earlierDate:", v13), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14 == v11))
          {
            [v17 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v17;
}

- (id)deletedRecordIDsForPairedDeviceIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [MEMORY[0x277CBEB18] array];
  v17 = v16 = identifierCopy;
  v5 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifierCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_recordMetadataByRecordID;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v10];
        if ([v12 isDeleted])
        {
          if (!v11 || ([v12 lastModified], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "earlierDate:", v13), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14 == v11))
          {
            [v17 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v17;
}

- (void)setLastModifiedDate:(id)date forRecordIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = [DNDSIDSRecordMetadata alloc];
          v15 = [(DNDSIDSRecordMetadata *)v14 initWithRecordID:v13 lastModified:dateCopy deleted:0, v16];
          [(NSMutableDictionary *)self->_recordMetadataByRecordID setObject:v15 forKeyedSubscript:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self _write];
  }
}

- (void)setDeletedAtDate:(id)date forRecordIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = [DNDSIDSRecordMetadata alloc];
          v15 = [(DNDSIDSRecordMetadata *)v14 initWithRecordID:v13 lastModified:dateCopy deleted:1, v16];
          [(NSMutableDictionary *)self->_recordMetadataByRecordID setObject:v15 forKeyedSubscript:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self _write];
  }
}

- (void)setSyncDate:(id)date forRecordIDs:(id)ds forPairedDeviceIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dsCopy = ds;
  identifierCopy = identifier;
  if ([dsCopy count])
  {
    dictionary = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifierCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:dictionary forKeyedSubscript:identifierCopy];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = dsCopy;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [dictionary setObject:dateCopy forKeyedSubscript:{*(*(&v17 + 1) + 8 * v16++), v17}];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self garbageCollect];
    [(DNDSIDSSyncEngineMetadataStore *)self _write];
  }
}

- (void)setSyncDate:(id)date forRecordsMatchingMetadata:(id)metadata forPairedDeviceIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  metadataCopy = metadata;
  identifierCopy = identifier;
  if ([metadataCopy count])
  {
    dictionary = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifierCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:dictionary forKeyedSubscript:identifierCopy];
    }

    v22 = identifierCopy;
    v23 = metadataCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = metadataCopy;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          recordMetadataByRecordID = self->_recordMetadataByRecordID;
          recordID = [v17 recordID];
          v20 = [(NSMutableDictionary *)recordMetadataByRecordID objectForKeyedSubscript:recordID];

          if ([v17 isEqual:v20])
          {
            recordID2 = [v17 recordID];
            [dictionary setObject:dateCopy forKeyedSubscript:recordID2];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self garbageCollect];
    [(DNDSIDSSyncEngineMetadataStore *)self _write];

    identifierCopy = v22;
    metadataCopy = v23;
  }
}

- (void)purge
{
  v3 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Purging metadata store", v10, 2u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  recordIDSyncDatesByPairedDeviceIdentifier = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  self->_recordIDSyncDatesByPairedDeviceIdentifier = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  recordMetadataByRecordID = self->_recordMetadataByRecordID;
  self->_recordMetadataByRecordID = dictionary2;

  v8 = [MEMORY[0x277CBEB58] set];
  initialSyncPairedDeviceIdentifiers = self->_initialSyncPairedDeviceIdentifiers;
  self->_initialSyncPairedDeviceIdentifiers = v8;

  [(DNDSIDSSyncEngineMetadataStore *)self _write];
}

- (void)updateMetadata:(id)metadata
{
  v23 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [metadataCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(metadataCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        recordMetadataByRecordID = self->_recordMetadataByRecordID;
        recordID = [v10 recordID];
        v13 = [(NSMutableDictionary *)recordMetadataByRecordID objectForKeyedSubscript:recordID];

        if (v10 != v13)
        {
          v14 = !v10 || v13 == 0;
          if (v14 || ([v10 isEqual:v13] & 1) == 0)
          {
            recordID2 = [v10 recordID];
            [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForRecordID:recordID2];

            v16 = self->_recordMetadataByRecordID;
            recordID3 = [v10 recordID];
            [(NSMutableDictionary *)v16 setObject:v10 forKeyedSubscript:recordID3];

            v7 = 1;
          }
        }
      }

      v6 = [metadataCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
    if (v7)
    {
      [(DNDSIDSSyncEngineMetadataStore *)self _write];
    }
  }
}

- (BOOL)hasMetadataForPairedDeviceIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)garbageCollect
{
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForDevicesWithoutInitialSync];
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForOutdatedDevices];

  [(DNDSIDSSyncEngineMetadataStore *)self _forgetObsoleteTombstones];
}

- (BOOL)isValidAtDate:(id)date
{
  dateCopy = date;
  if ([(DNDSIDSSyncEngineMetadataStore *)self _isMetadataValidAtDate:dateCopy])
  {
    v5 = [(DNDSIDSSyncEngineMetadataStore *)self _areSyncDatesValidAtDate:dateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removePairedDeviceIdentifier:(id)identifier
{
  initialSyncPairedDeviceIdentifiers = self->_initialSyncPairedDeviceIdentifiers;
  identifierCopy = identifier;
  [(NSMutableSet *)initialSyncPairedDeviceIdentifiers removeObject:identifierCopy];
  [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier removeObjectForKey:identifierCopy];

  [(DNDSIDSSyncEngineMetadataStore *)self _write];
}

- (void)setPerformedInitialSyncForPairedDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers addObject:identifierCopy];
    [(DNDSIDSSyncEngineMetadataStore *)self _write];
  }
}

- (void)_read
{
  p_url = &self->_url;
  url = self->_url;
  if (!url)
  {
    goto LABEL_6;
  }

  v8 = 0;
  dictionary = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:url error:&v8];
  v6 = v8;
  if (v6)
  {
    v7 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      [(DNDSSyncEngineMetadataStore *)p_url _read];
    }
  }

  if (!dictionary)
  {
LABEL_6:
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  [(DNDSIDSSyncEngineMetadataStore *)self _parseDictionary:dictionary];
}

- (void)_parseDictionary:(id)dictionary
{
  v52 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [DNDSIDSRecordMetadata newWithDictionaryRepresentation:*(*(&v46 + 1) + 8 * i) context:v5];
        v13 = v12;
        if (v12)
        {
          recordID = [v12 recordID];
          [dictionary setObject:v13 forKeyedSubscript:recordID];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v9);
  }

  v37 = dictionary;
  selfCopy = self;
  objc_storeStrong(&self->_recordMetadataByRecordID, dictionary);
  v39 = dictionaryCopy;
  v15 = [dictionaryCopy objectForKeyedSubscript:@"syncDates"];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v40 = v15;
  v17 = [v40 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v40);
        }

        v21 = *(*(&v42 + 1) + 8 * j);
        v22 = MEMORY[0x277CBEAA8];
        v23 = [v21 objectForKeyedSubscript:@"syncDate"];
        [v23 doubleValue];
        v24 = [v22 dateWithTimeIntervalSinceReferenceDate:?];

        v25 = [v21 objectForKeyedSubscript:@"recordID"];
        v26 = [DNDSIDSRecordID newWithDictionaryRepresentation:v25 context:v5];

        v27 = [v21 objectForKeyedSubscript:@"pairedDeviceIdentifier"];
        v28 = v27;
        if (v24)
        {
          v29 = v26 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29 && v27 != 0)
        {
          dictionary3 = [(NSMutableDictionary *)dictionary2 objectForKeyedSubscript:v27];
          if (!dictionary3)
          {
            dictionary3 = [MEMORY[0x277CBEB38] dictionary];
            [(NSMutableDictionary *)dictionary2 setObject:dictionary3 forKeyedSubscript:v28];
          }

          [dictionary3 setObject:v24 forKeyedSubscript:v26];
        }
      }

      v18 = [v40 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v18);
  }

  recordIDSyncDatesByPairedDeviceIdentifier = selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier;
  selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier = dictionary2;
  v33 = dictionary2;

  v34 = [v39 objectForKeyedSubscript:@"initialSyncs"];
  if (v34)
  {
    [MEMORY[0x277CBEB58] setWithArray:v34];
  }

  else
  {
    [MEMORY[0x277CBEB58] set];
  }
  v35 = ;
  initialSyncPairedDeviceIdentifiers = selfCopy->_initialSyncPairedDeviceIdentifiers;
  selfCopy->_initialSyncPairedDeviceIdentifiers = v35;
}

- (void)_write
{
  v58 = *MEMORY[0x277D85DE8];
  if (self->_url)
  {
    selfCopy = self;
    v37 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v4 = selfCopy->_recordMetadataByRecordID;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v48;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v48 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)selfCopy->_recordMetadataByRecordID objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
          v10 = [v9 dictionaryRepresentationWithContext:v37];
          [array addObject:v10];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v6);
    }

    v30 = array;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier;
    v34 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v34)
    {
      v32 = *v44;
      v33 = selfCopy;
      do
      {
        v11 = 0;
        do
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v11;
          v12 = *(*(&v43 + 1) + 8 * v11);
          v13 = [(NSMutableDictionary *)selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v12];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v39 objects:v55 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v40;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v40 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v39 + 1) + 8 * j);
                v19 = [v13 objectForKeyedSubscript:v18];
                v53[0] = @"recordID";
                v20 = [v18 dictionaryRepresentationWithContext:v37];
                v54[0] = v20;
                v54[1] = v12;
                v53[1] = @"pairedDeviceIdentifier";
                v53[2] = @"syncDate";
                v21 = MEMORY[0x277CCABB0];
                [v19 timeIntervalSinceReferenceDate];
                v22 = [v21 numberWithDouble:?];
                v54[2] = v22;
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
                [array2 addObject:v23];
              }

              v15 = [v13 countByEnumeratingWithState:&v39 objects:v55 count:16];
            }

            while (v15);
          }

          v11 = v35 + 1;
          selfCopy = v33;
        }

        while (v35 + 1 != v34);
        v34 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v34);
    }

    allObjects = [(NSMutableSet *)selfCopy->_initialSyncPairedDeviceIdentifiers allObjects];
    v51[0] = @"metadata";
    v51[1] = @"syncDates";
    v52[0] = v30;
    v52[1] = array2;
    v51[2] = @"initialSyncs";
    v52[2] = allObjects;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
    url = selfCopy->_url;
    v38 = 0;
    v27 = [v25 writeToURL:url error:&v38];
    v28 = v38;
    if ((v27 & 1) == 0)
    {
      v29 = DNDSLogIDSSyncEngine;
      if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
      {
        [(DNDSSyncEngineMetadataStore *)v28 _write];
      }
    }
  }
}

- (void)_forgetSyncDatesForDevicesWithoutInitialSync
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers containsObject:v9]& 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v20;
    *&v12 = 138543362;
    v18 = v12;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = DNDSLogIDSSyncEngine;
        if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v28 = v16;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Forgetting device without initial sync data: %{public}@", buf, 0xCu);
        }

        [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:0 forKeyedSubscript:v16, v18, v19];
      }

      v13 = [v10 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v13);
  }
}

- (void)_forgetSyncDatesForOutdatedDevices
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_initialSyncPairedDeviceIdentifiers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([(DNDSIDSSyncEngineMetadataStore *)self _isPairedDeviceOutdated:v9])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v20;
    *&v12 = 138543362;
    v18 = v12;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = DNDSLogIDSSyncEngine;
        if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v28 = v16;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Forgetting outdated device: %{public}@", buf, 0xCu);
        }

        [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:0 forKeyedSubscript:v16, v18, v19];
        [(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers removeObject:v16];
      }

      v13 = [v10 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v13);
  }
}

- (BOOL)_isPairedDeviceOutdated:(id)outdated
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:outdated];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_recordMetadataByRecordID;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    while (2)
    {
      v7 = 0;
      v18 = v5;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v8, v18];
        v10 = [v4 objectForKeyedSubscript:v8];
        if (!v10)
        {
          [v9 lastModified];
          v11 = v6;
          v13 = v12 = v4;
          v14 = [v13 dateByAddingTimeInterval:self->_deviceObsoletionDuration];
          date = [MEMORY[0x277CBEAA8] date];
          v16 = [v14 laterDate:date];

          v4 = v12;
          v6 = v11;
          v5 = v18;
          if (v16 == date)
          {

            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v5;
}

- (void)_forgetObsoleteTombstones
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_recordMetadataByRecordID;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v9];
        if ([v10 isDeleted] && -[DNDSIDSSyncEngineMetadataStore _canTombstoneBeRemovedWithRecordID:](self, "_canTombstoneBeRemovedWithRecordID:", v9))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(DNDSIDSSyncEngineMetadataStore *)self _forgetRecordID:*(*(&v16 + 1) + 8 * j), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)_forgetSyncDatesForRecordID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = dCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forgetting sync dates for record: %{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v12];
        [v13 setObject:0 forKeyedSubscript:dCopy];
        if (![v13 count])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:0 forKeyedSubscript:*(*(&v19 + 1) + 8 * j), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)_forgetMetadataForRecordID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = dCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forgetting metadata for record: %{public}@", &v6, 0xCu);
  }

  [(NSMutableDictionary *)self->_recordMetadataByRecordID setObject:0 forKeyedSubscript:dCopy];
}

- (void)_forgetRecordID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = dCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forgetting record: %{public}@", &v6, 0xCu);
  }

  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForRecordID:dCopy];
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetMetadataForRecordID:dCopy];
}

- (BOOL)_canTombstoneBeRemovedWithRecordID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:dCopy];
  date = [MEMORY[0x277CBEAA8] date];
  lastModified = [v5 lastModified];
  v8 = [lastModified dateByAddingTimeInterval:self->_tombstoneObsoletionDuration];

  v9 = [date laterDate:v8];

  if (v9 == date)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_initialSyncPairedDeviceIdentifiers;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v19 = v5;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
          v17 = [v16 objectForKeyedSubscript:dCopy];

          if (!v17)
          {
            v10 = 0;
            goto LABEL_13;
          }
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v10 = 1;
LABEL_13:
      v5 = v19;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isMetadataValidAtDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_recordMetadataByRecordID;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        lastModified = [v10 lastModified];
        v12 = [lastModified earlierDate:dateCopy];

        if (v12 == dateCopy)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (BOOL)_areSyncDatesValidAtDate:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  obj = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v19 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [v10 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * j)];
              v16 = [v15 earlierDate:dateCopy];

              if (v16 == dateCopy)
              {
                v19 = 0;
                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

@end