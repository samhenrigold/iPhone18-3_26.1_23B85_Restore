@interface ATXLocationManager(Singleton)
+ (id)sharedInstance;
@end

@implementation ATXLocationManager(Singleton)

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[ATXLocationManager(Singleton) sharedInstance];
  }

  v2 = sharedInstance_instance_1;

  return v2;
}

@end