@interface NSUserDefaults(JFX)
- (uint64_t)jfxBoolForKey:()JFX defaultValue:;
@end

@implementation NSUserDefaults(JFX)

- (uint64_t)jfxBoolForKey:()JFX defaultValue:
{
  v5 = [self objectForKey:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

@end