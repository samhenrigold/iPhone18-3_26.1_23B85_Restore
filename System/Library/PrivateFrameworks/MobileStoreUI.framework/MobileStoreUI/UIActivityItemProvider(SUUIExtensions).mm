@interface UIActivityItemProvider(SUUIExtensions)
+ (uint64_t)activityTypeShouldProvideImage:()SUUIExtensions;
@end

@implementation UIActivityItemProvider(SUUIExtensions)

+ (uint64_t)activityTypeShouldProvideImage:()SUUIExtensions
{
  v3 = a3;
  isEqualToString = objc_msgSend_isEqualToString_(v3);
  v5 = isEqualToString | objc_msgSend_isEqualToString_(v3);
  v6 = objc_msgSend_isEqualToString_(v3);
  v7 = v5 | v6 | objc_msgSend_isEqualToString_(v3);
  v8 = objc_msgSend_isEqualToString_(v3);

  return (v7 | v8) ^ 1u;
}

@end