@interface TSPDatabaseArchiverWriter
- (BOOL)serializeArchive:(const Message *)archive;
- (NSString)fileStateIdentifier;
- (TSPDatabaseArchiverWriter)initWithDatabase:(id)database fileManager:(id)manager;
- (int64_t)dataStateIdentifier;
- (sqlite3_blob)_openDatabaseBlobWithSize:(int)size;
- (void)_writeDataFromInputStreamToDatabase:(id)database length:(int)length;
- (void)_writeDataFromInputStreamToFile:(id)file length:(int64_t)length;
- (void)serializeDataFromStream:(id)stream length:(int64_t)length;
@end

@implementation TSPDatabaseArchiverWriter

- (TSPDatabaseArchiverWriter)initWithDatabase:(id)database fileManager:(id)manager
{
  databaseCopy = database;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = TSPDatabaseArchiverWriter;
  v9 = [(TSPDatabaseArchiverWriter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeStrong(&v10->_fileManager, manager);
  }

  return v10;
}

- (BOOL)serializeArchive:(const Message *)archive
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_forceFileStorage)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabaseArchiverWriter serializeArchive:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 64, 0, "Trying to write a protobuf archive to an archiver with forceFileStorage enabled");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = (*(archive->var0 + 9))(archive);
  if (v12 >> 31)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPDatabaseArchiverWriter serializeArchive:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 68, 0, "Out-of-bounds type assignment failed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    v15 = 0;
  }

  else
  {
    v14 = objc_msgSend__openDatabaseBlobWithSize_(self, v13, v12);
    sub_276AE3EC8(v24, v14);
    google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v24, 1);
    v26 = (*(archive->var0 + 12))(archive, v26, v25);
    v26 = google::protobuf::io::EpsCopyOutputStream::FlushAndResetBuffer(v25, v26);
    v15 = v25[56] ^ 1;
    google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
    sub_276AE3ECC(v24);
  }

  return v15 & 1;
}

- (int64_t)dataStateIdentifier
{
  if (!self->_hasDataState)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabaseArchiverWriter dataStateIdentifier]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 90, 0, "Tried to access invalid dataStateIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return self->_dataStateIdentifier;
}

- (NSString)fileStateIdentifier
{
  if (!self->_hasFileState)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabaseArchiverWriter fileStateIdentifier]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 102, 0, "Tried to access invalid fileStateIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  fileStateIdentifier = self->_fileStateIdentifier;

  return fileStateIdentifier;
}

- (void)serializeDataFromStream:(id)stream length:(int64_t)length
{
  streamCopy = stream;
  v7 = streamCopy;
  if (length >= 40960 || self->_forceFileStorage)
  {
    objc_msgSend__writeDataFromInputStreamToFile_length_(self, streamCopy, streamCopy, length);
  }

  else
  {
    objc_msgSend__writeDataFromInputStreamToDatabase_length_(self, streamCopy, streamCopy, length);
  }
}

- (sqlite3_blob)_openDatabaseBlobWithSize:(int)size
{
  v3 = *&size;
  if (self->_hasDataState)
  {
    database = self->_database;
    dataStateIdentifier = self->_dataStateIdentifier;
    v20 = 0;
    updated = objc_msgSend_updateDataStateWithIdentifier_size_error_(database, a2, dataStateIdentifier, v3, &v20);
    v9 = v20;
    if ((updated & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    inserted = objc_msgSend_insertDataStateWithSize_identifier_error_(self->_database, a2, *&size, &v19, &v18);
    v9 = v18;
    objc_msgSend_setDataStateIdentifier_(self, v11, v19);
    if (!inserted)
    {
LABEL_6:
      objc_msgSend_tsu_raiseWithError_(MEMORY[0x277CBEAD8], v8, v9);
      v14 = 0;
      goto LABEL_7;
    }
  }

  v12 = self->_database;
  v13 = self->_dataStateIdentifier;
  v17 = v9;
  v14 = objc_msgSend_openDataStateBlobWithIdentifier_willWrite_error_(v12, v8, v13, 1, &v17);
  v15 = v17;

  v9 = v15;
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

- (void)_writeDataFromInputStreamToDatabase:(id)database length:(int)length
{
  v4 = *&length;
  databaseCopy = database;
  if (!databaseCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPDatabaseArchiverWriter _writeDataFromInputStreamToDatabase:length:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 156, 0, "%@ was asked to write a nil input stream to database.", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v16 = objc_msgSend__openDatabaseBlobWithSize_(self, v6, v4);
  z = 0;
  if (v4 >= 1)
  {
    v17 = 0;
    v18 = MEMORY[0x277D81408];
    do
    {
      v19 = objc_msgSend_readToOwnBuffer_size_(databaseCopy, v15, &z, v4);
      if (v19 < 1)
      {
        break;
      }

      v20 = sqlite3_blob_write(v16, z, v19, v17);
      if (v20)
      {
        sqlite3_blob_close(v16);
        if (*v18 != -1)
        {
          sub_276BD68F8();
        }

        if (v20 == 13)
        {
          objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v21, 3);
        }

        else
        {
          objc_msgSend_tsu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v21, 0);
        }
        v22 = ;
        objc_msgSend_tsu_raiseWithError_(MEMORY[0x277CBEAD8], v23, v22);
      }

      v17 += v19;
      v24 = __OFSUB__(v4, v19);
      LODWORD(v4) = v4 - v19;
    }

    while (!((v4 < 0) ^ v24 | (v4 == 0)));
  }

  sqlite3_blob_close(v16);
}

- (void)_writeDataFromInputStreamToFile:(id)file length:(int64_t)length
{
  fileCopy = file;
  if (!fileCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPDatabaseArchiverWriter _writeDataFromInputStreamToFile:length:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 182, 0, "%@ was asked to write a nil input stream to file.", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (self->_hasFileState)
  {
    objc_msgSend_setDataFromInputStream_length_forIdentifier_(self->_fileManager, v6, fileCopy, length, self->_fileStateIdentifier);
  }

  else
  {
    if (objc_msgSend_length(self->_filenameHint, v6, v7))
    {
      objc_msgSend_addDataFromInputStream_length_filenameHint_(self->_fileManager, v15, fileCopy, length, self->_filenameHint);
    }

    else
    {
      objc_msgSend_addDataFromInputStream_length_filenameHint_(self->_fileManager, v15, fileCopy, length, @"obj");
    }
    v16 = ;
    objc_msgSend_setFileStateIdentifier_(self, v17, v16);
  }
}

@end