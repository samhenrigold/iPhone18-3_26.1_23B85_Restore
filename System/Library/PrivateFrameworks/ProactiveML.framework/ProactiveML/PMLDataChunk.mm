@interface PMLDataChunk
+ (id)chunkOfType:(unsigned int)type data:(id)data superdata:(id)superdata;
+ (id)chunksFromData:(id)data;
+ (id)chunksFromFileAtPath:(id)path;
+ (id)serializeChunks:(id)chunks;
- (BOOL)isEqual:(id)equal;
- (PMLDataChunk)initWithData:(id)data;
@end

@implementation PMLDataChunk

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSData *)self->_backingData isEqualToData:equalCopy->_backingData];
  }

  return v5;
}

- (PMLDataChunk)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PMLDataChunk;
  v6 = [(PMLDataChunk *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingData, data);
  }

  return v7;
}

+ (id)serializeChunks:(id)chunks
{
  v39 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  if (!chunksCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLDataChunk.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"chunks"}];
  }

  v6 = objc_opt_new();
  v37 = 1563411470;
  v38 = [chunksCopy count];
  [v6 appendBytes:&v37 length:8];
  v7 = v38;
  v8 = 12 * v38;
  memptr = 0;
  v36 = 0;
  if (v38 > 0x15)
  {
    v28 = malloc_type_posix_memalign(&memptr, 8uLL, 12 * v38, 0xD8BCACDFuLL);
    LOBYTE(v36) = 0;
    if (v28)
    {
      goto LABEL_29;
    }

    v9 = memptr;
    v10 = v38;
  }

  else
  {
    v9 = &v31 - ((v8 + 15) & 0x1FFFFFFFF0);
    bzero(v9, 12 * v38);
    v10 = v7;
  }

  v11 = 4 * v10;
  v12 = (4 * v10) | 3;
  memptr = 0;
  v36 = 0;
  v32 = v12;
  v33 = v7;
  v34 = v8;
  if (v12 <= 0x100)
  {
    v13 = &v31 - ((v12 + 15) & 0x7FFFFFFF0);
    bzero(v13, v12);
    goto LABEL_7;
  }

  v29 = malloc_type_posix_memalign(&memptr, 8uLL, 4 * v10, 0x606FC830uLL);
  LOBYTE(v36) = 0;
  if (v29)
  {
LABEL_29:
    v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v30);
  }

  v13 = memptr;
LABEL_7:
  bzero(v13, v11);
  if ([chunksCopy count])
  {
    v14 = 0;
    v15 = v34 + 8;
    v16 = 1;
    do
    {
      if ((v15 & 0x1F) != 0)
      {
        v17 = v15 | 0xFFFFFFE0;
        v15 -= v15 | 0xFFFFFFE0;
        *&v13[4 * v14] -= v17;
      }

      v18 = &v9[12 * v14];
      *v18 = v15;
      v19 = [chunksCopy objectAtIndexedSubscript:v14];
      *(v18 + 1) = [v19[1] length];

      v20 = [chunksCopy objectAtIndexedSubscript:v14];
      *(v18 + 2) = [objc_opt_class() dataChunkType];

      v15 += *(v18 + 1);
      v14 = v16;
    }

    while ([chunksCopy count] > v16++);
  }

  [v6 appendBytes:v9 length:v34];
  if ([chunksCopy count])
  {
    v22 = 0;
    v23 = 0;
    do
    {
      if (*&v13[4 * v22])
      {
        v24 = 0;
        do
        {
          [v6 appendBytes:&unk_260DB28D8 length:1];
          ++v24;
        }

        while (v24 < *&v13[4 * v22]);
      }

      v25 = [chunksCopy objectAtIndexedSubscript:v22];
      [v6 appendData:v25[1]];

      v22 = ++v23;
    }

    while ([chunksCopy count] > v23);
  }

  if (v33 >= 0x16)
  {
    free(v9);
  }

  if (v32 >= 0x101)
  {
    free(v13);
  }

  return v6;
}

+ (id)chunksFromData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];
  if (v5 < 8 || *bytes != 1563411470)
  {
    goto LABEL_5;
  }

  v6 = bytes[1];
  if (v6)
  {
    v7 = v5;
    v8 = 12 * v6;
    v9 = v8 + 8;
    if (v8 + 8 > v5)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_6;
    }

    v12 = malloc_type_malloc(v8 + 8, 0x3D3618B9uLL);
    memcpy(v12, bytes, v9);
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12[1]];
    if (v12[1])
    {
      v13 = 0;
      v14 = v12 + 2;
      while (1)
      {
        v15 = v14[1] + *v14;
        if (v15 > v7)
        {
          break;
        }

        v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:bytes + *v14 length:v14[1] freeWhenDone:0];
        v17 = [PMLDataChunk chunkOfType:v14[2] data:v16 superdata:dataCopy];
        if (!v17)
        {
          v19 = PML_LogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = 67109120;
            LODWORD(v21) = v13;
            _os_log_error_impl(&dword_260D68000, v19, OS_LOG_TYPE_ERROR, "Could not parse chunk %u; bailing out", &v20, 8u);
          }

          goto LABEL_21;
        }

        v18 = v17;
        [v10 addObject:v17];

        ++v13;
        v14 += 3;
        if (v13 >= v12[1])
        {
          goto LABEL_22;
        }
      }

      v16 = PML_LogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = 134218240;
        v21 = v15;
        v22 = 2048;
        v23 = v7;
        _os_log_error_impl(&dword_260D68000, v16, OS_LOG_TYPE_ERROR, "Chunk descriptor out of bounds: ends at %llu in data of length %llu", &v20, 0x16u);
      }

LABEL_21:

      v10 = 0;
    }

LABEL_22:
    free(v12);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

LABEL_6:

  return v10;
}

+ (id)chunksFromFileAtPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:pathCopy options:1 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [PMLDataChunk chunksFromData:v4];
  }

  else
  {
    v7 = PML_LogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = pathCopy;
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_260D68000, v7, OS_LOG_TYPE_ERROR, "Could not open chunk file at %@: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)chunkOfType:(unsigned int)type data:(id)data superdata:(id)superdata
{
  dataCopy = data;
  superdataCopy = superdata;
  if (type > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc(*off_279AC06E0[type]);
  }

  v10 = [v9 initWithData:dataCopy];
  [v10 setSuperdata:superdataCopy];

  return v10;
}

@end