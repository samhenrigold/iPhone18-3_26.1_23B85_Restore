@interface REMNSPersistentHistoryTracking
- (_TtC7remindd30REMNSPersistentHistoryTracking)init;
- (id)_accountIdentifierForPersistenceStoreID:(id)d;
- (id)_persistenceStoreForAccountID:(id)d;
- (id)_persistenceStoresForAccountTypes:(id)types;
- (void)withManagedObjectContext:(id)context;
@end

@implementation REMNSPersistentHistoryTracking

- (void)withManagedObjectContext:(id)context
{
  v4 = _Block_copy(context);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1002A85D0(sub_1002A8A6C, v5);
}

- (id)_accountIdentifierForPersistenceStoreID:(id)d
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController);
  selfCopy = self;
  v6 = [v4 accountIdentifierForStoreID:d];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = String._bridgeToObjectiveC()();
    v9, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (id)_persistenceStoreForAccountID:(id)d
{
  v3 = [*(&self->super.super.isa + OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController) storeForAccountIdentifier:d];

  return v3;
}

- (id)_persistenceStoresForAccountTypes:(id)types
{
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController);
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v4, v8, v9, v10, v11, v12, v13, v14;
  v15 = [v5 storesForAccountTypes:isa];

  if (!v15)
  {
    sub_100293C88();
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = Array._bridgeToObjectiveC()().super.isa;
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  return v15;
}

- (_TtC7remindd30REMNSPersistentHistoryTracking)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end