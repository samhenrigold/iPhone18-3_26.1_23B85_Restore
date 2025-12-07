@interface FBAAllInbox
- (id)predicateForTeam:(id)team;
- (uint64_t)unreadCountForTeam:(uint64_t)team;
@end

@implementation FBAAllInbox

- (id)predicateForTeam:(id)team
{
  v3 = [objc_opt_self() predicateWithValue:1];

  return v3;
}

- (uint64_t)unreadCountForTeam:(uint64_t)team
{
  sharedInstance = [objc_opt_self() sharedInstance];
  currentUser = [sharedInstance currentUser];

  if (!currentUser)
  {
    return 0;
  }

  contentItems = [currentUser contentItems];

  if (!contentItems)
  {
    return 0;
  }

  sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
  sub_1000869B8();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v5 & 0xC000000000000001) == 0)
  {
    v8 = *(v5 + 16);

    return v8;
  }

  v6 = __CocoaSet.count.getter();

  result = v6;
  if (v6 < 0)
  {
    __break(1u);
    return 0;
  }

  return result;
}

@end