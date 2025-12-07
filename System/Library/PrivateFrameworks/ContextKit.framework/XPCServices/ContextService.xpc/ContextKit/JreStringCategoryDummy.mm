@interface JreStringCategoryDummy
+ (void)initialize;
@end

@implementation JreStringCategoryDummy

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = JreStrongAssignAndConsume(&NSString_CASE_INSENSITIVE_ORDER_, objc_alloc_init(JavaLangString_CaseInsensitiveComparator));
    v4 = [IOSObjectArray newArrayWithLength:0 type:JavaIoObjectStreamField_class_(v2, v3)];
    JreStrongAssignAndConsume(&NSString_serialPersistentFields_, v4);
    atomic_store(1u, &NSString__initialized);
  }
}

@end