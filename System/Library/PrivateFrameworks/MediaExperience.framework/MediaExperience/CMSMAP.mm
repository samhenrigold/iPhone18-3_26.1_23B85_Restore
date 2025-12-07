@interface CMSMAP
@end

@implementation CMSMAP

NSObject *__CMSMAP_StartDisconnectAirPlayScreenTimer_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MXGetSerialQueue(a1, a2);
  result = MXDispatchUtilityCreateOneShotTimer("CMSMAP_StartDisconnectAirPlayScreenTimer_block_invoke", "CMSessionManager_AirPlay.m", 221, 0, 0, v3, &__block_literal_global_27, 0, v2, 0);
  qword_1EB75E158 = result;
  return result;
}

void __CMSMAP_StopDisconnectAirPlayScreenTimer_block_invoke()
{
  if (qword_1EB75E158)
  {
    dispatch_source_cancel(qword_1EB75E158);
    if (qword_1EB75E158)
    {
      dispatch_release(qword_1EB75E158);
      qword_1EB75E158 = 0;
    }
  }
}

NSObject *__CMSMAP_StartRouteAwayFromAirPlayHandoffTimer_block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMAP_StartRouteAwayFromAirPlayHandoffTimer_block_invoke_2;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = MXGetSerialQueue(a1, a2);
  result = MXDispatchUtilityCreateOneShotTimer("CMSMAP_StartRouteAwayFromAirPlayHandoffTimer_block_invoke", "CMSessionManager_AirPlay.m", 255, 0, 0, v3, v5, 0, v2, 0);
  qword_1EB75E160 = result;
  return result;
}

void __CMSMAP_StopRouteAwayFromAirPlayHandoffTimer_block_invoke()
{
  if (qword_1EB75E160)
  {
    dispatch_source_cancel(qword_1EB75E160);
    if (qword_1EB75E160)
    {
      dispatch_release(qword_1EB75E160);
      qword_1EB75E160 = 0;
    }
  }
}

@end