@interface TIAggdReporter
+ (id)getDefaultSoftwareLayout;
+ (id)sharedAggdReporter;
+ (id)singletonInstance;
+ (void)setSharedAggdReporter:(id)reporter;
@end

@implementation TIAggdReporter

+ (id)sharedAggdReporter
{
  if (__testingInstance)
  {
    v2 = __testingInstance;
  }

  else
  {
    v2 = +[TIAggdReporter singletonInstance];
  }

  return v2;
}

+ (id)singletonInstance
{
  if (singletonInstance_onceToken != -1)
  {
    dispatch_once(&singletonInstance_onceToken, &__block_literal_global_705);
  }

  v3 = singletonInstance_singletonInstance;

  return v3;
}

uint64_t __35__TIAggdReporter_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TIAggdReporter);
  v1 = singletonInstance_singletonInstance;
  singletonInstance_singletonInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)getDefaultSoftwareLayout
{
  v2 = __testingInstance;
  if (__testingInstance)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [__testingInstance performSelector:sel_getDefaultSoftwareLayout];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

+ (void)setSharedAggdReporter:(id)reporter
{
  reporterCopy = reporter;
  if (__testingInstance != reporterCopy)
  {
    v5 = reporterCopy;
    objc_storeStrong(&__testingInstance, reporter);
    reporterCopy = v5;
  }
}

@end