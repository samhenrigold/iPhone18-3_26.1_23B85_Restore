@interface NotificationServiceClient.ExportedObject
- (_TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject)init;
- (void)receivedActionWithAlertIdentifier:(id)identifier action:(id)action;
@end

@implementation NotificationServiceClient.ExportedObject

- (void)receivedActionWithAlertIdentifier:(id)identifier action:(id)action
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_24A9FED40();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12 = *(&self->super.isa + OBJC_IVAR____TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject_onReceiveAction);
  v11 = *&self->onReceiveAction[OBJC_IVAR____TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject_onReceiveAction];
  sub_24A9FED20();
  identifierCopy = identifier;
  actionCopy = action;
  v15 = identifierCopy;
  v16 = actionCopy;
  selfCopy = self;

  v18 = sub_24A9FED10();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v12;
  v19[5] = v11;
  v19[6] = v15;
  v19[7] = v16;
  sub_24A9CAA28(0, 0, v9, &unk_24AA013E8, v19);
}

- (_TtCC24FaceTimeNotificationCore25NotificationServiceClient14ExportedObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end