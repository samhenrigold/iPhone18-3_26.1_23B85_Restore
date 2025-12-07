@interface MediaBackdropSnapshotRendererOperation
- (_TtC7BooksUI38MediaBackdropSnapshotRendererOperation)init;
- (void)main;
@end

@implementation MediaBackdropSnapshotRendererOperation

- (void)main
{
  v3 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_264770();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_182AE4(0, 0, v5, &unk_268198, v7);

  sub_264990();
}

- (_TtC7BooksUI38MediaBackdropSnapshotRendererOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end