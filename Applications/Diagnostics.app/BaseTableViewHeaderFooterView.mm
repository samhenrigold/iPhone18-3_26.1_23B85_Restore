@interface BaseTableViewHeaderFooterView
- (_TtC11Diagnostics29BaseTableViewHeaderFooterView)initWithCoder:(id)coder;
- (_TtC11Diagnostics29BaseTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier;
@end

@implementation BaseTableViewHeaderFooterView

- (_TtC11Diagnostics29BaseTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    v6 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for BaseTableViewHeaderFooterView();
  v14 = [(BaseTableViewHeaderFooterView *)&v16 initWithReuseIdentifier:v6];

  return v14;
}

- (_TtC11Diagnostics29BaseTableViewHeaderFooterView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end