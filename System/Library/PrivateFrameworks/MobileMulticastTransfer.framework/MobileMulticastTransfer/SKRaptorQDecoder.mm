@interface SKRaptorQDecoder
- (BOOL)addPacket:(id)packet error:(id *)error;
- (BOOL)addPacketsFromFilesInSummary:(id)summary error:(id *)error;
- (BOOL)decodeAllSourceBlocks:(id *)blocks discarded:(unint64_t *)discarded;
- (BOOL)decodeBlock:(unint64_t)block error:(id *)error discarded:(unint64_t *)discarded;
- (BOOL)decodeInputURL:(id)l error:(id *)error;
- (SKRaptorQDecoder)initWithBasicParameters:(unint64_t)parameters extendedParameters:(unsigned int)extendedParameters repairFactor:(unsigned int)factor threshold:(unint64_t)threshold outputURL:(id)l error:(id *)error;
- (double)calculateSymbolLostRate;
- (unint64_t)missingSymbolCount;
- (void)dealloc;
@end

@implementation SKRaptorQDecoder

- (SKRaptorQDecoder)initWithBasicParameters:(unint64_t)parameters extendedParameters:(unsigned int)extendedParameters repairFactor:(unsigned int)factor threshold:(unint64_t)threshold outputURL:(id)l error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v68.receiver = self;
  v68.super_class = SKRaptorQDecoder;
  v67 = [(SKRaptorQDecoder *)&v68 init];
  if (!v67)
  {
    goto LABEL_35;
  }

  if (MIBUOnceToken != -1)
  {
    [SKRaptorQDecoder initWithBasicParameters:extendedParameters:repairFactor:threshold:outputURL:error:];
  }

  v14 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B04000, v14, OS_LOG_TYPE_DEFAULT, "Initialize NanoRQ decoder...", buf, 2u);
  }

  v15 = nanorq_decoder_new(parameters, extendedParameters);
  *(v67 + 2) = v15;
  if (!v15)
  {
    if (!error)
    {
      goto LABEL_35;
    }

    NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Create decoder failed");
LABEL_34:
    *error = v35 = 0;
    goto LABEL_36;
  }

  nanorq_set_repair_factor(v15, factor);
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    if (!error)
    {
      goto LABEL_35;
    }

    NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Bad output path");
    goto LABEL_34;
  }

  v17 = ioctx_mmap_file(fileSystemRepresentation, 0);
  *(v67 + 1) = v17;
  if (!v17)
  {
    if (error)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Create I/O context failed");
      goto LABEL_34;
    }

LABEL_35:
    v35 = 0;
    goto LABEL_36;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  lastPathComponent = [lCopy lastPathComponent];
  v20 = [lastPathComponent stringByAppendingPathExtension:@"intermediate"];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v22 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v20 isDirectory:1];

  path = [v22 path];
  v24 = [defaultManager fileExistsAtPath:path];

  if ((!v24 || [defaultManager removeItemAtURL:v22 error:error]) && objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v22, 1, 0, error))
  {
    v57 = v20;
    v58 = lastPathComponent;
    v66 = defaultManager;
    errorCopy = error;
    v59 = lCopy;
    v25 = nanorq_blocks(*(v67 + 2));
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    obj = objc_alloc_init(MEMORY[0x277CCAB58]);
    if (v25)
    {
      v28 = 0;
      while (1)
      {
        v29 = nanorq_block_symbols(*(v67 + 2), v28);
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"encoded.%lu", v28];
        v31 = v22;
        v32 = [v22 URLByAppendingPathComponent:v30];
        path2 = [v32 path];
        v34 = [v66 createFileAtPath:path2 contents:0 attributes:0];

        if ((v34 & 1) == 0)
        {
          [SKRaptorQDecoder initWithBasicParameters:errorCopy extendedParameters:v32 repairFactor:v30 threshold:? outputURL:? error:?];
          v35 = 0;
          goto LABEL_26;
        }

        v35 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v32 error:errorCopy];
        if (!v35)
        {
          break;
        }

        v36 = v29 + threshold;
        [v26 addObject:v32];
        [v27 addObject:v35];
        v37 = objc_alloc_init(MEMORY[0x277CCAB58]);
        [v65 addObject:v37];

        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
        [v64 addObject:v38];

        v39 = objc_alloc_init(_SKRaptorQRReceptionDetails);
        [v63 addObject:v39];

        [obj addIndex:v28];
        if (MIBUOnceToken != -1)
        {
          [SKRaptorQDecoder initWithBasicParameters:extendedParameters:repairFactor:threshold:outputURL:error:];
        }

        v40 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v70 = v28;
          v71 = 2048;
          v72 = v36;
          _os_log_impl(&dword_259B04000, v40, OS_LOG_TYPE_DEFAULT, ">> [SBN #%lu] Target Symbol Count: %lu", buf, 0x16u);
        }

        ++v28;
        v22 = v31;
        if (v25 == v28)
        {
          goto LABEL_21;
        }
      }

LABEL_26:
      v22 = v31;
      v48 = v64;
      v45 = v65;
      v54 = obj;
      v51 = v63;
    }

    else
    {
LABEL_21:
      v41 = [v26 copy];
      v42 = *(v67 + 4);
      *(v67 + 4) = v41;

      v43 = [v27 copy];
      v44 = *(v67 + 5);
      *(v67 + 5) = v43;

      v45 = v65;
      v46 = [v65 copy];
      v47 = *(v67 + 6);
      *(v67 + 6) = v46;

      v48 = v64;
      v49 = [v64 copy];
      v50 = *(v67 + 7);
      *(v67 + 7) = v49;

      v51 = v63;
      v52 = [v63 copy];
      v53 = *(v67 + 3);
      *(v67 + 3) = v52;

      v54 = obj;
      objc_storeStrong(v67 + 8, obj);
      v55 = *(v67 + 9);
      *(v67 + 9) = &unk_286AD0DD0;

      v35 = v67;
    }

    lastPathComponent = v58;
    lCopy = v59;
    defaultManager = v66;
    v20 = v57;
  }

  else
  {
    v35 = 0;
  }

LABEL_36:
  return v35;
}

void __102__SKRaptorQDecoder_initWithBasicParameters_extendedParameters_repairFactor_threshold_outputURL_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __102__SKRaptorQDecoder_initWithBasicParameters_extendedParameters_repairFactor_threshold_outputURL_error___block_invoke_29()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    [SKRaptorQDecoder dealloc];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating RaptorQ Decoder...", buf, 2u);
  }

  rq = self->_rq;
  if (rq)
  {
    nanorq_free(rq);
    self->_rq = 0;
  }

  outputIO = self->_outputIO;
  if (outputIO)
  {
    (outputIO->var5)();
    self->_outputIO = 0;
  }

  encodedFileHandles = self->_encodedFileHandles;
  if (encodedFileHandles)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = encodedFileHandles;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v17 + 1) + 8 * i) closeAndReturnError:0];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    v12 = self->_encodedFileHandles;
    self->_encodedFileHandles = 0;
  }

  encodedFileURLs = self->_encodedFileURLs;
  self->_encodedFileURLs = 0;

  encodedSymbolSets = self->_encodedSymbolSets;
  self->_encodedSymbolSets = 0;

  sbnStillReceiving = self->_sbnStillReceiving;
  self->_sbnStillReceiving = 0;

  v16.receiver = self;
  v16.super_class = SKRaptorQDecoder;
  [(SKRaptorQDecoder *)&v16 dealloc];
}

void __27__SKRaptorQDecoder_dealloc__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)decodeInputURL:(id)l error:(id *)error
{
  v25[5] = *MEMORY[0x277D85DE8];
  lCopy = l;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    v8 = fopen(fileSystemRepresentation, "rb");
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__SKRaptorQDecoder_decodeInputURL_error___block_invoke;
    v25[3] = &__block_descriptor_40_e5_v8__0l;
    v25[4] = v8;
    v9 = MEMORY[0x259CAE830](v25);
    v10 = nanorq_blocks(self->_rq);
    v11 = nanorq_symbol_size(self->_rq);
    v23 = *MEMORY[0x277CCA590];
    if (error)
    {
      v12 = fread(&__ptr, 1uLL, 4uLL, v8);
      if (v12)
      {
        while (1)
        {
          if (v12 != 4)
          {
            goto LABEL_20;
          }

          v13 = __ptr;
          MEMORY[0x28223BE20](4);
          if (fread(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 1uLL, v11, v8) != v11)
          {
            break;
          }

          if (nanorq_decoder_add_symbol(self->_rq, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, self->_outputIO, v14) == -1)
          {
            v22 = NSErrorF(v23, 4294960596, "Add symbol failed");
            goto LABEL_34;
          }

          v12 = fread(&__ptr, 1uLL, 4uLL, v8);
          if (!v12)
          {
            goto LABEL_8;
          }
        }

        v22 = NSErrorF(v23, 4294960550, "Read packet failed");
LABEL_34:
        *error = v22;
        goto LABEL_22;
      }
    }

    else
    {
      while (1)
      {
        v17 = fread(&__ptr, 1uLL, 4uLL, v8);
        if (!v17)
        {
          break;
        }

        if (v17 != 4)
        {
          goto LABEL_20;
        }

        v18 = __ptr;
        MEMORY[0x28223BE20](4);
        if (fread(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 1uLL, v11, v8) != v11 || nanorq_decoder_add_symbol(self->_rq, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18, self->_outputIO, v19) == -1)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_8:
    if (feof(v8))
    {
      if (v10)
      {
        v15 = 0;
        while (1)
        {
          if (v15 == 256)
          {
            if (!error)
            {
              goto LABEL_22;
            }

            v21 = NSErrorF(v23, 4294960596, "Too many blocks");
            goto LABEL_29;
          }

          if (!nanorq_repair_block(self->_rq, self->_outputIO, v15))
          {
            break;
          }

          nanorq_encoder_cleanup(self->_rq, v15++);
          if (v10 == v15)
          {
            goto LABEL_14;
          }
        }

        if (!error)
        {
          goto LABEL_22;
        }

        v21 = NSErrorF(v23, 4294960596, "Decode failed");
LABEL_29:
        v16 = 0;
        *error = v21;
      }

      else
      {
LABEL_14:
        v16 = 1;
      }
    }

    else
    {
LABEL_20:
      if (error)
      {
        *error = NSErrorF(v23, 4294960550, "Read tag failed");
      }

LABEL_22:
      v16 = 0;
    }

    v9[2](v9);
  }

  else if (error)
  {
    NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Bad input path");
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)addPacketsFromFilesInSummary:(id)summary error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  rqEncodedFileURLs = [summaryCopy rqEncodedFileURLs];
  v8 = nanorq_symbol_size(self->_rq);
  if (![rqEncodedFileURLs count])
  {
    if (error)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960596, "No encoded files specified");
      *error = v19 = 0;
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  errorCopy = error;
  v22 = summaryCopy;
  if (![rqEncodedFileURLs count])
  {
LABEL_15:
    if ([(SKRaptorQDecoder *)self sufficientSymbolsReceived])
    {
      v19 = 1;
      summaryCopy = v22;
      goto LABEL_21;
    }

    summaryCopy = v22;
    if (errorCopy)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Not enough symbol added");
      *errorCopy = v19 = 0;
      goto LABEL_21;
    }

LABEL_27:
    v19 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  v23 = rqEncodedFileURLs;
  while (1)
  {
    v10 = [(NSArray *)self->_targetSymbolCounts objectAtIndexedSubscript:v9];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    v12 = [rqEncodedFileURLs objectAtIndexedSubscript:v9];
    if (MIBUOnceToken != -1)
    {
      [SKRaptorQDecoder addPacketsFromFilesInSummary:error:];
    }

    v13 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "Adding symbols from encoded file: %{public}@", buf, 0xCu);
    }

    v26 = 0;
    v14 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v12 error:&v26];
    v15 = v26;
    if (!v14)
    {
      [(SKRaptorQDecoder *)errorCopy addPacketsFromFilesInSummary:v15 error:buf];
      v18 = *buf;
      goto LABEL_20;
    }

    if (unsignedIntegerValue)
    {
      break;
    }

LABEL_4:
    [v14 closeAndReturnError:0];

    ++v9;
    rqEncodedFileURLs = v23;
    if (v9 >= [v23 count])
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v16 = objc_autoreleasePoolPush();
    v25 = 0;
    v17 = [v14 readDataUpToLength:v8 + 4 error:&v25];
    v18 = v25;

    if (!v17)
    {
      [SKRaptorQDecoder addPacketsFromFilesInSummary:errorCopy error:v18];
      goto LABEL_19;
    }

    if (![v17 length])
    {
      break;
    }

    v24 = v18;
    [(SKRaptorQDecoder *)self addPacket:v17 error:&v24];
    v15 = v24;

    objc_autoreleasePoolPop(v16);
    if (!--unsignedIntegerValue)
    {
      goto LABEL_4;
    }
  }

  [SKRaptorQDecoder addPacketsFromFilesInSummary:errorCopy error:?];
LABEL_19:

  objc_autoreleasePoolPop(v16);
LABEL_20:
  summaryCopy = v22;

  v19 = 0;
  rqEncodedFileURLs = v23;
LABEL_21:

  return v19;
}

void __55__SKRaptorQDecoder_addPacketsFromFilesInSummary_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)addPacket:(id)packet error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  v22 = 0;
  [packetCopy getBytes:&v22 range:{0, 4}];
  v7 = nanorq_sbn_in_tag(v22);
  v8 = nanorq_esi_in_tag(v22);
  v9 = v7;
  if ([(NSArray *)self->_encodedSymbolSets count]> v7)
  {
    v10 = [(NSMutableArray *)self->_receptionDetails objectAtIndexedSubscript:v7];
    [v10 updateWithESI:v8];

    v11 = [(NSArray *)self->_encodedSymbolSets objectAtIndexedSubscript:v9];
    v12 = v8;
    if ([v11 containsIndex:v8])
    {
      v13 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v14 = [(NSArray *)self->_encodedFileHandles objectAtIndexedSubscript:v9];
    v15 = v14;
    if (v14)
    {
      if ([v14 writeData:packetCopy error:error])
      {
        [v11 addIndex:v12];
        v16 = [(NSArray *)self->_targetSymbolCounts objectAtIndexedSubscript:v9];
        unsignedIntegerValue = [v16 unsignedIntegerValue];

        if ([v11 count] >= unsignedIntegerValue && -[NSMutableIndexSet containsIndex:](self->_sbnStillReceiving, "containsIndex:", v9))
        {
          if (MIBUOnceToken != -1)
          {
            [SKRaptorQDecoder addPacket:error:];
          }

          v18 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            v20 = [v11 count];
            *buf = 67109632;
            v24 = v9;
            v25 = 2048;
            v26 = v20;
            v27 = 2048;
            v28 = unsignedIntegerValue;
            _os_log_impl(&dword_259B04000, v19, OS_LOG_TYPE_DEFAULT, "Received enough symbols for source block #%u: %lu of %lu", buf, 0x1Cu);
          }

          [(NSMutableIndexSet *)self->_sbnStillReceiving removeIndex:v9];
        }

        v13 = 1;
        goto LABEL_14;
      }
    }

    else if (error)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Invalid file handle for sbn: %lu", v9);
      *error = v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v13 = 0;
    goto LABEL_14;
  }

  if (error)
  {
    NSErrorF(*MEMORY[0x277CCA590], 4294960596, "sbn too big: %lu", v7);
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  return v13;
}

void __36__SKRaptorQDecoder_addPacket_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)decodeAllSourceBlocks:(id *)blocks discarded:(unint64_t *)discarded
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = nanorq_blocks(self->_rq);
  if (v7 >= 0x100)
  {
    if (blocks)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Too many blocks");
      *blocks = v10 = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = v7;
    v33 = 0;
    v34 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke;
    v28[3] = &unk_2798EC108;
    v29 = 0;
    blocksCopy = blocks;
    discardedCopy = discarded;
    v32 = &v33;
    v26 = MEMORY[0x259CAE830](v28);
    v25 = [MEMORY[0x277CBEAA8] now];
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = objc_autoreleasePoolPush();
        if (MIBUOnceToken != -1)
        {
          [SKRaptorQDecoder decodeAllSourceBlocks:discarded:];
        }

        v14 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v36 = v12;
          _os_log_impl(&dword_259B04000, v14, OS_LOG_TYPE_DEFAULT, ">> Decoding source block #%lu...", buf, 0xCu);
        }

        v27 = v11;
        v15 = [(SKRaptorQDecoder *)self decodeBlock:v12 error:&v27 discarded:&v34, v25];
        v16 = v27;

        v11 = v16;
        v33 += v34;
        if (v15)
        {
          if (MIBUOnceToken != -1)
          {
            [SKRaptorQDecoder decodeAllSourceBlocks:discarded:];
          }

          v17 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v36 = v34;
            _os_log_impl(&dword_259B04000, v17, OS_LOG_TYPE_DEFAULT, ">>>> Source block successfully decoded (%lu discarded)!", buf, 0xCu);
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 / v8)];
          decodingProgress = self->_decodingProgress;
          self->_decodingProgress = v18;
        }

        else
        {
          if (MIBUOnceToken != -1)
          {
            [SKRaptorQDecoder decodeAllSourceBlocks:discarded:];
          }

          v20 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v11;
            _os_log_impl(&dword_259B04000, v20, OS_LOG_TYPE_DEFAULT, ">>>> Failed to decode source block: %{public}@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v13);
        if (!v15)
        {
          break;
        }

        v10 = ++v12 >= v8;
        v9 += 100;
        if (v8 == v12)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v11 = 0;
LABEL_22:
      v21 = [MEMORY[0x277CBEAA8] now];
      if (MIBUOnceToken != -1)
      {
        [SKRaptorQDecoder decodeAllSourceBlocks:discarded:];
      }

      v22 = MIBUConnObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        [v21 timeIntervalSinceDate:v25];
        *buf = 134217984;
        v36 = v23;
        _os_log_impl(&dword_259B04000, v22, OS_LOG_TYPE_DEFAULT, "Total time taken for decoding all source blocks: %.3f", buf, 0xCu);
      }

      v10 = 1;
    }

    v26[2]();
  }

  return v10;
}

id *__52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke(id *result)
{
  v1 = result;
  if (result[5])
  {
    result = result[4];
    *v1[5] = result;
  }

  v2 = v1[6];
  if (v2)
  {
    *v2 = *v1[7];
  }

  return result;
}

void __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke_60()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke_63()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke_66()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)decodeBlock:(unint64_t)block error:(id *)error discarded:(unint64_t *)discarded
{
  v77 = *MEMORY[0x277D85DE8];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke;
  v61[3] = &unk_2798EBC60;
  v61[4] = self;
  blockCopy = block;
  blockCopy2 = block;
  v44 = MEMORY[0x259CAE830](v61, a2);
  v40 = [(NSArray *)self->_encodedFileURLs objectAtIndexedSubscript:blockCopy2];
  v8 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:? error:?];
  if (!v8)
  {
    v32 = 0;
    goto LABEL_43;
  }

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_2;
  v59[3] = &unk_2798EB9A8;
  v38 = v8;
  v9 = v8;
  v60 = v9;
  v39 = MEMORY[0x259CAE830](v59);
  v10 = nanorq_symbol_size(self->_rq);
  v47 = nanorq_block_symbols(self->_rq, blockCopy2);
  v58 = 0;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_3;
  v53[3] = &unk_2798EC108;
  errorCopy = error;
  v54 = 0;
  discardedCopy = discarded;
  v57 = &v58;
  v42 = MEMORY[0x259CAE830](v53);
  v11 = 0;
  v12 = 0;
  v43 = 0;
  v13 = v10 + 4;
  v50 = *MEMORY[0x277CCA590];
  *&v14 = 138543362;
  v49 = v14;
  *&v14 = 134219520;
  v41 = v14;
  *&v14 = 134217984;
  v46 = v14;
  v45 = -1;
  while (1)
  {
    v15 = objc_autoreleasePoolPush();
    v52 = 0;
    v16 = [v9 readDataUpToLength:v13 error:&v52];
    v17 = v52;

    if (v16)
    {
      if ([v16 length] == v13)
      {
        if ([v16 length])
        {
          v51 = 0;
          v18 = [v16 length];
          v19 = &v37 - ((MEMORY[0x28223BE20](v18) + 11) & 0xFFFFFFFFFFFFFFF0);
          [v16 getBytes:&v51 range:{0, 4}];
          [v16 getBytes:v19 range:{4, objc_msgSend(v16, "length") - 4}];
          if (nanorq_decoder_add_symbol(self->_rq, v19, v51, self->_outputIO, v20) == -1)
          {
            if (MIBUOnceToken != -1)
            {
              [SKRaptorQDecoder decodeBlock:error:discarded:];
            }

            v28 = MIBUConnObj;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v51;
              max_esi = nanorq_get_max_esi(self->_rq);
              *buf = v41;
              v64 = v12;
              v65 = 2048;
              v66 = blockCopy2;
              v67 = 1024;
              v68 = -1;
              v69 = 1024;
              v70 = v29;
              v71 = 1024;
              v72 = v45;
              v73 = 1024;
              v74 = max_esi;
              v75 = 2048;
              v76 = v47;
              _os_log_impl(&dword_259B04000, v28, OS_LOG_TYPE_DEFAULT, "Failed to add symbol for symbol %lu for sbn %lu: %d. tag = 0x%x, lastTag = 0x%x, rq->max_esi = %u, esiCount = %lu", buf, 0x38u);
            }

            ++v58;
            v21 = 6;
          }

          else
          {
            if (&v12[-v58] >= v47 && nanorq_repair_block(self->_rq, self->_outputIO, blockCopy2))
            {
              v21 = 4;
              v22 = 1;
              v23 = &blockCopy + 2;
            }

            else
            {
              v21 = 0;
              v22 = v51;
              v23 = &v65;
            }

            *(v23 - 64) = v22;
          }
        }

        else
        {
          v21 = 4;
        }
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          [SKRaptorQDecoder decodeBlock:error:discarded:];
        }

        v25 = MIBUConnObj;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v16 length];
          *buf = v46;
          v64 = v26;
          _os_log_impl(&dword_259B04000, v25, OS_LOG_TYPE_DEFAULT, "Invalid data length read from file: %lu", buf, 0xCu);
        }

        v27 = NSErrorF(v50, 4294960596, "Invalid data length");

        v21 = 1;
        v17 = v27;
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        [SKRaptorQDecoder decodeBlock:error:discarded:];
      }

      v24 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v49;
        v64 = v17;
        _os_log_impl(&dword_259B04000, v24, OS_LOG_TYPE_DEFAULT, "Failed to read data from file: %{public}@", buf, 0xCu);
      }

      v21 = 1;
    }

    objc_autoreleasePoolPop(v15);
    if (v21)
    {
      if (v21 != 6)
      {
        break;
      }
    }

    ++v12;
    v11 = v17;
  }

  if (v21 != 4)
  {
    v32 = 0;
LABEL_41:
    v31 = v42;
    goto LABEL_42;
  }

  v31 = v42;
  if ((v43 & 1) == 0)
  {
    if (MIBUOnceToken != -1)
    {
      [SKRaptorQDecoder decodeBlock:error:discarded:];
    }

    v33 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B04000, v33, OS_LOG_TYPE_DEFAULT, "Failed to repair source block.", buf, 2u);
    }

    v34 = NSErrorF(v50, 4294960596, "Decode failed");

    v32 = 0;
    v17 = v34;
    goto LABEL_41;
  }

  v32 = 1;
LABEL_42:
  v31[2](v31);

  v35 = v39;
  (*(v39 + 16))(v39);

  v8 = v38;
LABEL_43:

  v44[2]();
  return v32;
}

id *__48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_3(id *result)
{
  v1 = result;
  if (result[5])
  {
    result = result[4];
    *v1[5] = result;
  }

  v2 = v1[6];
  if (v2)
  {
    *v2 = *v1[7];
  }

  return result;
}

void __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_4()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_71()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_75()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_78()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (unint64_t)missingSymbolCount
{
  v3 = 0;
  if ([(NSArray *)self->_encodedSymbolSets count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_encodedSymbolSets objectAtIndexedSubscript:v4];
      v6 = [v5 count];

      v7 = [(NSArray *)self->_targetSymbolCounts objectAtIndexedSubscript:v4];
      unsignedIntegerValue = [v7 unsignedIntegerValue];

      v9 = unsignedIntegerValue - v6;
      if (unsignedIntegerValue < v6)
      {
        v9 = 0;
      }

      v3 += v9;
      ++v4;
    }

    while (v4 < [(NSArray *)self->_encodedSymbolSets count]);
  }

  return v3;
}

- (double)calculateSymbolLostRate
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = nanorq_symbol_size(self->_rq);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  encodedSymbolSets = self->_encodedSymbolSets;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__SKRaptorQDecoder_calculateSymbolLostRate__block_invoke;
  v12[3] = &unk_2798EC130;
  v12[4] = self;
  v12[5] = &v17;
  v12[6] = &v13;
  [(NSArray *)encodedSymbolSets enumerateObjectsUsingBlock:v12];
  v5 = v14[3];
  v6 = v18[3];
  if (MIBUOnceToken != -1)
  {
    [SKRaptorQDecoder calculateSymbolLostRate];
  }

  v7 = v5 / v6 * 100.0;
  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v18[3];
    v10 = v14[3];
    *buf = 134219008;
    v22 = v9;
    v23 = 2048;
    v24 = v9 * (v3 + 4);
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v10 * (v3 + 4);
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "Total expected symbols: %lu (=%lu bytes), Total lost symbols: %lu (=%lu bytes), Symbol loss rate: %.3f%%", buf, 0x34u);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v7;
}

void __43__SKRaptorQDecoder_calculateSymbolLostRate__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a1[4] + 16);
  v6 = a2;
  v7 = nanorq_block_symbols(v5, a3);
  v8 = [*(a1[4] + 24) objectAtIndexedSubscript:a3];
  LODWORD(v7) = [v8 symbolsShouldHaveReceived:v7];

  *(*(a1[5] + 8) + 24) += v7;
  v9 = [v6 count];

  *(*(a1[6] + 8) + 24) += v7 - v9;
}

void __43__SKRaptorQDecoder_calculateSymbolLostRate__block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)initWithBasicParameters:(void *)a3 extendedParameters:repairFactor:threshold:outputURL:error:.cold.2(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    *a1 = NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Create empty file failed");
  }
}

- (void)addPacketsFromFilesInSummary:(void *)result error:.cold.2(void *result)
{
  if (result)
  {
    v1 = result;
    result = NSErrorF(*MEMORY[0x277CCA590], 4294960550, "No more symbol available");
    *v1 = result;
  }

  return result;
}

- (void)addPacketsFromFilesInSummary:(void *)a1 error:(void *)a2 .cold.3(void *a1, void *a2)
{
  if (a1)
  {
    v3 = *MEMORY[0x277CCA590];
    v4 = [a2 localizedDescription];
    *a1 = NSErrorF(v3, 4294960550, "Cannot read encoded file: %@", v4);
  }
}

- (void)addPacketsFromFilesInSummary:(void *)a3 error:.cold.4(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = *MEMORY[0x277CCA590];
    v7 = [a2 localizedDescription];
    *a1 = NSErrorF(v6, 4294960541, "Cannot open encoded file: %@", v7);
  }

  *a3 = a2;
}

@end