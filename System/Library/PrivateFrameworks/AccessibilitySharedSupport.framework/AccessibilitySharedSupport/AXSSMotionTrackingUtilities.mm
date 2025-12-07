@interface AXSSMotionTrackingUtilities
+ (BOOL)_axss_iAPInterfaceExistsForHIDDeviceService:(unsigned int)service;
+ (BOOL)axss_HIDDeviceIsMFiAuthenticated:(id)authenticated;
+ (NSDictionary)axss_frequencyElementMatchingDict;
+ (NSDictionary)axss_statusElementMatchingDict;
+ (NSDictionary)axss_xPositionElementMatchingDict;
+ (NSDictionary)axss_yPositionElementMatchingDict;
@end

@implementation AXSSMotionTrackingUtilities

+ (NSDictionary)axss_xPositionElementMatchingDict
{
  if (axss_xPositionElementMatchingDict_onceToken != -1)
  {
    +[AXSSMotionTrackingUtilities axss_xPositionElementMatchingDict];
  }

  v3 = axss_xPositionElementMatchingDict_s_XPositionElementMatchingDict;

  return v3;
}

void __64__AXSSMotionTrackingUtilities_axss_xPositionElementMatchingDict__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"UsagePage";
  v2[1] = @"Usage";
  v3[0] = &unk_1F4066990;
  v3[1] = &unk_1F40669A8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = axss_xPositionElementMatchingDict_s_XPositionElementMatchingDict;
  axss_xPositionElementMatchingDict_s_XPositionElementMatchingDict = v0;
}

+ (NSDictionary)axss_yPositionElementMatchingDict
{
  if (axss_yPositionElementMatchingDict_onceToken != -1)
  {
    +[AXSSMotionTrackingUtilities axss_yPositionElementMatchingDict];
  }

  v3 = axss_yPositionElementMatchingDict_s_YPositionElementMatchingDict;

  return v3;
}

void __64__AXSSMotionTrackingUtilities_axss_yPositionElementMatchingDict__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"UsagePage";
  v2[1] = @"Usage";
  v3[0] = &unk_1F4066990;
  v3[1] = &unk_1F40669C0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = axss_yPositionElementMatchingDict_s_YPositionElementMatchingDict;
  axss_yPositionElementMatchingDict_s_YPositionElementMatchingDict = v0;
}

+ (NSDictionary)axss_statusElementMatchingDict
{
  if (axss_statusElementMatchingDict_onceToken != -1)
  {
    +[AXSSMotionTrackingUtilities axss_statusElementMatchingDict];
  }

  v3 = axss_statusElementMatchingDict_s_YPositionElementMatchingDict;

  return v3;
}

void __61__AXSSMotionTrackingUtilities_axss_statusElementMatchingDict__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"UsagePage";
  v2[1] = @"Usage";
  v3[0] = &unk_1F4066990;
  v3[1] = &unk_1F40669D8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = axss_statusElementMatchingDict_s_YPositionElementMatchingDict;
  axss_statusElementMatchingDict_s_YPositionElementMatchingDict = v0;
}

+ (NSDictionary)axss_frequencyElementMatchingDict
{
  if (axss_frequencyElementMatchingDict_onceToken != -1)
  {
    +[AXSSMotionTrackingUtilities axss_frequencyElementMatchingDict];
  }

  v3 = axss_frequencyElementMatchingDict_s_YPositionElementMatchingDict;

  return v3;
}

void __64__AXSSMotionTrackingUtilities_axss_frequencyElementMatchingDict__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"UsagePage";
  v2[1] = @"Usage";
  v3[0] = &unk_1F4066990;
  v3[1] = &unk_1F40669F0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = axss_frequencyElementMatchingDict_s_YPositionElementMatchingDict;
  axss_frequencyElementMatchingDict_s_YPositionElementMatchingDict = v0;
}

+ (BOOL)axss_HIDDeviceIsMFiAuthenticated:(id)authenticated
{
  authenticatedCopy = authenticated;
  v4 = [authenticatedCopy propertyForKey:@"Authenticated"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = [objc_opt_class() _axss_iAPInterfaceExistsForHIDDeviceService:{objc_msgSend(authenticatedCopy, "service")}];
  }

  return v5;
}

+ (BOOL)_axss_iAPInterfaceExistsForHIDDeviceService:(unsigned int)service
{
  iterator = 0;
  if (MEMORY[0x1C68EA340](*&service, "IOService", 3, &iterator))
  {
    v3 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[AXSSMotionTrackingUtilities _axss_iAPInterfaceExistsForHIDDeviceService:];
    }

    return 0;
  }

  if (!IOIteratorIsValid(iterator))
  {
    MEMORY[0x1C68EA300](iterator);
  }

  v4 = IOIteratorNext(iterator);
  if (v4)
  {
    do
    {
      v5 = IOObjectConformsTo(v4, "IOUSBDevice");
      v6 = v5 == 0;
      if (v5)
      {
        break;
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(iterator);
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v6)
  {
    return 0;
  }

  object = 0;
  if (MEMORY[0x1C68EA340](v4, "IOService", 1, &object))
  {
    v7 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[AXSSMotionTrackingUtilities _axss_iAPInterfaceExistsForHIDDeviceService:];
    }

    return 0;
  }

  if (!IOIteratorIsValid(object))
  {
    MEMORY[0x1C68EA300](object);
  }

  IOObjectRelease(v4);
  v10 = IOIteratorNext(object);
  v8 = v10 != 0;
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x1E695E480];
    do
    {
      v21 = 0;
      v13 = IORegistryEntryCreateCFProperties(v11, &v21, v12, 0);
      IOObjectRelease(v11);
      v14 = v21;
      if (!v21 || v13)
      {
      }

      else
      {
        v15 = [(__CFDictionary *)v21 objectForKeyedSubscript:@"bInterfaceClass"];
        unsignedIntValue = [v15 unsignedIntValue];

        v17 = [(__CFDictionary *)v14 objectForKeyedSubscript:@"bInterfaceSubClass"];
        unsignedIntValue2 = [v17 unsignedIntValue];

        v19 = [(__CFDictionary *)v14 objectForKeyedSubscript:@"bInterfaceProtocol"];
        unsignedIntValue3 = [v19 unsignedIntValue];

        if (unsignedIntValue == 255 && unsignedIntValue2 == 240 && !unsignedIntValue3)
        {
          break;
        }
      }

      v11 = IOIteratorNext(object);
      v8 = v11 != 0;
    }

    while (v11);
  }

  if (object)
  {
    IOObjectRelease(object);
  }

  return v8;
}

+ (void)_axss_iAPInterfaceExistsForHIDDeviceService:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_ERROR, "%s: cannot create parent iterator: error 0x%08X (%d)", v1, 0x18u);
}

@end