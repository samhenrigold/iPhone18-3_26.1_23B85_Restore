@interface AMSDeviceState
+ (int)ams_deviceUnlockedSinceBoot;
@end

@implementation AMSDeviceState

+ (int)ams_deviceUnlockedSinceBoot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = _MergedGlobals_103;
  v10 = _MergedGlobals_103;
  if (!_MergedGlobals_103)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v6[3] = &unk_1E73B3880;
    v6[4] = &v7;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v4 = dlerror();
    v5 = abort_report_np("%s", v4);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

@end