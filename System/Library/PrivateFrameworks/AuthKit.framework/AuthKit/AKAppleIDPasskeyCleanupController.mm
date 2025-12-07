@interface AKAppleIDPasskeyCleanupController
- (AKAppleIDPasskeyCleanupController)init;
- (AKAppleIDPasskeyCleanupController)initWithPasskeyValidator:(id)validator authenticationController:(id)controller accountManager:(id)manager;
- (void)cleanupPasskeysFromKeychainWithcompletion:(id)withcompletion;
@end

@implementation AKAppleIDPasskeyCleanupController

- (AKAppleIDPasskeyCleanupController)initWithPasskeyValidator:(id)validator authenticationController:(id)controller accountManager:(id)manager
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyCleanupController_passkeyValidator) = validator;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyCleanupController_authenticationController) = controller;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyCleanupController_accountManager) = manager;
  v12.receiver = self;
  v12.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  managerCopy = manager;
  return [(AKAppleIDPasskeyCleanupController *)&v12 init];
}

- (void)cleanupPasskeysFromKeychainWithcompletion:(id)withcompletion
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(withcompletion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029D170;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029C6A0;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

- (AKAppleIDPasskeyCleanupController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end