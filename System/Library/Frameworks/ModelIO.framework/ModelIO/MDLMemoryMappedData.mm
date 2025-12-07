@interface MDLMemoryMappedData
- (MDLMemoryMappedData)initWithURL:(id)l offset:(unint64_t)offset length:(unint64_t)length;
- (id)dataNoCopy;
- (void)dealloc;
@end

@implementation MDLMemoryMappedData

- (MDLMemoryMappedData)initWithURL:(id)l offset:(unint64_t)offset length:(unint64_t)length
{
  lCopy = l;
  v43.receiver = self;
  v43.super_class = MDLMemoryMappedData;
  v9 = [(MDLMemoryMappedData *)&v43 init];
  if (v9)
  {
    v10 = sysconf(29);
    v22 = objc_msgSend_path(lCopy, v11, v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v23 = v22;
    v35 = objc_msgSend_UTF8String(v23, v24, v25, v26, v31, v32, v33, v34, v27, v28, v29, v30);
    v9->_file = fopen(v35, "r");

    file = v9->_file;
    if (file)
    {
      v37 = offset / v10 * v10;
      v38 = offset - v37;
      v39 = offset - v37 + length;
      v9->_mappedFileSize = v39;
      v40 = fileno(file);
      v41 = mmap(0, v39, 1, 2, v40, v37);
      v9->_mappedAddr = v41;
      if (v41)
      {
        v9->_fileStart = &v41[v38];
        v9->_length = length;
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  mappedAddr = self->_mappedAddr;
  if (mappedAddr)
  {
    v4 = munmap(mappedAddr, self->_mappedFileSize);
    if (v4)
    {
      printf("Could not unmap file - error (%d)\n", v4);
    }
  }

  file = self->_file;
  if (file)
  {
    fclose(file);
  }

  v6.receiver = self;
  v6.super_class = MDLMemoryMappedData;
  [(MDLMemoryMappedData *)&v6 dealloc];
}

- (id)dataNoCopy
{
  fileStart = self->_fileStart;
  if (fileStart)
  {
    v11 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], a2, fileStart, self->_length, v6, v7, v8, v9, 0, v2, v3, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end