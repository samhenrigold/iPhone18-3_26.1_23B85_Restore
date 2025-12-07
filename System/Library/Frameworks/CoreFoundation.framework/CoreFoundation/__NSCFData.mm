@interface __NSCFData
- (BOOL)isEqual:(id)equal;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation __NSCFData

- (Class)classForCoder
{
  __CFDataMtbl(self);

  return objc_opt_self();
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, equal) != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = *MEMORY[0x1E69E9840];
  if ((__CFDataMtbl(self) & 1) != 0 || !_CFExecutableLinkedOnOrAfter(6uLL))
  {
    v6.receiver = self;
    v6.super_class = __NSCFData;
    return [(__NSCFData *)&v6 copyWithZone:zone];
  }

  else
  {

    return _CFNonObjCRetain(self);
  }
}

@end