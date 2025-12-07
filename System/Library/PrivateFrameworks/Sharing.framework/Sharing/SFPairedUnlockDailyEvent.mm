@interface SFPairedUnlockDailyEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFPairedUnlockDailyEvent

- (NSDictionary)eventPayload
{
  v18[8] = *MEMORY[0x1E69E9840];
  v17[0] = @"successfulAttempts";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent successfulAttempts](self, "successfulAttempts")}];
  v18[0] = v3;
  v17[1] = @"failedAttempts";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent failedAttempts](self, "failedAttempts")}];
  v18[1] = v4;
  v17[2] = @"totalAttempts";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent totalAttempts](self, "totalAttempts")}];
  v18[2] = v5;
  v17[3] = @"passcodeUnlocks";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent passcodeUnlocks](self, "passcodeUnlocks")}];
  v18[3] = v6;
  v17[4] = @"totalUnlocks";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent totalUnlocks](self, "totalUnlocks")}];
  v18[4] = v7;
  v17[5] = @"phoneSoftwareVersion";
  phoneSoftwareVersion = [(SFPairedUnlockDailyEvent *)self phoneSoftwareVersion];
  v9 = phoneSoftwareVersion;
  if (phoneSoftwareVersion)
  {
    v10 = phoneSoftwareVersion;
  }

  else
  {
    v10 = &stru_1F1D30528;
  }

  v18[5] = v10;
  v17[6] = @"phoneHardwareModel";
  phoneHardwareModel = [(SFPairedUnlockDailyEvent *)self phoneHardwareModel];
  v12 = phoneHardwareModel;
  if (phoneHardwareModel)
  {
    v13 = phoneHardwareModel;
  }

  else
  {
    v13 = &stru_1F1D30528;
  }

  v18[6] = v13;
  v17[7] = @"phoneAutoUnlockEnabled";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockDailyEvent phoneAutoUnlockEnabled](self, "phoneAutoUnlockEnabled")}];
  v18[7] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:8];

  return v15;
}

- (void)submitEvent
{
  v4 = +[SFPairedUnlockDailyEvent eventName];
  eventPayload = [(SFPairedUnlockDailyEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end