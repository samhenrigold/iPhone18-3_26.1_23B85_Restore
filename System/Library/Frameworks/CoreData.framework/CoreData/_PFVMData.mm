@interface _PFVMData
- (_PFVMData)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (_PFVMData)initWithContentsOfFile:(id)file options:(unint64_t)options error:(id *)error;
- (void)dealloc;
@end

@implementation _PFVMData

- (void)dealloc
{
  payload = self->_payload;
  if (payload)
  {
    munmap(payload, self->_length);
  }

  v4.receiver = self;
  v4.super_class = _PFVMData;
  [(_PFVMData *)&v4 dealloc];
}

- (_PFVMData)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = _PFVMData;
  v6 = [(_PFVMData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_length = length;
    v8 = mmap(0, length, 3, 4098, 754974720, 0);
    v7->_payload = v8;
    memcpy(v8, bytes, length);
  }

  return v7;
}

- (_PFVMData)initWithContentsOfFile:(id)file options:(unint64_t)options error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = _PFVMData;
  v7 = [(_PFVMData *)&v26 init:file];
  if (!v7)
  {
    return v7;
  }

  fileSystemRepresentation = [file fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    v9 = open(fileSystemRepresentation, 0);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      fcntl(v9, 48, 1);
      memset(&v25, 0, sizeof(v25));
      if (fstat(v10, &v25))
      {
        if (error)
        {
          v11 = *__error();
          v12 = *MEMORY[0x1E696A798];
          v33[0] = *MEMORY[0x1E696A368];
          v33[1] = @"reason";
          v34[0] = file;
          v34[1] = @"fstat failed";
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:v11 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v34, v33, 2)}];
        }

        close(v10);
        goto LABEL_21;
      }

      st_size = v25.st_size;
      v7->_length = v25.st_size;
      if (!st_size)
      {
        goto LABEL_18;
      }

      v16 = mmap(0, st_size, 3, 4098, 754974720, 0);
      v7->_payload = v16;
      if (v16)
      {
        if (read(v10, v16, v7->_length) == v7->_length)
        {
          goto LABEL_18;
        }

        v17 = *__error();
        munmap(v7->_payload, v7->_length);
        v7->_payload = 0;
        if (!error)
        {
          goto LABEL_18;
        }

        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A798];
        v31[0] = *MEMORY[0x1E696A368];
        v31[1] = @"reason";
        v32[0] = file;
        v32[1] = @"read failed";
        v20 = MEMORY[0x1E695DF20];
        v21 = v32;
        v22 = v31;
      }

      else
      {
        v23 = __error();
        if (!error)
        {
LABEL_18:
          close(v10);
          goto LABEL_19;
        }

        v17 = *v23;
        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A798];
        v29[0] = *MEMORY[0x1E696A368];
        v29[1] = @"reason";
        v30[0] = file;
        v30[1] = @"mmap failed";
        v20 = MEMORY[0x1E695DF20];
        v21 = v30;
        v22 = v29;
      }

      *error = [v18 errorWithDomain:v19 code:v17 userInfo:{objc_msgSend(v20, "dictionaryWithObjects:forKeys:count:", v21, v22, 2)}];
      goto LABEL_18;
    }

    if (error)
    {
      v13 = *__error();
      v14 = *MEMORY[0x1E696A798];
      v27[0] = *MEMORY[0x1E696A368];
      v27[1] = @"reason";
      v28[0] = file;
      v28[1] = @"open failed";
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:v14 code:v13 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v28, v27, 2)}];
    }
  }

LABEL_19:
  if (!v7->_payload && v7->_length)
  {
LABEL_21:

    return 0;
  }

  return v7;
}

@end