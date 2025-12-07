@interface _STKImageGlyphRecencyObjCFacade
- (_STKImageGlyphRecencyObjCFacade)init;
- (void)didUseCharacter:(NSString *)character completionHandler:(id)handler;
- (void)didUseEmoji:(NSString *)emoji completionHandler:(id)handler;
- (void)didUseSticker:(STKSticker *)sticker completionHandler:(id)handler;
- (void)resetRecentsWithCompletionHandler:(id)handler;
@end

@implementation _STKImageGlyphRecencyObjCFacade

- (_STKImageGlyphRecencyObjCFacade)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency;
  type metadata accessor for ImageGlyphRecency();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v5 + 14) = v6;
  *(&self->super.isa + v4) = v5;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(_STKImageGlyphRecencyObjCFacade *)&v8 init];
}

- (void)didUseEmoji:(NSString *)emoji completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = emoji;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B8A24184();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B8A291F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8A29200;
  v14[5] = v13;
  emojiCopy = emoji;
  selfCopy = self;
  sub_1B8A12970(0, 0, v9, &unk_1B8A29208, v14);
}

- (void)didUseSticker:(STKSticker *)sticker completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = sticker;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B8A24184();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B8A291D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8A291E0;
  v14[5] = v13;
  stickerCopy = sticker;
  selfCopy = self;
  sub_1B8A12970(0, 0, v9, &unk_1B8A291E8, v14);
}

- (void)didUseCharacter:(NSString *)character completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = character;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B8A24184();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B8A291B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8A291C0;
  v14[5] = v13;
  characterCopy = character;
  selfCopy = self;
  sub_1B8A12970(0, 0, v9, &unk_1B8A291C8, v14);
}

- (void)resetRecentsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B8A24184();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B8A29170;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B8A29180;
  v12[5] = v11;
  selfCopy = self;
  sub_1B8A12970(0, 0, v7, &unk_1B8A29190, v12);
}

@end