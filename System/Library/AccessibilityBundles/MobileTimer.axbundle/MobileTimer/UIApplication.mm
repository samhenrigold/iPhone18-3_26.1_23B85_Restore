@interface UIApplication
@end

@implementation UIApplication

void *__84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke(uint64_t a1)
{
  [*(a1 + 32) pauseLapTimer];
  result = +[AXMobileTimerGlue playStopSound];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void *__84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) startLapTimer];
  result = +[AXMobileTimerGlue playStartSound];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void *__84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) resumeLapTimer];
  result = +[AXMobileTimerGlue playStartSound];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_4(uint64_t a1)
{
  MEMORY[0x29C2E1AE0](@"MTATimerViewController");
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) safeValueForKey:@"timerManager"];
    v3 = [v2 safeValueForKey:@"getCurrentTimerSync"];
    v4 = [v3 safeValueForKey:@"state"];
    v5 = [v4 integerValue];

    if (v5 == 1)
    {
      [*(a1 + 32) startTimer:0];
    }

    else
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          [*(a1 + 32) pauseResumeTimer:0];
          +[AXMobileTimerGlue playStopSound];
        }

        goto LABEL_9;
      }

      [*(a1 + 32) pauseResumeTimer:0];
    }

    +[AXMobileTimerGlue playStartSound];
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end