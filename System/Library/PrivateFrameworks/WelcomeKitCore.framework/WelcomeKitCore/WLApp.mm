@interface WLApp
- (WLApp)initWithBundleIdentifier:(id)identifier appStoreIdentifier:(id)storeIdentifier isFree:(BOOL)free;
@end

@implementation WLApp

- (WLApp)initWithBundleIdentifier:(id)identifier appStoreIdentifier:(id)storeIdentifier isFree:(BOOL)free
{
  freeCopy = free;
  identifierCopy = identifier;
  storeIdentifierCopy = storeIdentifier;
  v13.receiver = self;
  v13.super_class = WLApp;
  v10 = [(WLApp *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(WLApp *)v10 setBundleIdentifier:identifierCopy];
    [(WLApp *)v11 setAppStoreIdentifier:storeIdentifierCopy];
    [(WLApp *)v11 setIsFree:freeCopy];
  }

  return v11;
}

@end