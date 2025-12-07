@interface PHMediaFormatConversionContent
- (NSString)fileSignature;
- (NSString)fileType;
- (id)description;
- (id)typeFromFileExtensionWithError:(id *)error;
- (unint64_t)length;
@end

@implementation PHMediaFormatConversionContent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  fileURL = [(PHMediaFormatConversionContent *)self fileURL];
  path = [fileURL path];
  v8 = [v3 stringWithFormat:@"<%@ %p path=%@>", v5, self, path];

  return v8;
}

- (NSString)fileSignature
{
  v16 = *MEMORY[0x277D85DE8];
  fileSignature = self->_fileSignature;
  if (!fileSignature)
  {
    v4 = MEMORY[0x277CCA9F8];
    fileURL = [(PHMediaFormatConversionContent *)self fileURL];
    v13 = 0;
    v6 = [v4 fileHandleForReadingFromURL:fileURL error:&v13];
    v7 = v13;

    if (v6)
    {
      v12 = v7;
      v8 = [MEMORY[0x277D3B3E8] fingerPrintForFileDescriptor:objc_msgSend(v6 error:{"fileDescriptor"), &v12}];
      v9 = v12;

      v10 = self->_fileSignature;
      self->_fileSignature = v8;

      if (!self->_fileSignature && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to calculate file signature: %@", buf, 0xCu);
      }

      [v6 closeFile];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to read file for signature calculation: %@", buf, 0xCu);
      }

      v9 = v7;
    }

    fileSignature = self->_fileSignature;
  }

  return fileSignature;
}

- (NSString)fileType
{
  v2 = [(PHMediaFormatConversionContent *)self typeFromFileExtensionWithError:0];
  identifier = [v2 identifier];

  return identifier;
}

- (id)typeFromFileExtensionWithError:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  pathExtension = [(NSURL *)self->_fileURL pathExtension];
  if ([pathExtension length])
  {
    if (self->_mediaType == 1)
    {
      v6 = *MEMORY[0x277CE1E00];
    }

    else
    {
      v6 = 0;
    }

    v9 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:pathExtension conformingToType:v6];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      v15 = @"Unable to determine source media type from filename extension";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *error = [v11 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:2 userInfo:v12];
    }

    goto LABEL_12;
  }

  if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Unable to determine source media type for filename without extension";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v7 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:2 userInfo:v6];
    *error = v8 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (unint64_t)length
{
  result = self->_length;
  if (!result)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileURL = [(PHMediaFormatConversionContent *)self fileURL];
    path = [fileURL path];
    v8 = 0;
    v7 = [defaultManager attributesOfItemAtPath:path error:&v8];

    self->_length = [v7 fileSize];
    return self->_length;
  }

  return result;
}

@end