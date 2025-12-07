@interface _EXAppExtensionBrowserConfiguration
- (NSArray)extensionPointIdentifiers;
- (void)setExtensionPointIdentifiers:(id)identifiers;
@end

@implementation _EXAppExtensionBrowserConfiguration

- (NSArray)extensionPointIdentifiers
{

  v2 = sub_1D2A00498();

  return v2;
}

- (void)setExtensionPointIdentifiers:(id)identifiers
{
  *(self + OBJC_IVAR____EXAppExtensionBrowserConfiguration_extensionPointIdentifiers) = sub_1D2A004A8();
}

@end