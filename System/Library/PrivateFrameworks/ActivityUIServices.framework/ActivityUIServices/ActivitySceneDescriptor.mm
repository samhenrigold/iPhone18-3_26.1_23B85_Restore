@interface ActivitySceneDescriptor
- (NSData)activityDescriptor;
- (NSString)activityIdentifier;
- (NSString)payloadID;
- (_TtC18ActivityUIServices20ActivitySceneMetrics)metrics;
- (_TtC18ActivityUIServices23ActivitySceneDescriptor)init;
- (_TtC18ActivityUIServices23ActivitySceneDescriptor)initWithActivitySceneType:(int64_t)type activityDescriptor:(id)descriptor metricsRequest:(id)request payloadID:(id)d;
@end

@implementation ActivitySceneDescriptor

- (NSString)activityIdentifier
{

  v2 = sub_18E65F8F0();

  return v2;
}

- (NSData)activityDescriptor
{
  v3 = sub_18E65F4C0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v3, v5);
  sub_18E64CDEC(&qword_1ED764FA8, MEMORY[0x1E6959B98], MEMORY[0x1E6959B90]);
  v8 = sub_18E65F680();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSString)payloadID
{
  if (*(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID + 8))
  {

    v2 = sub_18E65F8F0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC18ActivityUIServices20ActivitySceneMetrics)metrics
{
  v2 = type metadata accessor for ActivitySceneMetrics();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size] = xmmword_18E6644E0;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = 0x4028000000000000;
  swift_beginAccess();
  *&v3[v4] = 0;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = [(ActivitySceneDescriptor *)&v7 init];

  return v5;
}

- (_TtC18ActivityUIServices23ActivitySceneDescriptor)initWithActivitySceneType:(int64_t)type activityDescriptor:(id)descriptor metricsRequest:(id)request payloadID:(id)d
{
  v10 = sub_18E65F4C0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E64CDEC(&qword_1ED764FA8, MEMORY[0x1E6959B98], MEMORY[0x1E6959B90]);
  sub_18E65F670();
  if (d)
  {
    d = sub_18E65F900();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  requestCopy = request;
  v17 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v18 = (self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
  *v18 = v17;
  v18[1] = v19;
  *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) = type;
  sub_18E64CDEC(&unk_1EAC894E0, MEMORY[0x1E6959B98], MEMORY[0x1E6959BB0]);
  *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData) = sub_18E65FD10();
  (*(v11 + 16))(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v13, v10);
  *(self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest) = requestCopy;
  v20 = (self + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID);
  *v20 = d;
  v20[1] = v15;
  v21 = type metadata accessor for ActivitySceneDescriptor(0);
  v24.receiver = self;
  v24.super_class = v21;
  v22 = [(ActivitySceneDescriptor *)&v24 init];
  (*(v11 + 8))(v13, v10);
  return v22;
}

- (_TtC18ActivityUIServices23ActivitySceneDescriptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end