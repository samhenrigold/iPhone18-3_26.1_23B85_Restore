@interface OneTimeInitialization
@end

@implementation OneTimeInitialization

uint64_t __remoteDeviceClock_OneTimeInitialization_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v10[0] = 1;
  v10[1] = remoteDeviceClock_DeadConnectionCallback;
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  if (FigRemote_ShouldConnectToMediaplaybackd())
  {
    v8 = "com.apple.coremedia.mediaplaybackd.audiodeviceclock.xpc";
  }

  else
  {
    v8 = "com.apple.coremedia.audiodeviceclock.xpc";
  }

  result = FigXPCRemoteClientCreate(v8, v10, 0, &qword_1ED4CC930);
  _MergedGlobals_29 = result;
  return result;
}

@end