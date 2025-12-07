@interface NSURLSession(GKAdditions)
+ (id)_gkForClientProcess;
@end

@implementation NSURLSession(GKAdditions)

+ (id)_gkForClientProcess
{
  if (_gkForClientProcess_sDispatchOnceToken != -1)
  {
    +[NSURLSession(GKAdditions) _gkForClientProcess];
  }

  v2 = _gkForClientProcess_session;

  return v2;
}

@end