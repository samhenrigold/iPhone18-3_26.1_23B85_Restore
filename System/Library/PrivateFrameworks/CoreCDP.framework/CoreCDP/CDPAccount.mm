@interface CDPAccount
+ (BOOL)checkIfAltDSIDIsBeneficiary:(id)beneficiary;
+ (BOOL)isHSA2Enabled:(id)enabled;
+ (BOOL)isICDPEnabledForDSID:(id)d checkWithServer:(BOOL)server;
+ (BOOL)saveVerifiedAccount:(id)account error:(id *)error;
+ (id)_authKitAccountWith:(id)with;
+ (id)altDSIDForPersonID:(id)d;
+ (id)appleAccountForAltDSID:(id)d;
+ (id)personIDForAltDSID:(id)d;
+ (id)sharedInstance;
- (BOOL)isOTEnabledForContext:(id)context;
- (BOOL)primaryAccountIsBeneficiary;
- (BOOL)primaryAccountNeedsEscrowRecordRepair;
- (BOOL)rpdProbationIsInEffectForDuration:(double)duration context:(id)context;
- (NSDate)rpdProbationFirstSeenDate;
- (id)_serverFriendlyDateFormatter;
- (id)authToken;
- (id)escrowURL;
- (id)iCloudEnv;
- (id)primaryAccountAltDSID;
- (id)primaryAccountDSID;
- (id)primaryAccountFirstName;
- (id)primaryAccountFullName;
- (id)primaryAccountStashedPRK;
- (id)primaryAccountUsername;
- (id)primaryAppleAccount;
- (id)primaryAuthKitAccount;
- (unint64_t)primaryAccountSecurityLevel;
- (void)octagonStatusForContext:(id)context withCompletion:(id)completion;
- (void)primaryAccountStashedPRK;
- (void)setRpdProbationFirstSeenDate:(id)date;
- (void)sosStatusForContext:(id)context withCompletion:(id)completion;
@end

@implementation CDPAccount

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CDPAccount sharedInstance];
  }

  v3 = sharedInstance_account;

  return v3;
}

- (id)primaryAppleAccount
{
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

+ (BOOL)isICDPEnabledForDSID:(id)d checkWithServer:(BOOL)server
{
  serverCopy = server;
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = _os_activity_create(&dword_1DED99000, "cdp: enabled status check", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = objc_alloc_init(CDPDaemonConnection);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke;
  v17[3] = &unk_1E869D4F0;
  v8 = dCopy;
  v18 = v8;
  v9 = [(CDPDaemonConnection *)v7 synchronousDaemonWithErrorHandler:v17];
  v10 = _CDPLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558530;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 1024;
    v21 = serverCopy;
    _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Checking iCDP status for DSID %{mask.hash}@ (checkWithServer=%{BOOL}d)", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v21) = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke_17;
  v14[3] = &unk_1E869D518;
  v11 = v8;
  v15 = v11;
  v16 = buf;
  [v9 isICDPEnabledForDSID:v11 checkWithServer:serverCopy completion:v14];
  connection = [(CDPDaemonConnection *)v7 connection];
  [connection invalidate];

  LOBYTE(connection) = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  os_activity_scope_leave(&state);
  return connection & 1;
}

void __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke_cold_1(a1, v3, v4);
  }
}

void __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke_17(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = _CDPLogSystem(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = @"DISABLED";
    v8 = 1752392040;
    v7 = 141558530;
    if (a2)
    {
      v6 = @"ENABLED";
    }

    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "iCDP status for DSID %{mask.hash}@ is %@", &v7, 0x20u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

uint64_t __28__CDPAccount_sharedInstance__block_invoke()
{
  sharedInstance_account = objc_alloc_init(CDPAccount);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isOTEnabledForContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = _CDPSignpostLogSystem(contextCopy);
  v5 = _CDPSignpostCreate(v4);
  v7 = v6;

  v9 = _CDPSignpostLogSystem(v8);
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OctagonStatus", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _CDPSignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: OctagonStatus  enableTelemetry=YES ", &buf, 0xCu);
  }

  v13 = objc_alloc_init(CDPDaemonConnection);
  v14 = [(CDPDaemonConnection *)v13 synchronousDaemonWithErrorHandler:&__block_literal_global_28];
  v15 = _CDPLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "Checking OT status", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x2020000000;
  v21 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__CDPAccount_isOTEnabledForContext___block_invoke_29;
  v18[3] = &unk_1E869D560;
  v18[5] = v5;
  v18[6] = v7;
  v18[4] = &buf;
  [v14 isOTEnabledForContext:contextCopy completion:v18];
  connection = [(CDPDaemonConnection *)v13 connection];
  [connection invalidate];

  LOBYTE(connection) = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  return connection & 1;
}

void __36__CDPAccount_isOTEnabledForContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CDPLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__CDPAccount_isOTEnabledForContext___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __36__CDPAccount_isOTEnabledForContext___block_invoke_29(void *a1, char a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[5], a1[6]);
  v7 = _CDPSignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[5];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v15 = 67240192;
    LODWORD(v16) = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v8, OS_SIGNPOST_INTERVAL_END, v9, "OctagonStatus", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v15, 8u);
  }

  v11 = _CDPSignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[5];
    v14 = [v5 code];
    v15 = 134218496;
    v16 = v13;
    v17 = 2048;
    v18 = v12;
    v19 = 1026;
    v20 = v14;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: OctagonStatus  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v15, 0x1Cu);
  }

  *(*(a1[4] + 8) + 24) = a2;
}

- (id)primaryAccountUsername
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  username = [primaryAppleAccount username];

  return username;
}

- (id)primaryAccountDSID
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  accountProperties = [primaryAppleAccount accountProperties];
  v4 = [accountProperties objectForKeyedSubscript:@"personID"];

  return v4;
}

- (id)primaryAccountAltDSID
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v4 = [mEMORY[0x1E698DC80] altDSIDForAccount:primaryAppleAccount];

  return v4;
}

- (unint64_t)primaryAccountSecurityLevel
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAccountAltDSID = [(CDPAccount *)self primaryAccountAltDSID];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:primaryAccountAltDSID];

  mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
  v7 = [mEMORY[0x1E698DC80]2 securityLevelForAccount:v5];

  return v7;
}

- (BOOL)primaryAccountIsBeneficiary
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];

  mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
  v5 = [mEMORY[0x1E698DC80]2 isBeneficiaryForAccount:primaryAuthKitAccount];

  return v5;
}

- (id)authToken
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  aa_authToken = [primaryAppleAccount aa_authToken];

  return aa_authToken;
}

- (id)escrowURL
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  v3 = [primaryAppleAccount propertiesForDataclass:*MEMORY[0x1E6959B20]];
  v4 = [v3 objectForKey:@"escrowProxyUrl"];

  return v4;
}

- (id)iCloudEnv
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  dataclassProperties = [primaryAppleAccount dataclassProperties];
  v4 = [dataclassProperties objectForKeyedSubscript:@"com.apple.Dataclass.Account"];
  v5 = [v4 objectForKeyedSubscript:@"iCloudEnv"];

  return v5;
}

- (id)primaryAccountFirstName
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  aa_firstName = [primaryAppleAccount aa_firstName];

  return aa_firstName;
}

- (id)primaryAccountFullName
{
  primaryAppleAccount = [(CDPAccount *)self primaryAppleAccount];
  aa_fullName = [primaryAppleAccount aa_fullName];

  return aa_fullName;
}

- (id)primaryAuthKitAccount
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAccountAltDSID = [(CDPAccount *)self primaryAccountAltDSID];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:primaryAccountAltDSID];

  return v5;
}

- (id)primaryAccountStashedPRK
{
  v3 = _CDPLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPAccount *)v3 primaryAccountStashedPRK];
  }

  primaryAuthKitAccount = [(CDPAccount *)self primaryAuthKitAccount];
  if (primaryAuthKitAccount)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v12 = 0;
    v6 = [defaultStore credentialForAccount:primaryAuthKitAccount error:&v12];
    v7 = v12;

    v8 = [v6 credentialItemForKey:*MEMORY[0x1E69599C8]];
    v9 = v8;
    if (v8)
    {
      v10 = _CDPLogSystem(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(CDPAccount *)v10 primaryAccountStashedPRK];
      }
    }

    else
    {
      v10 = _CDPLogSystem(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CDPAccount *)v7 primaryAccountStashedPRK];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)primaryAccountNeedsEscrowRecordRepair
{
  v2 = +[CDPAccountRepresentation representationForPrimaryAccount];
  shouldPerformSilentEscrowRecordRepair = [v2 shouldPerformSilentEscrowRecordRepair];

  return shouldPerformSilentEscrowRecordRepair;
}

+ (BOOL)saveVerifiedAccount:(id)account error:(id *)error
{
  if (!account)
  {
    return 0;
  }

  v5 = MEMORY[0x1E6959A48];
  accountCopy = account;
  defaultStore = [v5 defaultStore];
  LOBYTE(error) = [defaultStore saveVerifiedAccount:accountCopy error:error];

  return error;
}

+ (id)_authKitAccountWith:(id)with
{
  if (with)
  {
    v3 = MEMORY[0x1E698DC80];
    withCopy = with;
    sharedInstance = [v3 sharedInstance];
    v6 = [sharedInstance authKitAccountWithAltDSID:withCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)checkIfAltDSIDIsBeneficiary:(id)beneficiary
{
  v3 = [self _authKitAccountWith:beneficiary];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v5 = [mEMORY[0x1E698DC80] isBeneficiaryForAccount:v3];

  return v5;
}

+ (id)appleAccountForAltDSID:(id)d
{
  v3 = MEMORY[0x1E6959A48];
  dCopy = d;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore aa_appleAccountWithAltDSID:dCopy];

  return v6;
}

+ (id)personIDForAltDSID:(id)d
{
  dCopy = d;
  v4 = [objc_opt_class() appleAccountForAltDSID:dCopy];

  v5 = MEMORY[0x1E696AD98];
  aa_personID = [v4 aa_personID];
  v7 = [v5 numberWithLongLong:{objc_msgSend(aa_personID, "longLongValue")}];

  return v7;
}

+ (id)altDSIDForPersonID:(id)d
{
  v3 = MEMORY[0x1E6959A48];
  dCopy = d;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore aa_appleAccountWithPersonID:dCopy];

  aa_altDSID = [v6 aa_altDSID];

  return aa_altDSID;
}

+ (BOOL)isHSA2Enabled:(id)enabled
{
  v3 = [self _authKitAccountWith:enabled];
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v5 = [mEMORY[0x1E698DC80] securityLevelForAccount:v3];

  return v5 == 4;
}

- (void)octagonStatusForContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/statemachine-clique-status", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke;
  v14[3] = &unk_1E869D588;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke_2;
  v12[3] = &unk_1E869D5B0;
  v11 = v9;
  v13 = v11;
  [v10 cliqueStatusForContext:contextCopy completion:v12];

  os_activity_scope_leave(&state);
}

uint64_t __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, -1, a2);
  }

  return result;
}

void __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _CDPLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke_2_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 16);
LABEL_8:
      v14();
    }
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      v14 = *(v15 + 16);
      goto LABEL_8;
    }
  }
}

- (void)sosStatusForContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/statemachine-circle-status", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke;
  v14[3] = &unk_1E869D588;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke_2;
  v12[3] = &unk_1E869D5D8;
  v11 = v9;
  v13 = v11;
  [v10 circleStatusForContext:contextCopy completion:v12];

  os_activity_scope_leave(&state);
}

uint64_t __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0xFFFFFFFFLL, a2);
  }

  return result;
}

void __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _CDPLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke_2_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 16);
LABEL_8:
      v14();
    }
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      v14 = *(v15 + 16);
      goto LABEL_8;
    }
  }
}

- (NSDate)rpdProbationFirstSeenDate
{
  v3 = +[CDPAccount sharedInstance];
  primaryAppleAccount = [v3 primaryAppleAccount];

  v5 = [primaryAppleAccount accountPropertyForKey:@"rpdProbationFirstSeenDate"];
  v6 = _CDPLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CDPAccount(Probation) *)v5 rpdProbationFirstSeenDate:v6];
  }

  _serverFriendlyDateFormatter = [(CDPAccount *)self _serverFriendlyDateFormatter];
  v14 = [_serverFriendlyDateFormatter dateFromString:v5];

  return v14;
}

- (void)setRpdProbationFirstSeenDate:(id)date
{
  dateCopy = date;
  _serverFriendlyDateFormatter = [(CDPAccount *)self _serverFriendlyDateFormatter];
  v6 = [_serverFriendlyDateFormatter stringFromDate:dateCopy];

  v8 = _CDPLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(CDPAccount(Probation) *)v6 setRpdProbationFirstSeenDate:v8, v9, v10, v11, v12, v13, v14];
  }

  v15 = +[CDPAccount sharedInstance];
  primaryAppleAccount = [v15 primaryAppleAccount];

  [primaryAppleAccount setAccountProperty:v6 forKey:@"rpdProbationFirstSeenDate"];
  v22 = 0;
  v17 = [CDPAccount saveVerifiedAccount:primaryAppleAccount error:&v22];
  v18 = v22;
  v19 = v18;
  if (v17)
  {
    rpdProbationFirstSeenDate = [(CDPAccount *)self rpdProbationFirstSeenDate];
  }

  else
  {
    v21 = _CDPLogSystem(v18);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CDPAccount(Probation) *)v19 setRpdProbationFirstSeenDate:v21];
    }
  }
}

- (id)_serverFriendlyDateFormatter
{
  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
  [v3 setLocale:v2];
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];

  return v3;
}

- (BOOL)rpdProbationIsInEffectForDuration:(double)duration context:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E6985DB0] analyticsEventWithContext:context eventName:@"com.apple.corecdp.rpdProbation" category:0x1F5A168E0];
  rpdProbationFirstSeenDate = [(CDPAccount *)self rpdProbationFirstSeenDate];
  if (rpdProbationFirstSeenDate)
  {
    v8 = [MEMORY[0x1E695DF00] now];
    [v8 timeIntervalSinceDate:rpdProbationFirstSeenDate];
    v10 = v9;

    v11 = v10 >= duration;
    if (v10 < duration)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:duration - v10];
      [v6 setObject:v13 forKeyedSubscript:@"remainingProbationTime"];
    }

    else
    {
      v12 = [v6 setObject:&unk_1F5A16898 forKeyedSubscript:@"remainingProbationTime"];
    }

    v14 = _CDPLogSystem(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(CDPAccount(Probation) *)v14 rpdProbationIsInEffectForDuration:v15 context:v16, v17, v18, v19, v20, v21, v10];
    }

    v23 = _CDPLogSystem(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(CDPAccount(Probation) *)v23 rpdProbationIsInEffectForDuration:v24 context:v25, v26, v27, v28, v29, v30, duration];
    }

    v32 = _CDPLogSystem(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v37 = 134218496;
      v38 = v10;
      v39 = 2048;
      durationCopy = duration;
      v41 = 1024;
      v42 = v10 >= duration;
      _os_log_debug_impl(&dword_1DED99000, v32, OS_LOG_TYPE_DEBUG, "RPD Probation: Can show RPD option: %f >= %f = %{BOOL}d", &v37, 0x1Cu);
    }
  }

  else if (duration == 0.0)
  {
    [v6 setObject:&unk_1F5A16898 forKeyedSubscript:@"remainingProbationTime"];
    v11 = 1;
  }

  else
  {
    v35 = [MEMORY[0x1E695DF00] now];
    [(CDPAccount *)self setRpdProbationFirstSeenDate:v35];

    v36 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    [v6 setObject:v36 forKeyedSubscript:@"remainingProbationTime"];

    v11 = 0;
  }

  v33 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v33 sendEvent:v6];

  return v11;
}

void __51__CDPAccount_isICDPEnabledForDSID_checkWithServer___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 141558530;
  v5 = 1752392040;
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1DED99000, log, OS_LOG_TYPE_ERROR, "XPC Error while checking if iCDP is enabled for DSID %{mask.hash}@: %@", &v4, 0x20u);
}

void __36__CDPAccount_isOTEnabledForContext___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "XPC Error while checking if OT is enabled: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)primaryAccountStashedPRK
{
  v14 = *MEMORY[0x1E69E9840];
  primaryAccountUsername = [a2 primaryAccountUsername];
  primaryAccountAltDSID = [a2 primaryAccountAltDSID];
  v8 = 138412803;
  selfCopy = self;
  v10 = 2117;
  v11 = primaryAccountUsername;
  v12 = 2117;
  v13 = primaryAccountAltDSID;
  _os_log_error_impl(&dword_1DED99000, a3, OS_LOG_TYPE_ERROR, "Something went wrong... (%@) could not find a stashed token for primary Account: <%{sensitive}@ : %{sensitive}@>", &v8, 0x20u);
}

void __67__CDPAccount_CircleStatus__octagonStatusForContext_withCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Error while checking clique status: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __63__CDPAccount_CircleStatus__sosStatusForContext_withCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Error while checking circle status: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end