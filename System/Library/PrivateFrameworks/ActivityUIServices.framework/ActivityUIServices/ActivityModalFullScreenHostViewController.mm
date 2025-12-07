@interface ActivityModalFullScreenHostViewController
- (_TtC18ActivityUIServices41ActivityModalFullScreenHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request payloadID:(id)d targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices41ActivityModalFullScreenHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier;
- (_TtC18ActivityUIServices41ActivityModalFullScreenHostViewController)initWithCoder:(id)coder;
@end

@implementation ActivityModalFullScreenHostViewController

- (_TtC18ActivityUIServices41ActivityModalFullScreenHostViewController)initWithActivityDescriptor:(id)descriptor systemMetricsRequest:(id)request payloadID:(id)d targetBundleIdentifier:(id)identifier
{
  v9 = sub_18E65F4C0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E6220E4(&qword_1ED764FA8, MEMORY[0x1E6959B90]);
  sub_18E65F670();
  if (!d)
  {
    v12 = 0;
    if (identifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v12 = sub_18E65F900();
  d = v13;
  if (!identifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  identifier = sub_18E65F900();
  v15 = v14;
LABEL_6:
  requestCopy = request;
  v17 = sub_18E64D3C0(v11, requestCopy, v12, d, identifier, v15);

  return v17;
}

- (_TtC18ActivityUIServices41ActivityModalFullScreenHostViewController)initWithCoder:(id)coder
{
  result = sub_18E65FCC0();
  __break(1u);
  return result;
}

- (_TtC18ActivityUIServices41ActivityModalFullScreenHostViewController)initWithActivitySceneDescriptor:(id)descriptor targetBundleIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end