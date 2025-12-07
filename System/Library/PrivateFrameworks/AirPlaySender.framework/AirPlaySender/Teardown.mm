@interface Teardown
@end

@implementation Teardown

void __apEndpointRemoteControlSession_Teardown_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  if (!apEndpointRemoteControlSession_isInvalidated(v2))
  {
    v3 = dispatch_semaphore_create(0);
    if (v3)
    {
      v4 = v3;
      CFRetain(v2);
      dispatch_retain(v4);
      OUTLINED_FUNCTION_1_17();
      v9 = 0x40000000;
      v10 = __apEndpointRemoteControlSession_teardownInternal_block_invoke;
      v11 = &__block_descriptor_tmp_69;
      v12 = v2;
      v13 = v4;
      dispatch_async(v5, block);
      v6 = dispatch_time(0, 4000000000);
      if (dispatch_semaphore_wait(v4, v6) && gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_teardownInternal(FigEndpointRemoteControlSessionRef)", 33554492, "[%{ptr}] Teardown taking too long. Invalidating anyway.\n", v2);
      }

      apEndpointRemoteControlSession_invalidateInternal(v2);
      if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointRemoteControlSession, "void apEndpointRemoteControlSession_teardownInternal(FigEndpointRemoteControlSessionRef)", v7, "[%{ptr}] RCS torn down\n");
      }

      dispatch_release(v4);
    }

    else
    {
      APSLogErrorAt();
    }
  }

  CFRelease(*(a1 + 32));
}

@end