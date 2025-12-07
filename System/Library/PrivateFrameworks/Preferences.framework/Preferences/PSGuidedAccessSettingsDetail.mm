@interface PSGuidedAccessSettingsDetail
+ (unint64_t)guidedAccessAvailability;
+ (void)enterGuidedAccessMode;
@end

@implementation PSGuidedAccessSettingsDetail

+ (void)enterGuidedAccessMode
{
  if (+[PSGuidedAccessSettingsDetail guidedAccessHasPasscode])
  {

    MEMORY[0x1EEE60AD8]();
  }
}

+ (unint64_t)guidedAccessAvailability
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAXGuidedAccessGetAvailabilitySymbolLoc_ptr;
  v10 = getAXGuidedAccessGetAvailabilitySymbolLoc_ptr;
  if (!getAXGuidedAccessGetAvailabilitySymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAXGuidedAccessGetAvailabilitySymbolLoc_block_invoke;
    v6[3] = &unk_1E71DBC78;
    v6[4] = &v7;
    __getAXGuidedAccessGetAvailabilitySymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    [PSContactsAuthorizationLevelController dealloc];
    v5 = v4;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

@end