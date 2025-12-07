@interface MTWatchActivityManager
+ (_TtC18MobileTimerSupport22MTWatchActivityManager)shared;
+ (void)setShared:(id)shared;
- (_TtC18MobileTimerSupport22MTWatchActivityManager)init;
- (void)endActivityWithAlarmID:(id)d;
- (void)startActivityWithAlarmID:(id)d firingDate:(id)date;
@end

@implementation MTWatchActivityManager

+ (_TtC18MobileTimerSupport22MTWatchActivityManager)shared
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_27DA035B8;
}

+ (void)setShared:(id)shared
{
  v3 = qword_27DA01A20;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27DA035B8;
  qword_27DA035B8 = sharedCopy;
}

- (void)startActivityWithAlarmID:(id)d firingDate:(id)date
{
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D81A918();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8F8();
  sub_22D81A878();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

- (void)endActivityWithAlarmID:(id)d
{
  v3 = sub_22D81A918();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8F8();
  (*(v4 + 8))(v6, v3);
}

- (_TtC18MobileTimerSupport22MTWatchActivityManager)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18MobileTimerSupport22MTWatchActivityManager_activityManager;
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(&self->super.isa + v4) = qword_27DA02490;
  v6.receiver = self;
  v6.super_class = ObjectType;
  sub_22D81A198();
  return [(MTWatchActivityManager *)&v6 init];
}

@end