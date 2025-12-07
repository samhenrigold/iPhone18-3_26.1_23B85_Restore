@interface HMDNetworkInfoController
- (HMDNetworkInfoController)init;
- (id)obtainNetworkInfoProto;
- (void)start;
@end

@implementation HMDNetworkInfoController

- (HMDNetworkInfoController)init
{
  type metadata accessor for NetworkInfoSCDataSource();
  v2 = swift_allocObject();
  v3 = sub_2298047A4(v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)start
{
  v2 = *MEMORY[0x277CBECE8];
  selfCopy = self;
  v4 = sub_22A4DD5AC();
  v5 = SCDynamicStoreCreate(v2, v4, 0, 0);

  v6 = *(&selfCopy->super.isa + OBJC_IVAR___HMDNetworkInfoController_store);
  *(&selfCopy->super.isa + OBJC_IVAR___HMDNetworkInfoController_store) = v5;
}

- (id)obtainNetworkInfoProto
{
  selfCopy = self;
  NetworkInfoController.obtainNetworkInfoProto()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A88, &qword_22A582310);
  v3 = sub_22A4DD47C();

  return v3;
}

@end