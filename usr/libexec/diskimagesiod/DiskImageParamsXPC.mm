@interface DiskImageParamsXPC
+ (BOOL)getAEAKeyFromSAKSWithMetadata:(id)metadata key:(char *)key error:(id *)error;
+ (BOOL)getAEAKeyWithHelper:(void *)helper keyBuffer:(char *)buffer bufferSize:(unint64_t)size error:(id *)error;
+ (BOOL)validateSupportedFormatWithBackendXPC:(id)c error:(id *)error;
+ (id)newAEABackendThrowsWithBackendXPC:(id)c error:(id *)error;
+ (id)newWithURL:(id)l fileOpenFlags:(int)flags error:(id *)error;
+ (id)newWithUnlockedBackendXPC:(id)c blockSize:(unint64_t)size error:(id *)error;
+ (id)newWithUnlockedBackendXPC:(id)c error:(id *)error;
- (BOOL)allowOnDiskCacheWithSinkDiskImage:(const void *)image;
- (BOOL)lockBackendsWithWritableOnly:(BOOL)only error:(id *)error;
- (BOOL)mountedOnAPFS;
- (DiskImageParamsXPC)initWithBackendXPC:(id)c;
- (DiskImageParamsXPC)initWithBackendXPC:(id)c blockSize:(unint64_t)size;
- (DiskImageParamsXPC)initWithCoder:(id)coder;
- (NSURL)cacheURL;
- (NSUUID)instanceID;
- (id)description;
- (shared_ptr<DiskImage>)createShadowDiskImageWithBackend:(shared_ptr<Backend>)backend numBlocks:(unint64_t)blocks sinkDiskImage:(const void *)image cache_only:(BOOL)cache_only stack_size:(unint64_t)stack_size;
- (unique_ptr<DiskImage,)createDiskImageWithCache:(BOOL)cache shadowValidation:(BOOL)validation;
- (unique_ptr<const)getImageInfoWithExtra:(BOOL)extra error:(id *)error;
- (vector<std::shared_ptr<LockableResource>,)lockableResources;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DiskImageParamsXPC

+ (id)newWithURL:(id)l fileOpenFlags:(int)flags error:(id *)error
{
  v6 = *&flags;
  lCopy = l;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"ram"])
  {
    v10 = [[DiskImageParamsRAM_XPC alloc] initWithURL:lCopy error:error];
LABEL_3:
    v11 = v10;
    v12 = 0;
    goto LABEL_4;
  }

  if ([lowercaseString isEqualToString:@"knox"])
  {
    operator new[]();
  }

  if (![lCopy isFileURL])
  {
    if ([lowercaseString isEqualToString:@"plugin"])
    {
      v12 = [[PluginBackendXPC alloc] initWithURL:lCopy openMode:v6];
      v11 = [(DiskImageParamsXPC *)[DiskImageParamsPlugin_XPC alloc] initWithBackendXPC:v12];
      goto LABEL_4;
    }

    v10 = [DIError nilWithPOSIXCode:22 description:@"Unsupported URL scheme" error:error];
    goto LABEL_3;
  }

  v12 = [BackendXPC newFileBackendWithURL:lCopy fileOpenFlags:v6 error:error];
  if (v12)
  {
    v14 = *__error();
    v15 = sub_1000E95F0();
    if (v15)
    {
      v31 = 0;
      v17 = sub_1000E957C(v15, v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      path = [lCopy path];
      *buf = 68158467;
      if (v18)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      *&buf[4] = 53;
      *v34 = 2080;
      *&v34[2] = "+[DiskImageParamsXPC newWithURL:fileOpenFlags:error:]";
      v35 = 2113;
      v36 = path;
      v37 = 1024;
      v38 = v6;
      v21 = _os_log_send_and_compose_impl(v20, &v31, 0, 0, &_mh_execute_header, v17, 0, "%.*s: Image file %{private}@ opened with flags %d", buf, 34);

      if (v21)
      {
        fprintf(__stderrp, "%s\n", v21);
        free(v21);
      }
    }

    else
    {
      v22 = sub_1000E957C(v15, v16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [lCopy path];
        *buf = 68158467;
        *&buf[4] = 53;
        *v34 = 2080;
        *&v34[2] = "+[DiskImageParamsXPC newWithURL:fileOpenFlags:error:]";
        v35 = 2113;
        v36 = path2;
        v37 = 1024;
        v38 = v6;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Image file %{private}@ opened with flags %d", buf, 0x22u);
      }
    }

    *__error() = v14;
    objc_msgSend_backend(v12);
    sub_10000C844(&v31, buf);
    if (v32)
    {
      sub_10000E984(v32);
    }

    if ([(BackendXPC *)v12 tryCreatingCryptoHeader])
    {
      if (*buf && (v24 = *(*buf + 40), *(v24 + 28)) && (v25 = *(v24 + 24), v25 > *(*[(BackendXPC *)v12 cryptoHeader]+ 52)))
      {
        v26 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Block device block size is larger than image block size" error:error];
      }

      else
      {
        v26 = [[DiskImageParamsLocked_XPC alloc] initWithBackendXPC:v12];
      }

      v11 = v26;
    }

    else
    {
      v27 = [DiskImageParamsXPC newWithUnlockedBackendXPC:v12 error:error];
      v11 = v27;
      if (v27)
      {
        if (*buf)
        {
          v28 = *(*buf + 40);
          if (*(v28 + 28))
          {
            v29 = *(v28 + 24);
            if ([(DiskImageParamsXPC *)v27 blockSize]< v29)
            {
              v30 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Block device block size is larger than image block size" error:error];

              v11 = v30;
            }
          }
        }
      }
    }

    if (*v34)
    {
      sub_10000E984(*v34);
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_4:

  return v11;
}

+ (BOOL)validateSupportedFormatWithBackendXPC:(id)c error:(id *)error
{
  cCopy = c;
  if (cCopy)
  {
    objc_msgSend_backend(cCopy);
  }

  operator new();
}

+ (BOOL)getAEAKeyFromSAKSWithMetadata:(id)metadata key:(char *)key error:(id *)error
{
  metadataCopy = metadata;
  v8 = [DIKeyRetriever decryptKeyWithData:metadataCopy destKey:v11 destKeySize:88 error:error];
  if (v8)
  {
    v9 = strnlen(v11, 0x58uLL);
    CC_SHA256(v11, v9, key);
  }

  return v8;
}

+ (BOOL)getAEAKeyWithHelper:(void *)helper keyBuffer:(char *)buffer bufferSize:(unint64_t)size error:(id *)error
{
  if (*(helper + 16) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000B6E10(__p, &v25);
    sub_100001FE8(v29, "attempting to authenticate with aea key", 39);
    std::ostream::~ostream();
    sub_1000B731C(__p);
    std::ios::~ios();
    if (*(helper + 16))
    {
      memcpy(buffer, *(helper + 1), size);
      return 1;
    }

LABEL_29:
    sub_1000B7AC4();
  }

  if (*(helper + 48) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000B6F7C(__p, &v25);
    sub_100001FE8(v29, "attempting to authenticate with kms", 35);
    std::ostream::~ostream();
    sub_1000B7BD8(__p);
    std::ios::~ios();
    if ((*(helper + 48) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(helper + 47) >= 0)
    {
      v12 = helper + 24;
    }

    else
    {
      v12 = *(helper + 3);
    }

    v13 = [NSString stringWithCString:v12 encoding:4];
    v14 = [NSURL URLWithString:v13];

    LOBYTE(v13) = [DIKeyRetriever KKMSKeyWithURL:v14 destKey:buffer destKeySize:size error:error];
    if (v13)
    {
      return 1;
    }
  }

  if (*(helper + 120) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000A8C98(__p, &v25);
    sub_100001FE8(v29, "attempting to authenticate with wkms fcs", 40);
    std::ostream::~ostream();
    sub_1000A8ECC(__p);
    std::ios::~ios();
    if ((*(helper + 120) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(helper + 111) >= 0)
    {
      v15 = helper + 88;
    }

    else
    {
      v15 = *(helper + 11);
    }

    v16 = [NSString stringWithCString:v15 encoding:1];
    v17 = [NSURL URLWithString:v16];

    v18 = [DIKeyRetriever WKMSKeyWithURL:v17 authData:*(helper + 14) destKey:buffer destKeySize:size error:error];
    if (v18)
    {
      return 1;
    }
  }

  if (*(helper + 80) == 1)
  {
    *&v25 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v25 + 1) = 390;
    v26 = 0;
    sub_1000B70E8(__p, &v25);
    sub_100001FE8(v29, "attempting to authenticate with saks", 36);
    std::ostream::~ostream();
    sub_1000B8448(__p);
    std::ios::~ios();
    if ((*(helper + 80) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(helper + 79) < 0)
    {
      sub_100050108(__p, *(helper + 7), *(helper + 8));
    }

    else
    {
      *__p = *(helper + 56);
      v28 = *(helper + 9);
    }

    v19 = SHIBYTE(v28);
    v20 = __p[0];
    v21 = +[NSString defaultCStringEncoding];
    if (v19 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = v20;
    }

    v23 = [NSString stringWithCString:v22 encoding:v21];
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    v24 = [self getAEAKeyFromSAKSWithMetadata:v23 key:buffer error:error];

    if (v24)
    {
      return 1;
    }
  }

  return 0;
}

+ (id)newAEABackendThrowsWithBackendXPC:(id)c error:(id *)error
{
  cCopy = c;
  if (cCopy)
  {
    objc_msgSend_backend(cCopy);
    v5 = v7;
  }

  else
  {
    v5 = 0uLL;
  }

  v8 = v5;
  sub_10012D9AC(&v7, &v8);
  operator new[]();
}

+ (id)newWithUnlockedBackendXPC:(id)c error:(id *)error
{
  cCopy = c;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(DiskImageParamsXPC *)[DiskImageParamsSparseBundle_XPC alloc] initWithBackendXPC:cCopy];
  }

  else
  {
    if (cCopy)
    {
      objc_msgSend_backend(cCopy);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    sub_10000C844(&v18, &v16);
    if (v19)
    {
      sub_10000E984(v19);
    }

    v8 = v16;
    if (!v16 || (*(*v16 + 40))(v16) < 4)
    {
      goto LABEL_17;
    }

    v9 = *(sub_100195B38() + 1);
    v18 = &v15;
    v19 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = xmmword_1001C0170;
    v21 = 4;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v10 = (*(*v8 + 128))(v8, &v18);
    if (v19)
    {
      sub_10000E984(v19);
    }

    if (v10 != 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v14 = std::generic_category();
      exception[1] = 22;
      exception[2] = v14;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "is_aea: Error reading magic.";
    }

    if (v15 != 826361153 || (v11 = [self newAEABackendThrowsWithBackendXPC:cCopy error:error], cCopy, (cCopy = v11) != 0))
    {
LABEL_17:
      LOBYTE(v11) = 1;
    }

    if (v17)
    {
      sub_10000E984(v17);
    }

    if (v11)
    {
      if (cCopy)
      {
        objc_msgSend_backend(cCopy);
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      operator new();
    }

    v7 = 0;
  }

  return v7;
}

+ (id)newWithUnlockedBackendXPC:(id)c blockSize:(unint64_t)size error:(id *)error
{
  v7 = [DiskImageParamsXPC newWithUnlockedBackendXPC:c error:error];
  v8 = v7;
  if (!v7 || ([v7 setBlockSize:size error:error] & 1) == 0)
  {

    return 0;
  }

  return v8;
}

- (NSURL)cacheURL
{
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  hasBaseImageCache = [shadowChain hasBaseImageCache];

  if (hasBaseImageCache)
  {
    shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
    nodes = [shadowChain2 nodes];
    firstObject = [nodes firstObject];
    v8 = [firstObject URL];
    cacheURL = self->_cacheURL;
    self->_cacheURL = v8;
  }

  v10 = self->_cacheURL;

  return v10;
}

- (DiskImageParamsXPC)initWithBackendXPC:(id)c blockSize:(unint64_t)size
{
  cCopy = c;
  v11.receiver = self;
  v11.super_class = DiskImageParamsXPC;
  v8 = [(DiskImageParamsXPC *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backendXPC, c);
    v9->_blockSize = size;
  }

  return v9;
}

- (DiskImageParamsXPC)initWithBackendXPC:(id)c
{
  cCopy = c;
  v5 = cCopy;
  if (cCopy)
  {
    objc_msgSend_backend(cCopy);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  sub_10000C844(&v10, &v12);
  if (v11)
  {
    sub_10000E984(v11);
  }

  if (v12 && (v6 = v12[5], *(v6 + 28)))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 512;
  }

  v8 = [(DiskImageParamsXPC *)self initWithBackendXPC:v5 blockSize:v7, v10];
  if (v13)
  {
    sub_10000E984(v13);
  }

  return v8;
}

- (shared_ptr<DiskImage>)createShadowDiskImageWithBackend:(shared_ptr<Backend>)backend numBlocks:(unint64_t)blocks sinkDiskImage:(const void *)image cache_only:(BOOL)cache_only stack_size:(unint64_t)stack_size
{
  cache_onlyCopy = cache_only;
  imageCopy = image;
  cntrl = backend.__cntrl_;
  ptr = backend.__ptr_;
  v22 = 0;
  *v23 = 256;
  *&v23[7] = 0;
  v12 = *(sub_100043DBC() + 8);
  *&v23[3] = (v12 - (cache_onlyCopy > 3)) & ~((v12 - (cache_onlyCopy > 3)) >> 31);
  v23[7] = 1;
  if ((*(**ptr + 40))())
  {
    sub_100101694(v25, *ptr);
    sub_1000B97DC();
  }

  v13 = 0x10000000000000uLL / (*(*blocks + 24))(blocks);
  v21 = v13;
  if (!cntrl)
  {
    cntrl = (*(*blocks + 32))(blocks);
    v13 = v21;
  }

  v20 = cntrl;
  if (cntrl <= v13)
  {
    v25[0] = sub_100195AE4();
    v25[1] = v14;
    v26[0] = sub_100075664(blocks);
    v26[1] = v15;
    v19 = (*(*blocks + 24))(blocks);
    v23[0] = imageCopy;
    if (imageCopy)
    {
      v16 = v26;
    }

    else
    {
      v16 = v25;
    }

    sub_1000B9990(&v24, &v19, &unk_1001C01D4, &v20, &v21, ptr, &v22, v16, v25);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &off_1002260F0;
  v18 = std::generic_category();
  exception[1] = 22;
  exception[2] = v18;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Size cannot exceed max ASIF size";
}

- (BOOL)allowOnDiskCacheWithSinkDiskImage:(const void *)image
{
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  hasBaseImageCache = [shadowChain hasBaseImageCache];

  if ((hasBaseImageCache & 1) == 0)
  {
    v5 = *__error();
    v6 = sub_1000E95F0();
    if (v6)
    {
      v14 = 0;
      v8 = sub_1000E957C(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      *buf = 68157954;
      v16 = 56;
      v17 = 2080;
      v18 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
      LODWORD(v13) = 18;
      v10 = _os_log_send_and_compose_impl(v9, &v14, 0, 0, &_mh_execute_header, v8, 0, "%.*s: On disk cache is not supported on embedded systems", buf, v13);

      if (v10)
      {
        fprintf(__stderrp, "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v11 = sub_1000E957C(v6, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v16 = 56;
        v17 = 2080;
        v18 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache is not supported on embedded systems", buf, 0x12u);
      }
    }

    *__error() = v5;
  }

  return 0;
}

- (unique_ptr<const)getImageInfoWithExtra:(BOOL)extra error:(id *)error
{
  extraCopy = extra;
  v6 = v4;
  objc_msgSend_createDiskImageWithCache_shadowValidation_(self, a2, 0, 0);
  v7 = v10;
  if (extraCopy)
  {
    v8 = 7;
  }

  else
  {
    v8 = 0;
  }

  (*(*v10 + 56))(&v10, v10, v8);
  *v6 = v10;
  return (*(*v7 + 16))(v7);
}

- (unique_ptr<DiskImage,)createDiskImageWithCache:(BOOL)cache shadowValidation:(BOOL)validation
{
  cacheCopy = cache;
  v58 = v4;
  objc_msgSend_createSinkDiskImage(self, a2);
  if (cacheCopy)
  {
    v59 = [(DiskImageParamsXPC *)self allowOnDiskCacheWithSinkDiskImage:&v69];
  }

  else
  {
    v59 = 0;
  }

  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  v7 = shadowChain;
  if (shadowChain)
  {
    shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
    isEmpty = [shadowChain2 isEmpty];

    if (v59 & 1 | ((isEmpty & 1) == 0))
    {
      goto LABEL_6;
    }
  }

  else if (v59)
  {
LABEL_6:
    __src = 0;
    v73 = 0;
    v74 = 0;
    if (v69)
    {
      operator new();
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    shadowChain3 = [(DiskImageParamsXPC *)self shadowChain];
    obj = [shadowChain3 nodes];

    v11 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v11)
    {
      v12 = *v66;
      v61 = 0;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v66 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v65 + 1) + 8 * i);
          fileBackend = [v14 fileBackend];
          v16 = fileBackend;
          if (fileBackend)
          {
            objc_msgSend_backend(fileBackend);
          }

          else
          {
            v63[2] = 0;
            v64 = 0;
          }

          [v14 numBlocks];
          [v14 isCache];
          shadowChain4 = [(DiskImageParamsXPC *)self shadowChain];
          nodes = [shadowChain4 nodes];
          [nodes count];
          objc_msgSend_createShadowDiskImageWithBackend_numBlocks_sinkDiskImage_cache_only_stack_size_(self);

          if (v64)
          {
            sub_10000E984(v64);
          }

          isCache = [v14 isCache];
          v20 = *buf;
          if (isCache)
          {
            v21 = 2;
          }

          else
          {
            v22 = (*(**buf + 40))(*buf);
            v24 = *buf;
            v23 = *v81;
            if (*v81)
            {
              atomic_fetch_add_explicit((*v81 + 8), 1uLL, memory_order_relaxed);
            }

            v21 = v22 ^ 1;
            if (v61)
            {
              sub_10000E984(v61);
              v20 = *buf;
            }

            else
            {
              v20 = v24;
            }

            v61 = v23;
          }

          v75.n128_u64[0] = v20;
          v75.n128_u64[1] = *v81;
          *buf = 0;
          *v81 = 0;
          LODWORD(v76) = v21;
          sub_1000B3780(&__src, __src, &v75);
          if (v75.n128_u64[1])
          {
            sub_10000E984(v75.n128_u64[1]);
          }

          if (*v81)
          {
            sub_10000E984(*v81);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v11);
    }

    if (v59)
    {
      if (confstr(65538, &v75, 0x400uLL))
      {
        v70 = 0;
        v71 = 0;
        v70 = sub_100075664(0);
        v71 = v25;
        *buf = 0;
        *v81 = 0;
        if (v70 | v25)
        {
          instanceID = [[NSUUID alloc] initWithUUIDBytes:&v70];
        }

        else
        {
          instanceID = [(DiskImageParamsXPC *)self instanceID];
        }

        uUIDString = [instanceID UUIDString];

        v28 = [NSString stringWithFormat:@"%@%@.%@", @"diskimage_", uUIDString, @"cache"];
        [NSURL fileURLWithFileSystemRepresentation:&v75 isDirectory:1 relativeToURL:0];
        v29 = [objc_claimAutoreleasedReturnValue() URLByAppendingPathComponent:v28];
        [(DiskImageParamsXPC *)self setCacheURL:v29];

        v30 = *__error();
        v31 = sub_1000E95F0();
        if (v31)
        {
          v63[0] = 0;
          v33 = sub_1000E957C(v31, v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 3;
          }

          else
          {
            v34 = 2;
          }

          cacheURL = [(DiskImageParamsXPC *)self cacheURL];
          path = [cacheURL path];
          *buf = 0x4004100302;
          *v81 = 2080;
          *&v81[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
          v82 = 2114;
          v83 = path;
          LODWORD(v57) = 28;
          v37 = _os_log_send_and_compose_impl(v34, v63, 0, 0, &_mh_execute_header, v33, 0, "%.*s: On disk cache path: %{public}@", buf, v57);

          if (v37)
          {
            fprintf(__stderrp, "%s\n", v37);
            free(v37);
          }
        }

        else
        {
          v38 = sub_1000E957C(v31, v32);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            cacheURL2 = [(DiskImageParamsXPC *)self cacheURL];
            path2 = [cacheURL2 path];
            *buf = 0x4004100302;
            *v81 = 2080;
            *&v81[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
            v82 = 2114;
            v83 = path2;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache path: %{public}@", buf, 0x1Cu);
          }
        }

        *__error() = v30;
        cacheURL3 = [(DiskImageParamsXPC *)self cacheURL];
        v42 = cacheURL3;
        *buf = [cacheURL3 fileSystemRepresentation];
        sub_1000B9B10();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v56 = std::generic_category();
      exception[1] = 2;
      exception[2] = v56;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Could not determine cache dir";
    }

    v43 = (*(MEMORY[0] + 40))(0);
    v44 = __src;
    v45 = v73;
    v46 = __src != v73 || (v43 & 1) == 0;
    atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    if (v45 >= v74)
    {
      v48 = v45 - v44;
      v49 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3);
      v50 = v49 + 1;
      if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100015B70();
      }

      if (0x5555555555555556 * ((v74 - v44) >> 3) > v50)
      {
        v50 = 0x5555555555555556 * ((v74 - v44) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v74 - v44) >> 3) >= 0x555555555555555)
      {
        v50 = 0xAAAAAAAAAAAAAAALL;
      }

      p_src = &__src;
      if (v50)
      {
        sub_100065684(&__src, v50);
      }

      v51 = 24 * v49;
      *v51 = 0;
      *(v51 + 8) = 0;
      *(v51 + 16) = v46;
      v47 = 24 * v49 + 24;
      v52 = (v51 - v48);
      memcpy((v51 - v48), v44, v48);
      v53 = __src;
      v54 = v74;
      __src = v52;
      v73 = v47;
      v74 = 0;
      v76 = v53;
      v77 = v54;
      v75.n128_u64[0] = v53;
      v75.n128_u64[1] = v53;
      sub_1000656DC(&v75);
    }

    else
    {
      *v45 = 0;
      *(v45 + 1) = 0;
      v47 = (v45 + 24);
      *(v45 + 4) = v46;
    }

    v73 = v47;
    operator new();
  }

  *v58 = v69;
  return shadowChain;
}

- (BOOL)lockBackendsWithWritableOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  if ((-[DiskImageParamsXPC isWritableFormat](self, "isWritableFormat") || !onlyCopy) && (-[DiskImageParamsXPC backendXPC](self, "backendXPC"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 lock], v7, v8))
  {

    return [DIError failWithPOSIXCode:v8 verboseInfo:@"Failed locking the image" error:error];
  }

  else
  {
    shadowChain = [(DiskImageParamsXPC *)self shadowChain];

    if (shadowChain)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
      nodes = [shadowChain2 nodes];

      v13 = [nodes countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = *v20;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(nodes);
            }

            fileBackend = [*(*(&v19 + 1) + 8 * i) fileBackend];
            lock = [fileBackend lock];

            if (lock)
            {
              v18 = [DIError failWithPOSIXCode:lock verboseInfo:@"Failed locking the shadow file" error:error];

              return v18;
            }
          }

          v13 = [nodes countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    return 1;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v6 = [backendXPC description];
  v7 = [NSString stringWithFormat:@"%@[%@]", v4, v6];

  return v7;
}

- (DiskImageParamsXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backend"];
  backendXPC = self->_backendXPC;
  self->_backendXPC = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shadowChain"];
  shadowChain = self->_shadowChain;
  self->_shadowChain = v7;

  self->_blockSize = [coderCopy decodeIntegerForKey:@"blockSize"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceID"];
  instanceID = self->_instanceID;
  self->_instanceID = v9;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  [coderCopy encodeObject:backendXPC forKey:@"backend"];

  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  [coderCopy encodeObject:shadowChain forKey:@"shadowChain"];

  [coderCopy encodeInteger:-[DiskImageParamsXPC blockSize](self forKey:{"blockSize"), @"blockSize"}];
  instanceID = [(DiskImageParamsXPC *)self instanceID];
  [coderCopy encodeObject:instanceID forKey:@"instanceID"];
}

- (NSUUID)instanceID
{
  instanceID = self->_instanceID;
  if (instanceID)
  {
    goto LABEL_2;
  }

  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  instanceID = [backendXPC instanceID];

  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  if (shadowChain)
  {
    shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
    nonCacheNodes = [shadowChain2 nonCacheNodes];

    if (nonCacheNodes && [nonCacheNodes count])
    {
      v25 = &v25;
      v10 = 16 * [nonCacheNodes count];
      v11 = &v26[-1] - ((v10 + 31) & 0xFFFFFFFFFFFFFFF0);
      [(NSUUID *)instanceID getUUIDBytes:v11];
      v12 = 0;
      v13 = v11 + 16;
      while ([nonCacheNodes count] > v12)
      {
        v14 = [nonCacheNodes objectAtIndexedSubscript:v12];
        fileBackend = [v14 fileBackend];
        instanceID2 = [fileBackend instanceID];

        [instanceID2 getUUIDBytes:v13];
        v13 += 16;
        ++v12;
      }

      v20 = [NSUUID alloc];
      v26[0] = sub_1001959C4(v11, v10 + 16);
      v26[1] = v21;
      v22 = [v20 initWithUUIDBytes:v26];
      v24 = self->_instanceID;
      p_instanceID = &self->_instanceID;
      *p_instanceID = v22;

      instanceID = *p_instanceID;
LABEL_2:
      v3 = instanceID;
      goto LABEL_11;
    }
  }

  else
  {
    nonCacheNodes = 0;
  }

  v17 = self->_instanceID;
  self->_instanceID = instanceID;
  v18 = instanceID;

  v3 = self->_instanceID;
LABEL_11:

  return v3;
}

- (BOOL)mountedOnAPFS
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v3 = backendXPC;
  if (backendXPC)
  {
    objc_msgSend_backend(backendXPC);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_100192CB4(&v6, &v8);
  sub_10000C844(&v8, &v10);
  if (v9)
  {
    sub_10000E984(v9);
  }

  if (v7)
  {
    sub_10000E984(v7);
  }

  if (v10)
  {
    v4 = sub_1000B9004(v10[5]);
  }

  else
  {
    v4 = 0;
  }

  if (v11)
  {
    sub_10000E984(v11);
  }

  return v4;
}

- (vector<std::shared_ptr<LockableResource>,)lockableResources
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v6 = backendXPC;
  if (backendXPC)
  {
    objc_msgSend_backend(backendXPC);
  }

  else
  {
    v22 = 0uLL;
  }

  sub_100192CB4(&v22, &lpsrc);
  if (*(&v22 + 1))
  {
    sub_10000E984(*(&v22 + 1));
  }

  {
    *&v22 = v7;
    *(&v22 + 1) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__end_, 1uLL, memory_order_relaxed);
    }

    sub_1000B45C0(&retstr->__begin_, &v22);
  }

  else
  {
    v22 = 0uLL;
  }

  if (*(&v22 + 1))
  {
    sub_10000E984(*(&v22 + 1));
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  nodes = [shadowChain nodes];

  v10 = [nodes countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(nodes);
        }

        fileBackend = [*(*(&v18 + 1) + 8 * i) fileBackend];
        v14 = fileBackend;
        if (fileBackend)
        {
          objc_msgSend_backend(fileBackend);
        }

        else
        {
          v17 = 0uLL;
        }

        sub_100192CB4(&v17, &v22);
        if (*(&v17 + 1))
        {
          sub_10000E984(*(&v17 + 1));
        }

        {
          *&v17 = v15;
          *(&v17 + 1) = *(&v22 + 1);
          if (*(&v22 + 1))
          {
            atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          sub_1000B45C0(&retstr->__begin_, &v17);
        }

        else
        {
          v17 = 0uLL;
        }

        if (*(&v17 + 1))
        {
          sub_10000E984(*(&v17 + 1));
        }

        if (*(&v22 + 1))
        {
          sub_10000E984(*(&v22 + 1));
        }
      }

      v10 = [nodes countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v10);
  }

  result = v24;
  if (v24)
  {
    sub_10000E984(v24);
  }

  return result;
}

@end