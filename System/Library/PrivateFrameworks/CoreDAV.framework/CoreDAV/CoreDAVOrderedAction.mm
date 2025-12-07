@interface CoreDAVOrderedAction
- (CoreDAVOrderedAction)initWithAction:(int)action context:(id)context absoluteOrder:(int)order;
@end

@implementation CoreDAVOrderedAction

- (CoreDAVOrderedAction)initWithAction:(int)action context:(id)context absoluteOrder:(int)order
{
  v7.receiver = self;
  v7.super_class = CoreDAVOrderedAction;
  result = [(CoreDAVAction *)&v7 initWithAction:*&action context:context];
  if (result)
  {
    *(&result->super._ignoresGuardianRestrictions + 1) = order;
  }

  return result;
}

@end