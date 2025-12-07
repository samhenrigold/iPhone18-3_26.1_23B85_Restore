@interface SetRateAndAnchorTime
@end

@implementation SetRateAndAnchorTime

uint64_t __papc_SetRateAndAnchorTime_block_invoke(uint64_t a1)
{
  v2 = FigReadWriteLockLockForRead();
  if (*(*(a1 + 32) + 24))
  {
    __papc_SetRateAndAnchorTime_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SHIDWORD(v12), vars0);
  }

  else
  {
    papc_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
  }

  return FigReadWriteLockUnlockForRead();
}

@end