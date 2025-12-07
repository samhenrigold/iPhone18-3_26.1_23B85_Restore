@interface CNSecureContactViewController
- (_TtC9AirDropUI29CNSecureContactViewController)initWithCoder:(id)coder;
- (_TtC9AirDropUI29CNSecureContactViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CNSecureContactViewController

- (_TtC9AirDropUI29CNSecureContactViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    bundleCopy = bundle;
    v9 = String._bridgeToObjectiveC()();
    v7, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    bundleCopy2 = bundle;
    v9 = 0;
  }

  v20.receiver = self;
  v20.super_class = type metadata accessor for CNSecureContactViewController();
  v18 = [(CNSecureContactViewController *)&v20 initWithNibName:v9 bundle:bundle];

  return v18;
}

- (_TtC9AirDropUI29CNSecureContactViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNSecureContactViewController();
  coderCopy = coder;
  v5 = [(CNSecureContactViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end