@interface PTAssetFSDNetworkInputReader
- (BOOL)_readRGBABufferFromFile:(id)file to:(__CVBuffer *)to;
- (PTAssetFSDNetworkInputReader)initWithURL:(id)l;
- (id)copyNextFrame;
@end

@implementation PTAssetFSDNetworkInputReader

- (PTAssetFSDNetworkInputReader)initWithURL:(id)l
{
  v16[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v14.receiver = self;
  v14.super_class = PTAssetFSDNetworkInputReader;
  v6 = [(PTAssetFSDNetworkInputReader *)&v14 init];
  if (v6 && ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "path"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "fileExistsAtPath:isDirectory:", v8, 0), v8, v7, v9))
  {
    objc_storeStrong(&v6->_url, l);
    v6->_frameIndex = 0;
    v10 = *MEMORY[0x277CC4D60];
    v15[0] = *MEMORY[0x277CC4DE8];
    v15[1] = v10;
    v16[0] = MEMORY[0x277CBEC10];
    v16[1] = &unk_2837F3238;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    CVPixelBufferCreate(0, 0x200uLL, 0x120uLL, 0x52476841u, v11, &v6->_refBuffer);
    CVPixelBufferCreate(0, 0x240uLL, 0x160uLL, 0x52476841u, v11, &v6->_auxBuffer);
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_readRGBABufferFromFile:(id)file to:(__CVBuffer *)to
{
  fileCopy = file;
  v6 = fileCopy;
  if (!to)
  {
    v17 = _PTLogSystem(fileCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PTAssetFSDNetworkInputReader _readRGBABufferFromFile:to:];
    }

    goto LABEL_10;
  }

  Width = CVPixelBufferGetWidth(to);
  Height = CVPixelBufferGetHeight(to);
  v9 = fopen([v6 UTF8String], "r");
  if (!v9)
  {
    v17 = _PTLogSystem(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PTAssetFSDNetworkInputReader _readRGBABufferFromFile:to:];
    }

    goto LABEL_10;
  }

  v10 = v9;
  CVPixelBufferLockBaseAddress(to, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(to);
  v12 = Width * Height;
  v13 = 8 * Width * Height;
  v14 = 1;
  v15 = fread(BaseAddress, 1uLL, v13, v10);
  CVPixelBufferUnlockBaseAddress(to, 0);
  v16 = fclose(v10);
  if (v15 != 8 * v12)
  {
    v17 = _PTLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PTAssetFSDNetworkInputReader *)v13 _readRGBABufferFromFile:v15 to:v17];
    }

LABEL_10:

    v14 = 0;
  }

  return v14;
}

- (id)copyNextFrame
{
  v3 = MEMORY[0x277CCACA8];
  path = [(NSURL *)self->_url path];
  v5 = [v3 stringWithFormat:@"%@/Undistorted/%08i_rectifiedReference.RGhA", path, self->_frameIndex];

  v6 = MEMORY[0x277CCACA8];
  path2 = [(NSURL *)self->_url path];
  v8 = [v6 stringWithFormat:@"%@/Undistorted/%08i_rectifiedAuxiliaryPadded.RGhA", path2, self->_frameIndex];

  LODWORD(path2) = [(PTAssetFSDNetworkInputReader *)self _readRGBABufferFromFile:v5 to:self->_refBuffer];
  v9 = [(PTAssetFSDNetworkInputReader *)self _readRGBABufferFromFile:v8 to:self->_auxBuffer];
  if (path2 && (v9 & 1) != 0)
  {
    v10 = MEMORY[0x277CCACA8];
    path3 = [(NSURL *)self->_url path];
    v12 = [v10 stringWithFormat:@"%@/Inputs/%08i_options.metadata.plist", path3, self->_frameIndex];

    v13 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithFileAtPath:v12];
    v14 = v13;
    if (v13)
    {
      [v13 open];
      v24 = 0;
      v15 = [MEMORY[0x277CCAC58] propertyListWithStream:v14 options:0 format:0 error:&v24];
      v16 = v24;
      v17 = v16;
      if (v16)
      {
        v18 = _PTLogSystem(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [PTAssetFSDNetworkInputReader copyNextFrame];
        }
      }

      [v14 close];
      v19 = [v15 objectForKeyedSubscript:@"CorrectedCalibration"];

      if (v19)
      {
        goto LABEL_18;
      }

      v21 = _PTLogSystem(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PTAssetFSDNetworkInputReader copyNextFrame];
      }
    }

    else
    {
      v21 = _PTLogSystem(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PTAssetFSDNetworkInputReader copyNextFrame];
      }

      v17 = 0;
    }

    v19 = 0;
LABEL_18:
    v22 = [[PTAssetFSDNetworkInputFrame alloc] initWithRef:self->_refBuffer aux:self->_auxBuffer unrectifyData:v19 index:self->_frameIndex++];

    goto LABEL_19;
  }

  v17 = _PTLogSystem(v9);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [PTAssetFSDNetworkInputReader copyNextFrame];
  }

  v22 = 0;
LABEL_19:

  return v22;
}

- (void)_readRGBABufferFromFile:(os_log_t)log to:.cold.1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Failed to read file (expected %i vs read %i)", v3, 0xEu);
}

@end