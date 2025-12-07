@interface ENFileSessionDaemon
- (BOOL)_resetAndAdvanceArchive:(id)archive toPathWithExtension:(id)extension error:(id *)error;
- (BOOL)activateWithArchiveFD:(int)d error:(id *)error;
- (BOOL)activateWithFileFD:(int)d signatureData:(id)data error:(id *)error;
- (ENFileSessionDaemon)init;
- (id)_readTEKBatchAndReturnError:(id *)error;
- (id)readSignaturesAndReturnError:(id *)error;
- (id)readTEKBatchAndReturnError:(id *)error;
- (void)_createTransaction;
- (void)dealloc;
- (void)invalidate;
- (void)prepareNextTEKBatchIfNecessary;
- (void)setBatchSize:(unint64_t)size;
@end

@implementation ENFileSessionDaemon

- (void)dealloc
{
  [(ENFileSessionDaemon *)self invalidate];
  v3.receiver = self;
  v3.super_class = ENFileSessionDaemon;
  [(ENFileSessionDaemon *)&v3 dealloc];
}

- (ENFileSessionDaemon)init
{
  v5.receiver = self;
  v5.super_class = ENFileSessionDaemon;
  v2 = [(ENFileSessionDaemon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ENFileSessionDaemon *)v2 setBatchSize:0];
  }

  return v3;
}

- (void)setBatchSize:(unint64_t)size
{
  sizeCopy = 256;
  if (size)
  {
    sizeCopy = size;
  }

  self->_batchSize = sizeCopy;
}

- (void)_createTransaction
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;
}

- (void)invalidate
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory__ENFileSessionDaemon, "[ENFileSessionDaemon invalidate]", 90, "### Failed to close file: %@", v1);
}

- (id)readSignaturesAndReturnError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = self->_signatures;
  if (v4)
  {
    v5 = xpc_array_create(0, 0);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          v12 = xpc_dictionary_create(0, 0, 0);
          [v11 encodeWithXPCObject:{v12, v14}];
          xpc_array_set_value(v5, 0xFFFFFFFFFFFFFFFFLL, v12);
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else if (error)
  {
    ENErrorF(2, "No signature source");
    *error = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)readTEKBatchAndReturnError:(id *)error
{
  v5 = self->_nextTEKBatch;
  if (v5)
  {
    v6 = v5;
    nextTEKBatch = self->_nextTEKBatch;
    self->_nextTEKBatch = 0;
  }

  else
  {
    v6 = [(ENFileSessionDaemon *)self _readTEKBatchAndReturnError:error];
  }

  return v6;
}

- (id)_readTEKBatchAndReturnError:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = self->_file;
  if (v5)
  {
    sha256Data = [(ENFile *)self->_file sha256Data];
    v7 = objc_alloc_init(MEMORY[0x277CBEB10]);
    if (self->_batchSize)
    {
      errorCopy = error;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v33 = 0;
        v10 = [(ENFile *)v5 readTEKAndReturnError:&v33];
        v11 = v33;
        v12 = v11;
        if (!v10)
        {
          break;
        }

        if ([v10 isValid])
        {
          [v7 addObject:v10];
        }

        else
        {
          keyData = [v10 keyData];
          v14 = keyData;
          if (keyData)
          {
            data = keyData;
          }

          else
          {
            data = [MEMORY[0x277CBEA98] data];
          }

          v16 = data;

          if (sha256Data)
          {
            data2 = sha256Data;
          }

          else
          {
            data2 = [MEMORY[0x277CBEA98] data];
          }

          v18 = data2;
          if (gLogCategory__ENFileSessionDaemon <= 90 && (gLogCategory__ENFileSessionDaemon != -1 || _LogCategory_Initialize()))
          {
            [(ENFileSessionDaemon *)v16 _readTEKBatchAndReturnError:v18];
          }

          ++v8;
        }

        if (++v9 >= self->_batchSize)
        {
          goto LABEL_22;
        }
      }

      if (v11)
      {
        if (errorCopy)
        {
          v27 = v11;
          v19 = 0;
          *errorCopy = v12;
        }

        else
        {
          v19 = 0;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_22:
    self->_invalidKeyCount += v8;
    if (self->_flags)
    {
      [v7 enRandomlyShuffle];
    }

    v19 = xpc_array_create(0, 0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v7;
    v20 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v12);
          }

          v24 = *(*(&v29 + 1) + 8 * i);
          v25 = xpc_dictionary_create(0, 0, 0);
          [v24 encodeWithXPCObject:v25];
          xpc_array_set_value(v19, 0xFFFFFFFFFFFFFFFFLL, v25);
        }

        v21 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v21);
    }

    goto LABEL_31;
  }

  if (error)
  {
    ENErrorF(10, "Session not active");
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_32:

  return v19;
}

- (BOOL)activateWithArchiveFD:(int)d error:(id *)error
{
  v6 = [objc_alloc(MEMORY[0x277CC5C08]) initWithFD:*&d error:error];
  if (!v6)
  {
    LOBYTE(v15) = 0;
    goto LABEL_14;
  }

  v17 = 0;
  v7 = [(ENFileSessionDaemon *)self _resetAndAdvanceArchive:v6 toPathWithExtension:@"sig" error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = [MEMORY[0x277CC5D20] signatureFileWithArchive:v6 error:error];
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    signatures = [v9 signatures];
    v12 = [signatures copy];
    signatures = self->_signatures;
    self->_signatures = v12;
  }

  else if (gLogCategory__ENFileSessionDaemon <= 50 && (gLogCategory__ENFileSessionDaemon != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory__ENFileSessionDaemon, "[ENFileSessionDaemon activateWithArchiveFD:error:]", 50, "Signature file not found in archive: %@", v8);
  }

  if ([(ENFileSessionDaemon *)self _resetAndAdvanceArchive:v6 toPathWithExtension:@"bin" error:error])
  {
    v14 = objc_alloc_init(MEMORY[0x277CC5C78]);
    v15 = [v14 openWithArchive:v6 error:error];
    if (v15)
    {
      objc_storeStrong(&self->_archive, v6);
      objc_storeStrong(&self->_file, v14);
      [(ENFileSessionDaemon *)self _createTransaction];
    }

    goto LABEL_13;
  }

LABEL_15:
  LOBYTE(v15) = 0;
LABEL_13:

LABEL_14:
  return v15;
}

- (BOOL)activateWithFileFD:(int)d signatureData:(id)data error:(id *)error
{
  v6 = *&d;
  dataCopy = data;
  v9 = dataCopy;
  if (dataCopy)
  {
    v10 = [MEMORY[0x277CC5D20] signatureFileWithBytes:objc_msgSend(dataCopy length:"bytes") error:{objc_msgSend(dataCopy, "length"), error}];
    if (!v10)
    {
      LOBYTE(v16) = 0;
      goto LABEL_7;
    }

    v11 = v10;
    signatures = [v10 signatures];
    v13 = [signatures copy];
    signatures = self->_signatures;
    self->_signatures = v13;
  }

  v15 = objc_alloc_init(MEMORY[0x277CC5C78]);
  v16 = [v15 openWithFD:v6 reading:1 error:error];
  if (v16)
  {
    objc_storeStrong(&self->_file, v15);
    [(ENFileSessionDaemon *)self _createTransaction];
  }

LABEL_7:
  return v16;
}

- (BOOL)_resetAndAdvanceArchive:(id)archive toPathWithExtension:(id)extension error:(id *)error
{
  archiveCopy = archive;
  extensionCopy = extension;
  if ([archiveCopy resetAndReturnError:error])
  {
    while (1)
    {
      v9 = [archiveCopy advanceEntryAndReturnError:error];
      if (!v9)
      {
        break;
      }

      if ([archiveCopy entryFileType] == 0x8000)
      {
        entryPath = [archiveCopy entryPath];
        pathExtension = [entryPath pathExtension];
        v12 = [pathExtension isEqualToString:extensionCopy];

        if (v12)
        {
          break;
        }
      }

      if ([archiveCopy endOfArchive])
      {
        if (!error)
        {
          goto LABEL_8;
        }

        ENErrorF(2, ".%@ file not found", extensionCopy);
        *error = LOBYTE(v9) = 0;
        break;
      }
    }
  }

  else
  {
LABEL_8:
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)prepareNextTEKBatchIfNecessary
{
  if (self->_file && !self->_nextTEKBatch)
  {
    v7 = 0;
    v3 = [(ENFileSessionDaemon *)self _readTEKBatchAndReturnError:&v7];
    v4 = v7;
    nextTEKBatch = self->_nextTEKBatch;
    self->_nextTEKBatch = v3;

    if (!self->_nextTEKBatch && gLogCategory__ENFileSessionDaemon <= 90 && (gLogCategory__ENFileSessionDaemon != -1 || _LogCategory_Initialize()))
    {
      v6 = CUPrintNSError();
      LogPrintF_safe(&gLogCategory__ENFileSessionDaemon, "[ENFileSessionDaemon prepareNextTEKBatchIfNecessary]", 90, "### Failed to prepare next TEK batch: %@", v6);
    }
  }
}

- (void)_readTEKBatchAndReturnError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = CUPrintNSDataHex();
  v3 = CUPrintNSDataHex();
  LogPrintF_safe(&gLogCategory__ENFileSessionDaemon, "[ENFileSessionDaemon _readTEKBatchAndReturnError:]", 90, "Invalid TEK %@ in file with hash %@", v2, v3);
}

@end