@interface BCSUserDefaults
+ (id)sharedDefaults;
@end

@implementation BCSUserDefaults

+ (id)sharedDefaults
{
  v2 = _MergedGlobals_36;
  if (!_MergedGlobals_36)
  {
    if (qword_280BCF550 != -1)
    {
      dispatch_once(&qword_280BCF550, &__block_literal_global_0);
    }

    v2 = _MergedGlobals_36;
  }

  return v2;
}

uint64_t __33__BCSUserDefaults_sharedDefaults__block_invoke()
{
  v0 = objc_alloc_init(BCSUserDefaults);
  v1 = _MergedGlobals_36;
  _MergedGlobals_36 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end