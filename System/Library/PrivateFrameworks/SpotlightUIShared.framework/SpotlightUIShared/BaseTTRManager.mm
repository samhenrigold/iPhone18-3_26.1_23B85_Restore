@interface BaseTTRManager
- (_TtC17SpotlightUIShared14BaseTTRManager)init;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
@end

@implementation BaseTTRManager

- (_TtC17SpotlightUIShared14BaseTTRManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_invalidated) = 0;
  v3 = self + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_queryID;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_command) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_notifiedCommand) = 0;
  v4 = OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_notificationMinInterval;
  sub_26B9A29F8();
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseTTRManager();
  return [(BaseTTRManager *)&v7 init];
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = center;
  v13[3] = response;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_26B9AC824();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26B9B67E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26B9B67F8;
  v16[5] = v15;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_26B905410(0, 0, v11, &unk_26B9B6808, v16);
}

@end