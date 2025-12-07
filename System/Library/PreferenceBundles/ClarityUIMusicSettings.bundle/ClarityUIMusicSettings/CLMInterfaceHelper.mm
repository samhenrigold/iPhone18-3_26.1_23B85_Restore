@interface CLMInterfaceHelper
+ (UIEdgeInsets)separatorInsetsWith:(UIEdgeInsets)with traitCollection:(id)collection;
+ (id)makePlaylistRowCellContentForPlaylistEntry:(id)entry;
- (_TtC22ClarityUIMusicSettings18CLMInterfaceHelper)init;
- (uint64_t)openMusicApp;
- (void)loadPlaylistsWithCompletionHandler:(id)handler;
- (void)setPlaylists:(id)playlists;
@end

@implementation CLMInterfaceHelper

- (void)setPlaylists:(id)playlists
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists);
  *(&self->super.isa + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists) = playlists;
  playlistsCopy = playlists;
}

- (void)loadPlaylistsWithCompletionHandler:(id)handler
{
  v5 = sub_5170(&qword_14D98, &qword_A900);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_94DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_A910;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_A920;
  v12[5] = v11;
  selfCopy = self;
  sub_7D48(0, 0, v7, &unk_A930, v12);
}

+ (id)makePlaylistRowCellContentForPlaylistEntry:(id)entry
{
  v4 = objc_allocWithZone(UITableViewCell);
  entryCopy = entry;
  v6 = [v4 init];
  v8[3] = sub_5170(&qword_14DA0, &qword_A950);
  v8[4] = sub_6044(&qword_14DA8, &qword_14DA0, &qword_A950, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_8C1C(v8);
  type metadata accessor for PlaylistRow(0);
  sub_8C80(&qword_14DB0, type metadata accessor for PlaylistRow, &unk_A6B4);
  sub_91CC();
  sub_952C();

  return v6;
}

+ (UIEdgeInsets)separatorInsetsWith:(UIEdgeInsets)with traitCollection:(id)collection
{
  left = with.left;
  collectionCopy = collection;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  v7 = sub_953C();

  if (v7)
  {
    v8 = left;
  }

  else
  {
    v8 = left + 64.0 + 12.0;
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  result.right = v11;
  result.bottom = v10;
  result.left = v8;
  result.top = v9;
  return result;
}

- (_TtC22ClarityUIMusicSettings18CLMInterfaceHelper)init
{
  v3 = OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists;
  *(&self->super.isa + v3) = [objc_allocWithZone(NSMutableArray) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for CLMInterfaceHelper();
  return [(CLMInterfaceHelper *)&v5 init];
}

- (uint64_t)openMusicApp
{
  v0 = sub_5170(&qword_14D80, &qword_A8E8);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_905C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_904C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_608C(v2, &qword_14D80, &qword_A8E8);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sharedApplication = [v8 sharedApplication];
  sub_903C(v10);
  v12 = v11;
  v13 = [sharedApplication canOpenURL:v11];

  if (v13)
  {
    sharedApplication2 = [v8 sharedApplication];
    sub_903C(v15);
    v17 = v16;
    sub_83CC(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8C80(&qword_14CF0, type metadata accessor for OpenExternalURLOptionsKey, &unk_A704);
    isa = sub_940C().super.isa;

    [sharedApplication2 openURL:v17 options:isa completionHandler:0];
  }

  return (*(v4 + 8))(v6, v3);
}

@end