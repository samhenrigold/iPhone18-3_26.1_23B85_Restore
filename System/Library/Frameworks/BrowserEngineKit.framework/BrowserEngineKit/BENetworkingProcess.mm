@interface BENetworkingProcess
+ (void)networkProcessWithBundleID:(id)d interruptionHandler:(id)handler completion:(id)completion;
+ (void)networkProcessWithInterruptionHandler:(id)handler completion:(id)completion;
- (BENetworkingProcess)init;
- (id)grantCapability:(id)capability error:(id *)error invalidationHandler:(id)handler;
@end

@implementation BENetworkingProcess

+ (void)networkProcessWithBundleID:(id)d interruptionHandler:(id)handler completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(handler);
  v12 = _Block_copy(completion);
  if (d)
  {
    d = sub_19D51E28C();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = sub_19D51E37C();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = d;
  v18[5] = v14;
  v18[6] = sub_19D505170;
  v18[7] = v15;
  v18[8] = sub_19D519684;
  v18[9] = v16;
  sub_19D516AB4(0, 0, v10, &unk_19D521070, v18);
}

- (id)grantCapability:(id)capability error:(id *)error invalidationHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  capabilityCopy = capability;
  selfCopy = self;
  v11 = sub_19D504938(capabilityCopy, sub_19D505164, v8, &OBJC_IVAR___BENetworkingProcess_inner, _s15_ProcessAdaptorVMa_3, &off_1F10D2EE0, type metadata accessor for NetworkingProcess);

  return v11;
}

+ (void)networkProcessWithInterruptionHandler:(id)handler completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = sub_19D51E37C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = sub_19D5196A8;
  v14[5] = v11;
  v14[6] = sub_19D519684;
  v14[7] = v12;
  sub_19D516AB4(0, 0, v8, &unk_19D521078, v14);
}

- (BENetworkingProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end