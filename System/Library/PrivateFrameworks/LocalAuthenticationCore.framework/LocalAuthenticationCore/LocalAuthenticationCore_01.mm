uint64_t __LACLogBiometry_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Biometry");
  v1 = LACLogBiometry___logObj;
  LACLogBiometry___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogConcurrentEvaluations(uint64_t a1)
{
  if (LACLogConcurrentEvaluations_onceToken != -1)
  {
    LACLogConcurrentEvaluations_cold_1();
  }

  v2 = LACLogConcurrentEvaluations___logObj;

  return v2;
}

uint64_t __LACLogConcurrentEvaluations_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "ConcurrentEvaluations");
  v1 = LACLogConcurrentEvaluations___logObj;
  LACLogConcurrentEvaluations___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogContext_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Context");
  v1 = LACLogContext___logObj;
  LACLogContext___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogCredentials(uint64_t a1)
{
  if (LACLogCredentials_onceToken != -1)
  {
    LACLogCredentials_cold_1();
  }

  v2 = LACLogCredentials___logObj;

  return v2;
}

uint64_t __LACLogCredentials_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Credentials");
  v1 = LACLogCredentials___logObj;
  LACLogCredentials___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogDefault_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Default");
  v1 = LACLogDefault___logObj;
  LACLogDefault___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDisk(uint64_t a1)
{
  if (LACLogDisk_onceToken != -1)
  {
    LACLogDisk_cold_1();
  }

  v2 = LACLogDisk___logObj;

  return v2;
}

uint64_t __LACLogDisk_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Disk");
  v1 = LACLogDisk___logObj;
  LACLogDisk___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogEnvironment_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Environment");
  v1 = LACLogEnvironment___logObj;
  LACLogEnvironment___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogFaceIDUI(uint64_t a1)
{
  if (LACLogFaceIDUI_onceToken != -1)
  {
    LACLogFaceIDUI_cold_1();
  }

  v2 = LACLogFaceIDUI___logObj;

  return v2;
}

uint64_t __LACLogFaceIDUI_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "FaceIDUI");
  v1 = LACLogFaceIDUI___logObj;
  LACLogFaceIDUI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogGestalt_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Gestalt");
  v1 = LACLogGestalt___logObj;
  LACLogGestalt___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogKeybag_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Keybag");
  v1 = LACLogKeybag___logObj;
  LACLogKeybag___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogKeyboard(uint64_t a1)
{
  if (LACLogKeyboard_onceToken != -1)
  {
    LACLogKeyboard_cold_1();
  }

  v2 = LACLogKeyboard___logObj;

  return v2;
}

uint64_t __LACLogKeyboard_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Keyboard");
  v1 = LACLogKeyboard___logObj;
  LACLogKeyboard___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogNotifications_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Notifications");
  v1 = LACLogNotifications___logObj;
  LACLogNotifications___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogOTI(uint64_t a1)
{
  if (LACLogOTI_onceToken != -1)
  {
    LACLogOTI_cold_1();
  }

  v2 = LACLogOTI___logObj;

  return v2;
}

uint64_t __LACLogOTI_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "OTI");
  v1 = LACLogOTI___logObj;
  LACLogOTI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogPasscode(uint64_t a1)
{
  if (LACLogPasscode_onceToken != -1)
  {
    LACLogPasscode_cold_1();
  }

  v2 = LACLogPasscode___logObj;

  return v2;
}

uint64_t __LACLogPasscode_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Passcode");
  v1 = LACLogPasscode___logObj;
  LACLogPasscode___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogPasscodeService(uint64_t a1)
{
  if (LACLogPasscodeService_onceToken != -1)
  {
    LACLogPasscodeService_cold_1();
  }

  v2 = LACLogPasscodeService___logObj;

  return v2;
}

uint64_t __LACLogPasscodeService_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "PasscodeService");
  v1 = LACLogPasscodeService___logObj;
  LACLogPasscodeService___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogPasscodeUI(uint64_t a1)
{
  if (LACLogPasscodeUI_onceToken != -1)
  {
    LACLogPasscodeUI_cold_1();
  }

  v2 = LACLogPasscodeUI___logObj;

  return v2;
}

uint64_t __LACLogPasscodeUI_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "PasscodeUI");
  v1 = LACLogPasscodeUI___logObj;
  LACLogPasscodeUI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogPreboard(uint64_t a1)
{
  if (LACLogPreboard_onceToken != -1)
  {
    LACLogPreboard_cold_1();
  }

  v2 = LACLogPreboard___logObj;

  return v2;
}

uint64_t __LACLogPreboard_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Preboard");
  v1 = LACLogPreboard___logObj;
  LACLogPreboard___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogProcessor(uint64_t a1)
{
  if (LACLogProcessor_onceToken != -1)
  {
    LACLogProcessor_cold_1();
  }

  v2 = LACLogProcessor___logObj;

  return v2;
}

uint64_t __LACLogProcessor_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Processor");
  v1 = LACLogProcessor___logObj;
  LACLogProcessor___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogServer(uint64_t a1)
{
  if (LACLogServer_onceToken != -1)
  {
    LACLogServer_cold_1();
  }

  v2 = LACLogServer___logObj;

  return v2;
}

uint64_t __LACLogServer_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Server");
  v1 = LACLogServer___logObj;
  LACLogServer___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogService_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Service");
  v1 = LACLogService___logObj;
  LACLogService___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogSessions(uint64_t a1)
{
  if (LACLogSessions_onceToken != -1)
  {
    LACLogSessions_cold_1();
  }

  v2 = LACLogSessions___logObj;

  return v2;
}

uint64_t __LACLogSessions_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Sessions");
  v1 = LACLogSessions___logObj;
  LACLogSessions___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogSharedMode_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "SharedMode");
  v1 = LACLogSharedMode___logObj;
  LACLogSharedMode___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogStorage_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Storage");
  v1 = LACLogStorage___logObj;
  LACLogStorage___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogTask_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Task");
  v1 = LACLogTask___logObj;
  LACLogTask___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogTests(uint64_t a1)
{
  if (LACLogTests_onceToken != -1)
  {
    LACLogTests_cold_1();
  }

  v2 = LACLogTests___logObj;

  return v2;
}

uint64_t __LACLogTests_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Tests");
  v1 = LACLogTests___logObj;
  LACLogTests___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogTouchIDUI(uint64_t a1)
{
  if (LACLogTouchIDUI_onceToken != -1)
  {
    LACLogTouchIDUI_cold_1();
  }

  v2 = LACLogTouchIDUI___logObj;

  return v2;
}

uint64_t __LACLogTouchIDUI_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "TouchIDUI");
  v1 = LACLogTouchIDUI___logObj;
  LACLogTouchIDUI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogUI(uint64_t a1)
{
  if (LACLogUI_onceToken != -1)
  {
    LACLogUI_cold_1();
  }

  v2 = LACLogUI___logObj;

  return v2;
}

uint64_t __LACLogUI_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "UI");
  v1 = LACLogUI___logObj;
  LACLogUI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogUIAuthenticationSheet(uint64_t a1)
{
  if (LACLogUIAuthenticationSheet_onceToken != -1)
  {
    LACLogUIAuthenticationSheet_cold_1();
  }

  v2 = LACLogUIAuthenticationSheet___logObj;

  return v2;
}

uint64_t __LACLogUIAuthenticationSheet_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "UIAuthenticationSheet");
  v1 = LACLogUIAuthenticationSheet___logObj;
  LACLogUIAuthenticationSheet___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogWatch(uint64_t a1)
{
  if (LACLogWatch_onceToken != -1)
  {
    LACLogWatch_cold_1();
  }

  v2 = LACLogWatch___logObj;

  return v2;
}

uint64_t __LACLogWatch_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Watch");
  v1 = LACLogWatch___logObj;
  LACLogWatch___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogXPC(uint64_t a1)
{
  if (LACLogXPC_onceToken != -1)
  {
    LACLogXPC_cold_1();
  }

  v2 = LACLogXPC___logObj;

  return v2;
}

uint64_t __LACLogXPC_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "XPC");
  v1 = LACLogXPC___logObj;
  LACLogXPC___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTO(uint64_t a1)
{
  if (LACLogDTO_onceToken != -1)
  {
    LACLogDTO_cold_1();
  }

  v2 = LACLogDTO___logObj;

  return v2;
}

uint64_t __LACLogDTO_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO");
  v1 = LACLogDTO___logObj;
  LACLogDTO___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOClient(uint64_t a1)
{
  if (LACLogDTOClient_onceToken != -1)
  {
    LACLogDTOClient_cold_1();
  }

  v2 = LACLogDTOClient___logObj;

  return v2;
}

uint64_t __LACLogDTOClient_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Client");
  v1 = LACLogDTOClient___logObj;
  LACLogDTOClient___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOEnvironment(uint64_t a1)
{
  if (LACLogDTOEnvironment_onceToken != -1)
  {
    LACLogDTOEnvironment_cold_1();
  }

  v2 = LACLogDTOEnvironment___logObj;

  return v2;
}

uint64_t __LACLogDTOEnvironment_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Environment");
  v1 = LACLogDTOEnvironment___logObj;
  LACLogDTOEnvironment___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOEvaluation(uint64_t a1)
{
  if (LACLogDTOEvaluation_onceToken != -1)
  {
    LACLogDTOEvaluation_cold_1();
  }

  v2 = LACLogDTOEvaluation___logObj;

  return v2;
}

uint64_t __LACLogDTOEvaluation_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Evaluation");
  v1 = LACLogDTOEvaluation___logObj;
  LACLogDTOEvaluation___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOEvent(uint64_t a1)
{
  if (LACLogDTOEvent_onceToken != -1)
  {
    LACLogDTOEvent_cold_1();
  }

  v2 = LACLogDTOEvent___logObj;

  return v2;
}

uint64_t __LACLogDTOEvent_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Event");
  v1 = LACLogDTOEvent___logObj;
  LACLogDTOEvent___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogDTOFeature_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Feature");
  v1 = LACLogDTOFeature___logObj;
  LACLogDTOFeature___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogDTOLocation_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Location");
  v1 = LACLogDTOLocation___logObj;
  LACLogDTOLocation___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOLostMode(uint64_t a1)
{
  if (LACLogDTOLostMode_onceToken != -1)
  {
    LACLogDTOLostMode_cold_1();
  }

  v2 = LACLogDTOLostMode___logObj;

  return v2;
}

uint64_t __LACLogDTOLostMode_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_LostMode");
  v1 = LACLogDTOLostMode___logObj;
  LACLogDTOLostMode___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTONotifications(uint64_t a1)
{
  if (LACLogDTONotifications_onceToken != -1)
  {
    LACLogDTONotifications_cold_1();
  }

  v2 = LACLogDTONotifications___logObj;

  return v2;
}

uint64_t __LACLogDTONotifications_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Notifications");
  v1 = LACLogDTONotifications___logObj;
  LACLogDTONotifications___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOProcessor(uint64_t a1)
{
  if (LACLogDTOProcessor_onceToken != -1)
  {
    LACLogDTOProcessor_cold_1();
  }

  v2 = LACLogDTOProcessor___logObj;

  return v2;
}

uint64_t __LACLogDTOProcessor_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Processor");
  v1 = LACLogDTOProcessor___logObj;
  LACLogDTOProcessor___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogDTOSensor_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Sensor");
  v1 = LACLogDTOSensor___logObj;
  LACLogDTOSensor___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOState(uint64_t a1)
{
  if (LACLogDTOState_onceToken != -1)
  {
    LACLogDTOState_cold_1();
  }

  v2 = LACLogDTOState___logObj;

  return v2;
}

uint64_t __LACLogDTOState_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_State");
  v1 = LACLogDTOState___logObj;
  LACLogDTOState___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogDTOStorage_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Storage");
  v1 = LACLogDTOStorage___logObj;
  LACLogDTOStorage___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOTimers(uint64_t a1)
{
  if (LACLogDTOTimers_onceToken != -1)
  {
    LACLogDTOTimers_cold_1();
  }

  v2 = LACLogDTOTimers___logObj;

  return v2;
}

uint64_t __LACLogDTOTimers_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_Timers");
  v1 = LACLogDTOTimers___logObj;
  LACLogDTOTimers___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogDTOUI(uint64_t a1)
{
  if (LACLogDTOUI_onceToken != -1)
  {
    LACLogDTOUI_cold_1();
  }

  v2 = LACLogDTOUI___logObj;

  return v2;
}

uint64_t __LACLogDTOUI_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "DTO_UI");
  v1 = LACLogDTOUI___logObj;
  LACLogDTOUI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *NSStringFromMechanismEvent(unint64_t a1)
{
  if (a1 > 0x14)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A96F68[a1];
  }
}

id NSStringFromMechanismEventAndValue(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NSStringFromMechanismEvent(a1);
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingFormat:@", value: %@", v3];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

__CFString *NSStringFromRemoteUIEvent(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LARemoteUIEvent: %d", a1];
  }

  else
  {
    v2 = off_1E7A97010[a1];
  }

  return v2;
}

id NSStringFromRemoteUIEventAndOptions(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NSStringFromRemoteUIEvent(a1);
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingFormat:@", options: %@", v3];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

id getRTRoutineManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTRoutineManagerClass_softClass;
  v7 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTRoutineManagerClass_block_invoke;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getRTRoutineManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B0281180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0281724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    CoreRoutineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B0281D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B0283458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0284468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0284760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B0284B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02859C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t LACBiomeEvaluationRatchetStateFromLACDTORatchetStateRawValue(unint64_t a1)
{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

id NSStringFromLACAuthenticationPriority(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    v1 = @"Lowest";
  }

  else
  {
    v1 = off_1E7A972A0[a1 - 1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%d)", v1, a1];

  return v2;
}

void sub_1B028AEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B028B530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028B848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028BB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028C7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B028CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028E430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028E844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028F670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028F814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028F968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028FAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028FC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B028FE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACDTOLocationStateRawValue(uint64_t a1)
{
  if (!os_variant_allows_internal_security_policies())
  {
    return @"<private>";
  }

  if ((a1 + 1) > 3)
  {
    return &stru_1F2652748;
  }

  return off_1E7A976E0[a1 + 1];
}

__CFString *NSStringFromLACDTOSensorRepairFlag(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A97700[a1 - 1];
  }
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B02921C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02923D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02925DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02927E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B02932E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02934D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02941D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B0294368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0294740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B02951EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0296424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B029679C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1B0296ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0296F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02973D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02976B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B0298114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B0298644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getTKTokenAuthOperationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTKTokenAuthOperationClass_softClass;
  v7 = getTKTokenAuthOperationClass_softClass;
  if (!getTKTokenAuthOperationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTKTokenAuthOperationClass_block_invoke;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getTKTokenAuthOperationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B0298A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0299D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTKTokenAuthOperationClass_block_invoke(uint64_t a1)
{
  if (!CryptoTokenKitLibraryCore_frameworkLibrary)
  {
    CryptoTokenKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("TKTokenAuthOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKTokenAuthOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CryptoTokenKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CryptoTokenKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B029BDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B029C274(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = SetupAssistantLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B029E178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B029E3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BiomeLibraryLibraryCore(uint64_t a1)
{
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return BiomeLibraryLibraryCore_frameworkLibrary;
}

uint64_t getBiomeLibrarySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr;
  v6 = getBiomeLibrarySymbolLoc_ptr;
  if (!getBiomeLibrarySymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getBiomeLibrarySymbolLoc_block_invoke;
    v2[3] = &unk_1E7A955D8;
    v2[4] = &v3;
    __getBiomeLibrarySymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B029E594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = BiomeLibraryLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMLocalAuthenticationEvaluationsClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibraryCore(0);
  result = objc_getClass("BMLocalAuthenticationEvaluations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMLocalAuthenticationEvaluationsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMLocalAuthenticationEvaluationsMechanismClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibraryCore(0);
  result = objc_getClass("BMLocalAuthenticationEvaluationsMechanism");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMLocalAuthenticationEvaluationsMechanismClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B029EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B029F174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02A0094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02A0364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A067C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACAnalyticsAction(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LACAnalyticsAction value: %d", a1];
  }

  else
  {
    v2 = off_1E7A97E58[a1];
  }

  return v2;
}

void sub_1B02A0A34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B02A0CB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B02A1C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A1F58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A256C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A2950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A2E14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A32A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B02A3528(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B02A3A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A3DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A41A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromLACEventSimpleStatusTouchID(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LACEventSimpleStatusTouchID: %d", a1];
  }

  else
  {
    v2 = off_1E7A98218[a1];
  }

  return v2;
}

void sub_1B02A4E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02A6C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t exclaveBatchValueInNSDictionary(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v7 = [v3 objectForKeyedSubscript:v6];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1B02A9388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B02A9674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02A9950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02A9BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02AA3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02AA620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACUserInterfaceRequestIdentifier(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A98460[a1 - 1];
  }
}

uint64_t key path getter for LACOnenessSessionProvider.isSessionActive : LACOnenessSessionProvider@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LACOnenessSessionProvider.isSessionActive : LACOnenessSessionProvider(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t LACOnenessSessionProvider.isSessionActive.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = closure #1 in LACOnenessSessionProvider.isSessionActive.getter(v0);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t closure #1 in LACOnenessSessionProvider.isSessionActive.getter(uint64_t a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMd, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMR);
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMR);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v35 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR, MEMORY[0x1E695BFB0]);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMR, MEMORY[0x1E695BD38]);
  Publisher.compactMap<A>(_:)();
  (*(v5 + 8))(v7, v4);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMd, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMR, MEMORY[0x1E695BC80]);
  v17 = Publisher.share()();
  (*(v9 + 8))(v11, v8);
  v35 = v17;
  swift_allocObject();
  v18 = v28;
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMR, MEMORY[0x1E695BDD0]);
  v19 = v29;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v35 = *(v18 + 24);
  v20 = v35;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v22 = v34;
  (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMR, MEMORY[0x1E695BCC0]);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
  v23 = v20;
  v24 = v30;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v22);

  (*(v33 + 8))(v19, v24);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v25 = v31;
  v26 = Publisher.eraseToAnyPublisher()();
  (*(v32 + 8))(v16, v25);
  return v26;
}

uint64_t closure #2 in closure #1 in LACOnenessSessionProvider.isSessionActive.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACOnenessSessionProvider.start()();
  }

  return result;
}

uint64_t LACOnenessSessionProvider.start()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = aBlock - v7;
  if (!*(v0 + 32))
  {
    LACOnenessSessionProvider.fetchCurrentState()();
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in LACOnenessSessionProvider.start();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned AKSEventType, @guaranteed CFDictionaryRef?) -> ();
    aBlock[3] = &block_descriptor;
    v14 = _Block_copy(aBlock);

    v15 = AKSEventsRegister();
    _Block_release(v14);
    *(v0 + 32) = v15;
    v17 = LACLogABM(v16);
    Logger.init(_:)();
    v10 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v18))
    {
      v5 = v8;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v18, "Mac Companion session listener subscribed", v12, 2u);
    v5 = v8;
    goto LABEL_6;
  }

  v9 = LACLogABM(v6);
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Mac Companion session subscriber already exists", v12, 2u);
LABEL_6:
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v5, v1);
}

uint64_t closure #3 in closure #1 in LACOnenessSessionProvider.isSessionActive.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACOnenessSessionProvider.stop()();
  }

  return result;
}

uint64_t LACOnenessSessionProvider.stop()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  if (!*(v0 + 32))
  {
    v13 = LACLogABM(0);
    Logger.init(_:)();
    v10 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v14))
    {
      v7 = v5;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v14, "Mac Companion session subscriber does not exist", v12, 2u);
    v7 = v5;
    goto LABEL_6;
  }

  v8 = AKSEventsUnregister();
  v9 = LACLogABM(v8);
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Mac Companion session listener unsubscribed", v12, 2u);
LABEL_6:
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v7, v1);
}

uint64_t (*LACOnenessSessionProvider.isSessionActive.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = LACOnenessSessionProvider.isSessionActive.getter();
  return LACOnenessSessionProvider.isSessionActive.modify;
}

void *LACOnenessSessionProvider.__allocating_init(replyQueue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  swift_allocObject();
  v2[5] = CurrentValueSubject.init(_:)();
  v2[3] = a1;
  return v2;
}

void *LACOnenessSessionProvider.init(replyQueue:)(uint64_t a1)
{
  v1[2] = 0;
  v1[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  swift_allocObject();
  v1[5] = CurrentValueSubject.init(_:)();
  v1[3] = a1;
  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t LACOnenessSessionProvider.refresh(completion:)(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = LACLogABM(v4);
  Logger.init(_:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B0233000, v8, v9, "Mac Companion session asked to refresh", v10, 2u);
    MEMORY[0x1B27246A0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = LACOnenessSessionProvider.fetchCurrentState()();
  if (a1)
  {

    CurrentValueSubject.value.getter();

    return a1(v12[15] & 1);
  }

  return result;
}

uint64_t LACOnenessSessionProvider.deinit()
{

  return v0;
}

uint64_t LACOnenessSessionProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACEligibilityDomain(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACEligibilityDomain(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LACEligibilityDomain@<X0>(uint64_t *a3@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = MEMORY[0x1B27229A0](v4);

  *a3 = v5;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance LACEligibilityDomain(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1B2722AF0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LACEligibilityDomain(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACEligibilityDomain(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance NSDataWritingOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACPreboardUseCase(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1B2722C50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACPreboardUseCase(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LACEligibilityDomain(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACEligibilityDomain(uint64_t a1)
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACEligibilityDomain and conformance LACEligibilityDomain, type metadata accessor for LACEligibilityDomain, &protocol conformance descriptor for LACEligibilityDomain);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACEligibilityDomain and conformance LACEligibilityDomain, type metadata accessor for LACEligibilityDomain, &protocol conformance descriptor for LACEligibilityDomain);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACPreboardUseCase(uint64_t a1)
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPreboardUseCase and conformance LACPreboardUseCase, type metadata accessor for LACPreboardUseCase, &protocol conformance descriptor for LACPreboardUseCase);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPreboardUseCase and conformance LACPreboardUseCase, type metadata accessor for LACPreboardUseCase, &protocol conformance descriptor for LACPreboardUseCase);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACCompanionType(uint64_t a1)
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACCompanionType and conformance LACCompanionType, type metadata accessor for LACCompanionType, &protocol conformance descriptor for LACCompanionType);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACCompanionType and conformance LACCompanionType, type metadata accessor for LACCompanionType, &protocol conformance descriptor for LACCompanionType);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACPolicy(uint64_t a1)
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPolicy and conformance LACPolicy, type metadata accessor for LACPolicy, &protocol conformance descriptor for LACPolicy);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPolicy and conformance LACPolicy, type metadata accessor for LACPolicy, &protocol conformance descriptor for LACPolicy);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACPolicyOption(uint64_t a1)
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption, type metadata accessor for LACPolicyOption, &protocol conformance descriptor for LACPolicyOption);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption, type metadata accessor for LACPolicyOption, &protocol conformance descriptor for LACPolicyOption);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LACEligibilityDomain@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1B27229A0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey(uint64_t a1)
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACStorageDomain(uint64_t a1)
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACStorageDomain and conformance LACStorageDomain, type metadata accessor for LACStorageDomain, &protocol conformance descriptor for LACStorageDomain);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACStorageDomain and conformance LACStorageDomain, type metadata accessor for LACStorageDomain, &protocol conformance descriptor for LACStorageDomain);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACStorageKey(uint64_t a1)
{
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACStorageKey and conformance LACStorageKey, type metadata accessor for LACStorageKey, &protocol conformance descriptor for LACStorageKey);
  lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(&lazy protocol witness table cache variable for type LACStorageKey and conformance LACStorageKey, type metadata accessor for LACStorageKey, &protocol conformance descriptor for LACStorageKey);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type LACEligibilityDomain and conformance LACEligibilityDomain(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Bool? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Bool? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Bool? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Bool? and conformance <A> A?);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id LACPhoneIntegrationSessionProcessor.init(environmentProvider:monitor:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnvironmentProvider:a1 monitor:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

{
  *(v2 + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_environmentProvider) = a1;
  *(v2 + OBJC_IVAR___LACPhoneIntegrationSessionProcessor_monitor) = a2;
  v4.super_class = LACPhoneIntegrationSessionProcessor;
  return objc_msgSendSuper2(&v4, sel_init);
}

id LACPhoneIntegrationSessionProcessor.canProcessRequest(_:)()
{
  v1 = [objc_msgSend(v0 environmentProvider)];
  swift_unknownObjectRelease();
  v2 = [v1 isFeatureAvailable];

  return v2;
}

void LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v5 canProcessRequest_];
  if (v13)
  {
    v14 = LACLogABM(v13);
    Logger.init(_:)();
    v15 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v15;
      *v20 = v15;
      v21 = v15;
      _os_log_impl(&dword_1B0233000, v16, v17, "%@ refreshing availability", v19, 0xCu);
      outlined destroy of NSObject?(v20);
      MEMORY[0x1B27246A0](v20, -1, -1);
      v22 = v19;
      a3 = v30;
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v23 = [objc_msgSend(v15 monitor)];
    swift_unknownObjectRelease();
    if ((v23 & 1) == 0)
    {
      [objc_msgSend(v15 monitor)];
      swift_unknownObjectRelease();
    }

    v24 = [v15 monitor];
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a3;
    v26[4] = a4;
    v26[5] = a1;
    aBlock[4] = partial apply for closure #1 in LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_0;
    v27 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v24 refreshWithCompletion_];
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = [objc_opt_self() resultWithNext_];
    a3();
    v28 = v30;
  }
}

void closure #1 in LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)(int a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v29 = a1;
    v15 = LACLogABM(Strong);
    Logger.init(_:)();
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28[0] = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v28[1] = a4;
      v22 = a3;
      v23 = v21;
      *v20 = 138412546;
      *(v20 + 4) = v16;
      *v21 = v14;
      *(v20 + 12) = 1024;
      *(v20 + 14) = v29 & 1;
      v24 = v16;
      _os_log_impl(&dword_1B0233000, v17, v18, "%@ did refresh availability to %{BOOL}d", v20, 0x12u);
      outlined destroy of NSObject?(v23);
      v25 = v23;
      a3 = v22;
      MEMORY[0x1B27246A0](v25, -1, -1);
      v26 = v20;
      a5 = v28[0];
      MEMORY[0x1B27246A0](v26, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v27 = [objc_opt_self() resultWithNext_];
    a3();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

LACPhoneIntegrationSessionProcessor __swiftcall LACPhoneIntegrationSessionProcessor.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.monitor = v3;
  result.environmentProvider = v2;
  result.super.isa = v1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t type metadata accessor for LACPhoneIntegrationSessionProcessor()
{
  result = lazy cache variable for type metadata for LACPhoneIntegrationSessionProcessor[0];
  if (!lazy cache variable for type metadata for LACPhoneIntegrationSessionProcessor[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for LACPhoneIntegrationSessionProcessor);
  }

  return result;
}

void specialized LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  v11 = [a2 canProcessRequest_];
  if (v11)
  {
    v12 = LACLogABM(v11);
    Logger.init(_:)();
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1B0233000, v14, v15, "%@ refreshing availability", v16, 0xCu);
      outlined destroy of NSObject?(v17);
      MEMORY[0x1B27246A0](v17, -1, -1);
      MEMORY[0x1B27246A0](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v19 = [objc_msgSend(v13 monitor)];
    swift_unknownObjectRelease();
    if ((v19 & 1) == 0)
    {
      [objc_msgSend(v13 monitor)];
      swift_unknownObjectRelease();
    }

    v20 = [v13 monitor];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ();
    v22[4] = v10;
    v22[5] = a1;
    aBlock[4] = closure #1 in LACPhoneIntegrationSessionProcessor.processRequest(_:configuration:completion:)partial apply;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_16;
    v23 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v20 refreshWithCompletion_];
    _Block_release(v23);

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = [objc_opt_self() resultWithNext_];
    (a3)[2](a3, v26);

    v24 = v26;
  }
}

uint64_t objectdestroy_2Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(LACEligibilityHelper) init];
  static LACEligibilityHelper.sharedInstance = result;
  return result;
}

id LACEligibilityHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = &v0[OBJC_IVAR___LACEligibilityHelper_cache];
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20LACEligibilityDomaina_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v1 = 0;
  *(v1 + 1) = v3;
  *&v0[OBJC_IVAR___LACEligibilityHelper_registeredNotificationsForDomains] = v2;
  v4 = OBJC_IVAR___LACEligibilityHelper_darwinNotificationCenter;
  *&v0[v4] = [objc_opt_self() sharedInstance];
  v6.receiver = v0;
  v6.super_class = LACEligibilityHelper;
  return objc_msgSendSuper2(&v6, sel_init);
}

id static LACEligibilityHelper.shared.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static LACEligibilityHelper.sharedInstance;

  return v1;
}

Swift::Bool __swiftcall LACEligibilityHelper.isEligible(forDomain:)(__C::LACEligibilityDomain forDomain)
{
  v2 = v1;
  v79[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v73 - v12;
  v14 = LACEligibilityHelper.cachedValue(for:)(forDomain._rawValue);
  if (v14 == 2)
  {
    v78 = 0;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v17 != v18)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    domain_answer = os_eligibility_get_domain_answer();
    v31 = domain_answer;
    v32 = LACLogDefault(domain_answer);
    if (v31)
    {
      Logger.init(_:)();
      v33 = forDomain._rawValue;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v79[0] = v37;
        *v36 = 136315394;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v79);

        *(v36 + 4) = v40;
        *(v36 + 12) = 1024;
        *(v36 + 14) = v31;
        _os_log_impl(&dword_1B0233000, v34, v35, "Eligibility call for domain: %s failed with status code: %d", v36, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1B27246A0](v37, -1, -1);
        MEMORY[0x1B27246A0](v36, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      v20 = 0;
      return v20 & 1;
    }

    Logger.init(_:)();
    v41 = forDomain._rawValue;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v76 = v41;
      v45 = v44;
      v74 = swift_slowAlloc();
      v79[0] = v74;
      *v45 = 136315394;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v79);
      v75 = v4;
      v49 = v48;

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      swift_beginAccess();
      v77 = v78;
      type metadata accessor for os_eligibility_answer_t(0);
      v50 = String.init<A>(describing:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v79);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_1B0233000, v42, v43, "Eligibility call for domain: %s returned result: %s", v45, 0x16u);
      v53 = v74;
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v53, -1, -1);
      v54 = v45;
      v41 = v76;
      MEMORY[0x1B27246A0](v54, -1, -1);

      (*(v5 + 8))(v11, v75);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
    if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
    {
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
LABEL_27:
        swift_beginAccess();
        v20 = v78 == 4;
        v70 = &v2[OBJC_IVAR___LACEligibilityHelper_cache];
        os_unfair_lock_lock(v70);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = *&v70[2]._os_unfair_lock_opaque;
        *&v70[2]._os_unfair_lock_opaque = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v41, isUniquelyReferenced_nonNull_native);
        *&v70[2]._os_unfair_lock_opaque = v77;

        os_unfair_lock_unlock(v70);
        return v20 & 1;
      }
    }

    v60 = [v2 registeredNotificationsForDomains];
    type metadata accessor for LACEligibilityDomain(0);
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v79[0] = v41;
    MEMORY[0x1EEE9AC00](v62);
    *(&v73 - 2) = v79;
    LOBYTE(v60) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v73 - 4), v61);

    if ((v60 & 1) == 0)
    {
      v63 = [v2 registeredNotificationsForDomains];
      v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v64);
      }

      v64[2] = v66 + 1;
      v64[v66 + 4] = v41;
      v67 = v41;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 setRegisteredNotificationsForDomains_];

      v69 = [v2 darwinNotificationCenter];
      [v69 addObserver:v2 notification:@"com.apple.os-eligibility-domain.change.tellurium"];
    }

    goto LABEL_27;
  }

  v20 = v14;
  v21 = LACLogDefault(v14);
  Logger.init(_:)();
  v22 = forDomain._rawValue;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v79[0] = v26;
    *v25 = 67109378;
    *(v25 + 4) = v20 & 1;
    *(v25 + 8) = 2080;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v79);

    *(v25 + 10) = v29;
    _os_log_impl(&dword_1B0233000, v23, v24, "Returning cached eligibility result: %{BOOL}d for domain: %s", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B27246A0](v26, -1, -1);
    MEMORY[0x1B27246A0](v25, -1, -1);
  }

  (*(v5 + 8))(v13, v4);
  return v20 & 1;
}

uint64_t LACEligibilityHelper.cachedValue(for:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___LACEligibilityHelper_cache;
  if (!os_unfair_lock_trylock((v1 + OBJC_IVAR___LACEligibilityHelper_cache)))
  {
    return 2;
  }

  v3 = *(v2 + 8);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v6 = 2;
  }

  os_unfair_lock_unlock(v2);
  return v6;
}

void LACEligibilityHelper.notificationCenter(_:didReceive:)(uint64_t a1, const __CFString *a2)
{
  if (LACDarwinNotificationsEqual(a2, @"com.apple.os-eligibility-domain.change.tellurium"))
  {
    v3 = (v2 + OBJC_IVAR___LACEligibilityHelper_cache);
    os_unfair_lock_lock((v2 + OBJC_IVAR___LACEligibilityHelper_cache));
    specialized Dictionary.subscript.setter(2, @"LACEligibilityDomainPhoneIntegration");

    os_unfair_lock_unlock(v3);
  }
}

void specialized Dictionary.subscript.setter(char a1, void *a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v5)
    {
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v12 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v8 = v12;
      }

      specialized _NativeDictionary._delete(at:)(v6, v8);
      *v3 = v8;
    }

    else
    {
    }
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1 & 1, a2, v10);

    *v3 = v13;
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMR);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)();
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMR);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)();
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v15)
      {
        v7 = a3;
        v8 = MEMORY[0x1B2722E50](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v17 = v8;
        v10 = a1(&v17);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      if ((a3 & 0x8000000000000000) != 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = a3;
      v13 = MEMORY[0x1B2722F00](v11, a2);
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20LACEligibilityDomainaGMd, &_ss23_ContiguousArrayStorageCySo20LACEligibilityDomainaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for LACEligibilityDomain(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd, &_sSo18NSFileAttributeKeya_yptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMd, &_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v23 = Hasher._finalize()();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        outlined init with take of Any(v22, v36);
      }

      else
      {
        outlined init with copy of Any(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = outlined init with take of Any(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGGMd, &_ss18_DictionaryStorageCySSSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v9;
    v44 = v10;
    v46 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v44 + 72);
      v29 = v28 + v47 * v27;
      if (v45)
      {
        (*v46)(v48, v29, v9);
        v30 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v30 = *(*(v13 + 56) + 8 * v27);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v9 = v43;
      result = (*v46)(*(v15 + 48) + v47 * v23, v48, v43);
      *(*(v15 + 56) + 8 * v23) = v30;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for LACEligibilityDomain(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      specialized _NativeDictionary.copy()();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1 & 1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1 & 1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v28();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1, v29, v30);
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v26 & 1))
    {
      v17 = v25;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a2, v11);
      return specialized _NativeDictionary._insert(at:key:value:)(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v23[7] + 8 * v17) = a1;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20LACEligibilityDomaina_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMd, &_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t type metadata accessor for LACEligibilityHelper()
{
  result = lazy cache variable for type metadata for LACEligibilityHelper;
  if (!lazy cache variable for type metadata for LACEligibilityHelper)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACEligibilityHelper);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiypGMd, &_ss18_DictionaryStorageCySiypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of (String, Any)(i, &v11, &_sSi_yptMd, &_sSi_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v16, v12, a2, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySiypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static LACLog.abm.getter(uint64_t a1)
{
  v1 = LACLogABM(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.default.getter(uint64_t a1)
{
  v1 = LACLogDefault(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.authenticator.getter(uint64_t a1)
{
  v1 = LACLogAuthenticator(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.concurrentEvaluations.getter(uint64_t a1)
{
  v1 = LACLogConcurrentEvaluations(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.credentials.getter(uint64_t a1)
{
  v1 = LACLogCredentials(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.faceIDUI.getter(uint64_t a1)
{
  v1 = LACLogFaceIDUI(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.ui.getter(uint64_t a1)
{
  v1 = LACLogUI(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.processor.getter(uint64_t a1)
{
  v1 = LACLogProcessor(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.dtoUI.getter(uint64_t a1)
{
  v1 = LACLogDTOUI(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.dtoEvaluation.getter(uint64_t a1)
{
  v1 = LACLogDTOEvaluation(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.dtoEnvironment.getter(uint64_t a1)
{
  v1 = LACLogDTOEnvironment(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.oti.getter(uint64_t a1)
{
  v1 = LACLogOTI(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.preboard.getter(uint64_t a1)
{
  v1 = LACLogPreboard(a1);

  return Logger.init(_:)();
}

uint64_t static LACLog.tests.getter(uint64_t a1)
{
  v1 = LACLogTests(a1);

  return Logger.init(_:)();
}

uint64_t getEnumTagSinglePayload for LACLog(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LACLog(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void one-time initialization function for sharedInstance()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [objc_allocWithZone(LACAuthenticatorHelper) initWithUserProvider_];

  static LACAuthenticatorHelper.sharedInstance = v1;
}

id static LACAuthenticatorHelper.shared.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static LACAuthenticatorHelper.sharedInstance;

  return v1;
}

id LACAuthenticatorHelper.init(userProvider:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserProvider_];
  swift_unknownObjectRelease();
  return v1;
}

{
  *(v1 + OBJC_IVAR___LACAuthenticatorHelper_userProvider) = a1;
  v3.super_class = LACAuthenticatorHelper;
  return objc_msgSendSuper2(&v3, sel_init);
}

BOOL LACAuthenticatorHelper.isAdministratorRequired(forUserID:authenticator:)(void *a1, uint64_t a2)
{
  if (a2 == 3 || a2 == 2)
  {
    return 1;
  }

  if (a2 != 4 || a1 == 0)
  {
    return 0;
  }

  v7 = [objc_msgSend(v2 userProvider)];
  swift_unknownObjectRelease();
  if (!v7)
  {
    [a1 integerValue];
    return 1;
  }

  v8 = [v7 userID];
  swift_unknownObjectRelease();
  return v8 != [a1 integerValue];
}

uint64_t LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [objc_msgSend(v2 userProvider)];
    swift_unknownObjectRelease();
    if (a2 == 2 && (!v5 || ![v5 isAdministrator]))
    {
      v8 = "Current user is not admin";
LABEL_21:
      v10 = (v8 - 32) | 0x8000000000000000;
      v9 = 0xD000000000000019;
      goto LABEL_22;
    }

    if (!a1)
    {
      goto LABEL_15;
    }

    if (v5)
    {
      v6 = [v5 userID];
      v7 = [a1 integerValue];
      if (a2 == 1)
      {
        if (v6 == v7)
        {
LABEL_15:
          swift_unknownObjectRetain();
          v11 = v5;
          if (v5)
          {
            goto LABEL_16;
          }

LABEL_20:
          v8 = "No user with the given ID";
          goto LABEL_21;
        }

LABEL_13:
        v9 = 0xD000000000000018;
        v10 = 0x80000001B03547C0;
LABEL_22:
        closure #1 in LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(v9, v10, a1, a2);
LABEL_23:
        swift_unknownObjectRelease();
        return 0;
      }

      if (v6 == v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [a1 integerValue];
      if (a2 == 1)
      {
        goto LABEL_13;
      }
    }

    v13 = a1;
    v11 = [objc_msgSend(v2 userProvider)];

    swift_unknownObjectRelease();
    if (v11)
    {
LABEL_16:
      if (![v2 isAdministratorRequiredForUserID:a1 authenticator:a2] || objc_msgSend(v11, sel_isAdministrator))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return 1;
      }

      closure #1 in LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(0xD000000000000011, 0x80000001B03547A0, a1, a2);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  closure #1 in LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(0x6673697461736E55, 0xED0000656C626169, a1, 0);
  return 0;
}

uint64_t closure #1 in LACAuthenticatorHelper.isRequirementMet(forUserID:authenticator:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = LACLogAuthenticator(v10);
  Logger.init(_:)();
  v14 = a3;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v9;
    v18 = a3;
    v19 = v17;
    v20 = swift_slowAlloc();
    v29 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v23 = a4;
    v24 = a1;
    v25 = v22;
    v31 = v22;
    *v19 = 138412802;
    *(v19 + 4) = v14;
    *v21 = v18;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v26 = v14;
    *(v19 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, a2, &v31);
    _os_log_impl(&dword_1B0233000, v15, v16, "UserID: %@ does not meet requirements of authenticator: %ld - %s", v19, 0x20u);
    outlined destroy of NSObject?(v21);
    MEMORY[0x1B27246A0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1B27246A0](v25, -1, -1);
    MEMORY[0x1B27246A0](v19, -1, -1);

    return (*(v30 + 8))(v12, v29);
  }

  else
  {

    return (*(v9 + 8))(v12, v8);
  }
}

LACAuthenticatorHelper __swiftcall LACAuthenticatorHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.userProvider = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for LACAuthenticatorHelper()
{
  result = lazy cache variable for type metadata for LACAuthenticatorHelper;
  if (!lazy cache variable for type metadata for LACAuthenticatorHelper)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACAuthenticatorHelper);
  }

  return result;
}

uint64_t LACPreboardUseCaseProviderAMFI.completeCurrentUseCase(success:)()
{
  [objc_opt_self() completeCurrentBootModeWithSuccess_];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized LACPreboardUseCaseProviderAMFI.preboardUseCase.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 txmSecurityBootMode];

  v7 = LACLogPreboard(v6);
  Logger.init(_:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v5;
    _os_log_impl(&dword_1B0233000, v8, v9, "TXM boot mode %ld", v10, 0xCu);
    MEMORY[0x1B27246A0](v10, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    return -1;
  }

  else
  {
    return [objc_opt_self() useCase];
  }
}

uint64_t dispatch thunk of LACPreboardStorageType.batchOptions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LACPreboardStorageType.batchOptions(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LACPreboardStorageType.batchOptions(for:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of LACPreboardStorageType.clean(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LACPreboardStorageType.enableBatch(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LACPreboardStorageType.enableBatch(for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of LACPreboardStorageType.enableVariable(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t LACPhoneIntegrationSessionProvider.isSessionActive.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = closure #1 in LACPhoneIntegrationSessionProvider.isSessionActive.getter(v0);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t closure #1 in LACPhoneIntegrationSessionProvider.isSessionActive.getter(uint64_t a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMd, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMR);
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMR);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v35 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR, MEMORY[0x1E695BFB0]);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGMR, MEMORY[0x1E695BD38]);
  Publisher.compactMap<A>(_:)();
  (*(v5 + 8))(v7, v4);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMd, &_s7Combine10PublishersO10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGMR, MEMORY[0x1E695BC80]);
  v17 = Publisher.share()();
  (*(v9 + 8))(v11, v8);
  v35 = v17;
  swift_allocObject();
  v18 = v28;
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMd, &_s7Combine10PublishersO5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGMR, MEMORY[0x1E695BDD0]);
  v19 = v29;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v35 = *(v18 + 40);
  v20 = v35;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v22 = v34;
  (*(*(v21 - 8) + 56))(v34, 1, 1, v21);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGMR, MEMORY[0x1E695BCC0]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v23 = v20;
  v24 = v30;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v22);

  (*(v33 + 8))(v19, v24);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.HandleEvents<Publishers.Share<Publishers.CompactMap<Publishers.RemoveDuplicates<CurrentValueSubject<Bool?, Never>>, Bool>>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC5ShareCy_AC10CompactMapVy_AC16RemoveDuplicatesVy_AA19CurrentValueSubjectCySbSgs5NeverOGGSbGGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v25 = v31;
  v26 = Publisher.eraseToAnyPublisher()();
  (*(v32 + 8))(v16, v25);
  return v26;
}

uint64_t closure #2 in closure #1 in LACPhoneIntegrationSessionProvider.isSessionActive.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACPhoneIntegrationSessionProvider.start()();
  }

  return result;
}

uint64_t LACPhoneIntegrationSessionProvider.start()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - v7;
  if (*(v0 + 48))
  {
    v9 = LACLogABM(v6);
    Logger.init(_:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      v8 = v5;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Vision companion session subscriber already exists", v12, 2u);
    v8 = v5;
    goto LABEL_6;
  }

  *(v0 + 48) = 1;
  v13 = LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(0, 0);
  v14 = LACLogABM(v13);
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v15))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v15, "Vision companion session listener subscribed", v12, 2u);
LABEL_6:
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v8, v1);
}

uint64_t closure #3 in closure #1 in LACPhoneIntegrationSessionProvider.isSessionActive.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACPhoneIntegrationSessionProvider.stop()();
  }

  return result;
}

uint64_t LACPhoneIntegrationSessionProvider.stop()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - v7;
  if (*(v0 + 48) == 1)
  {
    *(v0 + 48) = 0;
    v9 = LACLogABM(v6);
    Logger.init(_:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      v5 = v8;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Vision companion session listener unsubscribed", v12, 2u);
    v5 = v8;
    goto LABEL_6;
  }

  v13 = LACLogABM(v6);
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v14))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v14, "Vision companion session subscriber does not exist", v12, 2u);
LABEL_6:
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

LABEL_8:

  return (*(v2 + 8))(v5, v1);
}

uint64_t (*LACPhoneIntegrationSessionProvider.isSessionActive.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = LACPhoneIntegrationSessionProvider.isSessionActive.getter();
  return LACOnenessSessionProvider.isSessionActive.modify;
}

id LACPhoneIntegrationSessionProvider.isAvailable.getter()
{
  v1 = [*(v0 + 24) environment];
  v2 = [v1 isFeatureAvailable];

  return v2;
}

uint64_t LACPhoneIntegrationSessionProvider.__allocating_init(environmentProvider:sharingManager:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized LACPhoneIntegrationSessionProvider.__allocating_init(environmentProvider:sharingManager:replyQueue:)(a1, a2, a3, v3, ObjectType);
}

uint64_t LACPhoneIntegrationSessionProvider.init(environmentProvider:sharingManager:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return specialized LACPhoneIntegrationSessionProvider.init(environmentProvider:sharingManager:replyQueue:)(a1, a2, a3, v3);
}

uint64_t LACPhoneIntegrationSessionProvider.refresh(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = LACLogABM(v6);
  Logger.init(_:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v10, v11, "Vision Companion session asked to refresh", v12, 2u);
    MEMORY[0x1B27246A0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(a1, a2);
}

uint64_t LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v31 = type metadata accessor for Logger();
  v6 = *(v31 - 8);
  v7 = MEMORY[0x1EEE9AC00](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v14 = *(v3 + 24);

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);
  v15 = [v14 environment];
  v16 = [v15 isFeatureAvailable];

  if (v16)
  {

    v19 = LACLogABM(v18);
    Logger.init(_:)();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B0233000, v20, v21, "Vision fetching companion session state", v22, 2u);
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    (*(v6 + 8))(v11, v31);
    v23 = *(v3 + 32);
    aBlock[4] = partial apply for closure #1 in LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_1;
    v24 = _Block_copy(aBlock);

    [v23 canAuthenticateWithCompanion:4 completion:v24];
    _Block_release(v24);
  }

  else
  {
    v25 = LACLogABM(v17);
    Logger.init(_:)();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B0233000, v26, v27, "Vision fetching companion session state skipped - companion not available", v28, 2u);
      MEMORY[0x1B27246A0](v28, -1, -1);
    }

    (*(v6 + 8))(v9, v31);
    closure #1 in LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(0, v12, a1);
  }
}

uint64_t LACPhoneIntegrationSessionProvider.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LACPhoneIntegrationSessionProvider.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in LACPhoneIntegrationSessionProvider.fetchCurrentState(completion:)(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = LACLogABM(v7);
  Logger.init(_:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1B0233000, v11, v12, "Vision companion session is active: %{BOOL}d", v13, 8u);
    MEMORY[0x1B27246A0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v15[7] = a1 & 1;
    CurrentValueSubject.send(_:)();
  }

  if (a3)
  {
    return a3(a1 & 1);
  }

  return result;
}

uint64_t specialized LACPhoneIntegrationSessionProvider.__allocating_init(environmentProvider:sharingManager:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for LACPhoneIntegrationSessionProvider();
  v8 = swift_allocObject();

  return specialized LACPhoneIntegrationSessionProvider.init(environmentProvider:sharingManager:replyQueue:)(a1, a2, a3, v8);
}

uint64_t specialized LACPhoneIntegrationSessionProvider.init(environmentProvider:sharingManager:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = 0;
  *(a4 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
  swift_allocObject();
  *(a4 + 56) = CurrentValueSubject.init(_:)();
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return a4;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for OS_dispatch_queue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

id LACUserDefaultsPersistentStore.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  if (!a2 || (v5 = objc_allocWithZone(MEMORY[0x1E695E000]), v6 = MEMORY[0x1B27229A0](a1, a2), , v7 = [v5 initWithSuiteName_], v6, !v7))
  {
    v7 = [objc_opt_self() standardUserDefaults];
  }

  v2[14] = v7;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for LACUserDefaultsPersistentStore();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t LACUserDefaultsPersistentStore.data(forKey:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](LACUserDefaultsPersistentStore.data(forKey:), v2, 0);
}

uint64_t LACUserDefaultsPersistentStore.data(forKey:)()
{
  v1 = *(v0[4] + 112);
  v2 = MEMORY[0x1B27229A0](v0[2], v0[3]);
  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:), a3, 0);
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:)()
{
  v1 = v0[2];
  v2 = [*(v0[3] + 112) dataForKey_];

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v3, v5);
  }

  else
  {

    v6.super.isa = 0;
  }

  v7 = v0[4];
  (v7)[2](v7, v6.super.isa, 0);

  _Block_release(v7);
  v8 = v0[1];

  return v8();
}

uint64_t LACUserDefaultsPersistentStore.setData(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](LACUserDefaultsPersistentStore.setData(_:forKey:), v4, 0);
}

uint64_t LACUserDefaultsPersistentStore.setData(_:forKey:)()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = *(v0[6] + 112);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x1B27229A0](v2, v1);
  [v3 setObject:isa forKey:v5];

  v6 = v0[1];

  return v6();
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:)(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v4[5] = v10;
  v4[6] = v12;

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:), a4, 0);
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[3] + 112);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 setObject:isa forKey:v4];

  outlined consume of Data._Representation(v1, v2);
  v3[2](v3, 0);
  _Block_release(v3);
  v7 = v0[1];

  return v7();
}

uint64_t LACUserDefaultsPersistentStore.removeObject(forKey:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](LACUserDefaultsPersistentStore.removeObject(forKey:), v2, 0);
}

uint64_t LACUserDefaultsPersistentStore.removeObject(forKey:)()
{
  v1 = *(v0[4] + 112);
  v2 = MEMORY[0x1B27229A0](v0[2], v0[3]);
  [v1 removeObjectForKey_];

  v3 = v0[1];

  return v3();
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:), a3, 0);
}

uint64_t @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:)()
{
  v1 = v0[4];
  v2 = v0[2];
  [*(v0[3] + 112) removeObjectForKey_];

  v1[2](v1, 0);
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

void LACUserDefaultsPersistentStore.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void LACUserDefaultsPersistentStore.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t LACUserDefaultsPersistentStore.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of LACUserDefaultsPersistentStore.data(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of LACUserDefaultsPersistentStore.setData(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LACUserDefaultsPersistentStore.removeObject(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v9(a1, a2);
}

uint64_t partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:)(v2, v3, v5, v4);
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:)(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 featureFlagPhoneIntegrationEnabled];

  if (v12)
  {
    v14 = [objc_opt_self() deviceHasFaceID];
    if (v14)
    {
      v15 = [objc_msgSend(v0 eligibilityHelper)];
      v16 = swift_unknownObjectRelease();
      if (v15)
      {
        return 1;
      }

      v24 = LACLogABM(v16);
      Logger.init(_:)();
      v19 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v19, v25))
      {
        goto LABEL_12;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B0233000, v19, v25, "Not eligible for authentication with Vision Pro", v21, 2u);
    }

    else
    {
      v22 = LACLogABM(v14);
      Logger.init(_:)();
      v19 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v19, v23))
      {
        v5 = v8;
        goto LABEL_13;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B0233000, v19, v23, "Authentication with Vision Pro is available only for Face ID devices", v21, 2u);
      v10 = v8;
    }

LABEL_11:
    MEMORY[0x1B27246A0](v21, -1, -1);
LABEL_12:
    v5 = v10;
    goto LABEL_13;
  }

  v18 = LACLogABM(v13);
  Logger.init(_:)();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B0233000, v19, v20, "Authentication with Vision Pro is not enabled", v21, 2u);
    v10 = v5;
    goto LABEL_11;
  }

LABEL_13:

  (*(v2 + 8))(v5, v1);
  return 0;
}

id LACPhoneIntegrationEnvironmentProvider.environment.getter()
{
  v1 = [v0 isFeatureAvailable];
  v2 = LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter();
  v3 = objc_allocWithZone(LACCompanionAuthenticationEnvironment);

  return [v3 initWithFeatureAvailable:v1 featureSupported:v2 & 1];
}

id LACPhoneIntegrationEnvironmentProvider.init(eligibilityHelper:sharingManager:work:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEligibilityHelper:a1 sharingManager:a2 workQueue:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v4;
}

{
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_hasPairedDevices) = 0;
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_subscription) = 0;
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_eligibilityHelper) = a1;
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_sharingManager) = a2;
  *(v3 + OBJC_IVAR___LACPhoneIntegrationEnvironmentProvider_workQueue) = a3;
  v8.super_class = LACPhoneIntegrationEnvironmentProvider;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  LACPhoneIntegrationEnvironmentProvider.setup()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

uint64_t LACPhoneIntegrationEnvironmentProvider.setup()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v11 = [objc_opt_self() deviceLockState];
  *(v10 + 16) = v11;
  if (!v11)
  {
    v24 = [v1 workQueue];
    v12 = swift_allocObject();
    v25 = v6;
    v13 = v12;
    swift_unknownObjectWeakInit();
    v32 = partial apply for closure #1 in LACPhoneIntegrationEnvironmentProvider.setup();
    v33 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v31 = &block_descriptor_23;
    v14 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    v26 = v1;
    v15 = v7;
    v16 = v3;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v24;
    MEMORY[0x1B2722D20](0, v9, v5, v14);
    _Block_release(v14);

    (*(v16 + 8))(v5, v2);
    (*(v15 + 8))(v9, v25);
    v1 = v26;
  }

  v18 = [v1 workQueue];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v10;
  *(v20 + 24) = v19;
  v32 = partial apply for closure #2 in LACPhoneIntegrationEnvironmentProvider.setup();
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed (@unowned AKSEventType, @guaranteed CFDictionaryRef?) -> ();
  v31 = &block_descriptor_19;
  v21 = _Block_copy(&aBlock);

  v22 = AKSEventsRegister();
  _Block_release(v21);

  [v1 setSubscription_];
}

void __swiftcall LACPhoneIntegrationEnvironmentProvider.init()(LACPhoneIntegrationEnvironmentProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void closure #1 in LACPhoneIntegrationEnvironmentProvider.setup()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter())
    {
      v3 = [v2 sharingManager];
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = swift_allocObject();
      v5[3] = 0;
      v5[4] = 0;
      v5[2] = v4;
      aBlock[4] = closure #1 in LACPhoneIntegrationEnvironmentProvider.refreshAvailability(completion:)partial apply;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_31;
      v6 = _Block_copy(aBlock);

      [v3 pairedDevicesForCompanion:4 completion:v6];

      _Block_release(v6);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t LACPhoneIntegrationEnvironmentProvider.refresh()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](LACPhoneIntegrationEnvironmentProvider.refresh(), 0, 0);
}

{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = LACPhoneIntegrationEnvironmentProvider.refresh();

  return MEMORY[0x1EEE6DDE0]();
}

{

  return MEMORY[0x1EEE6DFA0](LACPhoneIntegrationEnvironmentProvider.refresh(), 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in LACPhoneIntegrationEnvironmentProvider.refresh()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, _sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  v11 = *(v5 + 16);
  v11(aBlock - v9, a1, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v10, v4);
  if (LACPhoneIntegrationEnvironmentProvider.isFeatureSupported.getter())
  {
    (*(v5 + 8))(v8, v4);
    v14 = [a2 sharingManager];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = partial apply for closure #1 in closure #1 in LACPhoneIntegrationEnvironmentProvider.refresh();
    v16[4] = v13;
    aBlock[4] = partial apply for closure #1 in LACPhoneIntegrationEnvironmentProvider.refreshAvailability(completion:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_2;
    v17 = _Block_copy(aBlock);

    [v14 pairedDevicesForCompanion:4 completion:v17];

    _Block_release(v17);
    return swift_unknownObjectRelease();
  }

  else
  {
    CheckedContinuation.resume(returning:)();

    return (*(v5 + 8))(v8, v4);
  }
}

unint64_t type metadata accessor for LACPhoneIntegrationEnvironmentProvider()
{
  result = lazy cache variable for type metadata for LACPhoneIntegrationEnvironmentProvider;
  if (!lazy cache variable for type metadata for LACPhoneIntegrationEnvironmentProvider)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACPhoneIntegrationEnvironmentProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id LACEvaluationRequestRootProcessor.__allocating_init(processor:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id LACEvaluationRequestRootProcessor.init(processor:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void LACEvaluationRequestRootProcessor.handle(_:completion:)(void *a1, void (*a2)(id), uint64_t a3)
{
  if ([*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor) canProcessRequest_])
  {

    LACEvaluationRequestRootProcessor.process(_:completion:)(a1, a2, a3);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = specialized static LACEvaluationRequestRootProcessor.noResultError(request:)(a1);
    v9 = _convertErrorToNSError(_:)();

    v10 = [v7 resultWithFailure_];
    a2(v10);
  }
}

id LACEvaluationRequestRootProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACEvaluationRequestRootProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void LACEvaluationRequestRootProcessor.retry(request:for:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Logger();
  v38 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = LACLogProcessor(v10);
  Logger.init(_:)();
  v14 = v4;
  swift_unknownObjectRetain();
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = a4;
    v21 = v20;
    v35 = swift_slowAlloc();
    v39 = a1;
    v40 = v35;
    *v19 = 138412802;
    *(v19 + 4) = v14;
    *v21 = v14;
    *(v19 + 12) = 2080;
    v22 = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20LACEvaluationRequest_pMd, _sSo20LACEvaluationRequest_pMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v40);
    v34 = v9;
    v26 = v25;

    *(v19 + 14) = v26;
    *(v19 + 22) = 2112;
    v27 = a2;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v28;
    v21[1] = v28;
    _os_log_impl(&dword_1B0233000, v16, v17, "%@ retrying request %s for error: %@", v19, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v29 = v21;
    a4 = v37;
    MEMORY[0x1B27246A0](v29, -1, -1);
    v30 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B27246A0](v30, -1, -1);
    v31 = v19;
    a3 = v36;
    MEMORY[0x1B27246A0](v31, -1, -1);

    (*(v38 + 8))(v12, v34);
  }

  else
  {

    (*(v38 + 8))(v12, v9);
  }

  v32 = _convertErrorToNSError(_:)();
  [a1 setRetryingForError_];

  LACEvaluationRequestRootProcessor.process(_:completion:)(a1, a3, a4);
}

id specialized static LACEvaluationRequestRootProcessor.noResultError(request:)(void *a1)
{
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(29);

  [a1 identifier];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2722A80](v3);

  v4 = MEMORY[0x1B27229A0](0xD00000000000001BLL, 0x80000001B0355050);

  v5 = [v2 errorWithCode:-1000 debugDescription:v4];

  return v5;
}

uint64_t SerialTask.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  SerialTask.start()();
  return v0;
}

uint64_t SerialTask.init()()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  SerialTask.start()();
  return v0;
}

uint64_t SerialTask.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v5, v2);
  }

  outlined destroy of AsyncStream<()>.Continuation?(v1 + v6, &_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  return v1;
}

uint64_t SerialTask.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v5, v2);
  }

  outlined destroy of AsyncStream<()>.Continuation?(v1 + v6, &_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  return swift_deallocClassInstance();
}

uint64_t SerialTask.add(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYac__GSgMd, &_sScS12ContinuationV11YieldResultOyyyYac__GSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v20 - v13;
  v15 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  swift_beginAccess();
  outlined init with copy of AsyncStream<()>.Continuation?(v2 + v15, v11);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    outlined destroy of AsyncStream<()>.Continuation?(v11, &_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
    v16 = 1;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    outlined destroy of AsyncStream<()>.Continuation?(v11, &_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v20[1] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async () -> ();
    v20[2] = v17;

    AsyncStream.Continuation.yield(_:)();
    (*(v6 + 8))(v8, v5);
    v16 = 0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYac__GMd, &_sScS12ContinuationV11YieldResultOyyyYac__GMR);
  (*(*(v18 - 8) + 56))(v14, v16, 1, v18);
  return outlined destroy of AsyncStream<()>.Continuation?(v14, &_sScS12ContinuationV11YieldResultOyyyYac__GSgMd, &_sScS12ContinuationV11YieldResultOyyyYac__GSgMR);
}

uint64_t thunk for @escaping @callee_guaranteed @async () -> ()(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v5();
}

uint64_t SerialTask.start()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v19 = &v18 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYac__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYac__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYacGMd, &_sScSyyyYacGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syyYacMd, &_syyYacMR);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v2);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v13 = type metadata accessor for TaskPriority();
  v14 = v19;
  (*(*(v13 - 8) + 56))(v19, 1, 1, v13);
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v7 + 32))(v16 + v15, v10, v6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #2 in SerialTask.start(), v16);

  return (*(v7 + 8))(v12, v6);
}

uint64_t outlined init with copy of AsyncStream<()>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async () -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return thunk for @escaping @callee_guaranteed @async () -> ()(a1, v4);
}

uint64_t type metadata accessor for SerialTask(uint64_t a1)
{
  result = type metadata singleton initialization cache for SerialTask;
  if (!type metadata singleton initialization cache for SerialTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SerialTask(uint64_t a1)
{
  type metadata accessor for AsyncStream<()>.Continuation?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<()>.Continuation?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<()>.Continuation?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<()>.Continuation?);
    }
  }
}

uint64_t closure #1 in SerialTask.start()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
    swift_beginAccess();
    outlined assign with take of AsyncStream<()>.Continuation?(v5, v7 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #2 in SerialTask.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyyyYac_GMd, &_sScS8IteratorVyyyYac_GMR);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in SerialTask.start(), 0, 0);
}

uint64_t closure #2 in SerialTask.start()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYacGMd, &_sScSyyyYacGMR);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #2 in SerialTask.start();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #2 in SerialTask.start(), 0, 0);
}

{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = closure #2 in SerialTask.start();

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  _sxRi_zRi0_zlyytIsegHr_SgWOe(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = closure #2 in SerialTask.start();
  v6 = *(v1 + 40);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v6);
}

uint64_t partial apply for closure #2 in SerialTask.start()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYacGMd, &_sScSyyyYacGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return closure #2 in SerialTask.start()(a1, v6, v7, v1 + v5);
}

uint64_t _sxRi_zRi0_zlyytIsegHr_SgWOe(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined assign with take of AsyncStream<()>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GSgMd, &_sScS12ContinuationVyyyYac_GSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void LACPhoneIntegrationController.canAuthenticateRequest(_:availabilityError:)(void *a1, void *a2)
{
  v3 = v2;
  v96 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Logger();
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v87 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v87 - v15;
  if (a2)
  {
    v17 = _convertErrorToNSError(_:)();
  }

  else
  {
    v17 = 0;
  }

  v92.receiver = v3;
  v92.super_class = LACPhoneIntegrationController;
  v93[0] = 0;
  v18 = objc_msgSendSuper2(&v92, sel_canAuthenticateRequest_availabilityError_error_, a1, v17, v93);

  if (!v18)
  {
    v27 = v93[0];
    _convertNSErrorToError(_:)();

    goto LABEL_13;
  }

  v19 = v93[0];
  v87 = a1;
  v20 = [a1 options];
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v91 = 1092;
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v93), (v24 & 1) == 0))
  {

    outlined destroy of AnyHashable(v93);
LABEL_15:
    v94 = 0u;
    v95 = 0u;
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v22 + 56) + 32 * v23, &v94);
  outlined destroy of AnyHashable(v93);

  if (!*(&v95 + 1))
  {
LABEL_16:
    outlined destroy of AsyncStream<()>.Continuation?(&v94, &_sypSgMd, _sypSgMR);
    goto LABEL_17;
  }

  if (swift_dynamicCast() && (v93[0] & 1) != 0)
  {
    v25 = objc_opt_self();
    v26 = MEMORY[0x1B27229A0](0xD00000000000001ELL, 0x80000001B0355140);
    [v25 errorWithCode:-1000 subcode:6 debugDescription:v26];

LABEL_13:
    swift_willThrow();
    return;
  }

LABEL_17:
  if (!a2)
  {
    return;
  }

  v93[0] = a2;
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v29 = v94;
  v30 = objc_opt_self();
  v31 = v29;
  v32 = _convertErrorToNSError(_:)();

  v33 = [v30 error:v32 hasCode:-1004];
  if (!v33)
  {
LABEL_31:

    return;
  }

  v34 = specialized LACPhoneIntegrationController.isMechanismAvailable(_:nonInteractiveError:)(13, v31);
  if (!v34)
  {
    v88 = v30;
    v40 = LACLogABM(v34);
    Logger.init(_:)();
    v41 = v87;
    swift_unknownObjectRetain_n();
    v31 = v31;
    v42 = v3;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543874;
      *(v45 + 4) = v42;
      *v46 = v42;
      *(v45 + 12) = 1026;
      v47 = v42;
      v48 = [v41 identifier];
      swift_unknownObjectRelease();
      *(v45 + 14) = v48;
      swift_unknownObjectRelease();
      *(v45 + 18) = 2112;
      *(v45 + 20) = v31;
      v46[1] = v31;
      v49 = v31;
      _os_log_impl(&dword_1B0233000, v43, v44, "%{public}@ Companion not available for request: %{public}u error: %@", v45, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v46, -1, -1);
      MEMORY[0x1B27246A0](v45, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

    (*(v89 + 8))(v9, v90);
    v50 = MEMORY[0x1B27229A0](0xD000000000000017, 0x80000001B03550B0);
    v51 = [v88 errorWithCode:-1000 subcode:6 debugDescription:v50];
    goto LABEL_30;
  }

  v35 = specialized LACPhoneIntegrationController.mechanismTree(from:)(v31);
  v36 = v87;
  if (!v35)
  {
    v50 = MEMORY[0x1B27229A0](0xD00000000000001ELL, 0x80000001B03550D0);
    v51 = [v30 errorWithCode:-1000 subcode:6 debugDescription:v50];
LABEL_30:
    v51;

    swift_willThrow();
    goto LABEL_31;
  }

  v37 = v35;
  if (specialized LACPhoneIntegrationController.isMechanismAvailable(_:nonInteractiveError:)(7, v31))
  {
    v38 = v3;
    v39 = LACPhoneIntegrationController.isBiometryReplaceableByCompanion(tree:)(v37);
    if (v39)
    {
    }

    else
    {
      v88 = v30;
      v62 = LACLogABM(v39);
      Logger.init(_:)();
      v63 = v87;
      swift_unknownObjectRetain_n();
      v64 = v31;
      v65 = v38;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138543874;
        *(v68 + 4) = v65;
        *v69 = v65;
        *(v68 + 12) = 1026;
        v70 = v65;
        v71 = v66;
        v72 = [v63 identifier];
        swift_unknownObjectRelease();
        *(v68 + 14) = v72;
        swift_unknownObjectRelease();
        *(v68 + 18) = 2112;
        *(v68 + 20) = v64;
        v69[1] = v64;
        v73 = v64;
        _os_log_impl(&dword_1B0233000, v71, v67, "%{public}@ Biometry is not replaceable by companion for request: %{public}u error: %@", v68, 0x1Cu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v69, -1, -1);
        MEMORY[0x1B27246A0](v68, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      (*(v89 + 8))(v16, v90);
      v85 = MEMORY[0x1B27229A0](0xD000000000000028, 0x80000001B0355110);
      [v88 errorWithCode:-1000 subcode:6 debugDescription:v85];

      swift_willThrow();
    }
  }

  else
  {
    v52 = v3;
    v53 = LACPhoneIntegrationController.isSatisfiableByCompanion(tree:)(v37);
    if (v53 & 1) != 0 || (v53 = LACPhoneIntegrationController.isCompanionRequired(tree:)(v37), (v53))
    {
      v54 = LACLogABM(v53);
      Logger.init(_:)();
      v55 = v3;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138543362;
        *(v58 + 4) = v55;
        *v59 = v55;
        v60 = v55;
        _os_log_impl(&dword_1B0233000, v56, v57, "%{public}@ Face ID not requested but request can be authenticated by companion", v58, 0xCu);
        outlined destroy of AsyncStream<()>.Continuation?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v59, -1, -1);
        MEMORY[0x1B27246A0](v58, -1, -1);
        v61 = v31;
      }

      else
      {
        v61 = v56;
        v56 = v31;
      }

      (*(v89 + 8))(v14, v90);
    }

    else
    {
      v74 = LACLogABM(v53);
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v75 = v31;
      v76 = v52;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138543874;
        *(v79 + 4) = v76;
        *v80 = v76;
        *(v79 + 12) = 1026;
        v81 = v76;
        v82 = v77;
        v83 = [v36 identifier];
        swift_unknownObjectRelease();
        *(v79 + 14) = v83;
        swift_unknownObjectRelease();
        *(v79 + 18) = 2112;
        *(v79 + 20) = v75;
        v80[1] = v75;
        v84 = v75;
        _os_log_impl(&dword_1B0233000, v82, v78, "%{public}@ Face ID not available for request: %{public}u error: %@", v79, 0x1Cu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v80, -1, -1);
        MEMORY[0x1B27246A0](v79, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      (*(v89 + 8))(v88, v90);
      v86 = MEMORY[0x1B27229A0](0xD000000000000015, 0x80000001B03550F0);
      [v30 errorWithCode:-1000 subcode:6 debugDescription:v86];

      swift_willThrow();
    }
  }
}

uint64_t LACPhoneIntegrationController.isSatisfiableByCompanion(tree:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 isSatisfiableWithValue_];
  v8 = LACLogABM(v7);
  Logger.init(_:)();
  v9 = v1;
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = 13;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v7;
    v18 = v17;
    v31 = v17;
    *v14 = 138544130;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v16 = v9;
    v16[1] = v10;
    *(v14 + 22) = 2080;
    if (v30)
    {
      v19 = 29545;
    }

    else
    {
      v19 = 0x746F6E207369;
    }

    v28 = v3;
    if (v30)
    {
      v20 = 0xE200000000000000;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    v21 = v9;
    v22 = v10;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v31);

    *(v14 + 24) = v23;
    *(v14 + 32) = 2048;
    *(v14 + 34) = v27;
    _os_log_impl(&dword_1B0233000, v11, v12, "%{public}@ Tree: %@ %s satisfiable by %ld", v14, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v24 = v18;
    v7 = v30;
    MEMORY[0x1B27246A0](v24, -1, -1);
    MEMORY[0x1B27246A0](v14, -1, -1);

    (*(v29 + 8))(v6, v28);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t LACPhoneIntegrationController.isCompanionRequired(tree:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 isValueRequired_];
  v26 = v7;
  v8 = LACLogABM(v7);
  Logger.init(_:)();
  v9 = v1;
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v4;
    v17 = v16;
    v27 = v16;
    *v14 = 138544130;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v9;
    v15[1] = v10;
    *(v14 + 22) = 2048;
    *(v14 + 24) = 13;
    *(v14 + 32) = 2080;
    if (v26)
    {
      v18 = 29545;
    }

    else
    {
      v18 = 0x746F6E207369;
    }

    if (v26)
    {
      v19 = 0xE200000000000000;
    }

    else
    {
      v19 = 0xE600000000000000;
    }

    v20 = v9;
    v21 = v10;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v27);

    *(v14 + 34) = v22;
    _os_log_impl(&dword_1B0233000, v11, v12, "%{public}@ Tree: %@ value: %ld %s required", v14, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B27246A0](v17, -1, -1);
    MEMORY[0x1B27246A0](v14, -1, -1);

    (*(v24 + 8))(v6, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return v26;
}

uint64_t LACPhoneIntegrationController.isBiometryReplaceableByCompanion(tree:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 13;
  v7 = [a1 isValue:7 replaceableByValue:?];
  v8 = LACLogABM(v7);
  Logger.init(_:)();
  v9 = v1;
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v7;
    v18 = v17;
    v31 = v17;
    *v14 = 138544386;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v16 = v9;
    v16[1] = v10;
    *(v14 + 22) = 2048;
    *(v14 + 24) = 7;
    *(v14 + 32) = 2080;
    if (v30)
    {
      v19 = 29545;
    }

    else
    {
      v19 = 0x746F6E207369;
    }

    if (v30)
    {
      v20 = 0xE200000000000000;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    v21 = v9;
    v22 = v10;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v31);

    *(v14 + 34) = v23;
    *(v14 + 42) = 2048;
    *(v14 + 44) = v29;
    _os_log_impl(&dword_1B0233000, v11, v12, "%{public}@ Tree: %@ and value %ld %s replaceable by %ld", v14, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v24 = v18;
    v7 = v30;
    MEMORY[0x1B27246A0](v24, -1, -1);
    MEMORY[0x1B27246A0](v14, -1, -1);

    (*(v28 + 8))(v6, v27);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

void LACPhoneIntegrationController.processRequest(_:configuration:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v10;
  v11[5] = a1;
  aBlock[4] = partial apply for closure #1 in LACPhoneIntegrationController.processRequest(_:configuration:completion:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  aBlock[3] = &block_descriptor_4;
  v12 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v13.receiver = v5;
  v13.super_class = LACPhoneIntegrationController;
  objc_msgSendSuper2(&v13, sel_processRequest_configuration_completion_, a1, a2, v12);
  _Block_release(v12);
}

void closure #1 in LACPhoneIntegrationController.processRequest(_:configuration:completion:)(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v119 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v118 = &v110 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v110 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v110 - v21;
  v23 = [a1 error];
  if (v23 && (v116 = v8, v117 = v9, v124[0] = v23, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0), (swift_dynamicCast() & 1) != 0))
  {
    v113 = v12;
    v24 = v122;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = [v24 code];
      v26 = v25;
      v115 = a3;
      if (v25 == -1000)
      {
        v112 = objc_opt_self();
        v27 = v24;
        v28 = _convertErrorToNSError(_:)();
        v110 = v27;

        LODWORD(v27) = [v112 error:v28 hasCode:-1000 subcode:6];
        if (v27)
        {
          v29 = v119;
          v30 = [v119 options];
          v111 = a2;
          if (v30)
          {
            v31 = v30;
            v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          }

          v60 = v117;
          *&v122 = -1000;
          AnyHashable.init<A>(_:)();
          v123 = MEMORY[0x1E69E6370];
          LOBYTE(v122) = 1;
          outlined init with take of Any(&v122, v121);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v120 = v32;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v121, v124, isUniquelyReferenced_nonNull_native);
          outlined destroy of AnyHashable(v124);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v29 updateOptions_];

          v64 = LACLogABM(v63);
          Logger.init(_:)();
          v35 = v110;
          v65 = Strong;
          v37 = Strong;
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *v68 = 138543874;
            *(v68 + 4) = v37;
            *(v68 + 12) = 2112;
            *(v68 + 14) = v37;
            *v69 = v65;
            v69[1] = v65;
            *(v68 + 22) = 2112;
            *(v68 + 24) = v35;
            v69[2] = v35;
            v70 = v37;
            v71 = v35;
            v72 = v70;
            _os_log_impl(&dword_1B0233000, v66, v67, "%{public}@ %@ replaced error: %@ with concurrentBiometryAndCompanion option", v68, 0x20u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            v73 = v69;
            v60 = v117;
            MEMORY[0x1B27246A0](v73, -1, -1);
            MEMORY[0x1B27246A0](v68, -1, -1);
          }

          (*(v60 + 8))(v20, v116);
          v45 = [objc_opt_self() resultWithNext_];
          v111();
LABEL_31:

          return;
        }
      }

      v112 = v24;
      if (v26 == -4)
      {
        v33 = a2;
        v34 = LACLogABM(v25);
        Logger.init(_:)();
        v35 = v112;
        v36 = Strong;
        v37 = Strong;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138543874;
          *(v40 + 4) = v37;
          *(v40 + 12) = 2112;
          *(v40 + 14) = v37;
          *v41 = v36;
          v41[1] = v36;
          *(v40 + 22) = 2112;
          *(v40 + 24) = v35;
          v41[2] = v35;
          v42 = v37;
          v43 = v35;
          v44 = v42;
          _os_log_impl(&dword_1B0233000, v38, v39, "%{public}@ %@ replaced authentication error: %@ with next", v40, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v41, -1, -1);
          MEMORY[0x1B27246A0](v40, -1, -1);
        }

        (*(v117 + 8))(v17, v116);
        v45 = [objc_opt_self() resultWithNext_];
        v33();
        goto LABEL_31;
      }

      if (v26 != -1)
      {
        (a2)(a1);

LABEL_26:
        return;
      }

      v111 = a2;
      v50 = [v112 underlyingErrors];
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = 0;
        while (1)
        {
          if (v53 >= *(v51 + 16))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return;
          }

          v54 = *(v51 + 8 * v53 + 32);
          v55 = objc_opt_self();
          v56 = v54;
          v57 = _convertErrorToNSError(_:)();
          LOBYTE(v55) = [v55 isSharingError_];

          if (v55)
          {
            break;
          }

          ++v53;

          if (v52 == v53)
          {
            goto LABEL_22;
          }
        }

        v124[0] = v54;
        v58 = swift_dynamicCast();
        if ((v58 & 1) == 0)
        {
LABEL_41:
          v59 = v111;
          goto LABEL_42;
        }

        v110 = v122;
        v74 = [v122 underlyingErrors];
        v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v76 = 0;
        v77 = *(v75 + 16);
        do
        {
          if (v77 == v76)
          {

            goto LABEL_41;
          }

          if (v76 >= *(v75 + 16))
          {
            goto LABEL_46;
          }

          v78 = v76 + 1;
          v79 = *(v75 + 8 * v76 + 32);
          v80 = objc_opt_self();
          v81 = v79;
          v82 = _convertErrorToNSError(_:)();
          LOBYTE(v80) = [v80 error:v82 hasCode:-2];

          v76 = v78;
        }

        while ((v80 & 1) == 0);

        v84 = LACLogABM(v83);
        v85 = v118;
        Logger.init(_:)();
        v86 = Strong;
        v87 = Strong;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();

        v90 = os_log_type_enabled(v88, v89);
        v91 = v116;
        if (v90)
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *v92 = 138543618;
          *(v92 + 4) = v87;
          *(v92 + 12) = 2112;
          *(v92 + 14) = v87;
          *v93 = v86;
          v93[1] = v86;
          v94 = v87;
          _os_log_impl(&dword_1B0233000, v88, v89, "%{public}@ %@ failing immediately because user explicitly cancelled authentication on companion", v92, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v93, -1, -1);
          MEMORY[0x1B27246A0](v92, -1, -1);
        }

        (*(v117 + 8))(v85, v91);
        (v111)(a1);

        goto LABEL_26;
      }

LABEL_22:

      v59 = v111;
LABEL_42:
      v95 = Strong;
      v96 = v112;
      v97 = LACLogABM(v58);
      Logger.init(_:)();
      v98 = v96;
      v99 = v95;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();

      v102 = os_log_type_enabled(v100, v101);
      v103 = v119;
      if (v102)
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = 138543874;
        *(v104 + 4) = v99;
        *(v104 + 12) = 2112;
        *(v104 + 14) = v99;
        *v105 = v95;
        v105[1] = v95;
        *(v104 + 22) = 2112;
        *(v104 + 24) = v98;
        v105[2] = v98;
        v106 = v99;
        v107 = v98;
        v108 = v106;
        _os_log_impl(&dword_1B0233000, v100, v101, "%{public}@ %@ replaced authentication error: %@ with next", v104, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v105, -1, -1);
        MEMORY[0x1B27246A0](v104, -1, -1);
      }

      (*(v117 + 8))(v113, v116);
      v109 = [objc_opt_self() resultWithNext_];
      v59();
    }

    else
    {
      v46 = LACLogABM(0);
      Logger.init(_:)();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1B0233000, v47, v48, "Controller deallocated", v49, 2u);
        MEMORY[0x1B27246A0](v49, -1, -1);
      }

      else
      {
      }

      (*(v117 + 8))(v22, v116);
    }
  }

  else
  {
    (a2)(a1);
  }
}

id LACPhoneIntegrationController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuthenticator:a1 clientInfoProvider:a2 environmentProvider:a3 sessionMonitor:a4 replyQueue:a5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

{
  v8.super_class = LACPhoneIntegrationController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithAuthenticator_clientInfoProvider_environmentProvider_sessionMonitor_replyQueue_, a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

BOOL specialized LACPhoneIntegrationController.isMechanismAvailable(_:nonInteractiveError:)(uint64_t a1, id a2)
{
  v3 = [a2 userInfo];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v4 + 16))
  {

    goto LABEL_6;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v7, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v10 = v18;
LABEL_8:
  v11 = *(v10 + 16);
  v12 = 32;
  do
  {
    v13 = v11;
    if (v11-- == 0)
    {
      break;
    }

    v15 = *(v10 + v12);
    v12 += 8;
  }

  while (v15 != a1);
  v16 = v13 != 0;

  return v16;
}

id specialized LACPhoneIntegrationController.mechanismTree(from:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = _convertErrorToNSError(_:)();
  v8 = [v6 mechanismTreeFromError_];

  if (!v8)
  {
    v10 = LACLogABM(v9);
    Logger.init(_:)();
    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = [v11 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = Dictionary.description.getter();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1B0233000, v12, v13, "Could not parse tree: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B27246A0](v15, -1, -1);
      MEMORY[0x1B27246A0](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v8;
}

uint64_t type metadata accessor for NSError(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t LACPersistentStore.object<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a3;
  v7[23] = a5;
  v7[20] = a1;
  v7[21] = a2;
  return MEMORY[0x1EEE6DFA0](LACPersistentStore.object<A>(forKey:), 0, 0);
}

uint64_t LACPersistentStore.object<A>(forKey:)()
{
  v1 = v0[25];
  v2 = MEMORY[0x1B27229A0](v0[21], v0[22]);
  v0[26] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LACPersistentStore.object<A>(forKey:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DataVSgs5Error_pGMd, &_sSccy10Foundation4DataVSgs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data?;
  v0[13] = &block_descriptor_5;
  v0[14] = v3;
  [v1 dataForKey:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = LACPersistentStore.object<A>(forKey:);
  }

  else
  {
    v2 = LACPersistentStore.object<A>(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  if (v1 >> 60 == 15)
  {
    v3 = 1;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v2, v1);

    v3 = 0;
  }

  (*(*(*(v0 + 184) - 8) + 56))(*(v0 + 160), v3, 1);
  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 208);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t LACPersistentStore.set<A>(object:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[22] = a6;
  v7[23] = v6;
  v7[20] = a3;
  v7[21] = a5;
  v7[18] = a1;
  v7[19] = a2;
  return MEMORY[0x1EEE6DFA0](LACPersistentStore.set<A>(object:for:), 0, 0);
}

uint64_t LACPersistentStore.set<A>(object:for:)()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[24] = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[25] = v1;
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];

  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[26] = isa;
  v6 = MEMORY[0x1B27229A0](v4, v3);
  v0[27] = v6;
  v0[2] = v0;
  v0[3] = LACPersistentStore.set<A>(object:for:);
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_4;
  v0[14] = v7;
  [v2 setData:isa forKey:v6 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = LACPersistentStore.set<A>(object:for:);
  }

  else
  {
    v2 = LACPersistentStore.set<A>(object:for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[26];
  v2 = v0[27];
  outlined consume of Data._Representation(v0[24], v0[25]);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  swift_willThrow();
  outlined consume of Data._Representation(v4, v2);

  v5 = v0[1];

  return v5();
}

uint64_t @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x1EEE6DEE8](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t LACDTOMutablePendingPolicyEvaluation.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);

  return v1;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.isInvalidated.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACDTOMutablePendingPolicyEvaluation.isInvalidated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for LACDTOMutablePendingPolicyEvaluation.callbackURL : LACDTOMutablePendingPolicyEvaluation(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Any)(a1, &v8 - v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xC0))(v6);
}

uint64_t LACDTOMutablePendingPolicyEvaluation.callbackURL.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of (String, Any)(v4 + v8, a4, a2, a3);
}

uint64_t LACDTOMutablePendingPolicyEvaluation.callbackURL.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t key path setter for LACDTOMutablePendingPolicyEvaluation.notificationScheduledAt : LACDTOMutablePendingPolicyEvaluation(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Any)(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xD8))(v6);
}

Class @objc LACDTOMutablePendingPolicyEvaluation.notificationScheduledAt.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  outlined init with copy of (String, Any)(a1 + v8, v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

void @objc LACDTOMutablePendingPolicyEvaluation.notificationScheduledAt.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  outlined assign with take of URL?(v9, &a1[v12], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
}

uint64_t key path setter for LACDTOMutablePendingPolicyEvaluation.coolOffStarted : LACDTOMutablePendingPolicyEvaluation(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Any)(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xF0))(v6);
}

id @objc LACDTOMutablePendingPolicyEvaluation.callbackReason.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;

    v6 = MEMORY[0x1B27229A0](v5, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.callbackReason.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t @objc LACDTOMutablePendingPolicyEvaluation.callbackReason.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.callbackReason.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.hasNotifiedUserAboutCompletion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v9);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v12 = 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    static Date.now.getter();
    v12 = static Date.< infix(_:_:)();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v11, v4);
  }

  return v12 & 1;
}

id LACDTOMutablePendingPolicyEvaluation.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated] = 0;
  v6 = &v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackReason];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_notificationScheduledAt;
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(&v5[v9], 1, 1, v10);
  v11(&v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted], 1, 1, v10);
  v12 = &v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_ratchetUUID];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier];
  *v13 = a1;
  v13[1] = a2;
  v15.receiver = v5;
  v15.super_class = v2;
  return objc_msgSendSuper2(&v15, sel_init);
}

id LACDTOMutablePendingPolicyEvaluation.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated] = 0;
  v5 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackReason];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_notificationScheduledAt;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(&v2[v8], 1, 1, v9);
  v10(&v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted], 1, 1, v9);
  v11 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_ratchetUUID];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier];
  *v12 = a1;
  v12[1] = a2;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t type metadata accessor for LACDTOMutablePendingPolicyEvaluation(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACDTOMutablePendingPolicyEvaluation;
  if (!type metadata singleton initialization cache for LACDTOMutablePendingPolicyEvaluation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.isNotificationScheduled(for:)(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  v3 = MEMORY[0x1EEE9AC00](v42);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v33 - v21;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))(v20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v23 = 0;
    return v23 & 1;
  }

  v39 = a1;
  v38 = *(v13 + 32);
  v38(v22, v11, v12);
  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  v37 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v34 = v22;
    v35 = v19;
    v25 = *(v13 + 16);
    v25(v7, v19, v12);
    v26 = v42;
    v27 = &v7[*(v42 + 48)];
    v36 = v16;
    v25(v27, v16, v12);
    outlined init with copy of (String, Any)(v7, v5, &_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
    v28 = *(v26 + 48);
    v29 = v41;
    v30 = v38;
    v38(v41, v5, v12);
    v31 = *(v13 + 8);
    v31(&v5[v28], v12);
    outlined init with take of (lower: Date, upper: Date)(v7, v5);
    v30(v29 + *(v40 + 36), &v5[*(v26 + 48)], v12);
    v31(v5, v12);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v23 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v23 = 0;
    }

    v32 = v34;
    outlined destroy of AsyncStream<()>.Continuation?(v29, &_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
    v31(v36, v12);
    v31(v35, v12);
    v31(v32, v12);
    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id LACDTOMutablePendingPolicyEvaluation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27230B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27230B0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x5366664F6C6F6F63;
  if (v1 != 5)
  {
    v3 = 0x5574656863746172;
  }

  v4 = 0x6B6361626C6C6163;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696C61766E497369;
  if (v1 != 1)
  {
    v5 = 0x6B6361626C6C6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized LACDTOMutablePendingPolicyEvaluation.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id LACDTOMutablePendingPolicyEvaluation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACDTOMutablePendingPolicyEvaluation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC10CodingKeys33_4BC7126A1542EEEDCA6425CD3A877DA1LLOGMd, &_ss22KeyedEncodingContainerVy23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC10CodingKeys33_4BC7126A1542EEEDCA6425CD3A877DA1LLOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v45 = 0;
  v38 = v15;
  v16 = v37;
  v17 = KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    return (*(v13 + 8))(v38, v12);
  }

  v37 = v8;
  v19 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v17);
  v44 = 1;
  v20 = KeyedEncodingContainer.encode(_:forKey:)();
  v21 = *((*v19 & *v2) + 0xA0);
  v34 = v2;
  v21(v20);
  v43 = 2;
  v35 = v12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

  v23 = v34;
  (*((*v19 & *v34) + 0xB8))(v22);
  v42 = 3;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v24 = outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v25 = v13;
  v26 = v37;
  (*((*v19 & *v23) + 0xD0))(v24);
  v41 = 4;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v27 = v38;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v28 = outlined destroy of AsyncStream<()>.Continuation?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v29 = v36;
  (*((*v19 & *v34) + 0xE8))(v28);
  v40 = 5;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v30 = outlined destroy of AsyncStream<()>.Continuation?(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*((*v19 & *v34) + 0x100))(v30);
  v31 = v27;
  v39 = 6;
  v32 = v35;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  (*(v25 + 8))(v31, v32);
}

unint64_t lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys;
  if (!lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys;
  if (!lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys;
  if (!lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys;
  if (!lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys);
  }

  return result;
}

char *LACDTOMutablePendingPolicyEvaluation.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = v55 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC10CodingKeys33_4BC7126A1542EEEDCA6425CD3A877DA1LLOGMd, &_ss22KeyedDecodingContainerVy23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC10CodingKeys33_4BC7126A1542EEEDCA6425CD3A877DA1LLOGMR);
  v57 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v11 = v55 - v10;
  v12 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated;
  v1[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_isInvalidated] = 0;
  v13 = &v1[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackReason];
  *v13 = 0;
  v13[1] = 0;
  v67 = v13;
  v14 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_callbackURL;
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 56);
  v64 = v14;
  v16(&v2[v14], 1, 1, v15);
  v17 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_notificationScheduledAt;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v66 = v17;
  v19(&v2[v17], 1, 1, v18);
  v62 = OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted;
  v19(&v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_coolOffStarted], 1, 1, v18);
  v20 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_ratchetUUID];
  *v20 = 0;
  v20[1] = 0;
  v63 = v20;
  v21 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v21);
  lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation.CodingKeys and conformance LACDTOMutablePendingPolicyEvaluation.CodingKeys();
  v61 = v11;
  v22 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v55[1] = v15;
    v23 = v58;
    v55[0] = v18;
    v24 = v59;
    v25 = v60;
    v26 = v57;
    v71 = 0;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = &v2[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier];
    *v31 = v27;
    v31[1] = v32;
    v71 = 1;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v72 = 0;
    v34 = v33;
    swift_beginAccess();
    v2[v12] = v34 & 1;
    v70 = 2;
    v35 = v72;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v72 = v35;
    if (v35)
    {
      (*(v26 + 8))(v61, v25);
      v28 = v64;
      v29 = v62;
    }

    else
    {
      v38 = v36;
      v39 = v37;
      v40 = v67;
      swift_beginAccess();
      *v40 = v38;
      v40[1] = v39;

      v69 = 3;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
      v41 = v61;
      v42 = v72;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v72 = v42;
      v43 = v26;
      if (v42)
      {
        (*(v26 + 8))(v41, v25);
        v28 = v64;
      }

      else
      {
        v28 = v64;
        swift_beginAccess();
        outlined assign with take of URL?(v23, &v2[v28], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_endAccess();
        v69 = 4;
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        v44 = v72;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v72 = v44;
        if (!v44)
        {
          v45 = v66;
          swift_beginAccess();
          outlined assign with take of URL?(v24, &v2[v45], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          swift_endAccess();
          v69 = 5;
          v46 = v56;
          v47 = v72;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v72 = v47;
          if (!v47)
          {
            v29 = v62;
            swift_beginAccess();
            outlined assign with take of URL?(v46, &v2[v29], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            swift_endAccess();
            v69 = 6;
            v48 = v72;
            v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v72 = v48;
            if (!v48)
            {
              v51 = v49;
              v52 = v50;
              v53 = v63;
              swift_beginAccess();
              *v53 = v51;
              v53[1] = v52;

              v54 = type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
              v68.receiver = v2;
              v68.super_class = v54;
              v2 = objc_msgSendSuper2(&v68, sel_init);
              (*(v43 + 8))(v41, v25);
              __swift_destroy_boxed_opaque_existential_0(v65);
              return v2;
            }

            (*(v43 + 8))(v41, v25);
            goto LABEL_8;
          }
        }

        (*(v43 + 8))(v41, v25);
      }

      v29 = v62;
    }

LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v65);

    goto LABEL_4;
  }

  v72 = v22;
  __swift_destroy_boxed_opaque_existential_0(v65);
  v28 = v64;
  v29 = v62;
LABEL_4:

  outlined destroy of AsyncStream<()>.Continuation?(&v2[v28], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(&v2[v66], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(&v2[v29], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance LACDTOMutablePendingPolicyEvaluation@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.description.getter()
{
  v1 = v0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = MEMORY[0x1EEE9AC00](v67);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v68 = &v65 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v65 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B03423B0;
  v11 = type metadata accessor for LACDTOMutablePendingPolicyEvaluation(0);
  v72.receiver = v0;
  v72.super_class = v11;
  v12 = objc_msgSendSuper2(&v72, sel_description);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  strcpy(v71, "identifier: ");
  BYTE5(v71[1]) = 0;
  HIWORD(v71[1]) = -5120;
  MEMORY[0x1B2722A80](*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier), *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8));
  v16 = v71[1];
  *(v10 + 48) = v71[0];
  *(v10 + 56) = v16;
  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v71[0] = 0x696C61766E497369;
  v71[1] = 0xEF203A6465746164;
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v17);
  v20 = (v19 & 1) == 0;
  if (v19)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1B2722A80](v21, v22);

  v24 = v71[1];
  *(v10 + 64) = v71[0];
  *(v10 + 72) = v24;
  v71[0] = 0x203A64697575;
  v71[1] = 0xE600000000000000;
  v69 = (*((*v18 & *v1) + 0x100))(v23);
  v70 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v26 = Optional.debugDescription.getter();
  v28 = v27;

  MEMORY[0x1B2722A80](v26, v28);

  v29 = v71[1];
  *(v10 + 80) = v71[0];
  *(v10 + 88) = v29;
  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v71[0] = 0xD000000000000010;
  v71[1] = 0x80000001B0355240;
  v69 = (*((*v18 & *v1) + 0xA0))(v30);
  v70 = v31;
  v32 = Optional.debugDescription.getter();
  v34 = v33;

  MEMORY[0x1B2722A80](v32, v34);

  v36 = v71[1];
  *(v10 + 96) = v71[0];
  *(v10 + 104) = v36;
  strcpy(v71, "callbackURL: ");
  HIWORD(v71[1]) = -4864;
  (*((*v18 & *v1) + 0xB8))(v35);
  v37 = Optional.debugDescription.getter();
  v39 = v38;
  outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1B2722A80](v37, v39);

  v40 = v71[1];
  *(v10 + 112) = v71[0];
  *(v10 + 120) = v40;
  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v71[0] = 0xD000000000000019;
  v71[1] = 0x80000001B0355260;
  (*((*v18 & *v1) + 0xD0))(v41);
  v42 = Optional.debugDescription.getter();
  v44 = v43;
  outlined destroy of AsyncStream<()>.Continuation?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1B2722A80](v42, v44);

  v45 = v71[1];
  *(v10 + 128) = v71[0];
  *(v10 + 136) = v45;
  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v71[0] = 0xD000000000000010;
  v71[1] = 0x80000001B0355280;
  v47 = *((*v18 & *v1) + 0xE8);
  v48 = v68;
  v47(v46);
  v49 = type metadata accessor for Date();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  v52 = v51(v48, 1, v49);
  v53 = outlined destroy of AsyncStream<()>.Continuation?(v48, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v52 == 1)
  {
    v54 = 0xE300000000000000;
    v55 = 7104878;
LABEL_11:
    MEMORY[0x1B2722A80](v55, v54);

    v63 = v71[1];
    *(v10 + 144) = v71[0];
    *(v10 + 152) = v63;
    v71[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v64 = BidirectionalCollection<>.joined(separator:)();

    return v64;
  }

  v56 = v65;
  v47(v53);
  result = v51(v56, 1, v49);
  if (result != 1)
  {
    v58 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v50 + 8))(v56, v49);
    v60 = [v58 localizedStringFromDate:isa dateStyle:0 timeStyle:3];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v62;

    v55 = v61;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}