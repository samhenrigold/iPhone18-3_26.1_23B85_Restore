@interface SSVFairPlaySAPSession(ISFairPlaySAPSession)
+ (id)sharedDefaultSession;
+ (id)sharedPrimeSession;
@end

@implementation SSVFairPlaySAPSession(ISFairPlaySAPSession)

+ (id)sharedDefaultSession
{
  if (sharedDefaultSession_sOnce != -1)
  {
    +[SSVFairPlaySAPSession(ISFairPlaySAPSession) sharedDefaultSession];
  }

  v2 = sharedDefaultSession_sSession;

  return v2;
}

+ (id)sharedPrimeSession
{
  if (sharedPrimeSession_sOnce != -1)
  {
    +[SSVFairPlaySAPSession(ISFairPlaySAPSession) sharedPrimeSession];
  }

  v2 = sharedPrimeSession_sSession;

  return v2;
}

@end