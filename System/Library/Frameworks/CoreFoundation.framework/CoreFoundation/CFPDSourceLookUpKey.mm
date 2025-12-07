@interface CFPDSourceLookUpKey
- (void)dealloc;
@end

@implementation CFPDSourceLookUpKey

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  uncanonicalizedPath = self->uncanonicalizedPath;
  if (uncanonicalizedPath)
  {
    CFRelease(uncanonicalizedPath);
  }

  cloudPath = self->cloudPath;
  if (cloudPath)
  {
    CFRelease(cloudPath);
  }

  v5.receiver = self;
  v5.super_class = CFPDSourceLookUpKey;
  [(CFPDSourceLookUpKey *)&v5 dealloc];
}

@end