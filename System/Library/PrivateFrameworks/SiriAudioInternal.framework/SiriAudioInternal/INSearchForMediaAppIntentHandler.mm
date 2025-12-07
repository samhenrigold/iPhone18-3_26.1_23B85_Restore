@interface INSearchForMediaAppIntentHandler
- (_TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler)init;
- (void)handleSearchForMedia:(INSearchForMediaIntent *)media completion:(id)completion;
- (void)resolveMediaItemsForSearchForMedia:(INSearchForMediaIntent *)media withCompletion:(id)completion;
@end

@implementation INSearchForMediaAppIntentHandler

- (void)resolveMediaItemsForSearchForMedia:(INSearchForMediaIntent *)media withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = media;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_266266C58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2662683D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2662683D8;
  v14[5] = v13;
  mediaCopy = media;
  selfCopy = self;
  sub_266232CDC(0, 0, v9, &unk_2662683E0, v14);
}

- (void)handleSearchForMedia:(INSearchForMediaIntent *)media completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = media;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_266266C58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_266268388;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_266268398;
  v14[5] = v13;
  mediaCopy = media;
  selfCopy = self;
  sub_266232CDC(0, 0, v9, &unk_2662683A8, v14);
}

- (_TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end