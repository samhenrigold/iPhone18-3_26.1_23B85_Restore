@interface ScreentimePasscodeListener
- (_TtC14FamilyCircleUI26ScreentimePasscodeListener)init;
- (void)handleRestrictionsPINNotification:(id)notification;
@end

@implementation ScreentimePasscodeListener

- (void)handleRestrictionsPINNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_21BD9BC74(notificationCopy);
}

- (_TtC14FamilyCircleUI26ScreentimePasscodeListener)init
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC6D8, &qword_21BE4AF30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  *&self->delegate[OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener__state;
  v13 = 0;
  sub_21BE26C6C();
  (*(v4 + 32))(self + v7, v6, v3);
  v8 = (&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction);
  v9 = type metadata accessor for ScreentimePasscodeListener(0);
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = self;
  v12.super_class = v9;
  return [(ScreentimePasscodeListener *)&v12 init];
}

@end