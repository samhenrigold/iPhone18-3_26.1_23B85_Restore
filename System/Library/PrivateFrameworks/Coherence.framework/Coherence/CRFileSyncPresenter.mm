@interface CRFileSyncPresenter
- (NSURL)presentedItemURL;
- (_TtC9Coherence19CRFileSyncPresenter)init;
- (void)presentedItemDidChange;
- (void)presentedItemDidGainVersion:(id)version;
@end

@implementation CRFileSyncPresenter

- (NSURL)presentedItemURL
{
  v3 = sub_1AE23BDDC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v3, v5);
  v8 = sub_1AE23BD1C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (void)presentedItemDidChange
{
  selfCopy = self;
  sub_1AE2183A0();
}

- (void)presentedItemDidGainVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  sub_1AE218580(versionCopy);
}

- (_TtC9Coherence19CRFileSyncPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end