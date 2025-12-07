@interface MBManagedPolicy
+ (MBManagedPolicy)sharedPolicy;
- (BOOL)_checkBehaviorOption:(id)option description:(id)description allowedOut:(BOOL *)out error:(id *)error;
- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)allowed error:(id *)error;
- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)allowed;
- (BOOL)checkIfCloudBackupIsAllowed:(id *)allowed;
- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)allowed;
- (BOOL)checkIfDriveBackupIsAllowed:(id *)allowed;
- (BOOL)checkIfDriveRestoreIsAllowed:(id *)allowed;
- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)allowed;
- (id)_init;
@end

@implementation MBManagedPolicy

+ (MBManagedPolicy)sharedPolicy
{
  if (sharedPolicy_onceToken != -1)
  {
    +[MBManagedPolicy sharedPolicy];
  }

  v3 = sharedPolicy_sharedInstance;

  return v3;
}

uint64_t __31__MBManagedPolicy_sharedPolicy__block_invoke()
{
  sharedPolicy_sharedInstance = [[MBManagedPolicy alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = MBManagedPolicy;
  v2 = [(MBManagedPolicy *)&v8 init];
  if (v2)
  {
    v3 = +[MBBehaviorOptions sharedOptions];
    behaviorOptions = v2->_behaviorOptions;
    v2->_behaviorOptions = v3;

    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = mEMORY[0x1E69ADFB8];
  }

  return v2;
}

- (BOOL)checkIfDriveBackupIsAllowed:(id *)allowed
{
  v8 = 1;
  allowDriveBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowDriveBackup description:@"Drive backup" allowedOut:&v8 error:allowed];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive backup" error:allowed];
  }

  return v8;
}

- (BOOL)checkIfDriveRestoreIsAllowed:(id *)allowed
{
  v8 = 1;
  allowDriveRestore = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveRestore];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowDriveRestore description:@"Drive restore" allowedOut:&v8 error:allowed];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive restore" error:allowed];
  }

  return v8;
}

- (BOOL)checkIfCloudBackupIsAllowed:(id *)allowed
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 1;
  allowCloudBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowCloudBackup description:@"Cloud backup" allowedOut:&v14 error:allowed];

  if (v6)
  {
    if ([(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Cloud backup" error:allowed])
    {
      if ([(MCProfileConnection *)self->_profileConnection effectiveBoolValueForSetting:*MEMORY[0x1E69ADE20]]!= 2)
      {
        v12 = 1;
        return v12 & 1;
      }

      v7 = [MBError errorWithCode:22 format:@"Cloud backup is disabled by MDM"];
      v8 = MBGetDefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v10 = [v7 description];
        _MBLog(@"Df", "=managed-policy= %@", v10);
      }

      if (allowed)
      {
        v11 = v7;
        *allowed = v7;
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = v14;
  }

  return v12 & 1;
}

- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)allowed
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 1;
  allowEnablingCloudBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowEnablingCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowEnablingCloudBackup description:@"Enabling cloud backup" allowedOut:&v14 error:allowed];

  if (v6)
  {
    if ([(MCProfileConnection *)self->_profileConnection isSettingLockedDownByRestrictions:*MEMORY[0x1E69ADE20]])
    {
      v7 = [MBError errorWithCode:22 format:@"Cloud backup enabling is disabled by MDM"];
      v8 = MBGetDefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v10 = [v7 description];
        _MBLog(@"Df", "=managed-policy= %@", v10);
      }

      if (allowed)
      {
        v11 = v7;
        *allowed = v7;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = v14;
  }

  return v12 & 1;
}

- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)allowed
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 1;
  allowCloudAccountModification = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudAccountModification];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowCloudAccountModification description:@"Cloud account modification" allowedOut:&v14 error:allowed];

  if (v6)
  {
    if ([(MCProfileConnection *)self->_profileConnection effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]]== 2)
    {
      v7 = [MBError errorWithCode:22 format:@"Cloud account modification is disabled by MDM"];
      v8 = MBGetDefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v10 = [v7 description];
        _MBLog(@"Df", "=managed-policy= %@", v10);
      }

      if (allowed)
      {
        v11 = v7;
        *allowed = v7;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = v14;
  }

  return v12 & 1;
}

- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)allowed
{
  v13 = *MEMORY[0x1E69E9840];
  isDiagnosticSubmissionAllowed = [(MCProfileConnection *)self->_profileConnection isDiagnosticSubmissionAllowed];
  if ((isDiagnosticSubmissionAllowed & 1) == 0)
  {
    v5 = [MBError errorWithCode:22 format:@"Diagnostic reporting is disabled by MDM"];
    v6 = MBGetDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 description];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

      v8 = [v5 description];
      _MBLog(@"Df", "=managed-policy= %@", v8);
    }

    if (allowed)
    {
      v9 = v5;
      *allowed = v5;
    }
  }

  return isDiagnosticSubmissionAllowed;
}

- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)allowed error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  allowedCopy = allowed;
  if (!allowedCopy)
  {
    [MBManagedPolicy _checkIfAnyBackupOrRestoreIsAllowed:error:];
  }

  v7 = allowedCopy;
  if ([(MCProfileConnection *)self->_profileConnection isEphemeralMultiUser])
  {
    v8 = [MBError errorWithCode:22 format:@"%@ is disabled for this device in EDU mode", v7];
  }

  else
  {
    v8 = 0;
  }

  isRapidReturnToService = objc_opt_respondsToSelector();
  if (isRapidReturnToService)
  {
    isRapidReturnToService = [MEMORY[0x1E69AD428] isRapidReturnToService];
    if (isRapidReturnToService)
    {
      v10 = [MBError errorWithCode:22 format:@"%@ is disabled for this device in RRTS mode", v7];

      v8 = v10;
    }
  }

  if (v8)
  {
    v11 = MBGetDefaultLog(isRapidReturnToService);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 description];
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_INFO, "=managed-policy= %@", buf, 0xCu);

      v13 = [v8 description];
      _MBLog(@"I ", "=managed-policy= %@", v13);
    }

    if (error)
    {
      v14 = v8;
      *error = v8;
    }
  }

  return v8 == 0;
}

- (BOOL)_checkBehaviorOption:(id)option description:(id)description allowedOut:(BOOL *)out error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    [MBManagedPolicy _checkBehaviorOption:description:allowedOut:error:];
  }

  if (!out)
  {
    [MBManagedPolicy _checkBehaviorOption:description:allowedOut:error:];
  }

  v11 = descriptionCopy;
  if (optionCopy)
  {
    bOOLValue = [optionCopy BOOLValue];
    if (bOOLValue)
    {
      *out = 1;
      v13 = MBGetDefaultLog(bOOLValue);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_1DEB5D000, v13, OS_LOG_TYPE_INFO, "=managed-policy= %@ force allowed by behavior option", buf, 0xCu);
        _MBLog(@"I ", "=managed-policy= %@ force allowed by behavior option", v11);
      }
    }

    else
    {
      *out = 0;
      v13 = [MBError errorWithCode:555 format:@"%@ force disallowed by behavior option", v11];
      v14 = MBGetDefaultLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v13 description];
        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&dword_1DEB5D000, v14, OS_LOG_TYPE_INFO, "=managed-policy= %@", buf, 0xCu);

        v16 = [v13 description];
        _MBLog(@"I ", "=managed-policy= %@", v16);
      }

      if (error)
      {
        v17 = v13;
        *error = v13;
      }
    }
  }

  return optionCopy == 0;
}

@end