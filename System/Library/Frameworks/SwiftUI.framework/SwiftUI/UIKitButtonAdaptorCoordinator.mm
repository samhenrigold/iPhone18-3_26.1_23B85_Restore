@interface UIKitButtonAdaptorCoordinator
- (_TtC7SwiftUI29UIKitButtonAdaptorCoordinator)init;
- (void)menuActionTriggered:(id)triggered;
- (void)primaryActionTriggered:(id)triggered;
@end

@implementation UIKitButtonAdaptorCoordinator

- (void)primaryActionTriggered:(id)triggered
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action);
  if (v3)
  {
    v4 = *&self->action[OBJC_IVAR____TtC7SwiftUI29UIKitButtonAdaptorCoordinator_action];
    MEMORY[0x1EEE9AC00](self);
    v6 = v5;
    outlined copy of AppIntentExecutor?(v3, v4);
    static Update.dispatchImmediately<A>(reason:_:)();

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3, v4);
  }
}

- (void)menuActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  selfCopy = self;
  UIKitButtonAdaptorCoordinator.makeMenu()(v5);
  v7 = v6;
  [(UIButton *)triggeredCopy setMenu:v6];

  UIKitButtonAdaptorCoordinator.setupNotifications(_:)(triggeredCopy);
}

- (_TtC7SwiftUI29UIKitButtonAdaptorCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end