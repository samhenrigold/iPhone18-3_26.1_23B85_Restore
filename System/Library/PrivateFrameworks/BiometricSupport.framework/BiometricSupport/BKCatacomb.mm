@interface BKCatacomb
+ (id)catacombWithDir:(id)dir;
- (BKCatacomb)init;
- (id)content;
- (int)commitWrite;
- (int)deleteAll;
- (int)deleteFile:(id)file;
- (int)readData:(id *)data fromFile:(id)file logString:(id *)string;
- (int)recover;
- (int)syncDir:(id)dir;
- (int)writeData:(id)data toFile:(id)file;
- (void)commitWrite;
- (void)deleteAll;
- (void)recover;
@end

@implementation BKCatacomb

- (BKCatacomb)init
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = BKCatacomb;
  v2 = [(BKCatacomb *)&v8 init];
  v3 = v2;
  if (v2)
  {
    catacombDir = v2->_catacombDir;
    v2->_catacombDir = @"/Library/Catacomb/";

    v9 = *MEMORY[0x277CCA1B0];
    v10[0] = *MEMORY[0x277CCA1A0];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    writeAttributes = v3->_writeAttributes;
    v3->_writeAttributes = v5;
  }

  return v3;
}

+ (id)catacombWithDir:(id)dir
{
  dirCopy = dir;
  v4 = objc_alloc_init(BKCatacomb);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:dirCopy];
    catacombDir = v4->_catacombDir;
    v4->_catacombDir = v5;
  }

  return v4;
}

- (int)syncDir:(id)dir
{
  dirCopy = dir;
  v4 = dirCopy;
  if (dirCopy)
  {
    v5 = open([dirCopy UTF8String], 0x100000);
    if (v5 == -1)
    {
      [BKCatacomb syncDir:];
      v8 = v10;
    }

    else
    {
      v6 = v5;
      v7 = fcntl(v5, 51);
      v8 = v7;
      if (v7)
      {
        [BKCatacomb syncDir:v7];
      }

      close(v6);
    }
  }

  else
  {
    [BKCatacomb syncDir:];
    v8 = v11;
  }

  return v8;
}

- (int)writeData:(id)data toFile:(id)file
{
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  fileCopy = file;
  v8 = fileCopy;
  if (!dataCopy)
  {
    if (__osLog)
    {
      v26 = __osLog;
    }

    else
    {
      v26 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136316162;
    v38 = "data";
    v39 = 2048;
    v40 = 0;
    v41 = 2080;
    v42 = &unk_223E5FC53;
    v43 = 2080;
    v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v45 = 1024;
    v46 = 97;
    goto LABEL_24;
  }

  if (!fileCopy)
  {
    if (__osLog)
    {
      v26 = __osLog;
    }

    else
    {
      v26 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136316162;
    v38 = "fileName";
    v39 = 2048;
    v40 = 0;
    v41 = 2080;
    v42 = &unk_223E5FC53;
    v43 = 2080;
    v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v45 = 1024;
    v46 = 98;
LABEL_24:
    _os_log_impl(&dword_223E00000, v26, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_25:
    v22 = 0;
    v18 = 0;
    catacombPrepareDir = 0;
    v17 = 0;
    v24 = 22;
    goto LABEL_72;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  catacombCommitDir = [(BKCatacomb *)self catacombCommitDir];
  v11 = [defaultManager fileExistsAtPath:catacombCommitDir];

  if (v11)
  {
    if (__osLog)
    {
      v27 = __osLog;
    }

    else
    {
      v27 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v38 = "![[NSFileManager defaultManager] fileExistsAtPath:[self catacombCommitDir]]";
      v39 = 2048;
      v40 = 0;
      v41 = 2080;
      v42 = &unk_223E5FC53;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v45 = 1024;
      v46 = 100;
      _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v22 = 0;
    v18 = 0;
    catacombPrepareDir = 0;
    v17 = 0;
    v24 = 1;
    goto LABEL_72;
  }

  catacombPrepareDir = [(BKCatacomb *)self catacombPrepareDir];
  if (!catacombPrepareDir)
  {
    if (__osLog)
    {
      v28 = __osLog;
    }

    else
    {
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v38 = "prepareDir";
      v39 = 2048;
      v40 = 0;
      v41 = 2080;
      v42 = &unk_223E5FC53;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v45 = 1024;
      v46 = 103;
      _os_log_impl(&dword_223E00000, v28, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v22 = 0;
    v18 = 0;
    catacombPrepareDir = 0;
    goto LABEL_44;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager2 fileExistsAtPath:catacombPrepareDir];

  if ((v14 & 1) == 0)
  {
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    writeAttributes = self->_writeAttributes;
    v36 = 0;
    [defaultManager3 createDirectoryAtPath:catacombPrepareDir withIntermediateDirectories:1 attributes:writeAttributes error:&v36];
    v17 = v36;

    if (v17)
    {
      if (__osLog)
      {
        v32 = __osLog;
      }

      else
      {
        v32 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v38 = "!nserr";
        v39 = 2048;
        v40 = 0;
        v41 = 2080;
        v42 = &unk_223E5FC53;
        v43 = 2080;
        v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
        v45 = 1024;
        v46 = 109;
        _os_log_impl(&dword_223E00000, v32, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v22 = 0;
      v18 = 0;
      goto LABEL_71;
    }
  }

  v18 = [catacombPrepareDir stringByAppendingPathComponent:v8];
  if (!v18)
  {
    if (__osLog)
    {
      v29 = __osLog;
    }

    else
    {
      v29 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v38 = "fullPath";
      v39 = 2048;
      v40 = 0;
      v41 = 2080;
      v42 = &unk_223E5FC53;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v45 = 1024;
      v46 = 113;
      _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v22 = 0;
    v18 = 0;
LABEL_44:
    v17 = 0;
    v24 = 12;
    goto LABEL_72;
  }

  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = [defaultManager4 createFileAtPath:v18 contents:0 attributes:self->_writeAttributes];

  if ((v20 & 1) == 0)
  {
    if (__osLog)
    {
      v30 = __osLog;
    }

    else
    {
      v30 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 136316162;
    v38 = "[[NSFileManager defaultManager] createFileAtPath:fullPath contents:((void*)0) attributes:_writeAttributes]";
    v39 = 2048;
    v40 = 0;
    v41 = 2080;
    v42 = &unk_223E5FC53;
    v43 = 2080;
    v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v45 = 1024;
    v46 = 116;
    goto LABEL_55;
  }

  v21 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v18];
  v22 = v21;
  if (!v21)
  {
    if (__osLog)
    {
      v30 = __osLog;
    }

    else
    {
      v30 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    *buf = 136316162;
    v38 = "file";
    v39 = 2048;
    v40 = 0;
    v41 = 2080;
    v42 = &unk_223E5FC53;
    v43 = 2080;
    v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v45 = 1024;
    v46 = 119;
LABEL_55:
    _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_56:
    v22 = 0;
    v17 = 0;
LABEL_71:
    v24 = 5;
    goto LABEL_72;
  }

  [v21 writeData:dataCopy];
  v23 = fcntl([v22 fileDescriptor], 51);
  if (v23)
  {
    [(BKCatacomb *)v23 writeData:v23 toFile:buf];
    v24 = *buf;
    [v22 closeFile];
  }

  else
  {
    [v22 closeFile];

    v24 = [(BKCatacomb *)self syncDir:catacombPrepareDir];
    if (!v24)
    {
      v22 = 0;
      v17 = 0;
      goto LABEL_13;
    }

    if (__osLog)
    {
      v31 = __osLog;
    }

    else
    {
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v38 = "err == 0 ";
      v39 = 2048;
      v40 = v24;
      v41 = 2080;
      v42 = &unk_223E5FC53;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v45 = 1024;
      v46 = 143;
      _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v22 = 0;
  }

  v17 = 0;
LABEL_72:
  recover = [(BKCatacomb *)self recover];
  if (recover)
  {
    v34 = recover;
    if (__osLog)
    {
      v35 = __osLog;
    }

    else
    {
      v35 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v38 = "[self recover] == 0 ";
      v39 = 2048;
      v40 = v34;
      v41 = 2080;
      v42 = &unk_223E5FC53;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v45 = 1024;
      v46 = 152;
      _os_log_impl(&dword_223E00000, v35, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }
  }

LABEL_13:

  return v24;
}

- (int)commitWrite
{
  selfCopy = self;
  v49 = *MEMORY[0x277D85DE8];
  catacombPrepareDir = [(BKCatacomb *)self catacombPrepareDir];
  if (!catacombPrepareDir)
  {
    [BKCatacomb commitWrite];
LABEL_27:
    v33 = v47;
    goto LABEL_24;
  }

  catacombCommitDir = [(BKCatacomb *)selfCopy catacombCommitDir];
  if (!catacombCommitDir)
  {
    [BKCatacomb commitWrite];
    goto LABEL_27;
  }

  v5 = catacombCommitDir;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if (v7)
  {
    [(BKCatacomb *)v5 commitWrite];
LABEL_30:
    v33 = 1;
    goto LABEL_24;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager2 fileExistsAtPath:catacombPrepareDir];

  if ((v9 & 1) == 0)
  {
    [(BKCatacomb *)v5 commitWrite];
    goto LABEL_30;
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v46 = 0;
  [defaultManager3 moveItemAtPath:catacombPrepareDir toPath:v5 error:&v46];
  v11 = v46;

  if (v11)
  {
    [BKCatacomb commitWrite];
LABEL_33:
    v33 = 5;
    goto LABEL_24;
  }

  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
  v45 = 0;
  v13 = [defaultManager4 contentsOfDirectoryAtPath:v5 error:&v45];
  v14 = v45;

  if (v14)
  {
    [(BKCatacomb *)v13 commitWrite];
    goto LABEL_33;
  }

  v36 = catacombPrepareDir;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v18 = *v42;
  obj = v15;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v41 + 1) + 8 * i);
      v21 = v5;
      v22 = [v5 stringByAppendingPathComponent:v20];
      v23 = selfCopy;
      v24 = [(NSString *)selfCopy->_catacombDir stringByAppendingPathComponent:v20];
      defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = [defaultManager5 fileExistsAtPath:v24];

      if (v26)
      {
        defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
        v40 = 0;
        [defaultManager6 removeItemAtPath:v24 error:&v40];
        v28 = v40;

        if (v28)
        {
          [BKCatacomb commitWrite];
          goto LABEL_21;
        }
      }

      defaultManager7 = [MEMORY[0x277CCAA00] defaultManager];
      v39 = 0;
      [defaultManager7 moveItemAtPath:v22 toPath:v24 error:&v39];
      v30 = v39;

      if (v30)
      {
        [BKCatacomb commitWrite];
LABEL_21:
        v34 = v47;

        goto LABEL_22;
      }

      v5 = v21;
      selfCopy = v23;
    }

    v15 = obj;
    v17 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_17:

  defaultManager8 = [MEMORY[0x277CCAA00] defaultManager];
  v38 = 0;
  [defaultManager8 removeItemAtPath:v5 error:&v38];
  v32 = v38;

  if (v32)
  {
    [(BKCatacomb *)v15 commitWrite];
LABEL_22:
    v33 = 5;
  }

  else
  {
    [(BKCatacomb *)selfCopy syncDir:selfCopy->_catacombDir];

    v33 = 0;
  }

  catacombPrepareDir = v36;
LABEL_24:

  return v33;
}

- (int)readData:(id *)data fromFile:(id)file logString:(id *)string
{
  v52 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v9 = fileCopy;
  if (!data)
  {
    if (__osLog)
    {
      v37 = __osLog;
    }

    else
    {
      v37 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136316162;
    v43 = "data";
    v44 = 2048;
    v45 = 0;
    v46 = 2080;
    v47 = &unk_223E5FC53;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v50 = 1024;
    v51 = 218;
    goto LABEL_47;
  }

  if (!fileCopy)
  {
    if (__osLog)
    {
      v37 = __osLog;
    }

    else
    {
      v37 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    *buf = 136316162;
    v43 = "fileName";
    v44 = 2048;
    v45 = 0;
    v46 = 2080;
    v47 = &unk_223E5FC53;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v50 = 1024;
    v51 = 219;
LABEL_47:
    _os_log_impl(&dword_223E00000, v37, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_48:
    v26 = 0;
    data = 0;
    v22 = 0;
    v17 = 0;
    v28 = 22;
    goto LABEL_34;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  catacombCommitDir = [(BKCatacomb *)self catacombCommitDir];
  v12 = [defaultManager fileExistsAtPath:catacombCommitDir];

  if (v12)
  {
    if (__osLog)
    {
      v38 = __osLog;
    }

    else
    {
      v38 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 136316162;
    v43 = "![[NSFileManager defaultManager] fileExistsAtPath:[self catacombCommitDir]]";
    v44 = 2048;
    v45 = 0;
    v46 = 2080;
    v47 = &unk_223E5FC53;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v50 = 1024;
    v51 = 221;
    goto LABEL_59;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  catacombPrepareDir = [(BKCatacomb *)self catacombPrepareDir];
  v15 = [defaultManager2 fileExistsAtPath:catacombPrepareDir];

  if (v15)
  {
    if (__osLog)
    {
      v38 = __osLog;
    }

    else
    {
      v38 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 136316162;
    v43 = "![[NSFileManager defaultManager] fileExistsAtPath:[self catacombPrepareDir]]";
    v44 = 2048;
    v45 = 0;
    v46 = 2080;
    v47 = &unk_223E5FC53;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
    v50 = 1024;
    v51 = 222;
LABEL_59:
    _os_log_impl(&dword_223E00000, v38, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_60:
    v26 = 0;
    data = 0;
    v22 = 0;
    v17 = 0;
    v28 = 1;
    goto LABEL_34;
  }

  v16 = [(NSString *)self->_catacombDir stringByAppendingPathComponent:v9];
  if (v16)
  {
    v17 = v16;
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [defaultManager3 fileExistsAtPath:v17];

    if (!v19)
    {
      data = [MEMORY[0x277CBEA90] data];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"File '%@' doesn't exist", v17];
      v22 = 0;
      goto LABEL_11;
    }

    v20 = MEMORY[0x277CCA9F8];
    v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
    v41 = 0;
    v22 = [v20 fileHandleForReadingFromURL:v21 error:&v41];
    v23 = v41;

    if (v22)
    {
      v40 = 0;
      data = [v22 readDataToEndOfFileAndReturnError:&v40];
      v25 = v40;

      if (data)
      {

        v26 = @"Succeeded";
LABEL_11:
        v27 = data;
        v28 = 0;
        *data = data;
        goto LABEL_34;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"readDataToEndOfFileAndReturnError(file:'%@'): -> %@", v17, v25];
      v32 = MEMORY[0x277D86220];
      if (__osLog)
      {
        v33 = __osLog;
      }

      else
      {
        v33 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v43 = v26;
        _os_log_impl(&dword_223E00000, v33, OS_LOG_TYPE_ERROR, "%{public}@\n", buf, 0xCu);
      }

      if (__osLog)
      {
        v34 = __osLog;
      }

      else
      {
        v34 = v32;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v43 = "0";
        v44 = 2048;
        v45 = 0;
        v46 = 2080;
        v47 = &unk_223E5FC53;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
        v50 = 1024;
        v51 = 243;
        _os_log_impl(&dword_223E00000, v34, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v23 = v25;
    }

    else
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"fileHandleForReadingFromURL(file:'%@'): -> %@", v17, v23];
      v29 = MEMORY[0x277D86220];
      if (__osLog)
      {
        v30 = __osLog;
      }

      else
      {
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v43 = v26;
        _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_ERROR, "%{public}@\n", buf, 0xCu);
      }

      if (__osLog)
      {
        v31 = __osLog;
      }

      else
      {
        v31 = v29;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v43 = "0";
        v44 = 2048;
        v45 = 0;
        v46 = 2080;
        v47 = &unk_223E5FC53;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
        v50 = 1024;
        v51 = 235;
        _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }
    }

    data = 0;
    v28 = 5;
  }

  else
  {
    if (__osLog)
    {
      v39 = __osLog;
    }

    else
    {
      v39 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v43 = "fullPath";
      v44 = 2048;
      v45 = 0;
      v46 = 2080;
      v47 = &unk_223E5FC53;
      v48 = 2080;
      v49 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/BKCatacomb.m";
      v50 = 1024;
      v51 = 225;
      _os_log_impl(&dword_223E00000, v39, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v26 = 0;
    data = 0;
    v22 = 0;
    v17 = 0;
    v28 = 12;
  }

LABEL_34:
  if (string)
  {
    v35 = v26;
    *string = v26;
  }

  return v28;
}

- (int)deleteFile:(id)file
{
  fileCopy = file;
  if (!fileCopy)
  {
    [BKCatacomb deleteFile:];
LABEL_12:
    v15 = v18;
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  catacombCommitDir = [(BKCatacomb *)self catacombCommitDir];
  v7 = [defaultManager fileExistsAtPath:catacombCommitDir];

  if (v7)
  {
    [BKCatacomb deleteFile:];
    goto LABEL_12;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  catacombPrepareDir = [(BKCatacomb *)self catacombPrepareDir];
  v10 = [defaultManager2 fileExistsAtPath:catacombPrepareDir];

  if (v10)
  {
    [BKCatacomb deleteFile:];
    goto LABEL_12;
  }

  v11 = [(NSString *)self->_catacombDir stringByAppendingPathComponent:fileCopy];
  if (!v11)
  {
    [BKCatacomb deleteFile:];
    goto LABEL_12;
  }

  v12 = v11;
  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  [defaultManager3 removeItemAtPath:v12 error:&v17];
  v14 = v17;

  if (v14)
  {
    [BKCatacomb deleteFile:];
    v15 = 5;
  }

  else
  {
    [(BKCatacomb *)self syncDir:self->_catacombDir];

    v15 = 0;
  }

LABEL_7:

  return v15;
}

- (int)recover
{
  selfCopy = self;
  v50 = *MEMORY[0x277D85DE8];
  catacombPrepareDir = [(BKCatacomb *)self catacombPrepareDir];
  if (!catacombPrepareDir)
  {
    [BKCatacomb recover];
LABEL_30:
    v5 = v46;
    v14 = v47;
    v32 = v48;
    goto LABEL_22;
  }

  catacombCommitDir = [(BKCatacomb *)selfCopy catacombCommitDir];
  if (!catacombCommitDir)
  {
    [BKCatacomb recover];
    goto LABEL_30;
  }

  v5 = catacombCommitDir;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:catacombPrepareDir];

  if (v7)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v45 = 0;
    [defaultManager2 removeItemAtPath:catacombPrepareDir error:&v45];
    v9 = v45;

    if (v9)
    {
      [(BKCatacomb *)v5 recover:v9];
      goto LABEL_30;
    }
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager3 fileExistsAtPath:v5];

  if (v11)
  {
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    v44 = 0;
    v13 = [defaultManager4 contentsOfDirectoryAtPath:v5 error:&v44];
    v14 = v44;

    if (v14)
    {
      [(BKCatacomb *)v13 recover];
      v32 = 5;
      goto LABEL_22;
    }

    v35 = catacombPrepareDir;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = v15;
    v17 = *v41;
    obj = v14;
LABEL_9:
    v18 = 0;
    while (1)
    {
      if (*v41 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v40 + 1) + 8 * v18);
      v20 = v5;
      v21 = [v5 stringByAppendingPathComponent:v19];
      v22 = selfCopy;
      v23 = [(NSString *)selfCopy->_catacombDir stringByAppendingPathComponent:v19];
      defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
      v25 = [defaultManager5 fileExistsAtPath:v23];

      if (v25)
      {
        defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
        v39 = 0;
        [defaultManager6 removeItemAtPath:v23 error:&v39];
        v27 = v39;

        if (v27)
        {
          break;
        }
      }

      defaultManager7 = [MEMORY[0x277CCAA00] defaultManager];
      v38 = 0;
      [defaultManager7 moveItemAtPath:v21 toPath:v23 error:&v38];
      v29 = v38;

      if (v29)
      {
        [BKCatacomb recover];
LABEL_25:
        v34 = v47;
        v5 = v20;

        v32 = 5;
        v14 = v34;
        goto LABEL_26;
      }

      ++v18;
      v5 = v20;
      selfCopy = v22;
      if (v16 == v18)
      {
        v14 = obj;
        v16 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v16)
        {
          goto LABEL_9;
        }

LABEL_17:

        defaultManager8 = [MEMORY[0x277CCAA00] defaultManager];
        v37 = 0;
        [defaultManager8 removeItemAtPath:v5 error:&v37];
        v31 = v37;

        if (!v31)
        {
          catacombPrepareDir = v35;
          goto LABEL_20;
        }

        [(BKCatacomb *)v14 recover];
        v32 = 5;
        v14 = v31;
LABEL_26:
        catacombPrepareDir = v35;
        goto LABEL_22;
      }
    }

    [BKCatacomb recover];
    goto LABEL_25;
  }

  v14 = 0;
  if (v7)
  {
LABEL_20:
    [(BKCatacomb *)selfCopy syncDir:selfCopy->_catacombDir];

    v14 = 0;
  }

  v32 = 0;
LABEL_22:

  return v32;
}

- (int)deleteAll
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:self->_catacombDir];

  if (!v4)
  {
    return 0;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  catacombDir = self->_catacombDir;
  v9 = 0;
  [defaultManager2 removeItemAtPath:catacombDir error:&v9];
  v7 = v9;

  if (!v7)
  {
    return 0;
  }

  [(BKCatacomb *)v7 deleteAll];
  return 5;
}

- (id)content
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  catacombDir = self->_catacombDir;
  v7 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:catacombDir error:&v7];

  return v5;
}

- (void)syncDir:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_0();
    v4 = a1;
    v5 = 2080;
    v6 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    v7 = 78;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, 0x30u);
  }
}

- (void)syncDir:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9(5);
}

- (void)syncDir:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9(22);
}

- (void)writeData:(_DWORD *)a3 toFile:.cold.1(uint64_t a1, int a2, _DWORD *a3)
{
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  *a3 = a2;
}

- (void)commitWrite
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9(12);
}

- (void)deleteFile:.cold.1()
{
  OUTLINED_FUNCTION_10();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)deleteFile:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9(12);
}

- (void)deleteFile:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9(1);
}

- (void)deleteFile:.cold.4()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9(1);
}

- (void)deleteFile:.cold.5()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9(22);
}

- (void)recover
{
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)deleteAll
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

@end