@interface AITransactionLog
+ (id)_defaultLog;
+ (void)_defaultLog;
+ (void)initializeWithLog:(id)log;
+ (void)logScenario:(id)scenario step:(unint64_t)step success:(BOOL)success forBundleID:(id)d description:(id)description;
+ (void)logStep:(unint64_t)step byParty:(unint64_t)party phase:(unint64_t)phase success:(BOOL)success forBundleID:(id)d persona:(id)persona description:(id)description;
- (id)_initWithLog:(id)log;
- (void)_logScenario:(id)scenario step:(unint64_t)step success:(BOOL)success forBundleID:(id)d persona:(id)persona description:(id)description;
@end

@implementation AITransactionLog

+ (void)initializeWithLog:(id)log
{
  logCopy = log;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AITransactionLog_initializeWithLog___block_invoke;
  block[3] = &unk_1E80B9F00;
  v7 = logCopy;
  v4 = initializeWithLog__onceToken;
  v5 = logCopy;
  if (v4 != -1)
  {
    dispatch_once(&initializeWithLog__onceToken, block);
  }
}

uint64_t __38__AITransactionLog_initializeWithLog___block_invoke(uint64_t a1)
{
  v1 = [[AITransactionLog alloc] _initWithLog:*(a1 + 32)];
  v2 = __defaultLog;
  __defaultLog = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (void)logScenario:(id)scenario step:(unint64_t)step success:(BOOL)success forBundleID:(id)d description:(id)description
{
  successCopy = success;
  descriptionCopy = description;
  dCopy = d;
  scenarioCopy = scenario;
  _defaultLog = [self _defaultLog];
  [_defaultLog _logScenario:scenarioCopy step:step success:successCopy forBundleID:dCopy persona:@"Unknown Persona" description:descriptionCopy];
}

+ (void)logStep:(unint64_t)step byParty:(unint64_t)party phase:(unint64_t)phase success:(BOOL)success forBundleID:(id)d persona:(id)persona description:(id)description
{
  successCopy = success;
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  personaCopy = persona;
  descriptionCopy = description;
  if (logStep_byParty_phase_success_forBundleID_persona_description__onceToken != -1)
  {
    +[AITransactionLog logStep:byParty:phase:success:forBundleID:persona:description:];
  }

  v17 = logStep_byParty_phase_success_forBundleID_persona_description__sharedLog;
  if (os_log_type_enabled(logStep_byParty_phase_success_forBundleID_persona_description__sharedLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544898;
    v19 = dCopy;
    v20 = 2114;
    v21 = personaCopy;
    v22 = 2048;
    partyCopy = party;
    v24 = 2048;
    stepCopy = step;
    v26 = 2048;
    phaseCopy = phase;
    v28 = 1024;
    v29 = successCopy;
    v30 = 2114;
    v31 = descriptionCopy;
    _os_log_impl(&dword_1BF34F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@/%{public}@:%lu:%lu:%lu:%u:%{public}@", &v18, 0x44u);
  }
}

uint64_t __82__AITransactionLog_logStep_byParty_phase_success_forBundleID_persona_description___block_invoke()
{
  v0 = os_log_create("com.apple.appinstallation", "TransactionLog");
  v1 = logStep_byParty_phase_success_forBundleID_persona_description__sharedLog;
  logStep_byParty_phase_success_forBundleID_persona_description__sharedLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_initWithLog:(id)log
{
  logCopy = log;
  v9.receiver = self;
  v9.super_class = AITransactionLog;
  v6 = [(AITransactionLog *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, log);
  }

  return v7;
}

+ (id)_defaultLog
{
  v5 = __defaultLog;
  if (__defaultLog)
  {
  }

  else
  {
    v7[1] = v2;
    v8 = v3;
    +[(AITransactionLog *)a2];
    v5 = v7[0];
  }

  return v5;
}

- (void)_logScenario:(id)scenario step:(unint64_t)step success:(BOOL)success forBundleID:(id)d persona:(id)persona description:(id)description
{
  successCopy = success;
  v41 = *MEMORY[0x1E69E9840];
  scenarioCopy = scenario;
  descriptionCopy = description;
  personaCopy = persona;
  dCopy = d;
  uTF8String = [scenario UTF8String];
  uTF8String2 = [dCopy UTF8String];

  uTF8String3 = [personaCopy UTF8String];
  uTF8String4 = [descriptionCopy UTF8String];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v24 = "_";
    if (uTF8String4)
    {
      v25 = uTF8String4;
    }

    else
    {
      v25 = "_";
    }

    v29 = 136316418;
    if (uTF8String3)
    {
      v26 = uTF8String3;
    }

    else
    {
      v26 = "_";
    }

    if (uTF8String2)
    {
      v27 = uTF8String2;
    }

    else
    {
      v27 = "_";
    }

    v30 = v27;
    v31 = 2080;
    v32 = v26;
    if (uTF8String)
    {
      v24 = uTF8String;
    }

    v33 = 2080;
    v34 = v24;
    v28 = "Success";
    v35 = 2048;
    stepCopy = step;
    if (!successCopy)
    {
      v28 = "Fail";
    }

    v37 = 2080;
    v38 = v28;
    v39 = 2080;
    v40 = v25;
    _os_log_impl(&dword_1BF34F000, log, OS_LOG_TYPE_DEFAULT, "%s:%s:%s:%ld:%s:%s", &v29, 0x3Eu);
  }
}

+ (void)_defaultLog
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"AITransactionLog.m" lineNumber:63 description:@"Transaction log must be initialized before use. Please call +[AITransactionLog initializeWithLog:]."];

  *a3 = __defaultLog;
}

@end