@interface AFConnectionAccessibility
- (void)rollbackRequest;
@end

@implementation AFConnectionAccessibility

- (void)rollbackRequest
{
  v9 = *MEMORY[0x29EDCA608];
  if ([(AFConnectionAccessibility *)self _accessibilityBoolValueForKey:@"VoiceOverCancelRequestInProgress"])
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = AXIsInternalInstall();
      v5 = &stru_2A2113668;
      if (v4)
      {
        v5 = @"rdar://80384131";
      }

      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&dword_29BB94000, v3, OS_LOG_TYPE_DEFAULT, "VoiceOver issued this cancel request - not acting on the rollback %@", buf, 0xCu);
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AFConnectionAccessibility;
    [(AFConnectionAccessibility *)&v6 rollbackRequest];
  }
}

@end