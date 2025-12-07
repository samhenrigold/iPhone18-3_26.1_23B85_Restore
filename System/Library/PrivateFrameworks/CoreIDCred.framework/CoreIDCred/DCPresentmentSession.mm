@interface DCPresentmentSession
- (DCPresentmentSession)init;
- (DCPresentmentSession)initWithPartitions:(id)partitions presentmentType:(unint64_t)type options:(id)options;
- (void)buildCredentialResponseForSelection:(DCPresentmentSelection *)selection completion:(id)completion;
- (void)buildErrorResponseWithStatus:(unint64_t)status completion:(id)completion;
- (void)buildGenericDataResponse:(NSData *)response completion:(id)completion;
- (void)buildResponseForSelection:(DCPresentmentSelection *)selection completion:(id)completion;
- (void)generateTransportKeyForSpecification:(unint64_t)specification completion:(id)completion;
- (void)interpretGenericDataRequest:(NSData *)request completion:(id)completion;
- (void)interpretRequest:(DCPresentmentRequest *)request completion:(id)completion;
@end

@implementation DCPresentmentSession

- (DCPresentmentSession)initWithPartitions:(id)partitions presentmentType:(unint64_t)type options:(id)options
{
  v7 = sub_24565BB94();
  optionsCopy = options;
  return sub_24563E744(v7, type, options);
}

- (void)generateTransportKeyForSpecification:(unint64_t)specification completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = specification;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24565BC24();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245661870;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245661878;
  v14[5] = v13;
  selfCopy = self;
  sub_24564ADB0(0, 0, v9, &unk_245661880, v14);
}

- (void)interpretRequest:(DCPresentmentRequest *)request completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24565BC24();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245661830;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245661838;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_24564ADB0(0, 0, v9, &unk_245661840, v14);
}

- (void)buildResponseForSelection:(DCPresentmentSelection *)selection completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = selection;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24565BC24();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245661800;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245661808;
  v14[5] = v13;
  selectionCopy = selection;
  selfCopy = self;
  sub_24564ADB0(0, 0, v9, &unk_245661810, v14);
}

- (void)buildCredentialResponseForSelection:(DCPresentmentSelection *)selection completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = selection;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24565BC24();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245661760;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245661768;
  v14[5] = v13;
  selectionCopy = selection;
  selfCopy = self;
  sub_24564ADB0(0, 0, v9, &unk_245661770, v14);
}

- (void)buildErrorResponseWithStatus:(unint64_t)status completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = status;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24565BC24();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245661730;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245661738;
  v14[5] = v13;
  selfCopy = self;
  sub_24564ADB0(0, 0, v9, &unk_245661740, v14);
}

- (void)interpretGenericDataRequest:(NSData *)request completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24565BC24();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245661700;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245661708;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_24564ADB0(0, 0, v9, &unk_245661710, v14);
}

- (void)buildGenericDataResponse:(NSData *)response completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = response;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24565BC24();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245661568;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245661578;
  v14[5] = v13;
  responseCopy = response;
  selfCopy = self;
  sub_24564ADB0(0, 0, v9, &unk_245661588, v14);
}

- (DCPresentmentSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end