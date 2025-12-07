@interface BLSHOSInterfaceProviderAbortContext
- (BLSHOSInterfaceProviderAbortContext)initWithWatchdogType:(unint64_t)type cbDisplayMode:(int64_t)mode cbFlipbookState:(int64_t)state caDisplayState:(int64_t)displayState completedCADisplayState:(int64_t)aDisplayState suppressionServiceActive:(BOOL)active flipbookTransparent:(BOOL)transparent deviceSupportsAlwaysOn:(BOOL)self0 deviceSupportsAlwaysOnFlipbook:(BOOL)self1 displayStateClientSupported:(BOOL)self2 backlightDimmedFactor:(float)self3;
- (BOOL)wantsPanic;
- (NSString)abortReasonString;
- (NSString)description;
- (double)panicDelay;
- (void)setSleepImminentAbortReason;
@end

@implementation BLSHOSInterfaceProviderAbortContext

- (BLSHOSInterfaceProviderAbortContext)initWithWatchdogType:(unint64_t)type cbDisplayMode:(int64_t)mode cbFlipbookState:(int64_t)state caDisplayState:(int64_t)displayState completedCADisplayState:(int64_t)aDisplayState suppressionServiceActive:(BOOL)active flipbookTransparent:(BOOL)transparent deviceSupportsAlwaysOn:(BOOL)self0 deviceSupportsAlwaysOnFlipbook:(BOOL)self1 displayStateClientSupported:(BOOL)self2 backlightDimmedFactor:(float)self3
{
  v21.receiver = self;
  v21.super_class = BLSHOSInterfaceProviderAbortContext;
  result = [(BLSHOSInterfaceProviderAbortContext *)&v21 init];
  if (result)
  {
    result->_watchdogType = type;
    result->_cbDisplayMode = mode;
    result->_cbFlipbookState = state;
    result->_caDisplayState = displayState;
    result->_completedCADisplayState = aDisplayState;
    result->_suppressionServiceActive = active;
    result->_flipbookTransparent = transparent;
    result->_deviceSupportsAlwaysOn = on;
    result->_deviceSupportsAlwaysOnFlipbook = flipbook;
    result->_displayStateClientSupported = supported;
    result->_backlightDimmedFactor = factor;
    if (type <= 2)
    {
      result->_abortReason = qword_21FDA51D0[type];
    }
  }

  return result;
}

- (NSString)abortReasonString
{
  v2 = self->_abortReason - 11;
  if (v2 > 0xA)
  {
    return @"OSIP_UNKNOWN";
  }

  else
  {
    return &off_27841E6B0[v2]->isa;
  }
}

- (double)panicDelay
{
  result = 30.0;
  if ((self->_abortReason & 0xFFFFFFFFFFFFFFFELL) == 0x14)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)wantsPanic
{
  v25 = *MEMORY[0x277D85DE8];
  abortReason = self->_abortReason;
  if (abortReason > 0x15)
  {
    goto LABEL_17;
  }

  if (((1 << abortReason) & 0x205000) != 0)
  {
    v6 = bls_diagnostics_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_abortReason;
      abortReasonString = [(BLSHOSInterfaceProviderAbortContext *)self abortReasonString];
      *buf = 134218242;
      v22 = v10;
      v23 = 2114;
      v24 = abortReasonString;
      v9 = "_abortReason=%llu (%{public}@) wantsPanic:YES";
      goto LABEL_9;
    }

LABEL_10:
    v11 = 1;
LABEL_20:

    return v11;
  }

  if (((1 << abortReason) & 0x2800) == 0)
  {
    if (abortReason == 20)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
      v19 = @"panicOnCoreAnimationWatchdog";
      v20 = MEMORY[0x277CBEC28];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [v6 registerDefaults:v12];

      if ([v6 BOOLForKey:@"panicOnCoreAnimationWatchdog"])
      {
        v13 = bls_diagnostics_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = self->_abortReason;
          abortReasonString2 = [(BLSHOSInterfaceProviderAbortContext *)self abortReasonString];
          *buf = 134218242;
          v22 = v14;
          v23 = 2114;
          v24 = abortReasonString2;
          _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEFAULT, "_abortReason=%llu (%{public}@) com.apple.BacklightServices panicOnCoreAnimationWatchdog:YES wantsPanic:YES", buf, 0x16u);
        }

        goto LABEL_10;
      }

LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

LABEL_17:
    v6 = bls_diagnostics_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_abortReason;
      abortReasonString3 = [(BLSHOSInterfaceProviderAbortContext *)self abortReasonString];
      *buf = 134218242;
      v22 = v16;
      v23 = 2114;
      v24 = abortReasonString3;
      _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, "_abortReason=%llu (%{public}@) wantsPanic:NO", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  v5 = [v4 BOOLForKey:@"panicOnCoreBrightnessWatchdog"];

  if (v5)
  {
    v6 = bls_diagnostics_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_abortReason;
      abortReasonString = [(BLSHOSInterfaceProviderAbortContext *)self abortReasonString];
      *buf = 134218242;
      v22 = v7;
      v23 = 2114;
      v24 = abortReasonString;
      v9 = "_abortReason=%llu (%{public}@) com.apple.BacklightServices panicOnCoreBrightnessWatchdog:YES wantsPanic:YES";
LABEL_9:
      _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  return 0;
}

- (void)setSleepImminentAbortReason
{
  abortReason = self->_abortReason;
  switch(abortReason)
  {
    case 0xBuLL:
      v3 = 12;
      break;
    case 0x14uLL:
      v3 = 21;
      break;
    case 0xDuLL:
      v3 = 14;
      break;
    default:
      return;
  }

  self->_abortReason = v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  watchdogType = self->_watchdogType;
  if (watchdogType > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_27841E708[watchdogType];
  }

  [v3 appendString:v6 withName:@"watchdogType"];
  v7 = NSStringFromCBDisplayMode_bls(self->_cbDisplayMode);
  [v4 appendString:v7 withName:@"cbDisplayMode"];

  v8 = NSStringFromCBFlipbookState_bls(self->_cbFlipbookState);
  [v4 appendString:v8 withName:@"cbFlipbookState"];

  caDisplayState = self->_caDisplayState;
  completedCADisplayState = self->_completedCADisplayState;
  v11 = NSStringFromCADisplayState();
  if (caDisplayState == completedCADisplayState)
  {
    v12 = @"caDisplayState";
  }

  else
  {
    [v4 appendString:v11 withName:@"pendingCADisplayState"];

    v11 = NSStringFromCADisplayState();
    v12 = @"completedCADisplayState";
  }

  [v4 appendString:v11 withName:v12];

  v13 = [v4 appendBool:self->_suppressionServiceActive withName:@"suppressionServiceActive"];
  v14 = [v4 appendBool:self->_flipbookTransparent withName:@"flipbookTransparent"];
  v15 = [v4 appendBool:self->_deviceSupportsAlwaysOn withName:@"supportsAlwaysOn"];
  v16 = [v4 appendBool:self->_deviceSupportsAlwaysOnFlipbook withName:@"supportsFlipbook"];
  v17 = [v4 appendBool:self->_displayStateClientSupported withName:@"displayStateClientSupported"];
  v18 = [v4 appendFloat:@"backlightDimmedFactor" withName:self->_backlightDimmedFactor];
  build = [v4 build];

  return build;
}

@end