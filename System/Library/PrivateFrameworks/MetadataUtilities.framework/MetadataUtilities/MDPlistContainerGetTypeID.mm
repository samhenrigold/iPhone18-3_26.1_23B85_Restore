@interface MDPlistContainerGetTypeID
@end

@implementation MDPlistContainerGetTypeID

uint64_t ___MDPlistContainerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kMDPlistContainerTypeID = result;
  return result;
}

@end