@interface MRAppDelegate
- (void)_closeInterposeDylib;
- (void)dealloc;
- (void)startupAndCreateViewController:(BOOL)controller;
@end

@implementation MRAppDelegate

- (void)dealloc
{
  [(MRAppDelegate *)self _closeInterposeDylib];
  v3.receiver = self;
  v3.super_class = MRAppDelegate;
  [(MRAppDelegate *)&v3 dealloc];
}

- (void)_closeInterposeDylib
{
  interposeDylib = self->_interposeDylib;
  if (interposeDylib)
  {
    dlclose(interposeDylib);
    self->_interposeDylib = 0;
  }
}

- (void)startupAndCreateViewController:(BOOL)controller
{
  self->_shouldCreateViewController = controller;
  v4 = +[NSProcessInfo processInfo];
  environment = [v4 environment];

  v5 = [environment objectForKeyedSubscript:@"METAL_LOAD_INTERPOSER"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = DYGetMTLInterposeDylibPath();
    v8 = [environment objectForKeyedSubscript:@"GT_HOST_URL_MTL"];
    v9 = "DYGetMTLGuestAppClient";
  }

  else
  {
    v7 = DYGetGLInterposeDylibPath();
    v8 = [environment objectForKeyedSubscript:@"GT_HOST_URL_GL"];
    v9 = "DYGetGLGuestAppClient";
  }

  v10 = v8;
  if (!self->_interposeDylib)
  {
    v11 = dlopen(v7, 9);
    self->_interposeDylib = v11;
    if (!v11)
    {
      v15 = dlerror();
      dy_abort("failed to dlopen interpose dylib: %s", v15);
      goto LABEL_20;
    }
  }

  if (!v10)
  {
    dy_abort("no transport url is provided");
LABEL_20:
    __break(1u);
    return;
  }

  v12 = dlsym(0xFFFFFFFFFFFFFFFELL, v9);
  if (!v12)
  {
    __assert_rtn("[MRAppDelegate startupAndCreateViewController:]", &unk_100004CE1, 0, "GetGuestClient != NULL");
  }

  v13 = v12();
  if (!v13)
  {
    __assert_rtn("[MRAppDelegate startupAndCreateViewController:]", &unk_100004CE1, 0, "appClient != nil");
  }

  v14 = +[MRReplayController sharedController];
  if (([v14 initializeTransportWith:v13] & 1) == 0)
  {
    dy_abort("transport could not be initialized");
    goto LABEL_20;
  }

  [v14 setDelegate:self];
  if (([v14 informReady] & 1) == 0)
  {
    dy_abort("inform ready failed");
    goto LABEL_20;
  }
}

@end