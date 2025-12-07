@interface ODIPartialAssessmentInitiator
- (_TtC7CoreODI29ODIPartialAssessmentInitiator)init;
- (_TtC7CoreODI29ODIPartialAssessmentInitiator)initWithProviderID:(id)d;
- (id)makeInitialPartialAssessmentID;
- (id)makeInitialPartialAssessmentPayload;
@end

@implementation ODIPartialAssessmentInitiator

- (_TtC7CoreODI29ODIPartialAssessmentInitiator)initWithProviderID:(id)d
{
  v5 = sub_24619F64C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_providerID) = d;
  sub_24619F8BC();
  dCopy = d;
  sub_24619F62C();
  (*(v6 + 32))(self + OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_adapter, v8, v5);
  v10 = type metadata accessor for ODIPartialAssessmentInitiator(0);
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(ODIPartialAssessmentInitiator *)&v13 init];

  return v11;
}

- (id)makeInitialPartialAssessmentPayload
{
  selfCopy = self;
  sub_246196AE0();

  v3 = sub_24619F88C();

  return v3;
}

- (id)makeInitialPartialAssessmentID
{
  v2 = sub_24619F88C();

  return v2;
}

- (_TtC7CoreODI29ODIPartialAssessmentInitiator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end