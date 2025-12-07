@interface QuickLookPreview.Coordinator
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
@end

@implementation QuickLookPreview.Coordinator

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v5 = sub_24FEDC9E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL;
  swift_beginAccess();
  (*(v6 + 16))(v8, self + v9, v5);
  v10 = sub_24FEDC974();
  (*(v6 + 8))(v8, v5);

  return v10;
}

@end