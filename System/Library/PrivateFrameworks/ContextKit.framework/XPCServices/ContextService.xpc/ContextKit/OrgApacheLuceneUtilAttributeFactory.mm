@interface OrgApacheLuceneUtilAttributeFactory
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilAttributeFactory

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v5 = OrgLukhnosPortmobileInvokeMethodHandles_publicLookup(v3, v4);
    JreStrongAssign(&qword_100554478, v5);
    v6 = OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_(+[IOSClass voidClass]);
    v7 = JreStrongAssign(&qword_100554480, v6);
    v9 = OrgApacheLuceneUtilAttributeImpl_class_(v7, v8);
    v10 = OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_(v9);
    JreStrongAssign(&qword_100554488, v10);
    v11 = [OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory alloc];
    sub_1000C75EC(&v11->super.super.isa);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY_, v11);
    atomic_store(1u, OrgApacheLuceneUtilAttributeFactory__initialized);
  }
}

@end