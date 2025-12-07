@interface BackendXPC
+ (id)newFileBackendWithURL:(id)l fileOpenFlags:(int)flags error:(id *)error;
- (BOOL)tryCreatingCryptoHeader;
- (BackendXPC)initWithCoder:(id)coder;
- (NSUUID)instanceID;
- (expected<std::shared_ptr<Backend>,)getCryptoHeaderBackend;
- (id).cxx_construct;
- (id)description;
- (int)lock;
- (shared_ptr<Backend>)backend;
- (void)encodeWithCoder:(id)coder;
- (void)replaceWithBackendXPC:(id)c;
- (void)setBackend:(shared_ptr<Backend>)backend;
@end

@implementation BackendXPC

- (BackendXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BackendXPC;
  v5 = [(BackendXPC *)&v9 init];
  if (v5)
  {
    crypto::header_serializer::decode(&v8, coderCopy);
    std::shared_ptr<crypto::header>::operator=[abi:ne200100]<crypto::header,std::default_delete<crypto::header>,0>(&v5->_cryptoHeader.__ptr_, &v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      MEMORY[0x24C1ED730](v6, 0x1000C4015A9971DLL);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ptr = self->_cryptoHeader.__ptr_;
  if (ptr)
  {
    [coderCopy encodeBytes:ptr length:76 forKey:@"crypto_header"];
  }
}

- (int)lock
{
  objc_msgSend_backend(self, a2);
  get_sink_backend(&v4, &v6);
  std::dynamic_pointer_cast[abi:ne200100]<LockableResource,Backend>(&v6, &v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v8)
  {
    v2 = (**v8)(v8);
  }

  else
  {
    v2 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v2;
}

- (NSUUID)instanceID
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  objc_msgSend_backend(self);
  v9[0] = (*(*v7 + 168))();
  v9[1] = v4;
  v5 = [v3 initWithUUIDBytes:v9];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

- (BOOL)tryCreatingCryptoHeader
{
  objc_msgSend_getCryptoHeaderBackend(self, a2);
  if ((v6 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    *(exception + 8) = v5;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = "Failed to open backend of crypto header";
  }

  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v2 = (*(*v5 + 40))();
  if (v2 > 0x4B)
  {
    operator new();
  }

  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (v6 == 1 && *(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  return v2 > 0x4B;
}

- (expected<std::shared_ptr<Backend>,)getCryptoHeaderBackend
{
  objc_msgSend_backend(self, a3);
  get_sink_backend(&v5, &v7);
  retstr->var0.var0.var0 = v7;
  v7 = 0;
  retstr->var0.var0.var1 = 1;
  result = v6;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return result;
}

- (id)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)replaceWithBackendXPC:(id)c
{
  cCopy = c;
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v8 = std::generic_category();
    exception[1] = 22;
    exception[2] = v8;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Unexpected backend replace request";
  }

  if (cCopy)
  {
    objc_msgSend_backend(cCopy);
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  cntrl = self->_backend.__cntrl_;
  self->_backend = v5;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

+ (id)newFileBackendWithURL:(id)l fileOpenFlags:(int)flags error:(id *)error
{
  v6 = *&flags;
  v49 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (stat([lCopy fileSystemRepresentation], &v28))
  {
    v8 = [DIError nilWithPOSIXCode:*__error() verboseInfo:@"stat failed" error:error];
  }

  else
  {
    v9 = *__error();
    v10 = DIForwardLogs();
    if (v10)
    {
      v27 = 0;
      v12 = getDIOSLog(v10, v11);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      path = [lCopy path];
      if (v13)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      *buf = 68160003;
      v30 = 56;
      v31 = 2080;
      v32 = "+[BackendXPC newFileBackendWithURL:fileOpenFlags:error:]";
      v33 = 2113;
      v34 = path;
      v35 = 1024;
      st_dev = v28.st_dev;
      v37 = 2048;
      st_ino = v28.st_ino;
      v39 = 1024;
      st_mode = v28.st_mode;
      v41 = 1024;
      st_uid = v28.st_uid;
      v43 = 1024;
      st_gid = v28.st_gid;
      v45 = 2048;
      st_size = v28.st_size;
      v47 = 2048;
      st_blocks = v28.st_blocks;
      v16 = _os_log_send_and_compose_impl(v15, &v27, 0, 0, &dword_248DE0000, v12, 0, "%.*s: Image file %{private}@ stat: dev(0x%x), inode(%lld), mode(%o), uid(%d), gid(%d), size(%lld), blocks(%lld)", buf, 82);

      if (v16)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
        free(v16);
      }
    }

    else
    {
      v17 = getDIOSLog(v10, v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [lCopy path];
        *buf = 68160003;
        v30 = 56;
        v31 = 2080;
        v32 = "+[BackendXPC newFileBackendWithURL:fileOpenFlags:error:]";
        v33 = 2113;
        v34 = path2;
        v35 = 1024;
        st_dev = v28.st_dev;
        v37 = 2048;
        st_ino = v28.st_ino;
        v39 = 1024;
        st_mode = v28.st_mode;
        v41 = 1024;
        st_uid = v28.st_uid;
        v43 = 1024;
        st_gid = v28.st_gid;
        v45 = 2048;
        st_size = v28.st_size;
        v47 = 2048;
        st_blocks = v28.st_blocks;
        _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_DEFAULT, "%.*s: Image file %{private}@ stat: dev(0x%x), inode(%lld), mode(%o), uid(%d), gid(%d), size(%lld), blocks(%lld)", buf, 0x52u);
      }
    }

    *__error() = v9;
    if ((v28.st_mode & 0xF000) == 0x4000)
    {
      v19 = lCopy;
      fileSystemRepresentation = [lCopy fileSystemRepresentation];
      if ((SparseBundleBackend::is_folder_sparsebundle(fileSystemRepresentation, v21) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        *exception = &unk_285BF4E60;
        v26 = std::generic_category();
        exception[1] = 161;
        exception[2] = v26;
        *(exception + 24) = 0;
        *(exception + 48) = 0;
        exception[7] = "The specified image is a folder but not a sparsebundle";
      }

      v22 = &off_278F803D8;
    }

    else
    {
      v22 = off_278F803B8;
    }

    v8 = [objc_alloc(*v22) initWithURL:lCopy fileOpenFlags:v6];
  }

  v23 = v8;

  return v23;
}

- (shared_ptr<Backend>)backend
{
  cntrl = self->_backend.__cntrl_;
  *v2 = self->_backend.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setBackend:(shared_ptr<Backend>)backend
{
  v4 = *backend.__ptr_;
  v3 = *(backend.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_backend.__cntrl_;
  self->_backend.__ptr_ = v4;
  self->_backend.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end