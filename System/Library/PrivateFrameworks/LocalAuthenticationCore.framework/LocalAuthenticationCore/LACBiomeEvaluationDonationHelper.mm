@interface LACBiomeEvaluationDonationHelper
+ (id)sharedInstance;
- (LACBiomeEvaluationDonationHelper)init;
- (id)_mechanismWithState:(id)state;
- (void)donateEvent:(id)event;
@end

@implementation LACBiomeEvaluationDonationHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_22 != -1)
  {
    +[LACBiomeEvaluationDonationHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_20;

  return v3;
}

uint64_t __50__LACBiomeEvaluationDonationHelper_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_20;
  sharedInstance_sharedInstance_20 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (LACBiomeEvaluationDonationHelper)init
{
  v24.receiver = self;
  v24.super_class = LACBiomeEvaluationDonationHelper;
  v2 = [(LACBiomeEvaluationDonationHelper *)&v24 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  BiomeLibrarySymbolLoc = BiomeLibraryLibraryCore(0);
  if (!BiomeLibrarySymbolLoc || (BiomeLibrarySymbolLoc = getBiomeLibrarySymbolLoc()) == 0)
  {
    v12 = LACLogBiome(BiomeLibrarySymbolLoc);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(LACBiomeEvaluationDonationHelper *)v12 init:v13];
    }

    v11 = 0;
    goto LABEL_10;
  }

  v4 = getBiomeLibrarySymbolLoc();
  if (v4)
  {
    v5 = v4();
    localAuthentication = [v5 LocalAuthentication];
    interactive = [localAuthentication Interactive];
    evaluations = [interactive Evaluations];
    source = [evaluations source];
    laSource = v2->_laSource;
    v2->_laSource = source;

LABEL_6:
    v11 = v2;
LABEL_10:

    return v11;
  }

  +[LACSharingManager isSharingError:];
  [(LACBiomeEvaluationDonationHelper *)v21 donateEvent:v22, v23];
  return result;
}

- (void)donateEvent:(id)event
{
  v36 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v5 = getBMLocalAuthenticationEvaluationsClass_softClass;
  v32 = getBMLocalAuthenticationEvaluationsClass_softClass;
  if (!getBMLocalAuthenticationEvaluationsClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBMLocalAuthenticationEvaluationsClass_block_invoke;
    v34 = &unk_1E7A955D8;
    v35 = &v29;
    BiomeLibraryLibraryCore(0);
    Class = objc_getClass("BMLocalAuthenticationEvaluations");
    *(v35[1] + 24) = Class;
    getBMLocalAuthenticationEvaluationsClass_softClass = *(v35[1] + 24);
    v5 = v30[3];
  }

  v7 = v5;
  _Block_object_dispose(&v29, 8);
  v9 = LACLogBiome(v8);
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      laSource = self->_laSource;
      *buf = 138412546;
      *&buf[4] = eventCopy;
      *&buf[12] = 2112;
      *&buf[14] = laSource;
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "Donating %@ to %@", buf, 0x16u);
    }

    v12 = self->_laSource;
    v13 = [v5 alloc];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "policy")}];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "errorCode")}];
    biometry = [eventCopy biometry];
    v16 = [(LACBiomeEvaluationDonationHelper *)self _mechanismWithState:biometry];
    passcode = [eventCopy passcode];
    v18 = [(LACBiomeEvaluationDonationHelper *)self _mechanismWithState:passcode];
    dtoState = [eventCopy dtoState];
    LODWORD(v28) = [eventCopy ratchetState];
    v20 = [v13 initWithPolicy:v10 result:v14 biometry:v16 passcode:v18 ratchetState:dtoState callerBundleId:0 ratchetArmingState:v28];
    [(BMSource *)v12 sendEvent:v20];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(LACBiomeEvaluationDonationHelper *)v10 donateEvent:v21, v22, v23, v24, v25, v26, v27];
  }
}

- (id)_mechanismWithState:(id)state
{
  stateCopy = state;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v4 = getBMLocalAuthenticationEvaluationsMechanismClass_softClass;
  v25 = getBMLocalAuthenticationEvaluationsMechanismClass_softClass;
  if (!getBMLocalAuthenticationEvaluationsMechanismClass_softClass)
  {
    BiomeLibraryLibraryCore(0);
    v23[3] = objc_getClass("BMLocalAuthenticationEvaluationsMechanism");
    getBMLocalAuthenticationEvaluationsMechanismClass_softClass = v23[3];
    v4 = v23[3];
  }

  v5 = v4;
  _Block_object_dispose(&v22, 8);
  if (v4)
  {
    v7 = [v4 alloc];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stateCopy, "available")}];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stateCopy, "started")}];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stateCopy, "success")}];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stateCopy, "lockout")}];
    if ([stateCopy generation])
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(stateCopy, "generation")}];
      v13 = [v7 initWithAvailable:v8 started:v9 success:v10 lockout:v11 generation:v12];
    }

    else
    {
      v13 = [v7 initWithAvailable:v8 started:v9 success:v10 lockout:v11 generation:0];
    }
  }

  else
  {
    v8 = LACLogBiome(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(LACBiomeEvaluationDonationHelper *)v8 donateEvent:v14, v15, v16, v17, v18, v19, v20];
    }

    v13 = 0;
  }

  return v13;
}

@end