@interface JavaLangSafeVarargs
+ (id)__annotations;
- (id)annotationType;
@end

@implementation JavaLangSafeVarargs

- (id)annotationType
{
  if (qword_100556910 != -1)
  {
    sub_100272734();
  }

  return qword_100556908;
}

+ (id)__annotations
{
  v11 = objc_alloc_init(JavaLangAnnotationDocumented);
  v2 = [JavaLangAnnotationRetention alloc];
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C00C();
  }

  v12 = [(JavaLangAnnotationRetention *)v2 initWithValue:qword_100557C78];
  v3 = [JavaLangAnnotationTarget alloc];
  v5 = v3;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    v3 = sub_10014C018();
  }

  v9 = qword_100558248;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    v3 = sub_10014C018();
  }

  v10 = qword_100558238;
  v6 = [IOSObjectArray arrayWithObjects:&v9 count:2 type:NSObject_class_(v3, v4)];
  v13 = [(JavaLangAnnotationTarget *)v5 initWithValue:v6, v9, v10, v11, v12];
  return [IOSObjectArray arrayWithObjects:&v11 count:3 type:JavaLangAnnotationAnnotation_class_(v13, v7)];
}

@end