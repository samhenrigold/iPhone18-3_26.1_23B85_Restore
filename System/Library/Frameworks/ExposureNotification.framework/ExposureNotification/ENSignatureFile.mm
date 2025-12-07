@interface ENSignatureFile
+ (id)_signatureFileWithProtobufCoder:(id)coder error:(id *)error;
+ (id)signatureFileWithArchive:(id)archive error:(id *)error;
+ (id)signatureFileWithBytes:(const char *)bytes length:(unint64_t)length error:(id *)error;
- (BOOL)closeAndReturnError:(id *)error;
- (BOOL)openForWritingToData:(id)data error:(id *)error;
- (BOOL)openWithFileSystemRepresentation:(const char *)representation reading:(BOOL)reading error:(id *)error;
- (BOOL)writeAndReturnError:(id *)error;
@end

@implementation ENSignatureFile

+ (id)signatureFileWithArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  v7 = objc_alloc_init(ENProtobufCoder);
  [(ENProtobufCoder *)v7 setReadArchive:archiveCopy];

  v8 = [self _signatureFileWithProtobufCoder:v7 error:error];

  return v8;
}

+ (id)signatureFileWithBytes:(const char *)bytes length:(unint64_t)length error:(id *)error
{
  v9 = objc_alloc_init(ENProtobufCoder);
  [(ENProtobufCoder *)v9 setReadMemory:bytes length:length];
  v10 = [self _signatureFileWithProtobufCoder:v9 error:error];

  return v10;
}

+ (id)_signatureFileWithProtobufCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__ENSignatureFile__signatureFileWithProtobufCoder_error___block_invoke;
  v29[3] = &unk_278A4B610;
  v29[4] = &v30;
  v29[5] = error;
  v6 = MEMORY[0x2383EE560](v29);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  do
  {
    v8 = objc_autoreleasePoolPush();
    v28 = 0;
    v9 = (v31 + 5);
    obj = v31[5];
    v27 = 0;
    v10 = [coderCopy readType:&v28 tag:&v27 eofOkay:1 error:&obj];
    objc_storeStrong(v9, obj);
    if (v10)
    {
      if (v27 == 1)
      {
        v25 = 0;
        v11 = coderCopy;
        v12 = (v31 + 5);
        v24 = v31[5];
        v13 = [v11 readLengthDelimited:&v25 error:&v24];
        objc_storeStrong(v12, v24);
        if (v13)
        {
          v14 = [ENSignature alloc];
          v15 = (v31 + 5);
          v23 = v31[5];
          v16 = [(ENSignature *)v14 initWithBytes:v13 length:v25 error:&v23];
          objc_storeStrong(v15, v23);
          if (v16)
          {
            [v7 addObject:v16];

LABEL_11:
            v17 = 0;
            goto LABEL_12;
          }
        }
      }

      else
      {
        v18 = (v31 + 5);
        v22 = v31[5];
        v19 = [coderCopy skipType:v28 error:&v22];
        objc_storeStrong(v18, v22);
        if (v19)
        {
          goto LABEL_11;
        }
      }

      v17 = 1;
    }

    else if (v31[5])
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

LABEL_12:
    objc_autoreleasePoolPop(v8);
  }

  while (!v17);
  if (v17 == 2)
  {
    v20 = objc_alloc_init(ENSignatureFile);
    [(ENSignatureFile *)v20 setSignatures:v7];
  }

  else
  {
    v20 = 0;
  }

  v6[2](v6);
  _Block_object_dispose(&v30, 8);

  return v20;
}

id __57__ENSignatureFile__signatureFileWithProtobufCoder_error___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

- (BOOL)openWithFileSystemRepresentation:(const char *)representation reading:(BOOL)reading error:(id *)error
{
  if (reading)
  {
    if (error)
    {
      ENErrorF(5, "Reading files not implemented");
      goto LABEL_10;
    }
  }

  else if (self->_fileHandle || self->_outputData)
  {
    if (error)
    {
      ENErrorF(10, "File already open");
      goto LABEL_10;
    }
  }

  else
  {
    v7 = fopen(representation, "wb");
    self->_fileHandle = v7;
    if (v7 || *__error() && !*__error())
    {
      return 1;
    }

    if (error)
    {
      ENErrorF(2, "Open path failed: '%s', %#m");
      v9 = LABEL_10:;
      v10 = v9;
      result = 0;
      *error = v9;
      return result;
    }
  }

  return 0;
}

- (BOOL)openForWritingToData:(id)data error:(id *)error
{
  dataCopy = data;
  if (self->_fileHandle || (outputData = self->_outputData, p_outputData = &self->_outputData, outputData))
  {
    if (error)
    {
      ENErrorF(10, "File already open");
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    objc_storeStrong(p_outputData, data);
    v10 = 1;
  }

  return v10;
}

- (BOOL)closeAndReturnError:(id *)error
{
  outputData = self->_outputData;
  if (outputData)
  {
    self->_outputData = 0;

    return 1;
  }

  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    v7 = fclose(fileHandle);
    self->_fileHandle = 0;
    if (!v7)
    {
      return 1;
    }

    if (error)
    {
      v11 = *__error();
      ENErrorF(1, "fclose failed: %#m", v11);
      goto LABEL_10;
    }
  }

  else if (error)
  {
    ENErrorF(10, "File not open");
    v9 = LABEL_10:;
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (BOOL)writeAndReturnError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __39__ENSignatureFile_writeAndReturnError___block_invoke;
  v34[3] = &unk_278A4B610;
  v34[4] = &v35;
  v34[5] = error;
  v26 = MEMORY[0x2383EE560](v34, a2);
  fileHandle = self->_fileHandle;
  v27 = self->_outputData;
  if (fileHandle | v27)
  {
    v5 = objc_alloc_init(ENProtobufCoder);
    v6 = v5;
    if (fileHandle)
    {
      [(ENProtobufCoder *)v5 setFileHandle:fileHandle];
    }

    else if (v27)
    {
      [(ENProtobufCoder *)v5 setWriteMutableData:v27];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = self->_signatures;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v8)
    {
      v9 = *v31;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v30 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = objc_alloc_init(ENProtobufCoder);
          v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
          [(ENProtobufCoder *)v13 setWriteMutableData:v14];
          v15 = (v36 + 5);
          obj = v36[5];
          LOBYTE(v11) = [v11 encodeWithProtobufCoder:v13 error:&obj];
          objc_storeStrong(v15, obj);
          v21 = 0;
          if (v11)
          {
            v16 = [v14 length];
            if (!v16 || (v17 = v14, v18 = [v14 bytes], v19 = (v36 + 5), v28 = v36[5], v20 = -[ENProtobufCoder writeLengthDelimitedPtr:length:tag:error:](v6, "writeLengthDelimitedPtr:length:tag:error:", v18, v16, 1, &v28), objc_storeStrong(v19, v28), v20))
            {
              v21 = 1;
            }
          }

          objc_autoreleasePoolPop(v12);
          if (!v21)
          {
            v23 = 0;
            goto LABEL_22;
          }

          ++v10;
        }

        while (v8 != v10);
        v22 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v41 count:16];
        v8 = v22;
      }

      while (v22);
    }

    v23 = 1;
LABEL_22:
  }

  else
  {
    v25 = ENErrorF(10, "File not open");
    v23 = 0;
    v6 = v36[5];
    v36[5] = v25;
  }

  v26[2](v26);
  _Block_object_dispose(&v35, 8);

  return v23;
}

id __39__ENSignatureFile_writeAndReturnError___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

@end