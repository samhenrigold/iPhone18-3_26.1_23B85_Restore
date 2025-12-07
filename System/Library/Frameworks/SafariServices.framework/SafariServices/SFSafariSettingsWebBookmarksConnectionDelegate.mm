@interface SFSafariSettingsWebBookmarksConnectionDelegate
- (_TtC14SafariServicesP33_9CDEB92B0A88DE10255B35415E73116246SFSafariSettingsWebBookmarksConnectionDelegate)init;
- (void)connection:(id)connection didCloseWithError:(id)error;
@end

@implementation SFSafariSettingsWebBookmarksConnectionDelegate

- (void)connection:(id)connection didCloseWithError:(id)error
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE08, &qword_1D47DFA90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1D47BF360();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D47BF340();
  v8 = sub_1D47BF330();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  sub_1D47A1D84(0, 0, v6, &unk_1D47DFAA0, v9);
}

- (_TtC14SafariServicesP33_9CDEB92B0A88DE10255B35415E73116246SFSafariSettingsWebBookmarksConnectionDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SFSafariSettingsWebBookmarksConnectionDelegate *)&v3 init];
}

@end