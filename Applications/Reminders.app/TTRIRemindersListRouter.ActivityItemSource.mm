@interface TTRIRemindersListRouter.ActivityItemSource
- (_TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource)init;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation TTRIRemindersListRouter.ActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_1001371B8(v8);

  sub_10000C36C(v8, v8[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100004758(v8);

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_1001373D8(type, v17);

  v9 = v18;
  if (v18)
  {
    v10 = sub_10000C36C(v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100004758(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_100139C58();

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  v6 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100139BF4(self + OBJC_IVAR____TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource_item, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100137F48(v8);
    v9 = 0;
  }

  else
  {
    v10 = sub_100058000(&qword_10076DE60, &qword_100631918);

    v9 = *&v8[*(v10 + 64)];
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  return v9;
}

- (_TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end