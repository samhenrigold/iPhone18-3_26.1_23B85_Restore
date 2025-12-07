@interface CCUICameraModule
- (void)handleTapWithTouchType:(int64_t)type;
- (void)handleTouchDownWithTouchType:(int64_t)type;
@end

@implementation CCUICameraModule

- (void)handleTouchDownWithTouchType:(int64_t)type
{
  v15[3] = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDC0C90];
  if (os_signpost_enabled(*MEMORY[0x29EDC0C90]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_29C95F000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CCUI_MODULE_DID_BEGIN_INTERACTION_EVENT", " enableTelemetry=YES ", buf, 2u);
  }

  kdebug_trace();
  v6 = [MEMORY[0x29EDBA070] numberWithLongLong:mach_absolute_time()];
  v7 = [MEMORY[0x29EDBA070] numberWithLongLong:mach_continuous_time()];
  v8 = *MEMORY[0x29EDBD538];
  v9 = *MEMORY[0x29EDBD548];
  v14[0] = *MEMORY[0x29EDBD540];
  v14[1] = v9;
  v15[0] = v8;
  v15[1] = v6;
  v14[2] = *MEMORY[0x29EDBD550];
  v15[2] = v7;
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  applicationIdentifier = [(CCUIAppLauncherModule *)self applicationIdentifier];
  AVCapturePrewarmWithOptions();

  v12.receiver = self;
  v12.super_class = CCUICameraModule;
  [(CCUIAppLauncherModule *)&v12 handleTouchDownWithTouchType:type];
}

- (void)handleTapWithTouchType:(int64_t)type
{
  v5 = *MEMORY[0x29EDC0C90];
  if (os_signpost_enabled(*MEMORY[0x29EDC0C90]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_29C95F000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CCUI_MODULE_HANDLE_TAP_EVENT", " enableTelemetry=YES ", buf, 2u);
  }

  kdebug_trace();
  v6.receiver = self;
  v6.super_class = CCUICameraModule;
  [(CCUIAppLauncherModule *)&v6 handleTapWithTouchType:type];
}

@end