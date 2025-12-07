@interface CollectionsPosterEditDelegate
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (int64_t)activeAppearanceMenuSelectionForEditor:(id)editor;
- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor appearanceMenuDidChangeSelectedStyle:(int64_t)style;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation CollectionsPosterEditDelegate

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000B5F4(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10000BBBC(editorCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000C158(editorCopy);

  sub_10000ACE8(0, &qword_1000206F8, PREditingLook_ptr);
  v6.super.isa = sub_1000109DC().super.isa;

  return v6.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000C69C(editorCopy);

  v6 = sub_10001096C();

  return v6;
}

- (int64_t)activeAppearanceMenuSelectionForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000CB24(editorCopy, "CollectionsPosterEditDelegate.ActiveAppearanceSelection", &WKWallpaperPosterEditorController.activeAppearanceMenuSelection(for:));
  v7 = v6;

  return v7;
}

- (void)editor:(id)editor appearanceMenuDidChangeSelectedStyle:(int64_t)style
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000D2B0(editorCopy, style, "CollectionsPosterEditDelegate.ActiveAppearanceChanged", &WKWallpaperPosterEditorController.editor(_:appearanceMenuDidChangeSelectedStyle:));
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10000CEF8(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10000D2B0(editorCopy, lookCopy, "CollectionsPosterEditDelegate.LookTransitionFinished", &WKWallpaperPosterEditorController.editor(_:didFinishTransitionTo:));
}

- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion
{
  v7 = sub_100001FDC(&qword_1000205D0, &qword_1000122F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = editor;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_100010A2C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000123E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000123F0;
  v14[5] = v13;
  editorCopy = editor;
  selfCopy = self;
  sub_10000E794(0, 0, v9, &unk_100012310, v14);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10000E020(invalidateCopy);
}

@end