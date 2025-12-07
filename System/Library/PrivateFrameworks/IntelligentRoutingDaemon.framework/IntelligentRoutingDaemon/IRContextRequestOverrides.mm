@interface IRContextRequestOverrides
- (IRContextRequestOverrides)initWithOverrideAppInFocusWindow:(BOOL)window overrideBundleId:(id)id;
@end

@implementation IRContextRequestOverrides

- (IRContextRequestOverrides)initWithOverrideAppInFocusWindow:(BOOL)window overrideBundleId:(id)id
{
  windowCopy = window;
  idCopy = id;
  v10.receiver = self;
  v10.super_class = IRContextRequestOverrides;
  v7 = [(IRContextRequestOverrides *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(IRContextRequestOverrides *)v7 setOverrideBundleId:idCopy];
    [(IRContextRequestOverrides *)v8 setOverrideAppInFocusWindow:windowCopy];
  }

  return v8;
}

@end