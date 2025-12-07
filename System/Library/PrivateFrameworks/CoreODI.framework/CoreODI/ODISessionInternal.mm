@interface ODISessionInternal
- (NSString)description;
- (_TtC7CoreODI18ODISessionInternal)init;
- (_TtC7CoreODI18ODISessionInternal)initWithServiceIdentifier:(id)identifier forDSIDType:(unint64_t)type locationBundle:(id)bundle andLocationBundleIdentifier:(id)bundleIdentifier sessionStateDelegate:(id)delegate;
- (void)getAssessment:(id)assessment;
- (void)provideFeedbackOnPartialAssessmentID:(id)d;
- (void)provideFeedbackOnPayloadOutcome:(unint64_t)outcome feedbackRecorded:(id)recorded;
- (void)updateWithAdditionalAttributes:(id)attributes;
- (void)validateForDeinit;
@end

@implementation ODISessionInternal

- (NSString)description
{

  sub_24619FAEC();
  MEMORY[0x24C19A830](0x697373655349444FLL, 0xEF20726F66206E6FLL);
  type metadata accessor for ODIServiceProviderId(0);
  sub_24619FB6C();

  v2 = sub_24619F88C();

  return v2;
}

- (_TtC7CoreODI18ODISessionInternal)initWithServiceIdentifier:(id)identifier forDSIDType:(unint64_t)type locationBundle:(id)bundle andLocationBundleIdentifier:(id)bundleIdentifier sessionStateDelegate:(id)delegate
{
  if (bundleIdentifier)
  {
    v11 = sub_24619F8BC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  identifierCopy = identifier;
  bundleCopy = bundle;
  swift_unknownObjectRetain();
  return ODISessionInternal.init(serviceIdentifier:forDSIDType:locationBundle:andLocationBundleIdentifier:sessionStateDelegate:)(identifierCopy, type, bundle, v11, v13, delegate);
}

- (void)updateWithAdditionalAttributes:(id)attributes
{
  attributesCopy = attributes;

  sub_24617707C(attributes);
}

- (void)getAssessment:(id)assessment
{
  v5 = sub_24619F4DC();
  v15 = *(v5 - 8);
  v16 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24619F7FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(assessment);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  __swift_project_boxed_opaque_existential_1((&self->super.super.isa + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *&self->$defaultActor[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 16]);
  (*(v9 + 104))(v11, *MEMORY[0x277D00790], v8);

  sub_24619F6CC();
  (*(v9 + 8))(v11, v8);
  sub_24619F4BC();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24618B9C4;
  *(v14 + 24) = v13;

  sub_246180944(v7, sub_24618BD1C, v14);

  (*(v15 + 8))(v7, v16);
}

- (void)provideFeedbackOnPayloadOutcome:(unint64_t)outcome feedbackRecorded:(id)recorded
{
  v5 = _Block_copy(recorded);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_24617823C(outcome, sub_24618B9B4, v6);
}

- (void)provideFeedbackOnPartialAssessmentID:(id)d
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_24619F8BC();
  v9 = v8;
  v10 = sub_24619F9CC();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v7;
  v11[6] = v9;

  sub_2461703A8(0, 0, v6, &unk_2461A1320, v11);
}

- (void)validateForDeinit
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_24619F9CC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_2461703A8(0, 0, v5, &unk_2461A1318, v7);
}

- (_TtC7CoreODI18ODISessionInternal)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end