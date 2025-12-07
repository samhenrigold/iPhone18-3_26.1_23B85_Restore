@interface APWebProcessPlugIn
- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller;
- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object;
- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller;
@end

@implementation APWebProcessPlugIn

- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object
{
  v5 = sub_5A4C(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[APWebProcessPlugIn] webProcessPlugIn:initializeWithObject:", v7, 2u);
  }

  v6 = +[NSMapTable strongToStrongObjectsMapTable];
  [(APWebProcessPlugIn *)self setBrowserContextControllersToLoadDelegates:v6];
}

- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v6 = sub_5A4C(controllerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[APWebProcessPlugIn] webProcessPlugIn:didCreateBrowserContextController:", v15, 2u);
  }

  v7 = objc_alloc_init(APWebProcessPlugInLoadDelegate);
  browserContextControllersToLoadDelegates = [(APWebProcessPlugIn *)self browserContextControllersToLoadDelegates];
  [browserContextControllersToLoadDelegates setObject:v7 forKey:controllerCopy];

  v9 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___APWebProcessProxyProtocol];
  _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:v7 interface:v9];

  v11 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___APWebProcessDelegate];
  _remoteObjectRegistry2 = [controllerCopy _remoteObjectRegistry];
  v13 = [_remoteObjectRegistry2 remoteObjectProxyWithInterface:v11];
  [(APWebProcessPlugInLoadDelegate *)v7 setWebProcessDelegate:v13];

  [controllerCopy setLoadDelegate:v7];
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)v7 webProcessDelegate];
  [webProcessDelegate webProcessPlugInDidCreateBrowserContextController];
}

- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v6 = sub_5A4C(controllerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[APWebProcessPlugIn] webProcessPlugIn:willDestroyBrowserContextController:", v14, 2u);
  }

  browserContextControllersToLoadDelegates = [(APWebProcessPlugIn *)self browserContextControllersToLoadDelegates];
  v8 = [browserContextControllersToLoadDelegates objectForKey:controllerCopy];

  if (v8)
  {
    webProcessDelegate = [v8 webProcessDelegate];
    [webProcessDelegate webProcessPlugInWillDestroyBrowserContextController];

    [v8 setWebProcessDelegate:0];
    v11 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___APWebProcessProxyProtocol];
    _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
    [_remoteObjectRegistry unregisterExportedObject:v8 interface:v11];

    browserContextControllersToLoadDelegates2 = [(APWebProcessPlugIn *)self browserContextControllersToLoadDelegates];
    [browserContextControllersToLoadDelegates2 removeObjectForKey:controllerCopy];
  }

  else
  {
    v11 = sub_5A4C(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_6F00(v11);
    }
  }
}

@end