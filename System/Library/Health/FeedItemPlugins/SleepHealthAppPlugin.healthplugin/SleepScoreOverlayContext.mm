@interface SleepScoreOverlayContext
- (_TtC20SleepHealthAppPlugin24SleepScoreOverlayContext)init;
- (id)baseDisplayTypeForOverlay:(int64_t)overlay;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)scope;
- (id)sampleTypeForDateRangeUpdates;
- (int64_t)resolutionForTimeScope:(int64_t)scope traitResolution:(int64_t)resolution;
- (void)updateContextItemForDateInterval:(NSDateInterval *)interval overlayController:(HKInteractiveChartOverlayViewController *)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation SleepScoreOverlayContext

- (id)sampleTypeForDateRangeUpdates
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (id)baseDisplayTypeForOverlay:(int64_t)overlay
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_baseDisplayType);

  return v4;
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)scope
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_overlayDisplayType);

  return v4;
}

- (void)updateContextItemForDateInterval:(NSDateInterval *)interval overlayController:(HKInteractiveChartOverlayViewController *)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  sub_29E66A714(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  v17[2] = interval;
  v17[3] = controller;
  v17[4] = scope;
  v17[5] = resolution;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_29E7544F8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_29E7677D8;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_29E7677E8;
  v20[5] = v19;
  intervalCopy = interval;
  controllerCopy = controller;
  selfCopy = self;
  sub_29E6680B0(0, 0, v15, &unk_29E7677F8, v20);
}

- (id)contextItemForLastUpdate
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem);
  if (v3)
  {
    selfCopy = self;
    v5 = v3;
  }

  else
  {
    v6 = *&self->itemProvider[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider];
    v7 = *&self->itemProvider[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 8];
    sub_29E601938((&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider), v6);
    v8 = *(v7 + 8);
    selfCopy2 = self;
    v5 = v8(MEMORY[0x29EDCA190], 0, 1, v6, v7);
    v3 = 0;
  }

  v10 = v3;

  return v5;
}

- (int64_t)resolutionForTimeScope:(int64_t)scope traitResolution:(int64_t)resolution
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (_TtC20SleepHealthAppPlugin24SleepScoreOverlayContext)init
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end