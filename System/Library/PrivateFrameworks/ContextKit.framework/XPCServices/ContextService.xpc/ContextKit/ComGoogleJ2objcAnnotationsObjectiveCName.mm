@interface ComGoogleJ2objcAnnotationsObjectiveCName
+ (id)__annotations;
- (ComGoogleJ2objcAnnotationsObjectiveCName)initWithValue:(id)value;
- (id)annotationType;
@end

@implementation ComGoogleJ2objcAnnotationsObjectiveCName

- (ComGoogleJ2objcAnnotationsObjectiveCName)initWithValue:(id)value
{
  v6.receiver = self;
  v6.super_class = ComGoogleJ2objcAnnotationsObjectiveCName;
  v4 = [(ComGoogleJ2objcAnnotationsObjectiveCName *)&v6 init];
  if (v4)
  {
    v4->value_ = value;
  }

  return v4;
}

- (id)annotationType
{
  if (qword_100554B90 != -1)
  {
    sub_100185EE8();
  }

  return qword_100554B88;
}

+ (id)__annotations
{
  v2 = [JavaLangAnnotationTarget alloc];
  v4 = v2;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    v2 = sub_10014C018();
  }

  v8[0] = JavaLangAnnotationElementTypeEnum_values_[0];
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    v2 = sub_10014C018();
  }

  v8[1] = qword_100558238;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    v2 = sub_10014C018();
  }

  v8[2] = qword_100558248;
  if ((atomic_load_explicit(JavaLangAnnotationElementTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    v2 = sub_10014C018();
  }

  v8[3] = qword_100558260;
  v9 = [(JavaLangAnnotationTarget *)v4 initWithValue:[IOSObjectArray arrayWithObjects:v8 count:4 type:NSObject_class_(v2, v3)]];
  v5 = [JavaLangAnnotationRetention alloc];
  if ((atomic_load_explicit(JavaLangAnnotationRetentionPolicyEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100185EFC();
  }

  v10 = [(JavaLangAnnotationRetention *)v5 initWithValue:qword_100557C78];
  return [IOSObjectArray arrayWithObjects:&v9 count:2 type:JavaLangAnnotationAnnotation_class_(v10, v6)];
}

@end