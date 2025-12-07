@interface DiskImageParamsLocked_XPC
- (DiskImageParamsLocked_XPC)initWithBackendXPC:(id)c;
- (unique_ptr<const)getImageInfoWithExtra:(BOOL)extra error:(id *)error;
@end

@implementation DiskImageParamsLocked_XPC

- (DiskImageParamsLocked_XPC)initWithBackendXPC:(id)c
{
  cCopy = c;
  v7.receiver = self;
  v7.super_class = DiskImageParamsLocked_XPC;
  v5 = [(DiskImageParamsXPC *)&v7 initWithBackendXPC:cCopy];
  if (v5)
  {
    -[DiskImageParamsXPC setBlockSize:](v5, "setBlockSize:", *(*[cCopy cryptoHeader] + 52));
  }

  return v5;
}

- (unique_ptr<const)getImageInfoWithExtra:(BOOL)extra error:(id *)error
{
  [(DiskImageParamsXPC *)self backendXPC:extra];
  [objc_claimAutoreleasedReturnValue() cryptoHeader];
  operator new();
}

@end