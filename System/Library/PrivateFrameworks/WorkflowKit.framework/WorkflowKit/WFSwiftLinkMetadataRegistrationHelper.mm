@interface WFSwiftLinkMetadataRegistrationHelper
+ (BOOL)registerWithBundle:(id)bundle forBundleIdentifier:(id)identifier error:(id *)error;
@end

@implementation WFSwiftLinkMetadataRegistrationHelper

+ (BOOL)registerWithBundle:(id)bundle forBundleIdentifier:(id)identifier error:(id *)error
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  bundleCopy = bundle;
  sub_1CA285F3C(bundleCopy, v6, v8);

  return 1;
}

@end