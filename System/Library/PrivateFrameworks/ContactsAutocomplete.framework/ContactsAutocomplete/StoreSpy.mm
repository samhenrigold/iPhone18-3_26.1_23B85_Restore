@interface StoreSpy
- (_TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy)init;
- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetchDidFinish:(id)finish;
@end

@implementation StoreSpy

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68720, &qword_21565F4F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68728, &qword_21565F4F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_215654720();
  v12 = sub_215656EDC();
  v13 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  swift_beginAccess();
  sub_21565456C(self + v13, v7, &qword_27CA68720, &qword_21565F4F0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = v12;
    selfCopy = self;
    sub_215656F1C();

    (*(v9 + 8))(v11, v8);
    (*(v15 + 8))(v7, v14);
  }
}

- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  sub_2156545D4(errorCopy);
  swift_unknownObjectRelease();
}

- (void)autocompleteFetchDidFinish:(id)finish
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68720, &qword_21565F4F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy_streamContinuation;
  swift_beginAccess();
  sub_21565456C(self + v7, v6, &qword_27CA68720, &qword_21565F4F0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA68718, &qword_21565F4D0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    selfCopy = self;
    sub_215656F2C();

    (*(v9 + 8))(v6, v8);
  }
}

- (_TtC20ContactsAutocompleteP33_EBE34D4C21093596BE6E4DA9F1A7E5D28StoreSpy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end