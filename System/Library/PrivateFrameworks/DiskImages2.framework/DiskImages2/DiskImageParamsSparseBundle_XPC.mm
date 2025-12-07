@interface DiskImageParamsSparseBundle_XPC
- (unint64_t)numBlocks;
- (unique_ptr<DiskImage,)createSinkDiskImage;
@end

@implementation DiskImageParamsSparseBundle_XPC

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  if (backendXPC)
  {
    objc_msgSend_backend(backendXPC);
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  [(DiskImageParamsXPC *)self blockSize:0];
  operator new();
}

- (unint64_t)numBlocks
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v4 = backendXPC;
  if (backendXPC)
  {
    objc_msgSend_backend(backendXPC);
    backendXPC = v8;
  }

  else
  {
    v9 = 0;
  }

  v5 = (*(*backendXPC + 40))(backendXPC);
  blockSize = [(DiskImageParamsXPC *)self blockSize];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v5 / blockSize;
}

@end