@interface DynamicViewControllerDelegate
- (BOOL)dynamicViewControllerShouldDismiss:(id)dismiss;
- (_TtC16NewsSubscription29DynamicViewControllerDelegate)init;
@end

@implementation DynamicViewControllerDelegate

- (BOOL)dynamicViewControllerShouldDismiss:(id)dismiss
{
  v4 = qword_1EE08FB98;
  dismissCopy = dismiss;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE09C268;
  v8 = sub_1D78B60A4();
  sub_1D78B42C4("AMSUIDynamicViewControllerDelegate: dynamicViewControllerShouldDismiss callback", 79, 2, &dword_1D7739000, v7, v8, MEMORY[0x1E69E7CC0]);
  sub_1D78ACEAC(dismissCopy);

  return 1;
}

- (_TtC16NewsSubscription29DynamicViewControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end