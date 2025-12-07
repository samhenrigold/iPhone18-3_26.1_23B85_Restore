@interface CardManager
- (id)indexPathForElementWithModelIdentifier:(id)identifier inView:(id)view;
- (id)modelIdentifierForElementAtIndexPath:(id)path inView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation CardManager

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10015518C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)modelIdentifierForElementAtIndexPath:(id)path inView:(id)view
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10015706C(v9);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
    v13, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)indexPathForElementWithModelIdentifier:(id)identifier inView:(id)view
{
  v6 = sub_10003C49C(&unk_1001FFEC0, &qword_100182508);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  sub_10015569C(v9, v11, v8);

  v11, v14, v15, v16, v17, v18, v19, v20;
  v21 = type metadata accessor for IndexPath();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v8, 1, v21);
  v24 = 0;
  if (v23 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v8, v21);
    v24 = isa;
  }

  return v24;
}

@end