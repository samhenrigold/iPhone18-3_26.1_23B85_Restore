@interface _BSEmptyOrderedDictionary
+ (id)emptyDictionary;
@end

@implementation _BSEmptyOrderedDictionary

+ (id)emptyDictionary
{
  objc_opt_self();
  if (qword_1ED4500C8 != -1)
  {
    dispatch_once(&qword_1ED4500C8, &__block_literal_global_240);
  }

  v1 = qword_1ED4500C0;

  return v1;
}

@end