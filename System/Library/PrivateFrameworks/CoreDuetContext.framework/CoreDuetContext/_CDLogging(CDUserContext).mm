@interface _CDLogging(CDUserContext)
+ (id)mdcsChannel;
@end

@implementation _CDLogging(CDUserContext)

+ (id)mdcsChannel
{
  if (mdcsChannel_onceToken != -1)
  {
    +[_CDLogging(CDUserContext) mdcsChannel];
  }

  v2 = mdcsChannel_mdcsChannel;

  return v2;
}

@end