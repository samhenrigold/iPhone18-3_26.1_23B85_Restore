@interface AppAnalytics
- (AppAnalytics)initWithWorkspace:(id)workspace withCache:(BOOL)cache;
@end

@implementation AppAnalytics

- (AppAnalytics)initWithWorkspace:(id)workspace withCache:(BOOL)cache
{
  cacheCopy = cache;
  workspaceCopy = workspace;
  v7 = +[SFApp entityName];
  v10.receiver = self;
  v10.super_class = AppAnalytics;
  v8 = [(ObjectAnalytics *)&v10 initWithWorkspace:workspaceCopy entityName:v7 withCache:cacheCopy];

  return v8;
}

@end