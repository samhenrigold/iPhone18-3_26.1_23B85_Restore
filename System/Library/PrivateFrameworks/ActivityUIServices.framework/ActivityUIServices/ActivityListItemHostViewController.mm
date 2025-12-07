@interface ActivityListItemHostViewController
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithCoder:(id)coder;
@end

@implementation ActivityListItemHostViewController

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request targetBundleIdentifier:(id)identifier
{
  v7 = sub_18E65F4C0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E6220E4(&qword_1ED764FA8, MEMORY[0x1E6959B90]);
  sub_18E65F670();
  if (identifier)
  {
    v10 = sub_18E65F900();
    identifier = v11;
  }

  else
  {
    v10 = 0;
  }

  requestCopy = request;
  v13 = sub_18E621E84(v9, requestCopy, v10, identifier);

  return v13;
}

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithCoder:(id)coder
{
  result = sub_18E65FCC0();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices34ActivityListItemHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end