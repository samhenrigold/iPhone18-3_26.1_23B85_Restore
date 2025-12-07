@interface SpotlightQueryDataSource
- (_TtC17SpotlightUIShared24SpotlightQueryDataSource)init;
@end

@implementation SpotlightQueryDataSource

- (_TtC17SpotlightUIShared24SpotlightQueryDataSource)init
{
  v3 = sub_26B9AB584();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask) = 0;
  v7 = self + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentQuery;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426748, qword_26B9B2A20);
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = (&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_signpostState;
  v12 = sub_26B9A7568();
  (*(v4 + 16))(v6, v12, v3);
  v13 = sub_26B948BC8();
  SignpostIntervals.init(with:log:)(0, v6, &type metadata for SpotlightSignpostInterval, v13, (self + v11));
  DataSource = type metadata accessor for SpotlightQueryDataSource(0);
  v16.receiver = self;
  v16.super_class = DataSource;
  return [(SpotlightQueryDataSource *)&v16 init];
}

@end