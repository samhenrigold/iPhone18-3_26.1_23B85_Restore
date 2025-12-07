@interface JavaLangAnnotationTarget
+ (id)__annotations;
- (JavaLangAnnotationTarget)initWithValue:(id)value;
- (id)annotationType;
@end

@implementation JavaLangAnnotationTarget

- (JavaLangAnnotationTarget)initWithValue:(id)value
{
  v6.receiver = self;
  v6.super_class = JavaLangAnnotationTarget;
  v4 = [(JavaLangAnnotationTarget *)&v6 init];
  if (v4)
  {
    v4->value_ = value;
  }

  return v4;
}

- (id)annotationType
{
  if (qword_100554F90 != -1)
  {
    sub_1001F1A64();
  }

  return qword_100554F88;
}

+ (id)__annotations
{
  v9[0] = objc_alloc_init(JavaLangAnnotationDocumented);
  v2 = [JavaLangAnnotationRetention alloc];
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C00C();
  }

  v9[1] = [(JavaLangAnnotationRetention *)v2 initWithValue:qword_100557C78];
  v3 = [JavaLangAnnotationTarget alloc];
  v5 = v3;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    v3 = sub_10014C018();
  }

  v8 = qword_100558258;
  v10 = [(JavaLangAnnotationTarget *)v5 initWithValue:[IOSObjectArray arrayWithObjects:&v8 count:1 type:NSObject_class_(v3, v4)]];
  return [IOSObjectArray arrayWithObjects:v9 count:3 type:JavaLangAnnotationAnnotation_class_(v10, v6)];
}

@end