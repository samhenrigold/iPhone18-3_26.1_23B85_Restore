@interface SACSSymbolOwnerWrapper
- (uint64_t)symbolOwner;
- (void)dealloc;
@end

@implementation SACSSymbolOwnerWrapper

- (void)dealloc
{
  CSRelease();
  v3.receiver = self;
  v3.super_class = SACSSymbolOwnerWrapper;
  [(SACSSymbolOwnerWrapper *)&v3 dealloc];
}

- (uint64_t)symbolOwner
{
  if (result)
  {
    objc_copyStruct(&v1, (result + 16), 16, 1, 0);
    return v1;
  }

  return result;
}

@end