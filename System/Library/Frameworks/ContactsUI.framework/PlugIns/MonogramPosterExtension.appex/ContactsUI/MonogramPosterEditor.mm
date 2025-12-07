@interface MonogramPosterEditor
- (id)leadingMenuElementsForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)trailingMenuElementsForEditor:(id)editor;
- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor didUpdateSelectedTimeFontConfiguration:(id)configuration;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation MonogramPosterEditor

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100016FEC(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100020BF8(environment, transition);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateSelectedTimeFontConfiguration:(id)configuration
{
  editorCopy = editor;
  configurationCopy = configuration;
  selfCopy = self;
  sub_1000183E8(editorCopy, configurationCopy);
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_100020ED4(editorCopy, views);

  swift_unknownObjectRelease();
}

- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion
{
  v7 = sub_100003598(&qword_100042038, &qword_100029D38);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = editor;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_100026B60();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100029D48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100029D58;
  v14[5] = v13;
  editorCopy = editor;
  selfCopy = self;
  sub_10001FFA4(0, 0, v9, &unk_100029D68, v14);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000217EC(selfCopy);
}

- (id)looksForEditor:(id)editor
{
  sub_1000219D4();
  sub_10000B82C(0, &qword_100042030, PREditingLook_ptr);
  v3.super.isa = sub_100026B00().super.isa;

  return v3.super.isa;
}

- (id)leadingMenuElementsForEditor:(id)editor
{
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100029900;
  editorCopy = editor;
  selfCopy = self;
  *(v5 + 32) = sub_1000195D0(editorCopy);

  sub_10000B82C(0, &qword_100041F60, UIMenuElement_ptr);
  v8.super.isa = sub_100026B00().super.isa;

  return v8.super.isa;
}

- (id)trailingMenuElementsForEditor:(id)editor
{
  swift_beginAccess();
  editorCopy = editor;
  selfCopy = self;
  LOBYTE(self) = sub_100026320();
  swift_endAccess();
  if (self)
  {
    sub_100003598(&qword_100040F98, &qword_1000293D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100029900;
    *(v7 + 32) = sub_100019B4C(editorCopy);

    sub_10000B82C(0, &qword_100041F60, UIMenuElement_ptr);
    isa = sub_100026B00().super.isa;

    v9 = isa;
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

@end