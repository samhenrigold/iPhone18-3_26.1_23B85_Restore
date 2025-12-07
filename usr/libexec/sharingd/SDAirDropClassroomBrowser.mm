@interface SDAirDropClassroomBrowser
- (_TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser)init;
- (void)shareTargetBrowser:(id)browser didInterruptWithError:(id)error;
@end

@implementation SDAirDropClassroomBrowser

- (void)shareTargetBrowser:(id)browser didInterruptWithError:(id)error
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = error;
  v10[5] = v9;
  errorCopy = error;
  sub_1002B3098(0, 0, v7, &unk_1007FA790, v10);
}

- (_TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end