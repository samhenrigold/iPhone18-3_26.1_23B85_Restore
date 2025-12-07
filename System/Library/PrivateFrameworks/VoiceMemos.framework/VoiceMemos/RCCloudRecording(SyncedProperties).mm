@interface RCCloudRecording(SyncedProperties)
@end

@implementation RCCloudRecording(SyncedProperties)

- (void)setSyncedAudioFuture:()SyncedProperties sourceFileURL:containsSpatialAudio:.cold.1(void *a1, NSObject *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a1 audioFuture];
  if (v4)
  {
    v5 = @"non-nil";
  }

  else
  {
    v5 = @"nil";
  }

  v6 = v5;
  v7 = [a1 mtAudioFuture];
  if (v7)
  {
    v8 = @"non-nil";
  }

  else
  {
    v8 = @"nil";
  }

  v9 = v8;
  v10 = [a1 versionedAudioFuture];
  v14 = "[RCCloudRecording(SyncedProperties) setSyncedAudioFuture:sourceFileURL:containsSpatialAudio:]";
  v13 = 136315906;
  if (v10)
  {
    v11 = @"non-nil";
  }

  else
  {
    v11 = @"nil";
  }

  v15 = 2114;
  v16 = v5;
  v17 = 2114;
  v18 = v8;
  v19 = 2114;
  v20 = v11;
  v12 = v11;
  _os_log_fault_impl(&dword_272442000, a2, OS_LOG_TYPE_FAULT, "%s -- Inconsistency detected - audioFuture: %{public}@, mtAudioFuture: %{public}@, versionedAudioFuture: %{public}@", &v13, 0x2Au);
}

@end