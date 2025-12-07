@interface EmojiPosterExtensionEditorController
- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)editor;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)leadingMenuElementsForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)timeColorPickerConfigurationForEditor:(id)editor;
- (id)trailingMenuElementsForEditor:(id)editor;
- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidFinishInitialLayout:(id)layout;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation EmojiPosterExtensionEditorController

- (void)editorDidFinishInitialLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_100009360(layoutCopy);
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_100012090();

  v6 = sub_100014178();

  return v6;
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100012768(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion
{
  v7 = sub_100001F74(&unk_1000218D0, &qword_100015260);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = editor;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_100014278();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100015270;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100015280;
  v14[5] = v13;
  editorCopy = editor;
  selfCopy = self;
  sub_100010484(0, 0, v9, &unk_100015290, v14);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000129B0();
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_100011438();

  sub_100006580(0, &qword_1000218C8, PREditingLook_ptr);
  v6.super.isa = sub_1000141F8().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_100012D9C(views, lookCopy);

  swift_unknownObjectRelease();
}

- (id)leadingMenuElementsForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_10000D3F8(editorCopy);

  if (v6)
  {
    sub_100006580(0, &qword_1000218B0, UIMenuElement_ptr);
    v7.super.isa = sub_1000141F8().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)trailingMenuElementsForEditor:(id)editor
{
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100015060;
  editorCopy = editor;
  selfCopy = self;
  *(v5 + 32) = sub_10000C0A8(editorCopy);

  sub_100006580(0, &qword_1000218B0, UIMenuElement_ptr);
  v8.super.isa = sub_1000141F8().super.isa;

  return v8.super.isa;
}

- (id)timeColorPickerConfigurationForEditor:(id)editor
{
  v3 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  sub_100013D68();
  v4 = sub_100013D58();
  [v3 setColorPalette:v4];

  [v3 setColorWellDisplayMode:1];

  return v3;
}

- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_1000132F8();

  return v6;
}

@end