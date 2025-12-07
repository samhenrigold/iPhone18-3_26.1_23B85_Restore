@interface AccountsUIModel
- (_TtP8Settings20SettingsHostProtocol_)settingsHost;
- (void)accountWasModified:(void *)modified;
- (void)accountWasRemoved:(id)removed;
- (void)setSettingsHost:(id)host;
- (void)willSelect:(id)select;
@end

@implementation AccountsUIModel

- (void)accountWasModified:(void *)modified
{
  modifiedCopy = modified;
  selfCopy = self;
  sub_23DCE7B80(modifiedCopy, 0);
}

- (_TtP8Settings20SettingsHostProtocol_)settingsHost
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSettingsHost:(id)host
{
  v5 = OBJC_IVAR____TtC18AccountsUISettings15AccountsUIModel_settingsHost;
  swift_beginAccess();
  *(&self->super.isa + v5) = host;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)willSelect:(id)select
{
  v3 = _Block_copy(select);
  v3[2]();

  _Block_release(v3);
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  selfCopy = self;
  sub_23DCE7B80(removedCopy, 1);
}

@end