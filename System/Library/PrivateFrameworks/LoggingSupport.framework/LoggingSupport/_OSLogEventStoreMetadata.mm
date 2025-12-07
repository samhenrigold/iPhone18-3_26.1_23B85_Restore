@interface _OSLogEventStoreMetadata
- (_OSLogEventStoreMetadata)initWithCollection:(id)collection localStorePlist:(id)plist liveDataDescriptor:(int)descriptor;
- (_OSLogEventStoreMetadata)initWithDictionary:(id)dictionary;
@end

@implementation _OSLogEventStoreMetadata

- (_OSLogEventStoreMetadata)initWithCollection:(id)collection localStorePlist:(id)plist liveDataDescriptor:(int)descriptor
{
  v5 = *&descriptor;
  v33[2] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  plistCopy = plist;
  v10 = [(_OSLogEventStoreMetadata *)self init];
  if (v10)
  {
    v11 = _calculateTimeRefForBook(collectionCopy, "Persist");
    oldestPersist = v10->_oldestPersist;
    v10->_oldestPersist = v11;

    v13 = _calculateTimeRefForBook(collectionCopy, "Special");
    oldestSpecial = v10->_oldestSpecial;
    v10->_oldestSpecial = v13;

    v15 = _calculateTimeRefForBook(collectionCopy, "Signpost");
    oldestSignpost = v10->_oldestSignpost;
    v10->_oldestSignpost = v15;

    v33[0] = 0;
    v33[1] = 0;
    v32 = 0;
    if (_OSLogFileFindExhaustivePoint(v5, v33, &v32) && *__error() == 2)
    {
      v17 = 0;
    }

    else
    {
      v18 = [_OSLogEventStoreTimeRef alloc];
      v17 = [(_OSLogEventStoreTimeRef *)v18 initWithUUID:v33 continuous:v32];
    }

    oldestLive = v10->_oldestLive;
    v10->_oldestLive = v17;

    v20 = +[_OSLogEventStoreTimeRef timeRef];
    end = v10->_end;
    v10->_end = v20;

    v22 = [plistCopy objectForKeyedSubscript:@"Identifier"];
    v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v22];
    sourceUUID = v10->_sourceUUID;
    v10->_sourceUUID = v23;

    objc_storeStrong(&v10->_archiveUUID, v10->_sourceUUID);
    ttls = v10->_ttls;
    v26 = 8u;
    do
    {
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(&_OSLogTTLTable + v26)];
      v28 = [plistCopy objectForKeyedSubscript:v27];

      v29 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v28];
      v30 = *ttls;
      *ttls = v29;

      if (!*ttls)
      {
        objc_storeStrong(ttls, v10->_oldestSpecial);
      }

      v26 += 16;
      ++ttls;
    }

    while (v26 != 88);
  }

  return v10;
}

- (_OSLogEventStoreMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(_OSLogEventStoreMetadata *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"PersistMetadata"];
    v7 = [v6 objectForKeyedSubscript:@"OldestTimeRef"];

    v8 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v7];
    oldestPersist = v5->_oldestPersist;
    v5->_oldestPersist = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"SpecialMetadata"];
    v11 = [v10 objectForKeyedSubscript:@"OldestTimeRef"];

    v12 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v11];
    oldestSpecial = v5->_oldestSpecial;
    v5->_oldestSpecial = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"SignpostMetadata"];
    v15 = [v14 objectForKeyedSubscript:@"OldestTimeRef"];

    v16 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v15];
    oldestSignpost = v5->_oldestSignpost;
    v5->_oldestSignpost = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"HighVolumeMetadata"];
    v19 = [v18 objectForKeyedSubscript:@"OldestTimeRef"];

    v20 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v19];
    oldestHighVolume = v5->_oldestHighVolume;
    v5->_oldestHighVolume = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"LiveMetadata"];
    v23 = [v22 objectForKeyedSubscript:@"OldestTimeRef"];

    v24 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v23];
    oldestLive = v5->_oldestLive;
    v5->_oldestLive = v24;

    v47 = [dictionaryCopy objectForKeyedSubscript:@"EndTimeRef"];
    v26 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v47];
    end = v5->_end;
    v5->_end = v26;

    v46 = [dictionaryCopy objectForKeyedSubscript:@"ArchiveIdentifier"];
    v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v46];
    archiveUUID = v5->_archiveUUID;
    v5->_archiveUUID = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"SourceIdentifier"];
    v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v30];
    sourceUUID = v5->_sourceUUID;
    v5->_sourceUUID = v31;

    if (!v5->_oldestPersist || !v5->_oldestSpecial || !v5->_oldestLive || !v5->_end)
    {

      v41 = 0;
      goto LABEL_15;
    }

    v43 = v23;
    v44 = v11;
    v45 = v7;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"SpecialMetadata"];
    v34 = [v33 objectForKeyedSubscript:@"TTL"];

    ttls = v5->_ttls;
    v36 = 8u;
    do
    {
      if (v34)
      {
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(&_OSLogTTLTable + v36)];
        v38 = [v34 objectForKeyedSubscript:v37];

        v39 = [[_OSLogEventStoreTimeRef alloc] initWithDictionary:v38];
        v40 = *ttls;
        *ttls = v39;
      }

      if (!*ttls)
      {
        objc_storeStrong(ttls, v5->_oldestSpecial);
      }

      v36 += 16;
      ++ttls;
    }

    while (v36 != 88);
  }

  v41 = v5;
LABEL_15:

  return v41;
}

@end