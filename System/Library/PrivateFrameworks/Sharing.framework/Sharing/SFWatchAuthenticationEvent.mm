@interface SFWatchAuthenticationEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFWatchAuthenticationEvent

- (NSDictionary)eventPayload
{
  v47[20] = *MEMORY[0x1E69E9840];
  v46[0] = @"authenticationType";
  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFWatchAuthenticationEvent authenticationType](self, "authenticationType")}];
  v47[0] = v45;
  v46[1] = @"succeeded";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFWatchAuthenticationEvent succeeded](self, "succeeded")}];
  v47[1] = v44;
  v46[2] = @"failureReason";
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFWatchAuthenticationEvent failureReason](self, "failureReason")}];
  v47[2] = v43;
  v46[3] = @"screenOn";
  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFWatchAuthenticationEvent screenOn](self, "screenOn")}];
  v47[3] = v42;
  v46[4] = @"rangingDistance";
  v3 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self rangingDistance];
  v41 = [v3 numberWithFloat:?];
  v47[4] = v41;
  v46[5] = @"arTrackingDistance";
  v4 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self arTrackingDistance];
  v40 = [v4 numberWithDouble:?];
  v47[5] = v40;
  v46[6] = @"approveClientBundleID";
  approveClientBundleID = [(SFWatchAuthenticationEvent *)self approveClientBundleID];
  v39 = approveClientBundleID;
  v6 = &stru_1F1D30528;
  if (approveClientBundleID)
  {
    v6 = approveClientBundleID;
  }

  v47[6] = v6;
  v46[7] = @"discoveryDuration";
  v7 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self discoveryDuration];
  v38 = [v7 numberWithDouble:?];
  v47[7] = v38;
  v46[8] = @"keyExchangeDuration";
  v8 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self keyExchangeDuration];
  v37 = [v8 numberWithDouble:?];
  v47[8] = v37;
  v46[9] = @"tokenExchangeDuration";
  v9 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self tokenExchangeDuration];
  v36 = [v9 numberWithDouble:?];
  v47[9] = v36;
  v46[10] = @"awdlBringUpDuration";
  v10 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self awdlBringUpDuration];
  v35 = [v10 numberWithDouble:?];
  v47[10] = v35;
  v46[11] = @"rangingDuration";
  v11 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self rangingDuration];
  v34 = [v11 numberWithDouble:?];
  v47[11] = v34;
  v46[12] = @"peerFoundDuration";
  v12 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self peerFoundDuration];
  v13 = [v12 numberWithDouble:?];
  v47[12] = v13;
  v46[13] = @"totalDuration";
  v14 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self totalDuration];
  v15 = [v14 numberWithDouble:?];
  v47[13] = v15;
  v46[14] = @"timeSinceBoot";
  v16 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self timeSinceBoot];
  v17 = [v16 numberWithDouble:?];
  v47[14] = v17;
  v46[15] = @"timeSinceRemoteUnlocked";
  v18 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self timeSinceRemoteUnlocked];
  v19 = [v18 numberWithDouble:?];
  v47[15] = v19;
  v46[16] = @"watchHardwareModel";
  watchHardwareModel = [(SFWatchAuthenticationEvent *)self watchHardwareModel];
  v21 = watchHardwareModel;
  if (watchHardwareModel)
  {
    v22 = watchHardwareModel;
  }

  else
  {
    v22 = &stru_1F1D30528;
  }

  v47[16] = v22;
  v46[17] = @"watchSoftwareVersion";
  watchSoftwareVersion = [(SFWatchAuthenticationEvent *)self watchSoftwareVersion];
  v24 = watchSoftwareVersion;
  if (watchSoftwareVersion)
  {
    v25 = watchSoftwareVersion;
  }

  else
  {
    v25 = &stru_1F1D30528;
  }

  v47[17] = v25;
  v46[18] = @"remoteHardwareModel";
  remoteHardwareModel = [(SFWatchAuthenticationEvent *)self remoteHardwareModel];
  v27 = remoteHardwareModel;
  if (remoteHardwareModel)
  {
    v28 = remoteHardwareModel;
  }

  else
  {
    v28 = &stru_1F1D30528;
  }

  v47[18] = v28;
  v46[19] = @"remoteSoftwareVersion";
  remoteSoftwareVersion = [(SFWatchAuthenticationEvent *)self remoteSoftwareVersion];
  v30 = remoteSoftwareVersion;
  if (remoteSoftwareVersion)
  {
    v31 = remoteSoftwareVersion;
  }

  else
  {
    v31 = &stru_1F1D30528;
  }

  v47[19] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:20];

  return v32;
}

- (void)submitEvent
{
  v4 = +[SFWatchAuthenticationEvent eventName];
  eventPayload = [(SFWatchAuthenticationEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end