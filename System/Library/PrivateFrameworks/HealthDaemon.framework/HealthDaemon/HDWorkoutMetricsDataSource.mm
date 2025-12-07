@interface HDWorkoutMetricsDataSource
+ (Class)configurationClass;
+ (NSString)taskIdentifier;
+ (id)requiredEntitlements;
- (NSUUID)workoutDataProcessorUUID;
- (_TtC12HealthDaemon26HDWorkoutMetricsDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (id)workoutDataFlowLink;
- (void)onDemandSwimmingDataDidUpdate:(id)update;
- (void)remote_registerSession;
- (void)setWorkoutDataProcessorUUID:(id)d;
- (void)workoutDataDestination:(HDWorkoutDataDestination *)destination requestsFinalDataFrom:(NSDate *)from to:(NSDate *)to completion:(id)completion;
- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to;
@end

@implementation HDWorkoutMetricsDataSource

- (NSUUID)workoutDataProcessorUUID
{
  v3 = sub_22911B8DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_2289CD4C8(v6);

  v8 = sub_22911B8BC();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setWorkoutDataProcessorUUID:(id)d
{
  sub_2289CFD5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_22911B8DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource____lazy_storage___workoutDataProcessorUUID;
  swift_beginAccess();
  selfCopy = self;
  sub_2289D0618(v6, self + v11);
  swift_endAccess();
}

- (id)workoutDataFlowLink
{
  result = *(&self->super.super.isa + OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource__workoutDataFlowLink);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (_TtC12HealthDaemon26HDWorkoutMetricsDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v9 = sub_22911B8DC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  return sub_2289CD8A0(v11, configuration, clientCopy, delegate);
}

+ (NSString)taskIdentifier
{
  sub_22911C22C();
  sub_22911C1FC();
  v2 = sub_22911C34C();

  return v2;
}

+ (id)requiredEntitlements
{
  sub_2289B5AD4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_229163C40;
  *(v2 + 32) = sub_22911C35C();
  *(v2 + 40) = v3;
  v4 = sub_22911C44C();

  return v4;
}

+ (Class)configurationClass
{
  sub_2289B3D00(0, &qword_27D863150, 0x277CCDC50);

  return swift_getObjCClassFromMetadata();
}

- (id)exportedInterface
{
  sub_22911C22C();
  v2 = sub_22911C21C();

  return v2;
}

- (id)remoteInterface
{
  sub_22911C22C();
  v2 = MEMORY[0x22AAC5DD0]();

  return v2;
}

- (void)remote_registerSession
{
  selfCopy = self;
  sub_2289CDCE8();
}

- (void)onDemandSwimmingDataDidUpdate:(id)update
{
  type metadata accessor for HDCMSwimData(0);
  v4 = sub_22911C45C();
  selfCopy = self;
  sub_2289CE38C(v4);
}

- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to
{
  sub_2289CFD5C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  if (from)
  {
    sub_22911B86C();
    v13 = sub_22911B88C();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_22911B88C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  if (to)
  {
    sub_22911B86C();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = MEMORY[0x277CC9578];
  sub_2289D0998(v12, &qword_27D862B48, MEMORY[0x277CC9578]);
  v17 = sub_22911B88C();
  (*(*(v17 - 8) + 56))(v10, v15, 1, v17);
  sub_2289D0998(v10, &qword_27D862B48, v16);
}

- (void)workoutDataDestination:(HDWorkoutDataDestination *)destination requestsFinalDataFrom:(NSDate *)from to:(NSDate *)to completion:(id)completion
{
  sub_2289CFD5C(0, &qword_27D8630E8, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = destination;
  v15[3] = from;
  v15[4] = to;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22911C4EC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_229164648;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_229164658;
  v18[5] = v17;
  swift_unknownObjectRetain();
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_2289D0074(0, 0, v13, &unk_229164668, v18);
}

@end