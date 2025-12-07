@interface SiriTTSDaemonSession(AFAddition)
+ (id)afSharedSession;
@end

@implementation SiriTTSDaemonSession(AFAddition)

+ (id)afSharedSession
{
  if (afSharedSession_onceToken != -1)
  {
    +[SiriTTSDaemonSession(AFAddition) afSharedSession];
  }

  v2 = afSharedSession_session;

  return v2;
}

@end