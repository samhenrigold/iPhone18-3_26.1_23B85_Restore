@interface MinimumTimeIntervalRadarRequestFilter
- (BOOL)shouldRequestRadarForDisplayReason:(id)reason;
- (_TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter)init;
- (void)radarRequestedForDisplayReason:(id)reason;
@end

@implementation MinimumTimeIntervalRadarRequestFilter

- (BOOL)shouldRequestRadarForDisplayReason:(id)reason
{
  selfCopy = self;
  v4 = sub_22B0D1A68();

  return v4;
}

- (void)radarRequestedForDisplayReason:(id)reason
{
  v4 = sub_22B0DF0E0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory);
  selfCopy = self;
  v7();
  v9 = selfCopy + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v11 + 16))(v6, v10, v11);
  swift_endAccess();
}

- (_TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end