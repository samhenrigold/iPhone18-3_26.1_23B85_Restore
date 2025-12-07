@interface DOCFolderIcon
- (DOCFolderIcon)init;
- (DOCFolderIcon)initWithNode:(id)node size:(CGSize)size scale:(double)scale;
- (id)imageWithMinimalIO;
- (void)fetchImageWithCompletionHandler:(id)handler;
@end

@implementation DOCFolderIcon

- (DOCFolderIcon)initWithNode:(id)node size:(CGSize)size scale:(double)scale
{
  v5 = self + OBJC_IVAR___DOCFolderIcon_fetcher;
  *v5 = node;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 24) = size;
  *(v5 + 5) = scale;
  *(v5 + 6) = 0;
  v7.receiver = self;
  v7.super_class = DOCFolderIcon;
  swift_unknownObjectRetain();
  return [(DOCFolderIcon *)&v7 init];
}

- (id)imageWithMinimalIO
{
  v2 = *&self->fetcher[OBJC_IVAR___DOCFolderIcon_fetcher + 40];
  swift_unknownObjectRetain();
  v3 = FolderIconFetcher.fetchAvailableImage()();

  swift_unknownObjectRelease();

  return v3;
}

- (void)fetchImageWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_249D04B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_249D07610;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_249D07620;
  v12[5] = v11;
  selfCopy = self;
  sub_249CF99D8(0, 0, v7, &unk_249D07630, v12);
}

- (DOCFolderIcon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end