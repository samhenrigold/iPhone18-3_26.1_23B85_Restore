@interface CNDDUISecureContactViewController
- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithCoder:(id)coder;
- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CNDDUISecureContactViewController

- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_238154CCC();
    bundleCopy = bundle;
    v7 = sub_238154C8C();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for CNDDUISecureContactViewController(bundleCopy2, v9);
  v10 = [(CNDDUISecureContactViewController *)&v12 initWithNibName:v7 bundle:bundle];

  return v10;
}

- (_TtC17DeviceDiscoveryUI33CNDDUISecureContactViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNDDUISecureContactViewController(self, a2);
  coderCopy = coder;
  v5 = [(CNDDUISecureContactViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end