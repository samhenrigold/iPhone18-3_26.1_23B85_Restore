@interface DIImageInfoParams
+ (BOOL)isDiskImageWithURL:(id)l;
- (BOOL)retrieveWithError:(id *)error;
- (DIImageInfoParams)initWithExistingParams:(id)params error:(id *)error;
- (DIImageInfoParams)initWithURL:(id)l error:(id *)error;
@end

@implementation DIImageInfoParams

- (DIImageInfoParams)initWithURL:(id)l error:(id *)error
{
  v5.receiver = self;
  v5.super_class = DIImageInfoParams;
  return [(DIBaseParams *)&v5 initWithURL:l error:error];
}

- (DIImageInfoParams)initWithExistingParams:(id)params error:(id *)error
{
  paramsCopy = params;
  inputURL = [paramsCopy inputURL];
  v16.receiver = self;
  v16.super_class = DIImageInfoParams;
  v8 = [(DIBaseParams *)&v16 initWithURL:inputURL error:error];

  if (v8 && ([paramsCopy diskImageParamsXPC], v9 = objc_claimAutoreleasedReturnValue(), -[DIBaseParams setDiskImageParamsXPC:](v8, "setDiskImageParamsXPC:", v9), v9, -[DIBaseParams shadowChain](v8, "shadowChain"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(paramsCopy, "shadowChain"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "nodes"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "addShadowNodes:wrapReadOnly:error:", v12, 1, error), v12, v11, v10, (v13 & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  return v14;
}

- (BOOL)retrieveWithError:(id *)error
{
  if ([(DIBaseParams *)self openExistingImageWithError:?])
  {
    v26 = 0;
    if ([(DIImageInfoParams *)self encryptionInfoOnly])
    {
      v19 = &unk_285BD9A98;
      v20 = &unk_285BD9AC8;
      v14 = &unk_285BD9768;
      v15 = &unk_285BD97B0;
      v16 = &unk_285BD97F8;
      v17 = &unk_285BD9840;
      v18 = &unk_285BD9888;
      *(&v14 + unk_285BD9730) = &unk_285BD98D0;
      *(&v14 + *(v14 - 8)) = &unk_285BD9918;
      v14 = &unk_285BD9420;
      v15 = &unk_285BD9468;
      v16 = &unk_285BD94B0;
      v17 = &unk_285BD94F8;
      *(&v14 + unk_285BD93F0) = &unk_285BD9540;
      *(&v14 + *(v14 - 7)) = &unk_285BD9588;
      *(&v14 + *(v14 - 8)) = &unk_285BD95D0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v14 = &unk_285BD9180;
      v15 = &unk_285BD91C8;
      v16 = &unk_285BD9210;
      v17 = &unk_285BD9258;
      v18 = &unk_285BD92A0;
      v19 = &unk_285BD92E8;
      v20 = &unk_285BD9330;
      v21 = &unk_285BD9390;
      v22 = 0;
      if (*[(DIBaseParams *)self cryptoHeader])
      {
        cryptoHeader = [(DIBaseParams *)self cryptoHeader];
        crypto::header::populate_crypto_header_info(*cryptoHeader, (&v14 + *(v14 - 13)));
      }

      DiskImageEncryptionOnly::serialize_to_dict(&v13, &v14);
      if (v26)
      {
        CFRelease(v26);
      }

      v26 = v13;
      v13 = 0;
      CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v13);
      v21 = &unk_285BD9978;
      v17 = &unk_285BD99D0;
      CFAutoRelease<__CFString const*>::~CFAutoRelease(&v25);
    }

    else
    {
      v9 = objc_alloc_init(DIClient2Controller_XPCHandler);
      if (![(DIClient2Controller_XPCHandler *)v9 connectWithError:error]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v9 fileMode:2 error:error])
      {
        goto LABEL_21;
      }

      diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
      [(DIImageInfoParams *)self extraInfo];
      if (diskImageParamsXPC)
      {
        objc_msgSend_getImageInfoWithExtra_error_(diskImageParamsXPC);
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
LABEL_21:

        v8 = 0;
        goto LABEL_22;
      }

      (*(*(v14 + *(*v14 - 96)) + 16))(&v13);
      if (v26)
      {
        CFRelease(v26);
      }

      v26 = v13;
      v13 = 0;
      CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v13);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    v6 = CFRetain(v26);
    imageInfo = self->_imageInfo;
    self->_imageInfo = v6;

    v8 = 1;
LABEL_22:
    CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&v26);
    return v8;
  }

  return 0;
}

+ (BOOL)isDiskImageWithURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL] && ((v10 = 0, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "path"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "fileExistsAtPath:isDirectory:", v5, &v10), v5, v4, !v6) || v10 == 1 && !+[SparseBundleBackendXPC isSparseBundleWithURL:](SparseBundleBackendXPC, "isSparseBundleWithURL:", lCopy)))
  {
    v8 = 0;
  }

  else
  {
    v7 = [[DIImageInfoParams alloc] initWithURL:lCopy error:0];
    v8 = v7 != 0;
  }

  return v8;
}

@end