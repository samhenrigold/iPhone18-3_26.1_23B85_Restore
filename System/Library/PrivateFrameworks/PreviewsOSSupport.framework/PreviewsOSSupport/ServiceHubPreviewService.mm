@interface ServiceHubPreviewService
- (_TtC17PreviewsOSSupport24ServiceHubPreviewService)init;
- (void)activateWithCompletion:(id)completion;
- (void)cancel;
- (void)observeCancelation:(id)cancelation;
@end

@implementation ServiceHubPreviewService

- (void)activateWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_25F502818();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_25F4E4E30;
  v11[6] = v9;
  selfCopy = self;
  sub_25F4F4B44(0, 0, v7, &unk_25F505A80, v11);
}

- (void)cancel
{
  swift_getObjectType();
  sub_25F4F5874(&qword_27FD90E48, v2, type metadata accessor for ServiceHubPreviewService, &unk_25F505A4C);
  sub_25F502288();
}

- (void)observeCancelation:(id)cancelation
{
  swift_getObjectType();
  v5 = _Block_copy(cancelation);
  *(swift_allocObject() + 16) = v5;
  sub_25F4F5874(&qword_27FD90E48, v6, type metadata accessor for ServiceHubPreviewService, &unk_25F505A4C);
  selfCopy = self;
  sub_25F502298();
}

- (_TtC17PreviewsOSSupport24ServiceHubPreviewService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end