@interface DeferredEAServiceWrapper
- (DeferredEAServiceWrapper)initWithIOService:(unsigned int)service withMgr:(id)mgr;
@end

@implementation DeferredEAServiceWrapper

- (DeferredEAServiceWrapper)initWithIOService:(unsigned int)service withMgr:(id)mgr
{
  v4 = *&service;
  mgrCopy = mgr;
  v10.receiver = self;
  v10.super_class = DeferredEAServiceWrapper;
  v7 = [(DeferredEAServiceWrapper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(DeferredEAServiceWrapper *)v7 setService:v4];
    [(DeferredEAServiceWrapper *)v8 setMgr:mgrCopy];
  }

  return v8;
}

@end