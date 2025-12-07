@interface APOdmlAllowListReader
- (id)nextLine;
- (id)openForReadingContentsOfURL:(id)l;
- (id)readFile;
- (void)dealloc;
- (void)setFile:(__sFILE *)file;
@end

@implementation APOdmlAllowListReader

- (id)openForReadingContentsOfURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = fopen([l fileSystemRepresentation], "r");
  if (!v6)
  {
    v9 = OdmlLogForCategory(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = objc_opt_class();
      v10 = v24;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%@] ERROR: Unable to open file.", buf, 0xCu);
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = &kAPOdmlAllowListFileOpenErrorCode;
    goto LABEL_20;
  }

  v7 = v6;
  __ptr = 0;
  if (fread(&__ptr, 8uLL, 1uLL, v6) != 1)
  {
    if (feof(v7))
    {
      v13 = OdmlLogForCategory(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        *buf = 138412290;
        v24 = v14;
        v15 = v14;
        v16 = "[%@] Reached EOF reading header of file.";
LABEL_17:
        _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      }
    }

    else
    {
      if (!ferror(v7))
      {
LABEL_19:
        fclose(v7);
        v11 = MEMORY[0x277CCA9B8];
        v12 = &kAPOdmlAllowListFileReadErrorCode;
        goto LABEL_20;
      }

      v13 = OdmlLogForCategory(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        *buf = 138412290;
        v24 = v20;
        v15 = v20;
        v16 = "[%@] Internal inconsistency reading file. Failed to read header.";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  if (__ptr == 1447253107)
  {
    [(APOdmlAllowListReader *)self setFile:v7];
    [(APOdmlAllowListReader *)self setNumberOfIDs:HIDWORD(__ptr)];
    v8 = 0;
    goto LABEL_21;
  }

  v17 = OdmlLogForCategory(7uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    *buf = 138412290;
    v24 = v18;
    v19 = v18;
    _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_ERROR, "[%@] Internal inconsistency reading file. Invalid header for file.", buf, 0xCu);
  }

  fclose(v7);
  v11 = MEMORY[0x277CCA9B8];
  v12 = &kAPOdmlAllowListFileInvalidErrorCode;
LABEL_20:
  v8 = [v11 errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:*v12 userInfo:0];
LABEL_21:

  return v8;
}

- (void)dealloc
{
  file = self->_file;
  if (file)
  {
    fclose(file);
    self->_file = 0;
  }

  v4.receiver = self;
  v4.super_class = APOdmlAllowListReader;
  [(APOdmlAllowListReader *)&v4 dealloc];
}

- (id)nextLine
{
  v18 = *MEMORY[0x277D85DE8];
  nextIndex = [(APOdmlAllowListReader *)self nextIndex];
  if ([(APOdmlAllowListReader *)self numberOfIDs]<= nextIndex)
  {
    goto LABEL_16;
  }

  __ptr = 0;
  v15 = 0;
  if (fread(&__ptr, 0x10uLL, 1uLL, [(APOdmlAllowListReader *)self file]) == 1)
  {
    if (__ptr == 1447253074)
    {
      [(APOdmlAllowListReader *)self setNextIndex:[(APOdmlAllowListReader *)self nextIndex]+ 1];
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v15];
      goto LABEL_17;
    }

    v5 = OdmlLogForCategory(7uLL);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v9 = objc_opt_class();
    *buf = 138412290;
    v17 = v9;
    v7 = v9;
    v8 = "[%@] Internal inconsistency reading file. Missing signature for start of next ID.";
    v10 = v5;
    v11 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

  if (feof([(APOdmlAllowListReader *)self file]))
  {
    v5 = OdmlLogForCategory(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      *buf = 138412290;
      v17 = v6;
      v7 = v6;
      v8 = "[%@] Reached EOF reading ID.";
LABEL_13:
      v10 = v5;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_260ECB000, v10, v11, v8, buf, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (ferror([(APOdmlAllowListReader *)self file]))
  {
    v5 = OdmlLogForCategory(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138412290;
      v17 = v12;
      v7 = v12;
      v8 = "[%@] Internal inconsistency reading file. Failed to read header for ID.";
      goto LABEL_13;
    }

LABEL_15:
  }

LABEL_16:
  v4 = 0;
LABEL_17:

  return v4;
}

- (id)readFile
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  nextLine = [(APOdmlAllowListReader *)self nextLine];
  if (nextLine)
  {
    v5 = nextLine;
    do
    {
      [v3 addObject:v5];
      nextLine2 = [(APOdmlAllowListReader *)self nextLine];

      v5 = nextLine2;
    }

    while (nextLine2);
  }

  v7 = [v3 copy];

  return v7;
}

- (void)setFile:(__sFILE *)file
{
  file = self->_file;
  if (file)
  {
    fclose(file);
  }

  self->_file = file;
}

@end