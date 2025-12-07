@interface TTRIRemindersListTipCell
- (_TtC9Reminders24TTRIRemindersListTipCell)initWithCoder:(id)coder;
- (_TtC9Reminders24TTRIRemindersListTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRIRemindersListTipCell

- (_TtC9Reminders24TTRIRemindersListTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = String._bridgeToObjectiveC()();
  }

  v16.receiver = self;
  v16.super_class = ObjectType;
  v13 = [(TTRIRemindersListTipCell *)&v16 initWithStyle:style reuseIdentifier:identifier, v10];

  (*(v9 + 104))(v12, enum case for TTRITableCellSeparatorInsetType.noSeparator(_:), v8);
  v14 = v13;
  UITableViewCell.setSeparatorInsetType(_:)();
  (*(v9 + 8))(v12, v8);
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v14;
}

- (_TtC9Reminders24TTRIRemindersListTipCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end