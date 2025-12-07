@interface DreamworksReaderContext
+ (id)readAllFiles:(id)files debug:(BOOL)debug error:(id *)error;
- (id)readAll:(id)all debug:(BOOL)debug error:(id *)error;
- (id)readBalance:(id)balance error:(id *)error;
- (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index error:(id *)error;
- (id)readTransSN:(id)n error:(id *)error;
- (void)dumpAllFiles;
@end

@implementation DreamworksReaderContext

+ (id)readAllFiles:(id)files debug:(BOOL)debug error:(id *)error
{
  debugCopy = debug;
  filesCopy = files;
  v8 = objc_alloc_init(DreamworksReaderContext);
  v9 = [(DreamworksReaderContext *)v8 readAll:filesCopy debug:debugCopy error:error];

  return v9;
}

- (id)readAll:(id)all debug:(BOOL)debug error:(id *)error
{
  v80[1] = *MEMORY[0x277D85DE8];
  allCopy = all;
  v68 = 0;
  v67 = 61824;
  v9 = [allCopy transceiveBytesAndCheckSW:&v67 length:5 error:error];
  v10 = v9;
  if (v9)
  {
    v9 = [v9 length];
    if (v9 > 0x8F)
    {
      v21 = *([v10 bytes] + 52);
      v22 = __rev16(v21);
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
      [(DreamworksReaderContext *)self setFilePurseMaxRecCount:v23];

      v13 = [(DreamworksReaderContext *)self readBalance:allCopy error:error];
      if (v13)
      {
        [(DreamworksReaderContext *)self setBalance:v13];
        v24 = [(DreamworksReaderContext *)self readRecord:allCopy sfi:2 index:1 error:error];
        v25 = [v24 length];
        if (v25 == 51)
        {
          debugCopy = debug;
          v63 = v24;
          v64 = v13;
          [(DreamworksReaderContext *)self setFilePurseInfo:v24];
          v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
          [(DreamworksReaderContext *)self setFilePurse:v26];

          if (v21)
          {
            v27 = 1;
            do
            {
              v28 = [(DreamworksReaderContext *)self readRecord:allCopy sfi:4 index:v27 error:error];
              if ([v28 length] == 46 && (objc_msgSend(v28, "isAll00") & 1) == 0)
              {
                filePurse = [(DreamworksReaderContext *)self filePurse];
                v30 = [DreamworksPurseRecord recordNumber:v27 recordData:v28];
                [filePurse addObject:v30];
              }

              ++v27;
            }

            while (v22 >= v27);
          }

          filePurse2 = [(DreamworksReaderContext *)self filePurse];
          [DreamworksPurseRecord adjustRecords:filePurse2];

          v65 = [(DreamworksReaderContext *)self readTransSN:allCopy error:error];
          v32 = [v65 count];
          v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:v32];
          [(DreamworksReaderContext *)self setFileTrans:v33];

          if (v32)
          {
            v34 = 1;
            for (i = 1; i <= v32; v34 = ++i)
            {
              v36 = [(DreamworksReaderContext *)self readRecord:allCopy sfi:3 index:i error:error];
              if ([v36 length] == 52 && (objc_msgSend(v36, "isAll00") & 1) == 0)
              {
                fileTrans = [(DreamworksReaderContext *)self fileTrans];
                v38 = [v65 objectAtIndexedSubscript:v34 - 1];
                v39 = +[DreamworksTransRecord recordNumber:recordData:seqnum:](DreamworksTransRecord, "recordNumber:recordData:seqnum:", i, v36, [v38 unsignedIntValue]);
                [fileTrans addObject:v39];
              }
            }
          }

          if (debugCopy)
          {
            [(DreamworksReaderContext *)self dumpAllFiles];
          }

          selfCopy = self;
          v24 = v63;
          v13 = v64;
          v41 = v65;
        }

        else
        {
          v51 = ATLLogObject(v25);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_ERROR, "Failed to read EF_Purse_Info", buf, 2u);
          }

          v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to read EF_Purse_Info"];
          v41 = v52;
          if (error)
          {
            v53 = *error;
            v54 = MEMORY[0x277CCA9B8];
            if (*error)
            {
              v55 = *MEMORY[0x277CCA7E8];
              v69[0] = *MEMORY[0x277CCA450];
              v69[1] = v55;
              v70[0] = v52;
              v70[1] = v53;
              v56 = MEMORY[0x277CBEAC0];
              v57 = v70;
              v58 = v69;
              v59 = 2;
            }

            else
            {
              v71 = *MEMORY[0x277CCA450];
              v72 = v52;
              v56 = MEMORY[0x277CBEAC0];
              v57 = &v72;
              v58 = &v71;
              v59 = 1;
            }

            v60 = [v56 dictionaryWithObjects:v57 forKeys:v58 count:v59];
            *error = [v54 errorWithDomain:@"ATL" code:5 userInfo:v60];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v42 = ATLLogObject(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Failed to get balance", buf, 2u);
        }

        v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to get balance"];
        v24 = v43;
        if (!error)
        {
          selfCopy = 0;
          goto LABEL_45;
        }

        v44 = *error;
        v45 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v46 = *MEMORY[0x277CCA7E8];
          v73[0] = *MEMORY[0x277CCA450];
          v73[1] = v46;
          v74[0] = v43;
          v74[1] = v44;
          v47 = MEMORY[0x277CBEAC0];
          v48 = v74;
          v49 = v73;
          v50 = 2;
        }

        else
        {
          v75 = *MEMORY[0x277CCA450];
          v76 = v43;
          v47 = MEMORY[0x277CBEAC0];
          v48 = &v76;
          v49 = &v75;
          v50 = 1;
        }

        v41 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:v50];
        [v45 errorWithDomain:@"ATL" code:5 userInfo:v41];
        *error = selfCopy = 0;
      }

      goto LABEL_45;
    }
  }

  v11 = ATLLogObject(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Failed to get correct signed state", buf, 2u);
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to get correct signed state"];
  v13 = v12;
  if (!error)
  {
    selfCopy = 0;
    goto LABEL_46;
  }

  v14 = *error;
  v15 = MEMORY[0x277CCA9B8];
  if (*error)
  {
    v16 = *MEMORY[0x277CCA7E8];
    v77[0] = *MEMORY[0x277CCA450];
    v77[1] = v16;
    v78[0] = v12;
    v78[1] = v14;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v78;
    v19 = v77;
    v20 = 2;
  }

  else
  {
    v79 = *MEMORY[0x277CCA450];
    v80[0] = v12;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v80;
    v19 = &v79;
    v20 = 1;
  }

  v24 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  [v15 errorWithDomain:@"ATL" code:5 userInfo:v24];
  *error = selfCopy = 0;
LABEL_45:

LABEL_46:

  return selfCopy;
}

- (void)dumpAllFiles
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "--- Dreamworks DUMP BEGIN --", v17, 2u);
  }

  v5 = ATLLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    balance = [(DreamworksReaderContext *)self balance];
    *v17 = 138412290;
    *&v17[4] = balance;
    _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_INFO, "    Balance File %@", v17, 0xCu);
  }

  filePurseInfo = [(DreamworksReaderContext *)self filePurseInfo];
  bytes = [filePurseInfo bytes];
  filePurseInfo2 = [(DreamworksReaderContext *)self filePurseInfo];
  v10 = [filePurseInfo2 length];
  LogBinary(OS_LOG_TYPE_DEFAULT, "[DreamworksReaderContext dumpAllFiles]", 109, bytes, v10, @"    SFI 0x02:", v11, v12, *v17);

  filePurse = [(DreamworksReaderContext *)self filePurse];
  [filePurse enumerateObjectsUsingBlock:&__block_literal_global_2];

  fileTrans = [(DreamworksReaderContext *)self fileTrans];
  [fileTrans enumerateObjectsUsingBlock:&__block_literal_global_752];

  v16 = ATLLogObject(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_INFO, "--- Dreamworks DUMP END --", v17, 2u);
  }
}

void __39__DreamworksReaderContext_dumpAllFiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 seqnum];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[DreamworksReaderContext dumpAllFiles]_block_invoke", 112, v4, v6, @"    Purse file record %u (SN 0x%X)", v8, v9, v7);
}

void __39__DreamworksReaderContext_dumpAllFiles__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 seqnum];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[DreamworksReaderContext dumpAllFiles]_block_invoke_2", 115, v4, v6, @"    Trans file record %u (SN 0x%X)", v8, v9, v7);
}

- (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index error:(id *)error
{
  sfiCopy = sfi;
  v27 = *MEMORY[0x277D85DE8];
  if (sfi < 0x1Fu)
  {
    *buf = -19968;
    buf[2] = index;
    buf[3] = (8 * sfi) | 4;
    LOBYTE(v26) = 0;
    v18 = [record transceiveBytesAndCheckSW:buf length:5 inArray:&unk_2843C7328 error:error];
  }

  else
  {
    v8 = ATLLogObject(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v26 = sfiCopy;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Invalid SFI for read record 0x%x", buf, 8u);
    }

    sfiCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid SFI for read record 0x%x", sfiCopy];
    v10 = sfiCopy;
    if (error)
    {
      v11 = *error;
      v12 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v13 = *MEMORY[0x277CCA7E8];
        v21[0] = *MEMORY[0x277CCA450];
        v21[1] = v13;
        v22[0] = sfiCopy;
        v22[1] = v11;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v22;
        v16 = v21;
        v17 = 2;
      }

      else
      {
        v23 = *MEMORY[0x277CCA450];
        v24 = sfiCopy;
        v14 = MEMORY[0x277CBEAC0];
        v15 = &v24;
        v16 = &v23;
        v17 = 1;
      }

      v19 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
      *error = [v12 errorWithDomain:@"ATL" code:8 userInfo:v19];
    }

    v18 = 0;
  }

  return v18;
}

- (id)readTransSN:(id)n error:(id *)error
{
  v12 = 0;
  v11 = 130688;
  v4 = [n transceiveBytesAndCheckSW:&v11 length:5 error:error];
  v5 = [v4 length];
  if (v5 >= 4)
  {
    v7 = v5;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5 >> 2];
    for (i = 0; i < v7; i += 4)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "u32BE:", i)}];
      [v6 addObject:v9];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)readBalance:(id)balance error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [balance transceiveBytesAndCheckSW:&readBalance_error__getBalanceCmd length:5 error:error];
  v6 = v5;
  if (v5 && (v5 = [v5 length], v5 == 4))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*objc_msgSend(v6, "bytes"))}];
  }

  else
  {
    v8 = ATLLogObject(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v25 = [v6 length];
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed or short balance %u", buf, 8u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed or short balance %u", objc_msgSend(v6, "length")];
    v10 = v9;
    if (error)
    {
      v11 = *error;
      v12 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v13 = *MEMORY[0x277CCA7E8];
        v20[0] = *MEMORY[0x277CCA450];
        v20[1] = v13;
        v21[0] = v9;
        v21[1] = v11;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v21;
        v16 = v20;
        v17 = 2;
      }

      else
      {
        v22 = *MEMORY[0x277CCA450];
        v23 = v9;
        v14 = MEMORY[0x277CBEAC0];
        v15 = &v23;
        v16 = &v22;
        v17 = 1;
      }

      v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
      *error = [v12 errorWithDomain:@"ATL" code:5 userInfo:v18];
    }

    v7 = 0;
  }

  return v7;
}

@end