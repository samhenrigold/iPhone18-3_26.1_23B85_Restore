@interface UserNotificationManagerDelegate
- (_TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate)init;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
@end

@implementation UserNotificationManagerDelegate

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = center;
  v13[3] = response;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225CF9CC8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225CF9CD0;
  v16[5] = v15;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02030, v16);
}

- (_TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate_continuations;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FDF8, &unk_225CF9CB0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = MEMORY[0x277D84F98];
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(UserNotificationManagerDelegate *)&v7 init];
}

@end