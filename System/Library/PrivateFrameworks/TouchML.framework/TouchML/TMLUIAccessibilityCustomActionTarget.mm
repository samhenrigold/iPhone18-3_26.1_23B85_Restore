@interface TMLUIAccessibilityCustomActionTarget
- (BOOL)action:(id)action;
@end

@implementation TMLUIAccessibilityCustomActionTarget

- (BOOL)action:(id)action
{
  v7 = 0;
  v3 = [action emitTMLSignal:@"action" withArguments:0 returnValue:&v7];
  v4 = v7;
  v5 = v4;
  if (v3)
  {
    LOBYTE(v3) = [v4 BOOLValue];
  }

  return v3;
}

@end