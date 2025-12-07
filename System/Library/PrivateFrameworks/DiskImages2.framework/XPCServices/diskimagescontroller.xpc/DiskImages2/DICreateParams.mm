@interface DICreateParams
+ (BOOL)checkExistingFileWithURL:(id)l isDirectory:(BOOL)directory error:(id *)error;
+ (BOOL)eraseIfExistingWithURL:(id)l error:(id *)error;
+ (BOOL)toHeaderEncryptionMode:(unint64_t)mode headerEncMode:(void *)encMode error:(id *)error;
- (BOOL)createDiskImageParamsWithError:(id *)error;
- (BOOL)createEncryptionWithXPCHandler:(id)handler error:(id *)error;
- (BOOL)onErrorCleanup;
- (BOOL)resizeWithDiskImage:(void *)image numberOfBlocks:(unint64_t)blocks error:(id *)error;
- (BOOL)resizeWithNumBlocks:(unint64_t)blocks error:(id *)error;
- (BOOL)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method error:(id *)error;
- (DICreateParams)initWithCoder:(id)coder;
- (DICreateParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error;
- (id)createWithError:(id *)error;
- (unique_ptr<DiskImage,)createInternalWithError:(id *)error;
- (void)createDiskImageParamsXPC;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DICreateParams

- (DICreateParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error
{
  v7.receiver = self;
  v7.super_class = DICreateParams;
  result = [(DIBaseParams *)&v7 initWithURL:l error:error];
  if (result)
  {
    result->_numBlocks = blocks;
  }

  return result;
}

- (DICreateParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DICreateParams;
  v5 = [(DIBaseParams *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_numBlocks = [coderCopy decodeInt64ForKey:@"numBlocks"];
    v5->_encryptionMethod = [coderCopy decodeIntegerForKey:@"encryptionMethod"];
    v5->_passphrase = [coderCopy decodeBoolForKey:@"passphrase"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certificate"];
    certificate = v5->_certificate;
    v5->_certificate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = DICreateParams;
  [(DIBaseParams *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[DICreateParams numBlocks](self forKey:{"numBlocks"), @"numBlocks"}];
  [coderCopy encodeInteger:-[DICreateParams encryptionMethod](self forKey:{"encryptionMethod"), @"encryptionMethod"}];
  [coderCopy encodeBool:-[DICreateParams passphrase](self forKey:{"passphrase"), @"passphrase"}];
  publicKey = [(DICreateParams *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];

  certificate = [(DICreateParams *)self certificate];
  [coderCopy encodeObject:certificate forKey:@"certificate"];
}

+ (BOOL)toHeaderEncryptionMode:(unint64_t)mode headerEncMode:(void *)encMode error:(id *)error
{
  if (mode - 1 < 2)
  {
    v9 = 0x8000000100000005;
    v6 = 5;
    v7 = 5;
LABEL_5:
    sub_10009C144("encryption_mode", v7, &v9, 2);
    *encMode = v6;
    return 1;
  }

  if (mode == 3)
  {
    v9 = 0x8000000100000005;
    v6 = -2147483647;
    v7 = -2147483647;
    goto LABEL_5;
  }

  return [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid encryption method" error:error];
}

- (BOOL)createEncryptionWithXPCHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  if ([(DICreateParams *)self encryptionMethod])
  {
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    backendXPC = [diskImageParamsXPC backendXPC];
    v9 = backendXPC;
    if (backendXPC)
    {
      objc_msgSend_getCryptoHeaderBackend(backendXPC);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    if (v16)
    {
      if ([(DICreateParams *)self encryptionMethod]== 2)
      {
        v11 = 256;
      }

      else
      {
        v11 = 128;
      }

      v17 = 0x10000000080;
      sub_10009C144("encryption_key_bits_size_t", v11, &v17, 2);
      v13 = 0;
      if ([DICreateParams toHeaderEncryptionMode:[(DICreateParams *)self encryptionMethod] headerEncMode:&v13 error:error])
      {
        [(DIBaseParams *)self blockSize];
        operator new();
      }

      error = 0;
    }

    else
    {
      error = [DIError failWithUnexpected:v14 verboseInfo:v15 error:@"Failed to open crypto header", error];
    }

    if (v16 == 1 && v15)
    {
      sub_10000367C(v15);
    }
  }

  else
  {
    error = 1;
  }

  return error;
}

- (void)createDiskImageParamsXPC
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_100001860(exception, "Invalid argument, please use one of the DICreateParams derived classes instead", 0x16u);
}

- (BOOL)createDiskImageParamsWithError:(id *)error
{
  inputURL = [(DIBaseParams *)self inputURL];
  isFileURL = [inputURL isFileURL];

  if (isFileURL)
  {
    v7 = *__error();
    v8 = sub_1000E044C();
    if (v8)
    {
      v22 = 0;
      v10 = sub_1000E03D8(v8, v9);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      inputURL2 = [(DIBaseParams *)self inputURL];
      if (v11)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      *buf = 68158211;
      v24 = 49;
      v25 = 2080;
      v26 = "[DICreateParams createDiskImageParamsWithError:]";
      v27 = 2113;
      v28 = inputURL2;
      v14 = _os_log_send_and_compose_impl(v13, &v22, 0, 0, &_mh_execute_header, v10, 0, "%.*s: entry with %{private}@", buf, 28);

      if (v14)
      {
        fprintf(__stderrp, "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v16 = sub_1000E03D8(v8, v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        inputURL3 = [(DIBaseParams *)self inputURL];
        *buf = 68158211;
        v24 = 49;
        v25 = 2080;
        v26 = "[DICreateParams createDiskImageParamsWithError:]";
        v27 = 2113;
        v28 = inputURL3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%.*s: entry with %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v7;
    v18 = objc_opt_class();
    inputURL4 = [(DIBaseParams *)self inputURL];
    LOBYTE(v18) = [v18 eraseIfExistingWithURL:inputURL4 error:error];

    if ((v18 & 1) == 0)
    {
      return 0;
    }

    [(DICreateParams *)self createDiskImageParamsXPC];
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    v21 = [diskImageParamsXPC setBlockSize:-[DIBaseParams blockSize](self error:{"blockSize"), error}];

    return v21;
  }

  else
  {

    return [DIError failWithPOSIXCode:22 verboseInfo:@"URL must have a file scheme" error:error];
  }
}

- (unique_ptr<DiskImage,)createInternalWithError:(id *)error
{
  v6 = v3;
  if (![(DICreateParams *)self encryptionMethod])
  {
LABEL_5:
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = 0;

    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    shadowChain = [(DIBaseParams *)self shadowChain];
    [shadowChain shouldValidate];
    if (diskImageParamsXPC)
    {
      objc_msgSend_createDiskImageWithCache_shadowValidation_(diskImageParamsXPC);
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    v11.var0 = [(DICreateParams *)self resizeWithDiskImage:v10 numberOfBlocks:[(DICreateParams *)self numBlocks] error:error];
    if (LODWORD(v11.var0))
    {
      *v6 = v10;
    }

    else
    {
      *v6 = 0;
      if (v10)
      {
        return (*(*v10 + 16))(v10);
      }
    }

    return v11;
  }

  v12 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if ([(DIClient2Controller_XPCHandler *)v12 connectWithError:error]&& [(DICreateParams *)self createEncryptionWithXPCHandler:v12 error:error])
  {

    goto LABEL_5;
  }

  *v6 = 0;

  return v11;
}

- (id)createWithError:(id *)error
{
  if ([(DICreateParams *)self validateBlockSizeSupport])
  {
    if ([(DICreateParams *)self createDiskImageParamsWithError:error])
    {
      objc_msgSend_createInternalWithError_(self);
      if (v8)
      {
        sub_100050010();
      }

      [(DICreateParams *)self onErrorCleanup];
      v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [DIError nilWithPOSIXCode:22 description:@"Unsupported block size for image format" error:error];
  }

  temporaryPassphrase = self->_temporaryPassphrase;
  self->_temporaryPassphrase = 0;

  return v5;
}

- (BOOL)resizeWithDiskImage:(void *)image numberOfBlocks:(unint64_t)blocks error:(id *)error
{
  [(DICreateParams *)self setNumBlocks:blocks];
  v9 = (*(*image + 24))(image);
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  blocks = [diskImageParamsXPC setSizeWithDiskImage:image newSize:v9 * blocks];

  if (!blocks)
  {
    [(DICreateParams *)self setNumBlocks:(*(*image + 32))(image)];
    numBlocks = [(DICreateParams *)self numBlocks];
    v14 = (*(*image + 24))(image) * numBlocks;
    v15 = *__error();
    v16 = sub_1000E044C();
    if (v16)
    {
      v27 = 0;
      v18 = sub_1000E03D8(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      *buf = 0x3B04100302;
      v29 = 2080;
      v30 = "[DICreateParams resizeWithDiskImage:numberOfBlocks:error:]";
      v31 = 2048;
      v32 = v14;
      LODWORD(v25) = 28;
      v20 = _os_log_send_and_compose_impl(v19, &v27, 0, 0, &_mh_execute_header, v18, 0, "%.*s: Disk image resized to %llu bytes", buf, v25, v26);

      if (v20)
      {
        fprintf(__stderrp, "%s\n", v20);
        free(v20);
      }
    }

    else
    {
      v21 = sub_1000E03D8(v16, v17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0x3B04100302;
        v29 = 2080;
        v30 = "[DICreateParams resizeWithDiskImage:numberOfBlocks:error:]";
        v31 = 2048;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image resized to %llu bytes", buf, 0x1Cu);
      }
    }

    *__error() = v15;
    v22 = (*(*image + 144))(image);
    v23 = sub_10000FE1C(v22);
    if (v23)
    {
      v24 = [DIError failWithPOSIXCode:v23 error:error];
      if (!v22)
      {
        return v24;
      }
    }

    else
    {
      v24 = 1;
      if (!v22)
      {
        return v24;
      }
    }

    (*(*v22 + 40))(v22);
    return v24;
  }

  return [DIError failWithPOSIXCode:blocks verboseInfo:@"Failed to resize the image" error:error];
}

- (BOOL)resizeWithNumBlocks:(unint64_t)blocks error:(id *)error
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  shadowChain = [(DIBaseParams *)self shadowChain];
  [shadowChain shouldValidate];
  if (diskImageParamsXPC)
  {
    objc_msgSend_createDiskImageWithCache_shadowValidation_(diskImageParamsXPC);
    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(DICreateParams *)self resizeWithDiskImage:v9 numberOfBlocks:blocks error:error];
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  return v10;
}

+ (BOOL)checkExistingFileWithURL:(id)l isDirectory:(BOOL)directory error:(id *)error
{
  if (directory)
  {
    return [DIError failWithPOSIXCode:21 verboseInfo:@"The requested URL is an existing folder" error:error];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)eraseIfExistingWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v30 = 0;
  v6 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v8 = [v6 fileExistsAtPath:path isDirectory:&v30];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    path2 = [lCopy path];
    v11 = [v9 isWritableFileAtPath:path2];

    if (v11)
    {
      if ([objc_opt_class() checkExistingFileWithURL:lCopy isDirectory:v30 error:error])
      {
        v12 = +[NSFileManager defaultManager];
        path3 = [lCopy path];
        v14 = [v12 attributesOfItemAtPath:path3 error:0];

        if ((v30 & 1) == 0 && v14)
        {
          v15 = [v14 objectForKeyedSubscript:NSFileSize];
          v16 = v15;
          if (v15 && ![v15 longLongValue])
          {
            v25 = 1;
LABEL_22:

            goto LABEL_23;
          }
        }

        v17 = *__error();
        v18 = sub_1000E044C();
        if (v18)
        {
          v29 = 0;
          v20 = sub_1000E03D8(v18, v19);
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          path4 = [lCopy path];
          if (v21)
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          *buf = 68158211;
          v32 = 47;
          v33 = 2080;
          v34 = "+[DICreateParams eraseIfExistingWithURL:error:]";
          v35 = 2113;
          v36 = path4;
          v24 = _os_log_send_and_compose_impl(v23, &v29, 0, 0, &_mh_execute_header, v20, 0, "%.*s: Erasing %{private}@", buf, 28);

          if (v24)
          {
            fprintf(__stderrp, "%s\n", v24);
            free(v24);
          }
        }

        else
        {
          v26 = sub_1000E03D8(v18, v19);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            path5 = [lCopy path];
            *buf = 68158211;
            v32 = 47;
            v33 = 2080;
            v34 = "+[DICreateParams eraseIfExistingWithURL:error:]";
            v35 = 2113;
            v36 = path5;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%.*s: Erasing %{private}@", buf, 0x1Cu);
          }
        }

        *__error() = v17;
        v16 = +[NSFileManager defaultManager];
        v25 = [v16 removeItemAtURL:lCopy error:error];
        goto LABEL_22;
      }

      v25 = 0;
    }

    else
    {
      v25 = [DIError failWithPOSIXCode:13 verboseInfo:@"Image does not have write permissions" error:error];
    }
  }

  else
  {
    v25 = 1;
  }

LABEL_23:

  return v25;
}

- (BOOL)onErrorCleanup
{
  [(DIBaseParams *)self setDiskImageParamsXPC:0];
  v3 = *__error();
  v4 = sub_1000E044C();
  if (v4)
  {
    v18 = 0;
    v6 = sub_1000E03D8(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    inputURL = [(DIBaseParams *)self inputURL];
    path = [inputURL path];
    *buf = 68158211;
    v20 = 32;
    v21 = 2080;
    v22 = "[DICreateParams onErrorCleanup]";
    v23 = 2113;
    v24 = path;
    v10 = _os_log_send_and_compose_impl(v7, &v18, 0, 0, &_mh_execute_header, v6, 0, "%.*s: Creation failed, erasing %{private}@", buf, 28);

    if (v10)
    {
      fprintf(__stderrp, "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8(v4, v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      inputURL2 = [(DIBaseParams *)self inputURL];
      path2 = [inputURL2 path];
      *buf = 68158211;
      v20 = 32;
      v21 = 2080;
      v22 = "[DICreateParams onErrorCleanup]";
      v23 = 2113;
      v24 = path2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Creation failed, erasing %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  v14 = +[NSFileManager defaultManager];
  inputURL3 = [(DIBaseParams *)self inputURL];
  v16 = [v14 removeItemAtURL:inputURL3 error:0];

  return v16;
}

- (BOOL)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method error:(id *)error
{
  if (passphrase)
  {
    v8 = [[DITemporaryPassphrase alloc] initWithPassphrase:passphrase];
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = v8;

    self->_encryptionMethod = method;
    return 1;
  }

  else
  {

    return [DIError failWithPOSIXCode:22 error:error];
  }
}

@end