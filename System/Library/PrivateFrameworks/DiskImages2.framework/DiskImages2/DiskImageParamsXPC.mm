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
  v39 = *MEMORY[0x277D85DE8];
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
    v15 = DIForwardLogs();
    if (v15)
    {
      v31 = 0;
      v17 = getDIOSLog(v15, v16);
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
      v21 = _os_log_send_and_compose_impl(v20, &v31, 0, 0, &dword_248DE0000, v17, 0, "%.*s: Image file %{private}@ opened with flags %d", buf, 34);

      if (v21)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v21);
        free(v21);
      }
    }

    else
    {
      v22 = getDIOSLog(v15, v16);
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
        _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Image file %{private}@ opened with flags %d", buf, 0x22u);
      }
    }

    *__error() = v14;
    objc_msgSend_backend(v12);
    std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>(&v31, buf);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
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
      std::__shared_weak_count::__release_shared[abi:ne200100](*v34);
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
  v12 = *MEMORY[0x277D85DE8];
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
    *&v28 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v28 + 1) = 390;
    v29 = 0;
    di_log::logger<di_log::log_printer<108ul>>::logger(&v30, &v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "attempting to authenticate with aea key", 39);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<108ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v32);
    if (*(helper + 16))
    {
      memcpy(buffer, *(helper + 1), size);
      return 1;
    }

LABEL_29:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(helper + 48) == 1)
  {
    *&v28 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v28 + 1) = 390;
    v29 = 0;
    di_log::logger<di_log::log_printer<115ul>>::logger(&v30, &v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "attempting to authenticate with kms", 35);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<115ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v32);
    if ((*(helper + 48) & 1) == 0)
    {
      goto LABEL_29;
    }

    v12 = MEMORY[0x277CBEBC0];
    if (*(helper + 47) >= 0)
    {
      v13 = helper + 24;
    }

    else
    {
      v13 = *(helper + 3);
    }

    v14 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
    v15 = [v12 URLWithString:v14];

    LOBYTE(v14) = [DIKeyRetriever KKMSKeyWithURL:v15 destKey:buffer destKeySize:size error:error];
    if (v14)
    {
      return 1;
    }
  }

  if (*(helper + 120) == 1)
  {
    *&v28 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v28 + 1) = 390;
    v29 = 0;
    di_log::logger<di_log::log_printer<122ul>>::logger(&v30, &v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "attempting to authenticate with wkms fcs", 40);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<122ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v32);
    if ((*(helper + 120) & 1) == 0)
    {
      goto LABEL_29;
    }

    v16 = MEMORY[0x277CBEBC0];
    if (*(helper + 111) >= 0)
    {
      v17 = helper + 88;
    }

    else
    {
      v17 = *(helper + 11);
    }

    v18 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:1];
    v19 = [v16 URLWithString:v18];

    v20 = [DIKeyRetriever WKMSKeyWithURL:v19 authData:*(helper + 14) destKey:buffer destKeySize:size error:error];
    if (v20)
    {
      return 1;
    }
  }

  if (*(helper + 80) == 1)
  {
    *&v28 = "AEAHelper::key_params_t::run(function &&) [function = di_utils::overloaded<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:185:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:189:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:193:8), (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/DiskImagesLib/DiskImageParamsXPC.mm:197:8)> &]";
    *(&v28 + 1) = 390;
    v29 = 0;
    di_log::logger<di_log::log_printer<129ul>>::logger(&v30, &v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "attempting to authenticate with saks", 36);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<129ul>>::~logger_buf(&v30);
    MEMORY[0x24C1ED6A0](v32);
    if ((*(helper + 80) & 1) == 0)
    {
      goto LABEL_29;
    }

    v21 = MEMORY[0x277CCACA8];
    if (*(helper + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *(helper + 7), *(helper + 8));
    }

    else
    {
      v30 = *(helper + 56);
    }

    v22 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
    v23 = v30.__r_.__value_.__r.__words[0];
    defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v22 >= 0)
    {
      v25 = &v30;
    }

    else
    {
      v25 = v23;
    }

    v26 = [v21 stringWithCString:v25 encoding:defaultCStringEncoding];
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v27 = [self getAEAKeyFromSAKSWithMetadata:v26 key:buffer error:error];

    if (v27)
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
  AEAHelper::AEAHelper(&v7, &v8);
  operator new[]();
}

+ (id)newWithUnlockedBackendXPC:(id)c error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
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

    std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>(&v18, &v16);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v8 = v16;
    if (!v16 || (*(*v16 + 40))(v16) < 4)
    {
      goto LABEL_17;
    }

    v9 = *(details::get_dummy_shared_ptr() + 1);
    v18 = &v15;
    v19 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = xmmword_248F9D660;
    v21 = 4;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v10 = (*(*v8 + 128))(v8, &v18);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v10 != 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
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
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
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

  std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>(&v10, &v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
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
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v8;
}

- (shared_ptr<DiskImage>)createShadowDiskImageWithBackend:(shared_ptr<Backend>)backend numBlocks:(unint64_t)blocks sinkDiskImage:(const void *)image cache_only:(BOOL)cache_only stack_size:(unint64_t)stack_size
{
  cache_onlyCopy = cache_only;
  imageCopy = image;
  cntrl = backend.__cntrl_;
  ptr = backend.__ptr_;
  v27[3] = *MEMORY[0x277D85DE8];
  v23 = 0;
  *v24 = 256;
  *&v24[7] = 0;
  v12 = *(system_properties::get_resources(self) + 8);
  *&v24[3] = (v12 - (cache_onlyCopy > 3)) & ~((v12 - (cache_onlyCopy > 3)) >> 31);
  v24[7] = 1;
  if ((*(**ptr + 40))())
  {
    di_asif::header::header(v26, *ptr);
    std::allocate_shared[abi:ne200100]<DiskImageASIF,std::allocator<DiskImageASIF>,std::shared_ptr<Backend> &,di_asif::header &,di_asif::options &,0>();
  }

  v13 = (*(*blocks + 24))(blocks);
  v14 = 0x10000000000000 / v13;
  v22 = 0x10000000000000 / v13;
  if (!cntrl)
  {
    v13 = (*(*blocks + 32))(blocks);
    cntrl = v13;
    v14 = v22;
  }

  v21 = cntrl;
  if (cntrl <= v14)
  {
    v26[0] = di_utils::random_uuid(v13);
    v26[1] = v15;
    v27[0] = di_stackable::get_identifier(blocks, v15);
    v27[1] = v16;
    v20 = (*(*blocks + 24))(blocks);
    v24[0] = imageCopy;
    if (imageCopy)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26;
    }

    std::allocate_shared[abi:ne200100]<DiskImageASIF,std::allocator<DiskImageASIF>,unsigned long,unsigned int const&,unsigned long long &,unsigned long long &,std::shared_ptr<Backend> &,di_asif::options &,boost::uuids::uuid const&,boost::uuids::uuid const&,0>(&v25, &v20, &di_asif::chunk_size_default, &v21, &v22, ptr, &v23, v17, v26);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_285BF4E60;
  v19 = std::generic_category();
  exception[1] = 22;
  exception[2] = v19;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Size cannot exceed max ASIF size";
}

- (BOOL)allowOnDiskCacheWithSinkDiskImage:(const void *)image
{
  v19 = *MEMORY[0x277D85DE8];
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  hasBaseImageCache = [shadowChain hasBaseImageCache];

  if ((hasBaseImageCache & 1) == 0)
  {
    v5 = *__error();
    v6 = DIForwardLogs();
    if (v6)
    {
      v14 = 0;
      v8 = getDIOSLog(v6, v7);
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
      v10 = _os_log_send_and_compose_impl(v9, &v14, 0, 0, &dword_248DE0000, v8, 0, "%.*s: On disk cache is not supported on embedded systems", buf, v13);

      if (v10)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
        free(v10);
      }
    }

    else
    {
      v11 = getDIOSLog(v6, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v16 = 56;
        v17 = 2080;
        v18 = "[DiskImageParamsXPC allowOnDiskCacheWithSinkDiskImage:]";
        _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache is not supported on embedded systems", buf, 0x12u);
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
  v59 = v4;
  v85 = *MEMORY[0x277D85DE8];
  objc_msgSend_createSinkDiskImage(self, a2);
  v60 = cacheCopy && [(DiskImageParamsXPC *)self allowOnDiskCacheWithSinkDiskImage:&v70];
  shadowChain = [(DiskImageParamsXPC *)self shadowChain];
  v7 = shadowChain;
  if (shadowChain)
  {
    shadowChain2 = [(DiskImageParamsXPC *)self shadowChain];
    isEmpty = [shadowChain2 isEmpty];

    if (v60 || (isEmpty & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v60)
  {
LABEL_6:
    __src = 0;
    v74 = 0;
    v75 = 0;
    if (v70)
    {
      operator new();
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    shadowChain3 = [(DiskImageParamsXPC *)self shadowChain];
    obj = [shadowChain3 nodes];

    v11 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v11)
    {
      v12 = *v67;
      v62 = 0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v67 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v66 + 1) + 8 * i);
          fileBackend = [v14 fileBackend];
          v16 = fileBackend;
          if (fileBackend)
          {
            objc_msgSend_backend(fileBackend);
          }

          else
          {
            v64[2] = 0;
            v65 = 0;
          }

          [v14 numBlocks];
          [v14 isCache];
          shadowChain4 = [(DiskImageParamsXPC *)self shadowChain];
          nodes = [shadowChain4 nodes];
          [nodes count];
          objc_msgSend_createShadowDiskImageWithBackend_numBlocks_sinkDiskImage_cache_only_stack_size_(self);

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
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
            v23 = *v82;
            if (*v82)
            {
              atomic_fetch_add_explicit((*v82 + 8), 1uLL, memory_order_relaxed);
            }

            v21 = v22 ^ 1;
            if (v62)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v62);
              v20 = *buf;
            }

            else
            {
              v20 = v24;
            }

            v62 = v23;
          }

          v76.n128_u64[0] = v20;
          v76.n128_u64[1] = *v82;
          *buf = 0;
          *v82 = 0;
          LODWORD(v77) = v21;
          std::vector<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::insert(&__src, __src, &v76);
          if (v76.n128_u64[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v76.n128_u64[1]);
          }

          if (*v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*v82);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v11);
    }

    if (v60)
    {
      if (confstr(65538, &v76, 0x400uLL))
      {
        identifier = 0;
        v72 = 0;
        identifier = di_stackable::get_identifier(0, v25);
        v72 = v26;
        *buf = 0;
        *v82 = 0;
        if (identifier | v26)
        {
          instanceID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&identifier];
        }

        else
        {
          instanceID = [(DiskImageParamsXPC *)self instanceID];
        }

        uUIDString = [instanceID UUIDString];

        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.%@", @"diskimage_", uUIDString, @"cache"];
        [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:&v76 isDirectory:1 relativeToURL:0];
        v30 = [objc_claimAutoreleasedReturnValue() URLByAppendingPathComponent:v29];
        [(DiskImageParamsXPC *)self setCacheURL:v30];

        v31 = *__error();
        v32 = DIForwardLogs();
        if (v32)
        {
          v64[0] = 0;
          v34 = getDIOSLog(v32, v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          cacheURL = [(DiskImageParamsXPC *)self cacheURL];
          path = [cacheURL path];
          *buf = 0x4004100302;
          *v82 = 2080;
          *&v82[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
          v83 = 2114;
          v84 = path;
          LODWORD(v58) = 28;
          v38 = _os_log_send_and_compose_impl(v35, v64, 0, 0, &dword_248DE0000, v34, 0, "%.*s: On disk cache path: %{public}@", buf, v58);

          if (v38)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v38);
            free(v38);
          }
        }

        else
        {
          v39 = getDIOSLog(v32, v33);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            cacheURL2 = [(DiskImageParamsXPC *)self cacheURL];
            path2 = [cacheURL2 path];
            *buf = 0x4004100302;
            *v82 = 2080;
            *&v82[2] = "[DiskImageParamsXPC createDiskImageWithCache:shadowValidation:]";
            v83 = 2114;
            v84 = path2;
            _os_log_impl(&dword_248DE0000, v39, OS_LOG_TYPE_DEFAULT, "%.*s: On disk cache path: %{public}@", buf, 0x1Cu);
          }
        }

        *__error() = v31;
        cacheURL3 = [(DiskImageParamsXPC *)self cacheURL];
        v43 = cacheURL3;
        *buf = [cacheURL3 fileSystemRepresentation];
        std::allocate_shared[abi:ne200100]<PurgeableFileBackend,std::allocator<PurgeableFileBackend>,char const*,0>();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v57 = std::generic_category();
      exception[1] = 2;
      exception[2] = v57;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Could not determine cache dir";
    }

    v44 = (*(MEMORY[0] + 40))(0);
    v45 = __src;
    v46 = v74;
    v47 = __src != v74 || (v44 & 1) == 0;
    atomic_fetch_add_explicit(8, 1uLL, memory_order_relaxed);
    if (v46 >= v75)
    {
      v49 = v46 - v45;
      v50 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
      v51 = v50 + 1;
      if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<iovec>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v75 - v45) >> 3) > v51)
      {
        v51 = 0x5555555555555556 * ((v75 - v45) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v75 - v45) >> 3) >= 0x555555555555555)
      {
        v51 = 0xAAAAAAAAAAAAAAALL;
      }

      p_src = &__src;
      if (v51)
      {
        std::allocator<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::allocate_at_least[abi:ne200100](&__src, v51);
      }

      v52 = 24 * v50;
      *v52 = 0;
      *(v52 + 8) = 0;
      *(v52 + 16) = v47;
      v48 = 24 * v50 + 24;
      v53 = (v52 - v49);
      memcpy((v52 - v49), v45, v49);
      v54 = __src;
      v55 = v75;
      __src = v53;
      v74 = v48;
      v75 = 0;
      v77 = v54;
      v78 = v55;
      v76.n128_u64[0] = v54;
      v76.n128_u64[1] = v54;
      std::__split_buffer<std::tuple<std::shared_ptr<DiskImage>,DiskImageStackable::role>>::~__split_buffer(&v76);
    }

    else
    {
      *v46 = 0;
      *(v46 + 1) = 0;
      v48 = (v46 + 24);
      *(v46 + 4) = v47;
    }

    v74 = v48;
    operator new();
  }

  *v59 = v70;
  return shadowChain;
}

- (BOOL)lockBackendsWithWritableOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v24 = *MEMORY[0x277D85DE8];
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
          for (i = 0; i != v13; ++i)
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
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v7 = [backendXPC description];
  v8 = [v3 stringWithFormat:@"%@[%@]", v5, v7];

  return v8;
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
  v26[2] = *MEMORY[0x277D85DE8];
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
      v11 = (&v26[-1] - ((v10 + 31) & 0xFFFFFFFFFFFFFFF0));
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

      v20 = objc_alloc(MEMORY[0x277CCAD78]);
      v26[0] = di_utils::buffer_to_uuid(v11, v10 + 16);
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

  get_sink_backend(&v6, &v8);
  std::dynamic_pointer_cast[abi:ne200100]<FileLocal,Backend>(&v8, &v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v10)
  {
    is_mounted_on_apfs = FileDescriptor::is_mounted_on_apfs(v10[5]);
  }

  else
  {
    is_mounted_on_apfs = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return is_mounted_on_apfs;
}

- (vector<std::shared_ptr<LockableResource>,)lockableResources
{
  v26 = *MEMORY[0x277D85DE8];
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

  get_sink_backend(&v22, &lpsrc);
  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
  }

  {
    *&v22 = v7;
    *(&v22 + 1) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__end_, 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<LockableResource>>::push_back[abi:ne200100](&retstr->__begin_, &v22);
  }

  else
  {
    v22 = 0uLL;
  }

  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
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
      for (i = 0; i != v10; ++i)
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

        get_sink_backend(&v17, &v22);
        if (*(&v17 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
        }

        {
          *&v17 = v15;
          *(&v17 + 1) = *(&v22 + 1);
          if (*(&v22 + 1))
          {
            atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          std::vector<std::shared_ptr<LockableResource>>::push_back[abi:ne200100](&retstr->__begin_, &v17);
        }

        else
        {
          v17 = 0uLL;
        }

        if (*(&v17 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
        }

        if (*(&v22 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
        }
      }

      v10 = [nodes countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v10);
  }

  result = v24;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return result;
}

@end