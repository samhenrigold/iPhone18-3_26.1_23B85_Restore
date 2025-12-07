@interface CKKnowledgeStoreUtils
+ (BOOL)isHexaKey:(id)key;
@end

@implementation CKKnowledgeStoreUtils

+ (BOOL)isHexaKey:(id)key
{
  v3 = sub_1C86F8EFC();
  v5 = static CKKnowledgeStoreUtils.isHexaKey(_:)(v3, v4);

  return v5 & 1;
}

@end