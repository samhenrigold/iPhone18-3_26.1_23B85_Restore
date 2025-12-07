@interface AEAPolicyStore
- (BOOL)cleanUpPolicyStoreWithError:(id *)error;
- (BOOL)exists;
- (BOOL)hasPersistentData;
- (id)readOnlyScratchpadForIdentifier:(id)identifier;
- (id)writeOnlyScratchpadForIdentifier:(id)identifier;
@end

@implementation AEAPolicyStore

- (BOOL)exists
{

  v2 = sub_10003CDE4();

  return v2 & 1;
}

- (BOOL)hasPersistentData
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A3C(self->fileSystem, *&self->fileSystem[24]);
  v7 = objc_opt_self();

  assessmentAgentPolicyStoreDirectoryURL = [v7 assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10001DA3C(v6);
  (*(v4 + 8))(v6, v3);

  v10 = v9[2];

  return v10 != 0;
}

- (id)writeOnlyScratchpadForIdentifier:(id)identifier
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_10003D068(v3, v5);

  return v6;
}

- (id)readOnlyScratchpadForIdentifier:(id)identifier
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_10003D3DC(v3, v5);

  return v6;
}

- (BOOL)cleanUpPolicyStoreWithError:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A3C(self->fileSystem, *&self->fileSystem[24]);
  v8 = objc_opt_self();

  assessmentAgentPolicyStoreDirectoryURL = [v8 assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10001D88C();
  (*(v5 + 8))(v7, v4);

  return 1;
}

@end