@interface AlarmContext
- (_TtC18MobileTimerSupport12AlarmContext)init;
- (_TtC18MobileTimerSupport12AlarmContext)initWithTitle:(id)title alarmId:(id)id hour:(unint64_t)hour min:(unint64_t)min isSnoozed:(BOOL)snoozed snoozeFireDate:(id)date isFiring:(BOOL)firing;
- (int64_t)requestedStyle;
- (void)setRequestedStyle:(int64_t)style;
@end

@implementation AlarmContext

- (int64_t)requestedStyle
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequestedStyle:(int64_t)style
{
  v5 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  *(&self->super.isa + v5) = style;
}

- (_TtC18MobileTimerSupport12AlarmContext)initWithTitle:(id)title alarmId:(id)id hour:(unint64_t)hour min:(unint64_t)min isSnoozed:(BOOL)snoozed snoozeFireDate:(id)date isFiring:(BOOL)firing
{
  snoozedCopy = snoozed;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_22D81B2C8();
  v17 = v16;
  v18 = sub_22D81B2C8();
  v20 = v19;
  if (date)
  {
    sub_22D81A878();
    v21 = sub_22D81A8C8();
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
  }

  else
  {
    v22 = sub_22D81A8C8();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  }

  return AlarmContext.init(title:alarmId:hour:min:isSnoozed:snoozeFireDate:isFiring:)(v15, v17, v18, v20, hour, min, snoozedCopy, v14, firing);
}

- (_TtC18MobileTimerSupport12AlarmContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end