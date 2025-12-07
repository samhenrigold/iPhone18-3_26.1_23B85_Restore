@interface DeferredAuthCPServiceWrapper
- (DeferredAuthCPServiceWrapper)initWithIOService:(unsigned int)service withMgr:(id)mgr;
@end

@implementation DeferredAuthCPServiceWrapper

- (DeferredAuthCPServiceWrapper)initWithIOService:(unsigned int)service withMgr:(id)mgr
{
  v4 = *&service;
  mgrCopy = mgr;
  v10.receiver = self;
  v10.super_class = DeferredAuthCPServiceWrapper;
  v7 = [(DeferredAuthCPServiceWrapper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(DeferredAuthCPServiceWrapper *)v7 setService:v4];
    [(DeferredAuthCPServiceWrapper *)v8 setMgr:mgrCopy];
  }

  return v8;
}

@end