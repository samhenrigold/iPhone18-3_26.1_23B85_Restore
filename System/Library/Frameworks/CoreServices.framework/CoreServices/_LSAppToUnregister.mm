@interface _LSAppToUnregister
- (void)initWithContext:(uint64_t)context bundleUnit:(uint64_t)unit bundleData:;
@end

@implementation _LSAppToUnregister

- (void)initWithContext:(uint64_t)context bundleUnit:(uint64_t)unit bundleData:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = _LSAppToUnregister;
  v7 = objc_msgSendSuper2(&v13, sel_init);
  if (v7)
  {
    v8 = [LSApplicationProxy applicationProxyWithBundleUnitID:context withContext:a2];
    v9 = v7[1];
    v7[1] = v8;

    [(_LSDatabase *)*a2 store];
    v10 = _CSStringCopyCFString();
    v11 = v7[2];
    v7[2] = v10;

    *(v7 + 24) = (*(unit + 172) & 0x40000) != 0;
  }

  return v7;
}

@end