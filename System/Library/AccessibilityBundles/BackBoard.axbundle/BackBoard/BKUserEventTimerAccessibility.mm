@interface BKUserEventTimerAccessibility
- (void)_axSetTimerDisabled:(BOOL)disabled;
- (void)resetTimer:(double)timer mode:(int)mode;
@end

@implementation BKUserEventTimerAccessibility

- (void)_axSetTimerDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v20 = *MEMORY[0x29EDCA608];
  if ([(BKUserEventTimerAccessibility *)self _axIsTimerDisabled]!= disabled)
  {
    v5 = AXLogBackboardServer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = disabledCopy;
      _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "setting idle timer disabled: %d", buf, 8u);
    }

    if (disabledCopy)
    {
      *buf = 0;
      v17 = buf;
      v18 = 0x2020000000;
      v19 = 0;
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__BKUserEventTimerAccessibility__axSetTimerDisabled___block_invoke;
      aBlock[3] = &unk_29F2A52D0;
      aBlock[4] = self;
      aBlock[5] = buf;
      aBlock[6] = &v12;
      v6 = _Block_copy(aBlock);
      v7 = [(BKUserEventTimerAccessibility *)self safeValueForKey:@"_queue"];
      v8 = __UIAccessibilityCastAsProtocol();

      if (v8)
      {
        dispatch_sync(v8, v6);
      }

      else
      {
        v10 = AXLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [BKUserEventTimerAccessibility _axSetTimerDisabled:v10];
        }

        v6[2](v6);
      }

      [(BKUserEventTimerAccessibility *)self _axSetDesiredTimeout:*(v17 + 3)];
      [(BKUserEventTimerAccessibility *)self _axSetDesiredMode:*(v13 + 6)];
      [(BKUserEventTimerAccessibility *)self resetTimer:0 mode:-1.0];
      _IsTimerDisabled = disabledCopy;

      _Block_object_dispose(&v12, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      _IsTimerDisabled = 0;
      [(BKUserEventTimerAccessibility *)self _axDesiredTimeout];
      [(BKUserEventTimerAccessibility *)self resetTimer:[(BKUserEventTimerAccessibility *)self _axDesiredMode] mode:v9];
    }
  }
}

void __53__BKUserEventTimerAccessibility__axSetTimerDisabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_currentTimeout"];
  [v2 doubleValue];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = [*(a1 + 32) safeValueForKey:@"_currentMode"];
  *(*(*(a1 + 48) + 8) + 24) = [v4 intValue];
}

- (void)resetTimer:(double)timer mode:(int)mode
{
  v4 = *&mode;
  v13 = *MEMORY[0x29EDCA608];
  if ([(BKUserEventTimerAccessibility *)self _axIsTimerDisabled])
  {
    v7 = AXLogBackboardServer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      timerCopy = timer;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_DEFAULT, "Someone asked to reset idle timer but it is disabled by accessibility. timeout: %f mode: %d", buf, 0x12u);
    }

    [(BKUserEventTimerAccessibility *)self _axSetDesiredTimeout:timer];
    [(BKUserEventTimerAccessibility *)self _axSetDesiredMode:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BKUserEventTimerAccessibility;
    [(BKUserEventTimerAccessibility *)&v8 resetTimer:v4 mode:timer];
  }
}

@end