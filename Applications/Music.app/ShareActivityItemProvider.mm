@interface ShareActivityItemProvider
- (_TtC5Music25ShareActivityItemProvider)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation ShareActivityItemProvider

- (id)activityViewControllerPlaceholderItem:(id)item
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v13 - v9;
  URL.init(string:)();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    (*(v6 + 16))(v8, v10, v5);
    v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v6 + 8))(v10, v5);

    return v12;
  }

  return result;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(self + OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url, v6, &qword_101183A20, &unk_100EBCF80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &qword_101183A20, &unk_100EBCF80);
    v11 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v7);
    v11 = v12;
  }

  return v11;
}

- (_TtC5Music25ShareActivityItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end