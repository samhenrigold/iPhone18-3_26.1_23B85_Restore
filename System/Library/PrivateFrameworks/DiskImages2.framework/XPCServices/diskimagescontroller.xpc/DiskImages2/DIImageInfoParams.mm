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
    v23 = 0;
    if ([(DIImageInfoParams *)self encryptionInfoOnly])
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v13[0] = off_100224230;
      v13[1] = off_100224278;
      v13[2] = off_1002242C0;
      v14 = off_100224308;
      v15 = off_100224350;
      v16 = off_100224398;
      v17 = off_1002243E0;
      v18 = off_100224440;
      v19 = 0;
      if (*[(DIBaseParams *)self cryptoHeader])
      {
        sub_100188274(*[(DIBaseParams *)self cryptoHeader], v13 + *(v13[0] - 104));
      }

      sub_100123000(v13, &v12);
      if (v23)
      {
        CFRelease(v23);
      }

      v23 = v12;
      v12 = 0;
      sub_10000C8E0(&v12);
      v18 = off_100224908;
      v14 = off_100224960;
      sub_100023024(&v22);
    }

    else
    {
      v8 = objc_alloc_init(DIClient2Controller_XPCHandler);
      if (![(DIClient2Controller_XPCHandler *)v8 connectWithError:error]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v8 fileMode:2 error:error])
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
        v13[0] = 0;
      }

      if (!v13[0])
      {
LABEL_21:

        v7 = 0;
        goto LABEL_22;
      }

      (*(*(v13[0] + *(*v13[0] - 96)) + 16))(&v12);
      if (v23)
      {
        CFRelease(v23);
      }

      v23 = v12;
      v12 = 0;
      sub_10000C8E0(&v12);
      v10 = v13[0];
      v13[0] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    v5 = CFRetain(v23);
    imageInfo = self->_imageInfo;
    self->_imageInfo = v5;

    v7 = 1;
LABEL_22:
    sub_10000C8E0(&v23);
    return v7;
  }

  return 0;
}

+ (BOOL)isDiskImageWithURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL] && ((v10 = 0, +[NSFileManager defaultManager](NSFileManager, "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "path"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "fileExistsAtPath:isDirectory:", v5, &v10), v5, v4, !v6) || v10 == 1 && !+[SparseBundleBackendXPC isSparseBundleWithURL:](SparseBundleBackendXPC, "isSparseBundleWithURL:", lCopy)))
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