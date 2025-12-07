@interface PSUIDevicePasscodeState
+ (id)sharedInstance;
- (BOOL)isPasscodeSet;
- (PSUIDevicePasscodeState)init;
- (id)initPrivate;
@end

@implementation PSUIDevicePasscodeState

+ (id)sharedInstance
{
  if (qword_28156A6E0 != -1)
  {
    dispatch_once(&qword_28156A6E0, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_62;

  return v3;
}

uint64_t __41__PSUIDevicePasscodeState_sharedInstance__block_invoke()
{
  _MergedGlobals_62 = [[PSUIDevicePasscodeState alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = PSUIDevicePasscodeState;
  return [(PSUIDevicePasscodeState *)&v3 init];
}

- (PSUIDevicePasscodeState)init
{
  getLogger = [(PSUIDevicePasscodeState *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (BOOL)isPasscodeSet
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MKBGetDeviceLockState();
  getLogger = [(PSUIDevicePasscodeState *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    v8 = 67109120;
    LODWORD(v9) = v3;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "MKBGetDeviceLockState : %d", &v8, 8u);
  }

  getLogger2 = [(PSUIDevicePasscodeState *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEBUG))
  {
    v7 = "OFF";
    if (v3 < 3)
    {
      v7 = "ON";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_debug_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEBUG, "Passcode : %s", &v8, 0xCu);
  }

  return v3 < 3;
}

@end