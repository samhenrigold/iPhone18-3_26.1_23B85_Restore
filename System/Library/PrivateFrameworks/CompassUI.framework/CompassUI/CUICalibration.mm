@interface CUICalibration
+ (void)showCalibrationAlert;
@end

@implementation CUICalibration

+ (void)showCalibrationAlert
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.compass");
  v7 = objc_msgSend_sharedPlatform(MEMORY[0x277D0EC70], v5, v6);
  if (!objc_msgSend_isInternalInstall(v7, v8, v9))
  {

    goto LABEL_5;
  }

  v11 = objc_msgSend_BOOLForKey_(v4, v10, @"CalibrationDisabled");

  if (!v11)
  {
LABEL_5:
    v13 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v12, &unk_28570E508);
    v14 = objc_alloc(MEMORY[0x277CCAE80]);
    v16 = objc_msgSend_initWithServiceName_(v14, v15, @"com.apple.CompassCalibration");
    objc_msgSend_setRemoteObjectInterface_(v16, v17, v13);
    objc_msgSend_resume(v16, v18, v19);
    v22 = objc_msgSend_remoteObjectProxy(v16, v20, v21);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_243D6CA10;
    v25[3] = &unk_278DF27B0;
    v26 = v16;
    v23 = v16;
    objc_msgSend_showCalibrationAlert_(v22, v24, v25);

    goto LABEL_6;
  }

  NSLog(&cfstr_TheCalibration.isa);
LABEL_6:
}

@end