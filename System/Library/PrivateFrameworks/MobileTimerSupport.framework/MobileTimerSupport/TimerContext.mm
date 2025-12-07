@interface TimerContext
- (_TtC18MobileTimerSupport12TimerContext)init;
- (_TtC18MobileTimerSupport12TimerContext)initWithState:(int64_t)state timerId:(id)id duration:(double)duration remainingTime:(double)time firing:(BOOL)firing fireDate:(id)date title:(id)title;
- (int64_t)requestedStyle;
- (void)setRequestedStyle:(int64_t)style;
@end

@implementation TimerContext

- (int64_t)requestedStyle
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequestedStyle:(int64_t)style
{
  v5 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  *(&self->super.isa + v5) = style;
}

- (_TtC18MobileTimerSupport12TimerContext)initWithState:(int64_t)state timerId:(id)id duration:(double)duration remainingTime:(double)time firing:(BOOL)firing fireDate:(id)date title:(id)title
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_22D81B2C8();
  v19 = v18;
  if (date)
  {
    sub_22D81A878();
    v20 = sub_22D81A8C8();
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
  }

  else
  {
    v21 = sub_22D81A8C8();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  }

  v22 = sub_22D81B2C8();
  return TimerContext.init(state:timerId:duration:remainingTime:firing:fireDate:title:)(state, v17, v19, firing, v16, v22, v23, duration, time);
}

- (_TtC18MobileTimerSupport12TimerContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end