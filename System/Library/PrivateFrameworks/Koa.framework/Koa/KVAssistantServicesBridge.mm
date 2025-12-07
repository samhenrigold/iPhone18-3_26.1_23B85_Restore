@interface KVAssistantServicesBridge
+ (BOOL)isASRSupported;
+ (BOOL)isSiriMUXSupported;
+ (BOOL)isSiriUODSupported;
@end

@implementation KVAssistantServicesBridge

+ (BOOL)isASRSupported
{
  if (sub_2559C9D60())
  {
    return 1;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = off_27F7DA3F0;
  v10 = off_27F7DA3F0;
  if (!off_27F7DA3F0)
  {
    v4 = sub_2559C9EB4();
    v8[3] = dlsym(v4, "AFOfflineDictationCapable");
    off_27F7DA3F0 = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v3();
}

+ (BOOL)isSiriMUXSupported
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = off_27F7DA3E8;
  v10 = off_27F7DA3E8;
  if (!off_27F7DA3E8)
  {
    v3 = sub_2559C9EB4();
    v8[3] = dlsym(v3, "AFDeviceSupportsSiriMUX");
    off_27F7DA3E8 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2();
}

+ (BOOL)isSiriUODSupported
{
  if (sub_2559C9D60())
  {
    return 1;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = off_27F7DA3E0;
  v10 = off_27F7DA3E0;
  if (!off_27F7DA3E0)
  {
    v4 = sub_2559C9EB4();
    v8[3] = dlsym(v4, "AFShouldRunAsrOnServerForUOD");
    off_27F7DA3E0 = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v3();
}

@end