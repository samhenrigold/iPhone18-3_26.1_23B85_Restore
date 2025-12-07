@interface BookReaderHighlightEditorController
- (_TtC5Books35BookReaderHighlightEditorController)init;
- (void)didHideAnnotationEditor:(id)editor;
- (void)editorController:(id)controller editedAnnotation:(id)annotation toText:(id)text;
@end

@implementation BookReaderHighlightEditorController

- (_TtC5Books35BookReaderHighlightEditorController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editorController:(id)controller editedAnnotation:(id)annotation toText:(id)text
{
  v7 = sub_1007A2254();
  v9 = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100697C90(annotation, v7, v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)didHideAnnotationEditor:(id)editor
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006974B8(editor);
  swift_unknownObjectRelease();
}

@end