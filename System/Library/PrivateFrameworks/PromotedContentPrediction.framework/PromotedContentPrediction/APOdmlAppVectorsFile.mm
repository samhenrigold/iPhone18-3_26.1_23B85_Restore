@interface APOdmlAppVectorsFile
- (id)initForReadingContentsOfURL:(id)l version:(id)version;
- (id)nextVector;
- (void)dealloc;
@end

@implementation APOdmlAppVectorsFile

- (id)initForReadingContentsOfURL:(id)l version:(id)version
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  versionCopy = version;
  v8 = fopen([lCopy fileSystemRepresentation], "r");
  if (!v8)
  {
    v12 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = objc_opt_class();
      v28 = 2112;
      v29 = lCopy;
      v13 = v27;
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_DEFAULT, "[%@] Could not open file for reading at %@.", buf, 0x16u);
    }

    goto LABEL_21;
  }

  v9 = v8;
  __ptr = 0;
  if (fread(&__ptr, 8uLL, 1uLL, v8) != 1)
  {
    if (feof(v9))
    {
      v14 = OdmlLogForCategory(2uLL);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v15 = objc_opt_class();
      *buf = 138412290;
      v27 = v15;
      v16 = v15;
      v17 = "[%@] Reached EOF reading header of AppVectorFile.";
    }

    else
    {
      if (!ferror(v9))
      {
LABEL_20:
        fclose(v9);
LABEL_21:
        selfCopy = 0;
        goto LABEL_22;
      }

      v14 = OdmlLogForCategory(2uLL);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v21 = objc_opt_class();
      *buf = 138412290;
      v27 = v21;
      v16 = v21;
      v17 = "[%@] Internal inconsistency reading AppVectorFile.  Failed to read header.";
    }

    v19 = v14;
    v20 = OS_LOG_TYPE_ERROR;
    goto LABEL_18;
  }

  if (__ptr != 1447253107)
  {
    v14 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138412290;
      v27 = v18;
      v16 = v18;
      v17 = "[%@] Internal inconsistency reading AppVectorFile.  Invalid header for vector file.";
      v19 = v14;
      v20 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      _os_log_impl(&dword_260ECB000, v19, v20, v17, buf, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  v24.receiver = self;
  v24.super_class = APOdmlAppVectorsFile;
  v10 = [(APOdmlAppVectorsFile *)&v24 init];
  v11 = v10;
  if (v10)
  {
    v10->_numberOfVectors = HIDWORD(__ptr);
    objc_storeStrong(&v10->_vectorVersion, version);
    v11->_file = v9;
    v11->_nextIndex = 0;
  }

  else
  {
    fclose(v9);
  }

  self = v11;
  selfCopy = self;
LABEL_22:

  return selfCopy;
}

- (void)dealloc
{
  file = self->_file;
  if (file)
  {
    fclose(file);
  }

  v4.receiver = self;
  v4.super_class = APOdmlAppVectorsFile;
  [(APOdmlAppVectorsFile *)&v4 dealloc];
}

- (id)nextVector
{
  v24 = *MEMORY[0x277D85DE8];
  nextIndex = self->_nextIndex;
  if ([(APOdmlAppVectorsFile *)self numberOfVectors]<= nextIndex)
  {
    goto LABEL_20;
  }

  v20 = 0;
  v21 = 0;
  if (fread(&v20, 0x10uLL, 1uLL, self->_file) != 1)
  {
    if (feof(self->_file))
    {
      v10 = OdmlLogForCategory(2uLL);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v11 = objc_opt_class();
      *buf = 138412290;
      v23 = v11;
      v12 = v11;
      v13 = "[%@] Reached EOF reading vector.";
    }

    else
    {
      if (!ferror(self->_file))
      {
        goto LABEL_20;
      }

      v10 = OdmlLogForCategory(2uLL);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      v17 = objc_opt_class();
      *buf = 138412290;
      v23 = v17;
      v12 = v17;
      v13 = "[%@] Internal inconsistency reading AppVectorFile.  Failed to read header for vector.";
    }

LABEL_17:
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_18;
  }

  if (v21 != *"RTCV")
  {
    v10 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138412290;
      v23 = v14;
      v12 = v14;
      v13 = "[%@] Internal inconsistency reading AppVectorFile.  Missing signature for start of next vector.";
      v15 = v10;
      v16 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      _os_log_impl(&dword_260ECB000, v15, v16, v13, buf, 0xCu);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v4 = 4 * HIDWORD(v21);
  v5 = malloc_type_malloc(v4, 0x3FC57CECuLL);
  if (v5)
  {
    v6 = v5;
    if (fread(v5, 1uLL, v4, self->_file) == v4)
    {
      v7 = [APOdmlAppVector alloc];
      vectorVersion = [(APOdmlAppVectorsFile *)self vectorVersion];
      v9 = [(APOdmlAppVector *)v7 initWithVersion:vectorVersion header:&v20 floats:v6];

      free(v6);
      ++self->_nextIndex;
      goto LABEL_21;
    }

    v10 = OdmlLogForCategory(2uLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v18 = objc_opt_class();
    *buf = 138412290;
    v23 = v18;
    v12 = v18;
    v13 = "[%@] Internal inconsistency reading AppVectorFile.  Couldn't read required number of bytes.";
    goto LABEL_17;
  }

LABEL_20:
  v9 = 0;
LABEL_21:

  return v9;
}

@end