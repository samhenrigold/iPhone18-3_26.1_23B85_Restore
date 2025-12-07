@interface FitNoiseAirpodAdjustmentVideoController
- (_TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FitNoiseAirpodAdjustmentVideoController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FitNoiseAirpodAdjustmentVideoController();
  v4 = v7.receiver;
  [(FitNoiseAirpodAdjustmentVideoController *)&v7 viewWillAppear:appearCopy];
  v5 = sub_252038D74();
  (*((*MEMORY[0x277D85000] & *v5) + 0xE0))(v5, v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_252038F58();
}

- (_TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI39FitNoiseAirpodAdjustmentVideoController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end