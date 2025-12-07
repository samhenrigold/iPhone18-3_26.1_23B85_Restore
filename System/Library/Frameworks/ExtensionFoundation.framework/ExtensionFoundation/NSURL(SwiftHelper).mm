@interface NSURL(SwiftHelper)
- (CFURLRef)_EX_URLForBundleExecutable;
@end

@implementation NSURL(SwiftHelper)

- (CFURLRef)_EX_URLForBundleExecutable
{
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v2 = Unique;
    v3 = CFBundleCopyExecutableURL(Unique);
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end