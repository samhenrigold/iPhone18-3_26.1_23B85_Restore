@interface EDSearchableNewMessageItem
- (EDEnqueuedDonation)enqueuedDonation;
- (NSDate)dateReceived;
- (_TtC11EmailDaemon26EDSearchableNewMessageItem)init;
- (id)fetchIndexableAttachments;
- (id)searchableItem;
- (int64_t)indexingType;
- (void)setEnqueuedDonation:(id)donation;
- (void)setIndexingType:(int64_t)type;
@end

@implementation EDSearchableNewMessageItem

- (int64_t)indexingType
{
  v3 = OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_indexingType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIndexingType:(int64_t)type
{
  v5 = OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_indexingType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (EDEnqueuedDonation)enqueuedDonation
{
  v3 = OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_enqueuedDonation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnqueuedDonation:(id)donation
{
  v5 = OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_enqueuedDonation;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = donation;
  donationCopy = donation;
}

- (_TtC11EmailDaemon26EDSearchableNewMessageItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSDate)dateReceived
{
  v3 = sub_1C645C674();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_message;
  v8 = type metadata accessor for SearchableMessage(0);
  (*(v4 + 16))(v6, &v7[*(v8 + 24)], v3);
  v9 = sub_1C645C614();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (id)fetchIndexableAttachments
{
  nullFuture = [objc_opt_self() nullFuture];

  return nullFuture;
}

- (id)searchableItem
{
  selfCopy = self;
  v3 = EDSearchableNewMessageItem.searchableItem()();

  return v3;
}

@end