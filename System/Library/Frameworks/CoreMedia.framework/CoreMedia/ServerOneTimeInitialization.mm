@interface ServerOneTimeInitialization
@end

@implementation ServerOneTimeInitialization

uint64_t __figXPC_ServerOneTimeInitialization_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  gCommonServerListenerQueue = FigDispatchQueueCreateWithPriority("FigXPCServerCommonListenerQueue", 0, 44);
  qword_1ED4CDB30 = dispatch_queue_create("FigXPCServerCommonTimeoutQueue", 0);
  gCommonServerProcessCleanupQueue = dispatch_queue_create("FigXPCServerCommonProcessCleanupQueue", v0);
  if (FigServer_IsMediaserverd(gCommonServerProcessCleanupQueue, v1) && (IsServerProcess = audiomxd_enabled(), !IsServerProcess) || (IsServerProcess = in_audio_mx_server_process(), (IsServerProcess & 1) != 0) || (IsServerProcess = FigServer_IsServerProcess(IsServerProcess, v3), !IsServerProcess) || (IsServerProcess = FigServer_IsAirplayd(IsServerProcess, v3), IsServerProcess) || (IsServerProcess = FigServer_IsCameracaptured(IsServerProcess, v3), IsServerProcess))
  {
    qword_1ED4CDB38 |= 1uLL;
  }

  if (FigServer_IsMediaplaybackd(IsServerProcess, v3))
  {
    qword_1ED4CDB38 |= 2uLL;
  }

  result = FigSimpleMutexCreate();
  gSelfTerminationLock = result;
  return result;
}

@end