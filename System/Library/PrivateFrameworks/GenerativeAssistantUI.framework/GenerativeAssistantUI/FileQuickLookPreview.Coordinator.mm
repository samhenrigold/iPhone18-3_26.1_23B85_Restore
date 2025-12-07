@interface FileQuickLookPreview.Coordinator
- (_TtCV16MarkdownDocument20FileQuickLookPreview11Coordinator)init;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
@end

@implementation FileQuickLookPreview.Coordinator

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v5 = type metadata accessor for FileQuickLookPreview(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEA57E8(self + OBJC_IVAR____TtCV16MarkdownDocument20FileQuickLookPreview11Coordinator_parent, v7);
  v8 = sub_24FEDC974();
  v9 = sub_24FEDC9E4();
  (*(*(v9 - 8) + 8))(v7, v9);

  return v8;
}

- (_TtCV16MarkdownDocument20FileQuickLookPreview11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end