@interface BaseTableViewCell
- (_TtC11Diagnostics17BaseTableViewCell)initWithCoder:(id)coder;
- (_TtC11Diagnostics17BaseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation BaseTableViewCell

- (_TtC11Diagnostics17BaseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v7, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v8 = 0;
  }

  v22.receiver = self;
  v22.super_class = type metadata accessor for BaseTableViewCell();
  v16 = [(BaseTableViewCell *)&v22 initWithStyle:style reuseIdentifier:v8];

  v17 = *((swift_isaMask & v16->super.super.super.super.isa) + 0x50);
  v18 = v16;
  v19 = v17();
  v20 = (*((swift_isaMask & v18->super.super.super.super.isa) + 0x58))(v19);
  (*((swift_isaMask & v18->super.super.super.super.isa) + 0x60))(v20);

  return v18;
}

- (_TtC11Diagnostics17BaseTableViewCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end