@interface CESRUaapData
+ (BOOL)removeUaapOovsForLanguage:(id)language bundleId:(id)id;
+ (BOOL)writeUaapOovsForLanguage:(id)language bundleId:(id)id customProns:(id)prons newOovs:(id)oovs error:(id *)error;
+ (id)readUaapOovsForLanguage:(id)language;
@end

@implementation CESRUaapData

+ (BOOL)removeUaapOovsForLanguage:(id)language bundleId:(id)id
{
  idCopy = id;
  v6 = AppOovDirectory(language);
  v7 = [v6 stringByAppendingPathComponent:idCopy];

  v8 = [v7 stringByAppendingPathComponent:@"Prons"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager removeItemAtPath:v8 error:0];

  return v10;
}

+ (BOOL)writeUaapOovsForLanguage:(id)language bundleId:(id)id customProns:(id)prons newOovs:(id)oovs error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v11 = MEMORY[0x277CBEB38];
  oovsCopy = oovs;
  pronsCopy = prons;
  languageCopy = language;
  v15 = objc_alloc_init(v11);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __76__CESRUaapData_writeUaapOovsForLanguage_bundleId_customProns_newOovs_error___block_invoke;
  v40[3] = &unk_27857FD50;
  v16 = v15;
  v41 = v16;
  [oovsCopy enumerateObjectsUsingBlock:v40];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __76__CESRUaapData_writeUaapOovsForLanguage_bundleId_customProns_newOovs_error___block_invoke_2;
  v38[3] = &unk_27857FD78;
  v17 = v16;
  v39 = v17;
  [pronsCopy enumerateKeysAndObjectsUsingBlock:v38];

  v18 = AppOovDirectory(languageCopy);

  v19 = [v18 stringByAppendingPathComponent:idCopy];

  v20 = [v19 stringByAppendingPathComponent:@"Prons"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19];
  v48 = *MEMORY[0x277CCA1B0];
  v49[0] = *MEMORY[0x277CCA1B8];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v37 = 0;
  v24 = [defaultManager createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:v23 error:&v37];
  v25 = v37;

  if (v24)
  {
    v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v20];
    v36 = v25;
    v27 = [v17 writeToURL:v26 error:&v36];
    v28 = v36;

    if (v27)
    {
      v29 = 1;
LABEL_14:
      v25 = v28;
      goto LABEL_15;
    }

    v32 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v43 = "+[CESRUaapData writeUaapOovsForLanguage:bundleId:customProns:newOovs:error:]";
      v44 = 2112;
      v45 = idCopy;
      v46 = 2112;
      v47 = v28;
      _os_log_error_impl(&dword_225EEB000, v32, OS_LOG_TYPE_ERROR, "%s Failed to write app-specific OOVs for %@: %@", buf, 0x20u);
    }

    errorCopy2 = error;
    if (!error)
    {
      v29 = 0;
      goto LABEL_14;
    }

    v25 = v28;
    goto LABEL_12;
  }

  v30 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v43 = "+[CESRUaapData writeUaapOovsForLanguage:bundleId:customProns:newOovs:error:]";
    v44 = 2112;
    v45 = idCopy;
    v46 = 2112;
    v47 = v25;
    _os_log_error_impl(&dword_225EEB000, v30, OS_LOG_TYPE_ERROR, "%s Failed to create UaaP app directory for %@: %@", buf, 0x20u);
  }

  errorCopy2 = error;
  if (error)
  {
LABEL_12:
    v33 = v25;
    v29 = 0;
    *errorCopy2 = v25;
    goto LABEL_15;
  }

  v29 = 0;
LABEL_15:

  return v29;
}

void __76__CESRUaapData_writeUaapOovsForLanguage_bundleId_customProns_newOovs_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 array];
  [v2 setObject:v5 forKey:v4];
}

void __76__CESRUaapData_writeUaapOovsForLanguage_bundleId_customProns_newOovs_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 allObjects];
  [v4 setObject:v6 forKey:v5];
}

+ (id)readUaapOovsForLanguage:(id)language
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = AppOovDirectory(language);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:v3 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "+[CESRUaapData readUaapOovsForLanguage:]";
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s Failed to enumerate UaaP pron directory at %@: %@", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__CESRUaapData_readUaapOovsForLanguage___block_invoke;
    v12[3] = &unk_27857FD28;
    v13 = v3;
    v14 = v9;
    v10 = v9;
    [v5 enumerateObjectsUsingBlock:v12];
    v8 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  }

  return v8;
}

void __40__CESRUaapData_readUaapOovsForLanguage___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  v4 = [v3 stringByAppendingPathComponent:@"Prons"];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v20 = 0;
    v9 = [v7 dictionaryWithContentsOfURL:v8 error:&v20];
    v10 = v20;

    if (v10)
    {
      v11 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "+[CESRUaapData readUaapOovsForLanguage:]_block_invoke";
        v23 = 2112;
        v24 = v4;
        v25 = 2112;
        v26 = v10;
        _os_log_error_impl(&dword_225EEB000, v11, OS_LOG_TYPE_ERROR, "%s Failed to load app-specific OOVs from %@: %@", buf, 0x20u);
      }
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __40__CESRUaapData_readUaapOovsForLanguage___block_invoke_5;
      v18 = &unk_27857FD00;
      v19 = v12;
      v13 = v12;
      [v9 enumerateKeysAndObjectsUsingBlock:&v15];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v13, v15, v16, v17, v18}];
      [*(a1 + 40) addObject:v14];
    }
  }
}

void __40__CESRUaapData_readUaapOovsForLanguage___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a2;
  v7 = [v5 setWithArray:a3];
  [*(a1 + 32) setObject:v7 forKey:v6];
}

@end