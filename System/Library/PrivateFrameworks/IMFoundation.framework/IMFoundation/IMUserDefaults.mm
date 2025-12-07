@interface IMUserDefaults
+ (BOOL)isEngramEnabled;
+ (BOOL)isLiveDeliveryWarmUpEnabled;
+ (BOOL)isWriteBlastDoorPayloadsToDiskEnabled;
+ (BOOL)isWritePushPayloadsToDiskEnabled;
+ (BOOL)shouldDisableFailFastWhenSatelliteIsAvailable;
+ (BOOL)trustAnyCredential;
+ (NSString)phoneNumberValidationPreflightTestData;
+ (NSString)writePushPayloadsToDiskPath;
+ (id)sharedDefaults;
+ (int64_t)phoneNumberValidationMode;
+ (void)setEnableEngram:(BOOL)engram;
+ (void)setEnableLiveDeliveryWarmUp:(BOOL)up;
+ (void)setPhoneNumberValidationMode:(int64_t)mode;
+ (void)setPhoneNumberValidationPreflightTestData:(id)data;
@end

@implementation IMUserDefaults

+ (id)sharedDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19598CD34;
  block[3] = &unk_1E7438860;
  block[4] = self;
  if (qword_1ED517358 != -1)
  {
    dispatch_once(&qword_1ED517358, block);
  }

  v2 = qword_1ED517350;

  return v2;
}

+ (BOOL)isWritePushPayloadsToDiskEnabled
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"WritePushPayloadsToDisk");

  return v6;
}

+ (BOOL)shouldDisableFailFastWhenSatelliteIsAvailable
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"ShouldDisableFailFastWhenSatelliteIsAvailable");

  return v6;
}

+ (void)setEnableEngram:(BOOL)engram
{
  engramCopy = engram;
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.ids");
  objc_msgSend_setBool_forKey_(v7, v6, engramCopy, @"EnableEngramVersion");
}

+ (BOOL)isEngramEnabled
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_integerForKey_(v4, v5, @"EnableEngramVersion") == 2;

  return v6;
}

+ (void)setPhoneNumberValidationMode:(int64_t)mode
{
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.ids");
  objc_msgSend_setInteger_forKey_(v7, v6, mode, @"PhoneNumberValidationMode");
}

+ (int64_t)phoneNumberValidationMode
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_integerForKey_(v4, v5, @"PhoneNumberValidationMode");

  return v6;
}

+ (void)setPhoneNumberValidationPreflightTestData:(id)data
{
  v3 = MEMORY[0x1E695E000];
  dataCopy = data;
  v5 = [v3 alloc];
  v8 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.ids");
  objc_msgSend_setObject_forKey_(v8, v7, dataCopy, @"PreflightTestData");
}

+ (NSString)phoneNumberValidationPreflightTestData
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_stringForKey_(v4, v5, @"PreflightTestData");

  return v6;
}

+ (void)setEnableLiveDeliveryWarmUp:(BOOL)up
{
  upCopy = up;
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.ids");
  objc_msgSend_setBool_forKey_(v7, v6, upCopy, @"EnableLiveDeliveryWarmUp");
}

+ (BOOL)isLiveDeliveryWarmUpEnabled
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"EnableLiveDeliveryWarmUp");

  return v6;
}

+ (BOOL)trustAnyCredential
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"TrustAnyCredential");

  return v6;
}

+ (BOOL)isWriteBlastDoorPayloadsToDiskEnabled
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"WriteBlastDoorPayloadsToDisk");

  return v6;
}

+ (NSString)writePushPayloadsToDiskPath
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.ids");
  v6 = objc_msgSend_stringForKey_(v4, v5, @"WritePushPayloadsToDiskPath");

  return v6;
}

@end