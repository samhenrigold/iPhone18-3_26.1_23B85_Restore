@interface MockPresentationEnvironment
- (id)presentAlertWithConfigurationHandler:(id)handler;
- (void)dismissAlertWithToken:(id)token completionHandler:(id)handler;
- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
@end

@implementation MockPresentationEnvironment

- (void)presentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1B3F97200;
  }

  else
  {
    v8 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1B3F96658(controllerCopy, 0, v7);
  sub_1B3F7BAA8(v7, v8);
}

- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1B3F97200;
  }

  else
  {
    v8 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1B3F967C0(selfCopy, 0, v7);
  sub_1B3F7BAA8(v7, v8);
}

- (id)presentAlertWithConfigurationHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  v6 = sub_1B3F968DC(selfCopy, v4);
  _Block_release(v4);

  return v6;
}

- (void)dismissAlertWithToken:(id)token completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1B3F9718C;
  }

  else
  {
    v6 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3F96BB4(selfCopy, v5);
  sub_1B3F7BAA8(v5, v6);
  swift_unknownObjectRelease();
}

@end