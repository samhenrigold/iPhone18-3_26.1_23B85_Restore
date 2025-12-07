@interface REDataSourceLoaderConfiguration
+ (id)sharedInstance;
- (BOOL)shouldLoadBundleClass:(Class)class forKey:(id)key;
- (Class)desiredClassFromBundle:(id)bundle forKey:(id)key;
@end

@implementation REDataSourceLoaderConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[REDataSourceLoaderConfiguration sharedInstance];
  }

  v3 = sharedInstance_Shared;

  return v3;
}

uint64_t __49__REDataSourceLoaderConfiguration_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Shared;
  sharedInstance_Shared = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (Class)desiredClassFromBundle:(id)bundle forKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    keyCopy = @"REPrimaryDataSourceKey";
  }

  v6 = [bundle dataSourceClassForKey:keyCopy];

  return v6;
}

- (BOOL)shouldLoadBundleClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    keyCopy = @"REPrimaryDataSourceKey";
  }

  if (([(__CFString *)keyCopy isEqualToString:@"REPrimaryDataSourceKey"]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(__CFString *)keyCopy isEqualToString:@"REDemoDataSourceKey"];
  }

  return v5;
}

@end