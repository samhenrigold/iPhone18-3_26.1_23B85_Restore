@interface _ANEDeviceController
+ (_ANEDeviceController)controllerWithPrivilegedVM:(BOOL)m;
+ (_ANEDeviceController)controllerWithProgramHandle:(unint64_t)handle;
+ (id)sharedPrivilegedConnection;
+ (void)initialize;
- (_ANEDeviceController)initWithANEPrivilegedVM:(BOOL)m;
- (_ANEDeviceController)initWithProgramHandle:(unint64_t)handle priviledged:(BOOL)priviledged;
- (void)start;
- (void)stop;
@end

@implementation _ANEDeviceController

+ (void)initialize
{
  if (+[_ANEDeviceController initialize]::onceToken != -1)
  {
    +[_ANEDeviceController initialize];
  }
}

- (void)start
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __29___ANEDeviceController_start__block_invoke;
  v2[3] = &unk_1E79BA4A8;
  v2[4] = self;
  v2[5] = a2;
  dispatch_sync(gANEControllerQueue, v2);
}

+ (id)sharedPrivilegedConnection
{
  if (+[_ANEDeviceController sharedPrivilegedConnection]::onceToken != -1)
  {
    +[_ANEDeviceController sharedPrivilegedConnection];
  }

  v3 = +[_ANEDeviceController sharedPrivilegedConnection]::conn;

  return v3;
}

- (void)stop
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28___ANEDeviceController_stop__block_invoke;
  v2[3] = &unk_1E79BA4A8;
  v2[4] = self;
  v2[5] = a2;
  dispatch_sync(gANEControllerQueue, v2);
}

+ (_ANEDeviceController)controllerWithProgramHandle:(unint64_t)handle
{
  v3 = [[self alloc] initWithProgramHandle:handle priviledged:0];

  return v3;
}

+ (_ANEDeviceController)controllerWithPrivilegedVM:(BOOL)m
{
  v3 = [[self alloc] initWithANEPrivilegedVM:m];

  return v3;
}

- (_ANEDeviceController)initWithANEPrivilegedVM:(BOOL)m
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _ANEDeviceController;
  v4 = [(_ANEDeviceController *)&v8 init];
  if (v4)
  {
    v5 = +[_ANELog common];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEDeviceController initWithANEPrivilegedVM:];
    }

    os_unfair_lock_lock_with_options();
    v6 = dylib_handle;
    if (dylib_handle || (v6 = dlopen("/System/Library/PrivateFrameworks/ANEServices.framework/ANEServices", 4), (dylib_handle = v6) != 0))
    {
      if (!factory_function_checkPrivilegedVMAccess)
      {
        factory_function_checkPrivilegedVMAccess = dlsym(v6, "ANECheckPrivilegedVMAccess");
      }

      os_unfair_lock_unlock(&_sync_lock);
      if (factory_function_checkPrivilegedVMAccess)
      {
        (factory_function_checkPrivilegedVMAccess)();
      }
    }

    else
    {
      os_unfair_lock_unlock(&_sync_lock);
    }
  }

  return v4;
}

- (_ANEDeviceController)initWithProgramHandle:(unint64_t)handle priviledged:(BOOL)priviledged
{
  v7.receiver = self;
  v7.super_class = _ANEDeviceController;
  result = [(_ANEDeviceController *)&v7 init];
  if (result)
  {
    result->_usecount = 0;
    result->_device = 0;
    result->_programHandle = handle;
    result->_isPrivileged = priviledged;
  }

  return result;
}

- (void)initWithANEPrivilegedVM:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  _os_log_debug_impl(&dword_1AD246000, v3, OS_LOG_TYPE_DEBUG, "%@: ANEDeviceController calling ANECheckPrivilegedVMAccess", v4, 0xCu);
}

@end