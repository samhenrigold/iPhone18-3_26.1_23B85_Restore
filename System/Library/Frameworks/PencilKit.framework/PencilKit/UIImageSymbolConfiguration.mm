@interface UIImageSymbolConfiguration
+ (uint64_t)_pk_defaultImageSymbolConfiguration;
@end

@implementation UIImageSymbolConfiguration

+ (uint64_t)_pk_defaultImageSymbolConfiguration
{
  objc_opt_self();
  v1 = MEMORY[0x1E69DCAD8];
  if (qword_1ED6A4FE0 != -1)
  {
    dispatch_once(&qword_1ED6A4FE0, &__block_literal_global_13);
  }

  v2 = *&_MergedGlobals_123;
  objc_opt_self();
  if (PKIsVisionDevice())
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return [v1 configurationWithPointSize:6 weight:v3 scale:v2];
}

@end