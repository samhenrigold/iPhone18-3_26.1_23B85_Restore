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
  v3 = sub_25322C7CC(v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)start
{
  v2 = *MEMORY[0x277CBECE8];
  selfCopy = self;
  v4 = sub_253CD0938();
  v5 = SCDynamicStoreCreate(v2, v4, 0, 0);

  v6 = *(&selfCopy->super.isa + OBJC_IVAR___HMDNetworkInfoController_store);
  *(&selfCopy->super.isa + OBJC_IVAR___HMDNetworkInfoController_store) = v5;
}

- (id)obtainNetworkInfoProto
{
  selfCopy = self;
  NetworkInfoController.obtainNetworkInfoProto()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3448, &qword_253D493F0);
  v3 = sub_253CD08B8();

  return v3;
}

@end