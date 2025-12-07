@interface TSPDistributableReader
- (BOOL)_initializeNewDocumentDirectory:(id)directory;
- (BOOL)handleArchivedVersions:(id)versions error:(id *)error;
- (BOOL)handleObjectWithIdentifier:(int64_t)identifier fileStateIdentifier:(id)stateIdentifier version:(unsigned int)version classType:(int)type stream:(id)stream length:(int64_t)length relationshipTargets:(int64_t *)targets relationshipCount:(unsigned int)self0 error:(id *)self1;
- (BOOL)readFromDistributableArchiveStream:(id)stream estimatedDataLength:(int64_t)length supplementalDataBundle:(id)bundle error:(id *)error;
- (TSPDistributableReader)initWithDestinationPath:(id)path;
@end

@implementation TSPDistributableReader

- (TSPDistributableReader)initWithDestinationPath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = TSPDistributableReader;
  v5 = [(TSPDistributableReader *)&v20 init];
  v7 = v5;
  if (v5)
  {
    atomic_store(0, &v5->_isCancelled);
    if (objc_msgSend__initializeNewDocumentDirectory_(v5, v6, pathCopy))
    {
      v8 = [TSPDatabase alloc];
      v19 = 0;
      v10 = objc_msgSend_initWithPath_error_(v8, v9, pathCopy, &v19);
      v11 = v19;
      database = v7->_database;
      v7->_database = v10;

      if (v7->_database)
      {
        v13 = [TSPDistributableFileManager alloc];
        v15 = objc_msgSend_initWithPath_shouldCreate_(v13, v14, pathCopy, 1);
        fileManager = v7->_fileManager;
        v7->_fileManager = v15;

        v17 = v7->_fileManager;
        v7->_hasReadTangierVersionRoot = 0;
        if (v17)
        {
LABEL_9:

          goto LABEL_10;
        }

LABEL_8:

        v7 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
    }

    v7->_hasReadTangierVersionRoot = 0;
    goto LABEL_8;
  }

LABEL_10:

  return v7;
}

- (BOOL)readFromDistributableArchiveStream:(id)stream estimatedDataLength:(int64_t)length supplementalDataBundle:(id)bundle error:(id *)error
{
  streamCopy = stream;
  bundleCopy = bundle;
  if (!streamCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDistributableReader readFromDistributableArchiveStream:estimatedDataLength:supplementalDataBundle:error:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 73, 0, "invalid nil value for '%{public}s'", "archiveStream");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v20 = atomic_load(&self->_isCancelled);
  if ((v20 & 1) == 0)
  {
    v23 = objc_msgSend_beginTransactionWithError_(self->_database, v11, error);
    v24 = atomic_load(&self->_isCancelled);
    if ((v24 & 1) == 0)
    {
      v31 = 0;
      if (v23)
      {
        v23 = objc_msgSend_streamDistributableArchive_estimatedDataLength_toUnarchiver_supplementalDataBundle_closedCleanly_context_error_(TSPDistributableArchive, v11, streamCopy, length, self, bundleCopy, &v31, 0, error);
        if (v23)
        {
          v23 = objc_msgSend_setClosedCleanlyToken_error_(self->_database, v11, v31, error);
        }
      }
    }

    goto LABEL_11;
  }

  v21 = atomic_load(&self->_isCancelled);
  if ((v21 & 1) == 0)
  {
    v23 = 0;
LABEL_11:
    v25 = atomic_load(&self->_isCancelled);
    v22 = v25 & v23;
    if ((v25 & 1) == 0 && v23)
    {
      if (objc_msgSend_commitTransactionWithError_(self->_database, v11, error))
      {
        v22 = objc_msgSend_commitWithError_(self->_fileManager, v11, error);
      }

      else
      {
        v22 = 0;
      }
    }

    goto LABEL_16;
  }

  v22 = 0;
  atomic_load(&self->_isCancelled);
LABEL_16:
  v26 = atomic_load(&self->_isCancelled);
  if ((v26 & 1) == 0)
  {
    objc_msgSend_closeWithError_(self->_database, v11, error);
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (self->_hasReadTangierVersionRoot || (v27 = atomic_load(&self->_isCancelled), (v27 & 1) != 0))
  {
    v28 = 1;
    goto LABEL_25;
  }

  if (error)
  {
    objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v11, 7);
    *error = v28 = 0;
  }

  else
  {
LABEL_24:
    v28 = 0;
  }

LABEL_25:
  v29 = atomic_load(&self->_isCancelled);
  if (v29)
  {
    objc_msgSend_closeWithError_(self->_database, v11, 0);
    v28 = 0;
  }

  return v28;
}

- (BOOL)handleArchivedVersions:(id)versions error:(id *)error
{
  if (versions.var1 <= 0x774120E28)
  {
    database = self->_database;

    return MEMORY[0x2821F9670](database, sel_setDocumentVersion_error_, versions.var0);
  }

  else
  {
    if (error)
    {
      *error = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], a2, 7);
    }

    return 0;
  }
}

- (BOOL)handleObjectWithIdentifier:(int64_t)identifier fileStateIdentifier:(id)stateIdentifier version:(unsigned int)version classType:(int)type stream:(id)stream length:(int64_t)length relationshipTargets:(int64_t *)targets relationshipCount:(unsigned int)self0 error:(id *)self1
{
  v13 = *&type;
  stateIdentifierCopy = stateIdentifier;
  streamCopy = stream;
  if (v13 <= 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPDistributableReader handleObjectWithIdentifier:fileStateIdentifier:version:classType:stream:length:relationshipTargets:relationshipCount:error:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 142, 0, "Class type must be greater than 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  if (version == 1)
  {
    if (identifier == 1)
    {
      self->_hasReadTangierVersionRoot = 1;
    }

    v27 = [TSPDatabaseArchiverWriter alloc];
    v29 = objc_msgSend_initWithDatabase_fileManager_(v27, v28, self->_database, self->_fileManager);
    objc_msgSend_setFilenameHint_(v29, v30, stateIdentifierCopy);
    objc_msgSend_serializeDataFromStream_length_(v29, v31, streamCopy, length);
    sub_276AE3C34(v64);
    if (objc_msgSend_hasFileState(v29, v32, v33))
    {
      v36 = objc_msgSend_fileStateIdentifier(v29, v34, v35);
      sub_276AE3E28(v64, v36);
    }

    else if (objc_msgSend_hasDataState(v29, v34, v35))
    {
      v47 = objc_msgSend_dataStateIdentifier(v29, v45, v46);
      sub_276AE3D40(v64, v47);
    }

    else
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSPDistributableReader handleObjectWithIdentifier:fileStateIdentifier:version:classType:stream:length:relationshipTargets:relationshipCount:error:]");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableReader.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 167, 0, "Nothing written to disk");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
    }

    inserted = objc_msgSend_insertObjectWithIdentifier_stateIdentifier_classType_error_(self->_database, v37, identifier, v64, v13, error);
    v56 = inserted ^ 1;
    if (!count)
    {
      v56 = 1;
    }

    if ((v56 & 1) == 0)
    {
      v58 = 1;
      do
      {
        v59 = *targets++;
        v60 = objc_msgSend_insertRelationshipWithSourceIdentifier_targetIdentifier_error_(self->_database, v55, identifier, v59, error);
        inserted = v60;
        if (v58 < count)
        {
          v61 = v60;
        }

        else
        {
          v61 = 0;
        }

        ++v58;
      }

      while ((v61 & 1) != 0);
    }

    sub_276AE3C48(v64);

    goto LABEL_27;
  }

  if (objc_msgSend_canSeek(streamCopy, v17, v18))
  {
    v40 = objc_msgSend_offset(streamCopy, v38, v39);
    objc_msgSend_seekToOffset_(streamCopy, v41, v40 + length);
LABEL_14:
    inserted = 1;
    goto LABEL_27;
  }

  v64[0] = 0;
  if (length < 1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v42 = objc_msgSend_readToOwnBuffer_size_(streamCopy, v38, v64, length);
    if (!v42)
    {
      break;
    }

    v43 = length <= v42;
    length -= v42;
    if (v43)
    {
      goto LABEL_14;
    }
  }

  if (error)
  {
    objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v38, 0);
    *error = inserted = 0;
  }

  else
  {
    inserted = 0;
  }

LABEL_27:

  return inserted;
}

- (BOOL)_initializeNewDocumentDirectory:(id)directory
{
  directoryCopy = directory;
  if (!directoryCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPDistributableReader _initializeNewDocumentDirectory:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 221, 0, "Can't init object context with nil path.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4);
  if ((objc_msgSend_fileExistsAtPath_(v13, v14, directoryCopy) & 1) == 0)
  {
    if (objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v13, v15, directoryCopy, 1, 0, 0))
    {
      v16 = 1;
      goto LABEL_10;
    }

    if (*MEMORY[0x277D81408] == -1)
    {
      v16 = 0;
      goto LABEL_10;
    }

    sub_276BD6A10();
LABEL_13:
    v16 = 0;
    goto LABEL_10;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD6A24();
    goto LABEL_13;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

@end