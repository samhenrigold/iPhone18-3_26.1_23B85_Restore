@interface BYSeedProgramManager
- (NSDictionary)currentEnrollmentMetadata;
- (int64_t)currentSeedProgram;
- (void)enrollInSeedProgramNamed:(id)named withAssetAudience:(id)audience programID:(id)d completion:(id)completion;
@end

@implementation BYSeedProgramManager

- (int64_t)currentSeedProgram
{
  if (objc_opt_class())
  {
    mEMORY[0x1E69CA650] = [MEMORY[0x1E69CA650] sharedManager];
    enrolledBetaProgramForCurrentDevice = [mEMORY[0x1E69CA650] enrolledBetaProgramForCurrentDevice];

    if (enrolledBetaProgramForCurrentDevice)
    {
      program = [enrolledBetaProgramForCurrentDevice program];
    }

    else
    {
      program = 0;
    }
  }

  else
  {
    v5 = _BYLoggingFacility(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BYSeedProgramManager currentSeedProgram];
    }

    return 0;
  }

  return program;
}

- (NSDictionary)currentEnrollmentMetadata
{
  if (objc_opt_class())
  {
    mEMORY[0x1E69CA650] = [MEMORY[0x1E69CA650] sharedManager];
    enrollmentMetadataForCurrentDevice = [mEMORY[0x1E69CA650] enrollmentMetadataForCurrentDevice];
  }

  else
  {
    v4 = _BYLoggingFacility(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BYSeedProgramManager currentSeedProgram];
    }

    enrollmentMetadataForCurrentDevice = MEMORY[0x1E695E0F8];
  }

  return enrollmentMetadataForCurrentDevice;
}

- (void)enrollInSeedProgramNamed:(id)named withAssetAudience:(id)audience programID:(id)d completion:(id)completion
{
  namedCopy = named;
  audienceCopy = audience;
  dCopy = d;
  completionCopy = completion;
  if (objc_opt_class())
  {
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    [v13 setObject:namedCopy forKeyedSubscript:*MEMORY[0x1E69CA668]];
    [v13 setObject:audienceCopy forKeyedSubscript:*MEMORY[0x1E69CA660]];
    if (dCopy)
    {
      [v13 setObject:dCopy forKeyedSubscript:*MEMORY[0x1E69CA670]];
    }

    mEMORY[0x1E69CA650] = [MEMORY[0x1E69CA650] sharedManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__BYSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_programID_completion___block_invoke;
    v16[3] = &unk_1E7D02BD8;
    v17 = completionCopy;
    [mEMORY[0x1E69CA650] enrollCurrentDeviceWithEnrollmentMetadata:v13 completion:v16];
  }

  else
  {
    v15 = _BYLoggingFacility(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BYSeedProgramManager currentSeedProgram];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __88__BYSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_programID_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _BYLoggingFacility(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (_BYIsInternalInstall(v6, v7))
    {
      v8 = 0;
      v9 = v4;
    }

    else if (v4)
    {
      v10 = MEMORY[0x1E696AEC0];
      v2 = [v4 domain];
      v9 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v4, "code")];
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *buf = 138543362;
    v12 = v9;
    _os_log_error_impl(&dword_1B862F000, v5, OS_LOG_TYPE_ERROR, "Failed to enroll in seed program: %{public}@", buf, 0xCu);
    if (v8)
    {
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v4 == 0);
}

@end