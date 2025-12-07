@interface CalypsoReaderContext
+ (id)readAllFiles:(id)files withFileMapping:(id)mapping debug:(BOOL)debug error:(id *)error;
+ (id)readBinary:(id)binary sfi:(unsigned __int8)sfi error:(id *)error;
+ (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index recLength:(unsigned __int8)length error:(id *)error;
- (id)readAll:(id)all withFileMapping:(id)mapping debug:(BOOL)debug error:(id *)error;
- (void)dumpAllFiles;
@end

@implementation CalypsoReaderContext

+ (id)readAllFiles:(id)files withFileMapping:(id)mapping debug:(BOOL)debug error:(id *)error
{
  debugCopy = debug;
  mappingCopy = mapping;
  filesCopy = files;
  v11 = objc_alloc_init(CalypsoReaderContext);
  v12 = [(CalypsoReaderContext *)v11 readAll:filesCopy withFileMapping:mappingCopy debug:debugCopy error:error];

  return v12;
}

- (id)readAll:(id)all withFileMapping:(id)mapping debug:(BOOL)debug error:(id *)error
{
  debugCopy = debug;
  v49 = *MEMORY[0x277D85DE8];
  allCopy = all;
  mappingCopy = mapping;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(mappingCopy, "count")}];
  selfCopy = self;
  [(CalypsoReaderContext *)self setFiles:v10];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = mappingCopy;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
  v34 = v12;
  if (v12)
  {
    v35 = *v41;
    v36 = v11;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        v15 = ATLLogObject(v12);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v11 objectForKeyedSubscript:v14];
          *buf = 138412546;
          v45 = v14;
          v46 = 2112;
          v47 = v16;
          _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEBUG, "sfi=%@ value=%@", buf, 0x16u);
        }

        v38 = v14;
        v17 = [v11 objectForKeyedSubscript:v14];
        v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
        v19 = [v17 objectForKeyedSubscript:@"sfi"];
        unsignedCharValue = [v19 unsignedCharValue];

        v21 = [v17 objectForKeyedSubscript:@"numRecords"];
        unsignedCharValue2 = [v21 unsignedCharValue];

        if (unsignedCharValue2)
        {
          v23 = 1;
          while (1)
          {
            v39 = 0;
            v24 = [CalypsoReaderContext readRecord:allCopy sfi:unsignedCharValue index:v23 recLength:0 error:&v39];
            v25 = v39;
            if (v25)
            {
              break;
            }

            if (v24)
            {
              v26 = [CalypsoRecord withRecordSfi:unsignedCharValue recordNumber:v23 recordData:v24];
              [v18 addObject:v26];
            }

            if (unsignedCharValue2 < ++v23)
            {
              goto LABEL_14;
            }
          }

          v29 = v25;
          if (error)
          {
            v30 = v25;
            *error = v29;
          }

          v11 = v36;
          v28 = 0;
          goto LABEL_22;
        }

LABEL_14:
        files = [(CalypsoReaderContext *)selfCopy files];
        [files setObject:v18 forKeyedSubscript:v38];

        ++v13;
        v11 = v36;
      }

      while (v13 != v34);
      v12 = [v36 countByEnumeratingWithState:&v40 objects:v48 count:16];
      v34 = v12;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (debugCopy)
  {
    [(CalypsoReaderContext *)selfCopy dumpAllFiles];
  }

  v28 = selfCopy;
LABEL_22:

  return v28;
}

- (void)dumpAllFiles
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "--- CALYPSO DUMP BEGIN --", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  files = [(CalypsoReaderContext *)self files];
  v5 = [files countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(files);
        }

        v11 = *(*(&v15 + 1) + 8 * v9);
        files2 = [(CalypsoReaderContext *)self files];
        v7 = [files2 objectForKeyedSubscript:v11];

        [v7 enumerateObjectsUsingBlock:&__block_literal_global_4];
        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [files countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = ATLLogObject(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_INFO, "--- CALYPSO DUMP END --", buf, 2u);
  }
}

void __36__CalypsoReaderContext_dumpAllFiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 sfi];
  [v2 number];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[CalypsoReaderContext dumpAllFiles]_block_invoke", 94, v4, v6, @"    SFI 0x%02X record %u", v8, v9, v7);
}

+ (id)readBinary:(id)binary sfi:(unsigned __int8)sfi error:(id *)error
{
  sfiCopy = sfi;
  v29 = *MEMORY[0x277D85DE8];
  v20 = -20480;
  v21 = sfi | 0x80;
  v22 = 0;
  v7 = [binary transceiveBytesAndCheckSW:&v20 length:5 error:?];
  if (!v7)
  {
    v8 = ATLLogObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v28 = sfiCopy;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "sfi 0x%x", buf, 8u);
    }

    sfiCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"sfi 0x%x", sfiCopy];
    v10 = sfiCopy;
    if (error)
    {
      v11 = *error;
      v12 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v13 = *MEMORY[0x277CCA7E8];
        v23[0] = *MEMORY[0x277CCA450];
        v23[1] = v13;
        v24[0] = sfiCopy;
        v24[1] = v11;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v24;
        v16 = v23;
        v17 = 2;
      }

      else
      {
        v25 = *MEMORY[0x277CCA450];
        v26 = sfiCopy;
        v14 = MEMORY[0x277CBEAC0];
        v15 = &v26;
        v16 = &v25;
        v17 = 1;
      }

      v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
      *error = [v12 errorWithDomain:@"ATL" code:5 userInfo:v18];
    }
  }

  return v7;
}

+ (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index recLength:(unsigned __int8)length error:(id *)error
{
  sfiCopy = sfi;
  v54[1] = *MEMORY[0x277D85DE8];
  if (sfi < 0x1Fu)
  {
    indexCopy = index;
    v39 = -19968;
    indexCopy2 = index;
    v41 = (8 * sfi) | 4;
    lengthCopy = length;
    v38 = 0;
    v20 = [record transceiveBytesAndCheckSW:&v39 length:5 inArray:&unk_2843C7370 keepingSW:1 error:&v38];
    v21 = v38;
    v11 = v21;
    if (v21)
    {
      if (error)
      {
        v22 = v21;
        v23 = 0;
        *error = v11;
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v24 = [v20 u16BE:{objc_msgSend(v20, "length") - 2}];
      if (v24 != 27267)
      {
        v23 = [v20 subdataWithOffset:0 length:{objc_msgSend(v20, "length") - 2}];
        goto LABEL_24;
      }

      v25 = ATLLogObject(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v48 = sfiCopy;
        v49 = 1024;
        v50 = indexCopy;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Warning: SFI 0x%02X Record 0x%02X not found", buf, 0xEu);
      }

      indexCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Warning: SFI 0x%02X Record 0x%02X not found", sfiCopy, indexCopy];
      v27 = indexCopy;
      if (error)
      {
        v28 = *error;
        v29 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v30 = *MEMORY[0x277CCA7E8];
          v43[0] = *MEMORY[0x277CCA450];
          v43[1] = v30;
          v44[0] = indexCopy;
          v44[1] = v28;
          v31 = MEMORY[0x277CBEAC0];
          v32 = v44;
          v33 = v43;
          v34 = 2;
        }

        else
        {
          v45 = *MEMORY[0x277CCA450];
          v46 = indexCopy;
          v31 = MEMORY[0x277CBEAC0];
          v32 = &v46;
          v33 = &v45;
          v34 = 1;
        }

        v36 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
        *error = [v29 errorWithDomain:@"ATL" code:9 userInfo:v36];
      }
    }

    v23 = 0;
    goto LABEL_24;
  }

  v9 = ATLLogObject(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v48 = sfiCopy;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Invalid SFI for read record 0x%X", buf, 8u);
  }

  sfiCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid SFI for read record 0x%X", sfiCopy];
  v11 = sfiCopy;
  if (error)
  {
    v12 = *error;
    v13 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v14 = *MEMORY[0x277CCA7E8];
      v51[0] = *MEMORY[0x277CCA450];
      v51[1] = v14;
      v52[0] = sfiCopy;
      v52[1] = v12;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v52;
      v17 = v51;
      v18 = 2;
    }

    else
    {
      v53 = *MEMORY[0x277CCA450];
      v54[0] = sfiCopy;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v54;
      v17 = &v53;
      v18 = 1;
    }

    v35 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    *error = [v13 errorWithDomain:@"ATL" code:6 userInfo:v35];
  }

  v23 = 0;
LABEL_25:

  return v23;
}

@end