@interface AKAppleIDPasskeyRegistrationProvider
- (AKAppleIDPasskeyRegistrationProvider)init;
- (AKAppleIDPasskeyRegistrationProvider)initWithServiceController:(id)controller accountManager:(id)manager;
- (void)performRegistrationRequestWith:(AKAppleIDPasskeyCredential *)with completionHandler:(id)handler;
@end

@implementation AKAppleIDPasskeyRegistrationProvider

- (AKAppleIDPasskeyRegistrationProvider)initWithServiceController:(id)controller accountManager:(id)manager
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_serviceController) = controller;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_accountManager) = manager;
  v11.receiver = self;
  v11.super_class = ObjectType;
  controllerCopy = controller;
  managerCopy = manager;
  return [(AKAppleIDPasskeyRegistrationProvider *)&v11 init];
}

- (void)performRegistrationRequestWith:(AKAppleIDPasskeyCredential *)with completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E1F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029C6A0;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CEE0, v14);
}

- (AKAppleIDPasskeyRegistrationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end