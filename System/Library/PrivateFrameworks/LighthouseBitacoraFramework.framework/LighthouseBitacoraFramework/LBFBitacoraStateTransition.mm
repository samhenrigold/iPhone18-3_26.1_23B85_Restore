@interface LBFBitacoraStateTransition
- (LBFBitacoraStateTransition)initWithBitcoraState:(int64_t)state previousState:(int64_t)previousState timestamp:(id)timestamp timedelta:(double)timedelta;
@end

@implementation LBFBitacoraStateTransition

- (LBFBitacoraStateTransition)initWithBitcoraState:(int64_t)state previousState:(int64_t)previousState timestamp:(id)timestamp timedelta:(double)timedelta
{
  v19 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  v16.receiver = self;
  v16.super_class = LBFBitacoraStateTransition;
  v12 = [(LBFBitacoraStateTransition *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_state = state;
    v12->_previousState = previousState;
    objc_storeStrong(&v12->_timestamp, timestamp);
    v13->_timedelta = timedelta;
    if (timedelta < 0.0)
    {
      v14 = LBFLogContextBitacoraStateTransition;
      if (os_log_type_enabled(LBFLogContextBitacoraStateTransition, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        stateCopy = state;
        _os_log_impl(&dword_255ED5000, v14, OS_LOG_TYPE_INFO, "trial events are tracked earlier than the bucket %d", buf, 8u);
      }
    }
  }

  return v13;
}

@end