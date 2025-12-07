@interface WuluReaderContext
+ (id)readAllFiles:(id)files appletPID:(id)d debug:(BOOL)debug error:(id *)error;
- (id)readAll:(id)all debug:(BOOL)debug error:(id *)error;
- (id)readBalance:(id)balance error:(id *)error;
- (id)readBinary:(id)binary sfi:(unsigned __int8)sfi error:(id *)error;
- (id)readExtendedRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index error:(id *)error;
- (id)readRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index error:(id *)error;
- (id)readWuluRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index;
- (void)dumpAllFiles;
- (void)readAdditionalFile:(id)file cityCode:(id)code;
@end

@implementation WuluReaderContext

+ (id)readAllFiles:(id)files appletPID:(id)d debug:(BOOL)debug error:(id *)error
{
  debugCopy = debug;
  dCopy = d;
  filesCopy = files;
  v11 = objc_alloc_init(WuluReaderContext);
  v12 = [dCopy isEqualToString:@"A000000704A00110110700"];

  [(WuluReaderContext *)v11 setLocalRecordFormat:v12 ^ 1u];
  v13 = [(WuluReaderContext *)v11 readAll:filesCopy debug:debugCopy error:error];

  return v13;
}

- (id)readAll:(id)all debug:(BOOL)debug error:(id *)error
{
  debugCopy = debug;
  v99[1] = *MEMORY[0x277D85DE8];
  allCopy = all;
  v9 = [(WuluReaderContext *)self readBalance:allCopy error:error];
  v10 = v9;
  if (!v9)
  {
    v26 = ATLLogObject(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Failed to get balance", buf, 2u);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to get balance"];
    v19 = v27;
    if (error)
    {
      v28 = *error;
      v21 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v96[0] = *MEMORY[0x277CCA450];
        v96[1] = v29;
        v97[0] = v27;
        v97[1] = v28;
        v23 = MEMORY[0x277CBEAC0];
        v24 = v97;
        v25 = v96;
        goto LABEL_14;
      }

      v98 = *MEMORY[0x277CCA450];
      v99[0] = v27;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v99;
      v25 = &v98;
LABEL_56:
      v30 = 1;
      goto LABEL_57;
    }

LABEL_42:
    selfCopy = 0;
    goto LABEL_65;
  }

  v11 = [v9 objectAtIndexedSubscript:0];
  [(WuluReaderContext *)self setBalance:v11];

  v12 = [v10 objectAtIndexedSubscript:1];
  [(WuluReaderContext *)self setOverdraft:v12];

  balance = [(WuluReaderContext *)self balance];
  if (![balance unsignedIntValue])
  {

    goto LABEL_16;
  }

  overdraft = [(WuluReaderContext *)self overdraft];
  unsignedIntValue = [overdraft unsignedIntValue];

  if (!unsignedIntValue)
  {
LABEL_16:
    v19 = [(WuluReaderContext *)self readBinary:allCopy sfi:21 error:error];
    v31 = [v19 length];
    if (v31 != 30)
    {
      v59 = ATLLogObject(v31);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v59, OS_LOG_TYPE_ERROR, "Failed to read SFI 15", buf, 2u);
      }

      v60 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to read SFI 15"];
      v32 = v60;
      if (error)
      {
        v61 = *error;
        v62 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v63 = *MEMORY[0x277CCA7E8];
          v88[0] = *MEMORY[0x277CCA450];
          v88[1] = v63;
          v89[0] = v60;
          v89[1] = v61;
          v64 = MEMORY[0x277CBEAC0];
          v65 = v89;
          v66 = v88;
          v67 = 2;
        }

        else
        {
          v90 = *MEMORY[0x277CCA450];
          v91 = v60;
          v64 = MEMORY[0x277CBEAC0];
          v65 = &v91;
          v66 = &v90;
          v67 = 1;
        }

        v57 = [v64 dictionaryWithObjects:v65 forKeys:v66 count:v67];
        [v62 errorWithDomain:@"ATL" code:5 userInfo:v57];
        *error = selfCopy = 0;
        goto LABEL_63;
      }

      selfCopy = 0;
      goto LABEL_64;
    }

    [(WuluReaderContext *)self setFile15:v19];
    v32 = [(WuluReaderContext *)self readBinary:allCopy sfi:23 error:error];
    v33 = [v32 length];
    if (v33 != 60)
    {
      v68 = ATLLogObject(v33);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v68, OS_LOG_TYPE_ERROR, "Failed to read SFI 17", buf, 2u);
      }

      v69 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to read SFI 17"];
      v57 = v69;
      if (error)
      {
        v70 = *error;
        v71 = MEMORY[0x277CCA9B8];
        if (*error)
        {
          v72 = *MEMORY[0x277CCA7E8];
          v84[0] = *MEMORY[0x277CCA450];
          v84[1] = v72;
          v85[0] = v69;
          v85[1] = v70;
          v73 = MEMORY[0x277CBEAC0];
          v74 = v85;
          v75 = v84;
          v76 = 2;
        }

        else
        {
          v86 = *MEMORY[0x277CCA450];
          v87 = v69;
          v73 = MEMORY[0x277CBEAC0];
          v74 = &v87;
          v75 = &v86;
          v76 = 1;
        }

        v77 = [v73 dictionaryWithObjects:v74 forKeys:v75 count:v76];
        *error = [v71 errorWithDomain:@"ATL" code:5 userInfo:v77];
      }

      selfCopy = 0;
LABEL_63:

      goto LABEL_64;
    }

    v81 = debugCopy;
    v79 = v32;
    v80 = v19;
    [(WuluReaderContext *)self setFile17:v32];
    v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    [(WuluReaderContext *)self setFile18:v34];

    v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    [(WuluReaderContext *)self setFile1E:v35];

    v36 = 1;
    while (1)
    {
      v37 = [(WuluReaderContext *)self readRecord:allCopy sfi:24 index:v36 error:error];
      if ([v37 length] == 23 && (objc_msgSend(v37, "isAll00") & 1) == 0)
      {
        file18 = [(WuluReaderContext *)self file18];
        v39 = +[WuluRecord withRecordSfi:recordNumber:recordData:associatedSerialNumber:](WuluRecord, "withRecordSfi:recordNumber:recordData:associatedSerialNumber:", 24, v36, v37, bswap32(*[v37 bytes]) >> 16);
        [file18 addObject:v39];
      }

      v40 = [(WuluReaderContext *)self readExtendedRecord:allCopy sfi:30 index:v36 error:error];
      data = [v40 data];
      if ([data length] != 48)
      {
        goto LABEL_25;
      }

      data2 = [v40 data];
      isAll00 = [data2 isAll00];

      if ((isAll00 & 1) == 0)
      {
        break;
      }

LABEL_26:

      v44 = v36++;
      if (v44 >= 0xA)
      {
        v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
        [(WuluReaderContext *)self setFile1A:v45];

        v46 = 0;
        while (1)
        {
          v47 = readAll_debug_error__file1A_indices[v46];
          v48 = [(WuluReaderContext *)self readExtendedRecord:allCopy sfi:26 index:readAll_debug_error__file1A_indices[v46] error:0];
          v49 = v48;
          if (!v48)
          {
            break;
          }

          data3 = [v48 data];
          v51 = *([data3 bytes] + 14);

          if (v51)
          {
            file1A = [(WuluReaderContext *)self file1A];
            [file1A addObject:v49];
            goto LABEL_37;
          }

          if (v81)
          {
            file1A = ATLLogObject(v52);
            if (os_log_type_enabled(file1A, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v83 = v47;
              v54 = file1A;
              v55 = "SFI 0x1A index %d is not initialized";
LABEL_36:
              _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, 8u);
            }

            goto LABEL_37;
          }

LABEL_38:

          if (++v46 == 3)
          {
            file17 = [(WuluReaderContext *)self file17];
            v57 = [file17 subdataWithOffset:6 length:2];

            [(WuluReaderContext *)self readAdditionalFile:allCopy cityCode:v57];
            if (v81)
            {
              [(WuluReaderContext *)self dumpAllFiles];
            }

            selfCopy = self;
            v32 = v79;
            v19 = v80;
            goto LABEL_63;
          }
        }

        file1A = ATLLogObject(0);
        if (os_log_type_enabled(file1A, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v83 = v47;
          v54 = file1A;
          v55 = "Failed to get SFI 0x1A index %u";
          goto LABEL_36;
        }

LABEL_37:

        goto LABEL_38;
      }
    }

    data = [(WuluReaderContext *)self file1E];
    [data addObject:v40];
LABEL_25:

    goto LABEL_26;
  }

  v17 = ATLLogObject(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Balance and overdraft are not consistent.", buf, 2u);
  }

  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Balance and overdraft are not consistent."];
  v19 = v18;
  if (!error)
  {
    goto LABEL_42;
  }

  v20 = *error;
  v21 = MEMORY[0x277CCA9B8];
  if (!*error)
  {
    v94 = *MEMORY[0x277CCA450];
    v95 = v18;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v95;
    v25 = &v94;
    goto LABEL_56;
  }

  v22 = *MEMORY[0x277CCA7E8];
  v92[0] = *MEMORY[0x277CCA450];
  v92[1] = v22;
  v93[0] = v18;
  v93[1] = v20;
  v23 = MEMORY[0x277CBEAC0];
  v24 = v93;
  v25 = v92;
LABEL_14:
  v30 = 2;
LABEL_57:
  v32 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v30];
  [v21 errorWithDomain:@"ATL" code:5 userInfo:v32];
  *error = selfCopy = 0;
LABEL_64:

LABEL_65:

  return selfCopy;
}

- (void)readAdditionalFile:(id)file cityCode:(id)code
{
  v88[3] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  codeCopy = code;
  v8 = +[AppletConfigurationData getWuluSettings];
  v9 = [v8 objectForKeyedSubscript:@"cityRules"];
  asHexString = [codeCopy asHexString];
  v11 = [v9 objectForKeyedSubscript:asHexString];

  if (!v11)
  {
    v33 = ATLLogObject(v12);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *buf = 138412290;
    v82 = codeCopy;
    v34 = "Configuration does not define city rules for city code %@";
    goto LABEL_40;
  }

  unsignedIntValue = [v11 unsignedIntValue];
  if ((unsignedIntValue - 7) < 2 || unsignedIntValue == 5)
  {
    v15 = +[AppletConfigurationData getWuluSettings];
    v16 = [v15 objectForKeyedSubscript:@"localLogSettings"];
    asHexString2 = [codeCopy asHexString];
    v18 = [v16 objectForKeyedSubscript:asHexString2];

    if (v18)
    {
      v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
      [(WuluReaderContext *)self setLocalRecords:v20];

      v21 = [v18 objectForKey:@"localRecordSfi"];
      v69 = v18;
      v22 = [v18 objectForKey:@"localRecordId"];
      v23 = v22;
      if (!v21 || !v22)
      {
        v29 = ATLLogObject(v22);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = codeCopy;
          _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_DEFAULT, "Local log data is not retrived from settings for city %@.", buf, 0xCu);
        }

        goto LABEL_64;
      }

      v65 = v11;
      v24 = [MEMORY[0x277CBEA90] dataWithHexString:v21];
      v25 = [v24 u8:0];

      v26 = [MEMORY[0x277CBEA90] dataWithHexString:v23];
      v27 = [v26 u8:0];

      v28 = [(WuluReaderContext *)self readWuluRecord:fileCopy sfi:v25 index:v27];
      if (!v28)
      {
        v29 = ATLLogObject(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = codeCopy;
          _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_DEFAULT, "Local record not read for city %@.", buf, 0xCu);
        }

        goto LABEL_63;
      }

      v29 = v28;
      localRecords = [(WuluReaderContext *)self localRecords];
      [localRecords addObject:v29];

      if ([v11 unsignedIntValue] == 5 || objc_msgSend(v11, "unsignedIntValue") == 8)
      {
        localRecords2 = [(WuluReaderContext *)self localRecords];
        [localRecords2 addObject:v29];

        localRecords3 = [(WuluReaderContext *)self localRecords];
        [localRecords3 addObject:v29];

LABEL_63:
        v11 = v65;
LABEL_64:

        v33 = v69;
        goto LABEL_65;
      }

      v46 = codeCopy;
      v47 = MEMORY[0x277CBEA90];
      v48 = [v69 objectForKey:@"metroEntryStationCode"];
      v49 = [v47 dataWithHexString:v48];

      if (!v49 || (v50 = [v49 length], v50 != 4))
      {
        v57 = ATLLogObject(v50);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v46;
          _os_log_impl(&dword_22EEF5000, v57, OS_LOG_TYPE_DEFAULT, "Local log extra data is not retrived from settings for city %@.", buf, 0xCu);
        }

        goto LABEL_62;
      }

      v51 = -[WuluReaderContext readWuluRecord:sfi:index:](self, "readWuluRecord:sfi:index:", fileCopy, [v49 u8:2], objc_msgSend(v49, "u8:", 3));

      v29 = v51;
      if (v51)
      {
        v53 = ATLLogObject(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v46;
          _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_DEFAULT, "Local entry record not read for city %@.", buf, 0xCu);
        }

        localRecords4 = [(WuluReaderContext *)self localRecords];
        [localRecords4 addObject:v29];
      }

      v55 = MEMORY[0x277CBEA90];
      v56 = [v69 objectForKey:@"metroExitStationCode"];
      v57 = [v55 dataWithHexString:v56];

      if (v57 && (v58 = [v57 length], v58 == 4))
      {
        v59 = [(WuluReaderContext *)self readWuluRecord:fileCopy sfi:[v57 u8:2] index:[v57 u8:3]];
        v60 = v29;
        v29 = v59;

        if (!v29)
        {
LABEL_62:

          codeCopy = v46;
          goto LABEL_63;
        }

        v62 = ATLLogObject(v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v46;
          _os_log_impl(&dword_22EEF5000, v62, OS_LOG_TYPE_DEFAULT, "Local exit record not read for city %@.", buf, 0xCu);
        }

        localRecords5 = [(WuluReaderContext *)self localRecords];
        [localRecords5 addObject:v29];
      }

      else
      {
        localRecords5 = ATLLogObject(v58);
        if (os_log_type_enabled(localRecords5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v46;
          _os_log_impl(&dword_22EEF5000, localRecords5, OS_LOG_TYPE_DEFAULT, "Local log extra data is not retrived from settings for city %@.", buf, 0xCu);
        }
      }

      goto LABEL_62;
    }

    v33 = ATLLogObject(v19);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *buf = 138412290;
    v82 = codeCopy;
    v34 = "Local log data settings missing for city %@.";
LABEL_40:
    _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
    goto LABEL_65;
  }

  if (unsignedIntValue != 4)
  {
    v33 = ATLLogObject(unsignedIntValue);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *buf = 138412290;
    v82 = v11;
    v34 = "Configuration gave us unknown rule type %@";
    goto LABEL_40;
  }

  v64 = codeCopy;
  v66 = v11;
  v87[0] = &unk_2843C6920;
  v87[1] = &unk_2843C6980;
  v88[0] = &unk_2843C7388;
  v88[1] = &unk_2843C73A0;
  v87[2] = &unk_2843C6998;
  v88[2] = &unk_2843C73B8;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];
  v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:{3 * -[NSObject count](v33, "count")}];
  [(WuluReaderContext *)self setLocalRecords:v35];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [v33 allKeys];
  v71 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v71)
  {
    v68 = *v78;
    v70 = v33;
    do
    {
      v36 = 0;
      do
      {
        if (*v78 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v72 = v36;
        v37 = *(*(&v77 + 1) + 8 * v36);
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v38 = [v33 objectForKeyedSubscript:v37];
        v39 = [v38 countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v74;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v74 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v73 + 1) + 8 * i);
              v44 = -[WuluReaderContext readWuluRecord:sfi:index:](self, "readWuluRecord:sfi:index:", fileCopy, [v37 unsignedCharValue], objc_msgSend(v43, "unsignedCharValue"));
              if (v44)
              {
                localRecords6 = [(WuluReaderContext *)self localRecords];
                [localRecords6 addObject:v44];
              }

              else
              {
                localRecords6 = ATLLogObject(0);
                if (os_log_type_enabled(localRecords6, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v82 = v37;
                  v83 = 2112;
                  v84 = v43;
                  _os_log_impl(&dword_22EEF5000, localRecords6, OS_LOG_TYPE_DEFAULT, "Failed to get SFI %@ index %@", buf, 0x16u);
                }
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v73 objects:v85 count:16];
          }

          while (v40);
        }

        v36 = v72 + 1;
        v33 = v70;
      }

      while (v72 + 1 != v71);
      v71 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v71);
  }

  codeCopy = v64;
  v11 = v66;
LABEL_65:
}

- (id)readWuluRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index
{
  indexCopy = index;
  sfiCopy = sfi;
  recordCopy = record;
  if ([(WuluReaderContext *)self localRecordFormat]== 1)
  {
    v9 = [(WuluReaderContext *)self readExtendedRecord:recordCopy sfi:sfiCopy index:indexCopy error:0];
  }

  else if ([(WuluReaderContext *)self localRecordFormat]|| ([(WuluReaderContext *)self readRecord:recordCopy sfi:sfiCopy index:indexCopy error:0], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = 0;
  }

  else
  {
    v11 = v10;
    v9 = [WuluRecord withRecordSfi:sfiCopy recordNumber:indexCopy recordData:v10 associatedSerialNumber:0];
  }

  return v9;
}

- (void)dumpAllFiles
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "--- WULU DUMP BEGIN --", buf, 2u);
  }

  v5 = ATLLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    balance = [(WuluReaderContext *)self balance];
    *buf = 138412290;
    v45 = balance;
    _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_INFO, "    Balance File %@", buf, 0xCu);
  }

  file15 = [(WuluReaderContext *)self file15];
  bytes = [file15 bytes];
  file152 = [(WuluReaderContext *)self file15];
  v10 = [file152 length];
  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]", 242, bytes, v10, @"    SFI 0x15:", v11, v12, v36);

  file17 = [(WuluReaderContext *)self file17];
  bytes2 = [file17 bytes];
  file172 = [(WuluReaderContext *)self file17];
  v16 = [file172 length];
  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]", 243, bytes2, v16, @"    SFI 0x17:", v17, v18, v37);

  file18 = [(WuluReaderContext *)self file18];
  [file18 enumerateObjectsUsingBlock:&__block_literal_global_5];

  file1E = [(WuluReaderContext *)self file1E];
  [file1E enumerateObjectsUsingBlock:&__block_literal_global_753];

  file1A = [(WuluReaderContext *)self file1A];
  [file1A enumerateObjectsUsingBlock:&__block_literal_global_758];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(WuluReaderContext *)self localRecords];
  v22 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        data = [v26 data];
        bytes3 = [data bytes];
        data2 = [v26 data];
        v30 = [data2 length];
        v31 = [v26 sfi];
        [v26 number];
        [v26 associatedSerialNumber];
        LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]", 255, bytes3, v30, @"    SFI %02X record %u (SN 0x%X) localRecord", v32, v33, v31);
      }

      v23 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v23);
  }

  v35 = ATLLogObject(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_INFO, "--- WULU DUMP END --", buf, 2u);
  }
}

void __33__WuluReaderContext_dumpAllFiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 associatedSerialNumber];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]_block_invoke", 245, v4, v6, @"    SFI 18 record %u (SN 0x%X)", v8, v9, v7);
}

void __33__WuluReaderContext_dumpAllFiles__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 associatedSerialNumber];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]_block_invoke_2", 248, v4, v6, @"    SFI 1E record %u (SN 0x%X)", v8, v9, v7);
}

void __33__WuluReaderContext_dumpAllFiles__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [v2 data];
  v3 = v10;
  v4 = [v10 bytes];
  v5 = [v2 data];
  v6 = [v5 length];
  v7 = [v2 number];
  [v2 associatedSerialNumber];

  LogBinary(OS_LOG_TYPE_DEFAULT, "[WuluReaderContext dumpAllFiles]_block_invoke_3", 251, v4, v6, @"    SFI 1A record %u (SN 0x%X)", v8, v9, v7);
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
    v18 = [record transceiveBytesAndCheckSW:buf length:5 error:error];
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

- (id)readExtendedRecord:(id)record sfi:(unsigned __int8)sfi index:(unsigned __int8)index error:(id *)error
{
  indexCopy = index;
  sfiCopy = sfi;
  recordCopy = record;
  v14 = -3200;
  v15 = indexCopy;
  v16 = (8 * sfiCopy) | 4;
  v17 = 0;
  v10 = [recordCopy transceiveBytesAndCheckSW:&v14 length:5 error:error];
  if ([v10 length] >= 3)
  {
    v12 = [v10 subdataWithOffset:0 length:{objc_msgSend(v10, "length") - 2}];
    v11 = +[WuluRecord withRecordSfi:recordNumber:recordData:associatedSerialNumber:](WuluRecord, "withRecordSfi:recordNumber:recordData:associatedSerialNumber:", sfiCopy, indexCopy, v12, bswap32(*([v10 length] + objc_msgSend(v10, "bytes") - 2)) >> 16);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)readBinary:(id)binary sfi:(unsigned __int8)sfi error:(id *)error
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

- (id)readBalance:(id)balance error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  balanceCopy = balance;
  v6 = [balanceCopy transceiveBytesAndCheckSW:&readBalance_error__getBalanceCmd_0 length:5 error:error];
  v7 = v6;
  if (v6 && (v6 = [v6 length], v6 == 16))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*objc_msgSend(v7, "bytes"))}];
    v21[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v7, "bytes") + 8))}];
    v21[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  }

  else
  {
    v11 = ATLLogObject(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v27 = [v7 length];
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Failed or short balance %u", buf, 8u);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed or short balance %u", objc_msgSend(v7, "length")];
    v8 = v12;
    if (!error)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v13 = *error;
    v14 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v15 = *MEMORY[0x277CCA7E8];
      v22[0] = *MEMORY[0x277CCA450];
      v22[1] = v15;
      v23[0] = v12;
      v23[1] = v13;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v23;
      v18 = v22;
      v19 = 2;
    }

    else
    {
      v24 = *MEMORY[0x277CCA450];
      v25 = v12;
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v25;
      v18 = &v24;
      v19 = 1;
    }

    v9 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
    [v14 errorWithDomain:@"ATL" code:5 userInfo:v9];
    *error = v10 = 0;
  }

LABEL_13:

  return v10;
}

@end