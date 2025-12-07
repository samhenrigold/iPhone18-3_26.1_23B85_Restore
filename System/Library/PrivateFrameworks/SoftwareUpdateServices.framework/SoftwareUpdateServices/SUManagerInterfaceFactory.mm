@interface SUManagerInterfaceFactory
+ (id)sharedInstance;
@end

@implementation SUManagerInterfaceFactory

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[SUManagerInterfaceFactory sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

uint64_t __43__SUManagerInterfaceFactory_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUManagerPolicy);
  v1 = sharedInstance___instance_0;
  sharedInstance___instance_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end