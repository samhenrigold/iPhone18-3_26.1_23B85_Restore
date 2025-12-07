@interface LocationParameterQueryDataSource
- (_TtC17SpotlightUIShared32LocationParameterQueryDataSource)init;
- (void)completer:(id)completer didFailWithError:(id)error;
- (void)completerDidUpdateResults:(id)results;
@end

@implementation LocationParameterQueryDataSource

- (_TtC17SpotlightUIShared32LocationParameterQueryDataSource)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource____lazy_storage___searchCompleter) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_currentQuery);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared32LocationParameterQueryDataSource_responseHandler);
  DataSource = type metadata accessor for LocationParameterQueryDataSource();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = DataSource;
  return [(LocationParameterQueryDataSource *)&v7 init];
}

- (void)completerDidUpdateResults:(id)results
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  resultsCopy = results;
  selfCopy = self;
  results = [resultsCopy results];
  sub_26B9294B8(0, &qword_280426FA8, 0x277CD4E30);
  v11 = sub_26B9AC6F4();

  v12 = sub_26B9AC824();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = selfCopy;
  v14 = sub_26B92A538();
  swift_beginAccess();
  v15 = *v14;
  v16 = sub_26B989834(&qword_280426FB0, type metadata accessor for QueryActor, &protocol conformance descriptor for QueryActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v11;
  sub_26B9AAAE4();
  sub_26B908364(0, 0, v7, &unk_26B9B5280, v17);
}

- (void)completer:(id)completer didFailWithError:(id)error
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_26B9AC824();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  selfCopy = self;
  v10 = sub_26B92A538();
  swift_beginAccess();
  v11 = *v10;
  v12 = sub_26B989834(&qword_280426FB0, type metadata accessor for QueryActor, &protocol conformance descriptor for QueryActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = selfCopy;
  sub_26B9AAAE4();
  sub_26B908364(0, 0, v7, &unk_26B9B5278, v13);
}

@end