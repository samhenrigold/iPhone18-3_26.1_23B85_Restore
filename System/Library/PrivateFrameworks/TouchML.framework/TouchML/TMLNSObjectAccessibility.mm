@interface TMLNSObjectAccessibility
+ (void)makeAccessible:(id)accessible signalName:(id)name;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
@end

@implementation TMLNSObjectAccessibility

+ (void)makeAccessible:(id)accessible signalName:(id)name
{
  accessibleCopy = accessible;
  nameCopy = name;
  if (([nameCopy isEqualToString:@"accessibilityElementDidBecomeFocused"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"accessibilityElementDidLoseFocus"))
  {
    [TMLNSObjectAccessibility subclassInstance:accessibleCopy];
  }
}

- (void)accessibilityElementDidBecomeFocused
{
  Superclass = [(TMLNSObjectAccessibility *)self tmlSuperClass];
  v6.receiver = self;
  if (!Superclass)
  {
    Class = object_getClass(self);
    Superclass = class_getSuperclass(Class);
  }

  v6.super_class = Superclass;
  objc_msgSendSuper(&v6, a2);
  [self emitTMLSignal:@"accessibilityElementDidBecomeFocused" withArguments:0, v6.receiver];
}

- (void)accessibilityElementDidLoseFocus
{
  Superclass = [(TMLNSObjectAccessibility *)self tmlSuperClass];
  v6.receiver = self;
  if (!Superclass)
  {
    Class = object_getClass(self);
    Superclass = class_getSuperclass(Class);
  }

  v6.super_class = Superclass;
  objc_msgSendSuper(&v6, a2);
  [self emitTMLSignal:@"accessibilityElementDidLoseFocus" withArguments:0, v6.receiver];
}

@end