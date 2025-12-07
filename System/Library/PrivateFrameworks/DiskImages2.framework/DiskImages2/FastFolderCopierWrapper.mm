@interface FastFolderCopierWrapper
- (BOOL)copyWithDstFolder:(id)folder error:(id *)error;
- (BOOL)traverseSrcFolderWithError:(id *)error;
- (FastFolderCopierWrapper)initWithSrcFolder:(id)folder parallelMode:(BOOL)mode progress:(id)progress;
- (id).cxx_construct;
- (id)copyWithDstFolder:error:;
- (shared_ptr<BaseFolderCopier>)copier;
- (uint64_t)copyWithDstFolder:error:;
- (unint64_t)folderSize;
- (unint64_t)numFiles;
- (void)copyWithDstFolder:error:;
- (void)setCopier:(shared_ptr<BaseFolderCopier>)copier;
@end

@implementation FastFolderCopierWrapper

- (FastFolderCopierWrapper)initWithSrcFolder:(id)folder parallelMode:(BOOL)mode progress:(id)progress
{
  modeCopy = mode;
  v16 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  progressCopy = progress;
  v15.receiver = self;
  v15.super_class = FastFolderCopierWrapper;
  v10 = [(FastFolderCopierWrapper *)&v15 init];
  if (v10)
  {
    objc_storeStrong(&v10->_progress, progress);
    if (modeCopy)
    {
      v11 = folderCopy;
      [folderCopy fileSystemRepresentation];
      std::allocate_shared[abi:ne200100]<ParallelFolderCopier,std::allocator<ParallelFolderCopier>,char const*,0>();
    }

    v12 = folderCopy;
    [folderCopy fileSystemRepresentation];
    std::allocate_shared[abi:ne200100]<SerialFolderCopier,std::allocator<SerialFolderCopier>,char const*,0>();
  }

  v13 = 0;

  return v13;
}

void __67__FastFolderCopierWrapper_initWithSrcFolder_parallelMode_progress___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = DIForwardLogs();
  if (v3)
  {
    v12 = 0;
    v5 = getDIOSLog(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    *buf = 68157954;
    *&buf[4] = 80;
    LOWORD(v14[0]) = 2080;
    *(v14 + 2) = "[FastFolderCopierWrapper initWithSrcFolder:parallelMode:progress:]_block_invoke";
    LODWORD(v11) = 18;
    v7 = _os_log_send_and_compose_impl(v6, &v12, 0, 0, &dword_248DE0000, v5, 16, "%.*s: Cancelling copy (NSProgress cancel requested)", buf, v11);

    if (v7)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = getDIOSLog(v3, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      *&buf[4] = 80;
      LOWORD(v14[0]) = 2080;
      *(v14 + 2) = "[FastFolderCopierWrapper initWithSrcFolder:parallelMode:progress:]_block_invoke";
      _os_log_impl(&dword_248DE0000, v8, OS_LOG_TYPE_ERROR, "%.*s: Cancelling copy (NSProgress cancel requested)", buf, 0x12u);
    }
  }

  *__error() = v2;
  v9 = *(a1 + 32);
  if (v9)
  {
    objc_msgSend_copier(v9);
    v10 = v14[0];
    *(*buf + 88) = 1;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    MEMORY[0x58] = 1;
  }
}

- (unint64_t)folderSize
{
  objc_msgSend_copier(self, a2);
  v2 = *(v4 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

- (unint64_t)numFiles
{
  objc_msgSend_copier(self, a2);
  v3 = *(v5 + 64);
  v2 = *(v5 + 72);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3);
}

- (BOOL)traverseSrcFolderWithError:(id *)error
{
  objc_msgSend_copier(self, a2);
  BaseFolderCopier::traverseSrcFolder(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)copyWithDstFolder:(id)folder error:(id *)error
{
  v18[4] = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  progress = [(FastFolderCopierWrapper *)self progress];
  [progress setCompletedUnitCount:6];

  v7 = MEMORY[0x277CCAC48];
  progress2 = [(FastFolderCopierWrapper *)self progress];
  v9 = [v7 progressWithTotalUnitCount:100 parent:progress2 pendingUnitCount:94];

  objc_msgSend_copier(self);
  v10 = v16;
  v11 = folderCopy;
  fileSystemRepresentation = [folderCopy fileSystemRepresentation];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &fileSystemRepresentation);
  v12 = v9;
  v18[0] = &unk_285BF4B28;
  v18[1] = v12;
  v18[3] = v18;
  BaseFolderCopier::copy(v10, &__p, v18);
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return 1;
}

- (shared_ptr<BaseFolderCopier>)copier
{
  cntrl = self->_copier.__cntrl_;
  *v2 = self->_copier.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setCopier:(shared_ptr<BaseFolderCopier>)copier
{
  v4 = *copier.__ptr_;
  v3 = *(copier.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_copier.__cntrl_;
  self->_copier.__ptr_ = v4;
  self->_copier.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)copyWithDstFolder:error:
{

  operator delete(self);
}

- (id)copyWithDstFolder:error:
{
  *a2 = &unk_285BF4B28;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (uint64_t)copyWithDstFolder:error:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end