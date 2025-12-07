@interface SFPairedUnlockEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFPairedUnlockEvent

- (NSDictionary)eventPayload
{
  v26[16] = *MEMORY[0x1E69E9840];
  v25[0] = @"succeeded";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent succeeded](self, "succeeded")}];
  v26[0] = v24;
  v25[1] = @"failureReason";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[SFPairedUnlockEvent failureReason](self, "failureReason")}];
  v26[1] = v23;
  v25[2] = @"attemptHourLocal";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[SFPairedUnlockEvent attemptHourLocal](self, "attemptHourLocal")}];
  v26[2] = v22;
  v25[3] = @"phoneAutoUnlockEnabled";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent phoneAutoUnlockEnabled](self, "phoneAutoUnlockEnabled")}];
  v26[3] = v21;
  v25[4] = @"canRelock";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent canRelock](self, "canRelock")}];
  v26[4] = v20;
  v25[5] = @"relockedWatch";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent relockedWatch](self, "relockedWatch")}];
  v26[5] = v19;
  v25[6] = @"phoneState";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockEvent phoneState](self, "phoneState")}];
  v26[6] = v18;
  v25[7] = @"usingEscrowRecord";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent usingEscrowRecord](self, "usingEscrowRecord")}];
  v26[7] = v3;
  v25[8] = @"retriedWithEscrowRecord";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent retriedWithEscrowRecord](self, "retriedWithEscrowRecord")}];
  v26[8] = v4;
  v25[9] = @"watchSoftwareVersion";
  watchSoftwareVersion = [(SFPairedUnlockEvent *)self watchSoftwareVersion];
  v6 = watchSoftwareVersion;
  if (watchSoftwareVersion)
  {
    v7 = watchSoftwareVersion;
  }

  else
  {
    v7 = &stru_1F1D30528;
  }

  v26[9] = v7;
  v25[10] = @"watchHardwareModel";
  watchHardwareModel = [(SFPairedUnlockEvent *)self watchHardwareModel];
  v9 = watchHardwareModel;
  if (watchHardwareModel)
  {
    v10 = watchHardwareModel;
  }

  else
  {
    v10 = &stru_1F1D30528;
  }

  v26[10] = v10;
  v25[11] = @"keyExchangeDurationMs";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent keyExchangeDuration](self, "keyExchangeDuration")}];
  v26[11] = v11;
  v25[12] = @"pillDelayMs";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent pillDelay](self, "pillDelay")}];
  v26[12] = v12;
  v25[13] = @"confirmationDurationMs";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent confirmationDuration](self, "confirmationDuration")}];
  v26[13] = v13;
  v25[14] = @"totalUnlockProcessDurationMs";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent totalUnlockProcessDuration](self, "totalUnlockProcessDuration")}];
  v26[14] = v14;
  v25[15] = @"totalUnlockDurationMs";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent totalUnlockDuration](self, "totalUnlockDuration")}];
  v26[15] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:16];

  return v16;
}

- (void)submitEvent
{
  v4 = +[SFPairedUnlockEvent eventName];
  eventPayload = [(SFPairedUnlockEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end