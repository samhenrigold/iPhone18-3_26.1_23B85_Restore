@interface NPHSharedUtilities
+ (BOOL)isActiveDeviceTinker;
+ (BOOL)isActiveWatchChinaRegionCellular;
+ (BOOL)pairedDeviceHasHomeButton;
@end

@implementation NPHSharedUtilities

+ (BOOL)isActiveDeviceTinker
{
  v2 = +[PDRDevice activeDevice];
  isTinker = [v2 isTinker];

  v5 = nph_general_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[NPHSharedUtilities isActiveDeviceTinker]";
    v9 = 1024;
    v10 = isTinker;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s : %d", &v7, 0x12u);
  }

  return isTinker;
}

+ (BOOL)pairedDeviceHasHomeButton
{
  if (qword_C670 != -1)
  {
    sub_341C();
  }

  return byte_C678;
}

+ (BOOL)isActiveWatchChinaRegionCellular
{
  v2 = +[PDRDevice activeDevice];
  v3 = [v2 valueForProperty:PDRDevicePropertyKeyGreenTeaDevice];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end