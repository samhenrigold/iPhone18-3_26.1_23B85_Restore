@interface INFPItemCollectionManager
- (FPItemManager)fpItemManager;
- (void)setFpItemManager:(id)manager;
- (void)stopObservingWithItemID:(id)d;
- (void)syncWithItemID:(id)d notifyURL:(id)l syncCompletion:(id)completion;
- (void)syncWithItemID:(id)d observeItemIDs:(id)ds notifyURL:(id)l syncCompletion:(id)completion;
@end

@implementation INFPItemCollectionManager

- (FPItemManager)fpItemManager
{
  v3 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpItemManager;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFpItemManager:(id)manager
{
  v5 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpItemManager;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = manager;
  managerCopy = manager;
}

- (void)syncWithItemID:(id)d notifyURL:(id)l syncCompletion:(id)completion
{
  v9 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  if (v12)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    v12 = sub_10002C014;
  }

  else
  {
    v15 = 0;
  }

  v16 = *((swift_isaMask & *self) + 0xC0);
  dCopy = d;
  selfCopy = self;
  v16(dCopy, &_swiftEmptyArrayStorage, v11, v12, v15);

  sub_1000224E4(v12, v15);
  sub_100023504(v11, &qword_100063280, &qword_10004D7B0);
}

- (void)syncWithItemID:(id)d observeItemIDs:(id)ds notifyURL:(id)l syncCompletion:(id)completion
{
  v10 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  if (v13)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v13 = sub_10002BF94;
  }

  else
  {
    v17 = 0;
  }

  dCopy = d;
  selfCopy = self;
  INFPItemCollectionManager.sync(itemID:observeItemIDs:notifyURL:syncCompletion:)(dCopy, v14, v12, v13, v17);
  sub_1000224E4(v13, v17);

  sub_100023504(v12, &qword_100063280, &qword_10004D7B0);
}

- (void)stopObservingWithItemID:(id)d
{
  dCopy = d;
  selfCopy = self;
  INFPItemCollectionManager.stopObserving(itemID:)(dCopy);
}

@end