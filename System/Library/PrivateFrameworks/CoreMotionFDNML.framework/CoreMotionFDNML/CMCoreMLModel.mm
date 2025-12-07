@interface CMCoreMLModel
+ (id)fromBundlePath:(const char *)path error:(id *)error;
+ (id)fromName:(const char *)name error:(id *)error;
- (_TtC15CoreMotionFDNML13CMCoreMLModel)init;
- (id)predictFor:(id)for error:(id *)error;
- (void)predictAsyncFor:(_TtC15CoreMotionFDNML15CMWrappedArrays *)for completionHandler:(id)handler;
@end

@implementation CMCoreMLModel

+ (id)fromName:(const char *)name error:(id *)error
{
  v4 = sub_245F75404(name);

  return v4;
}

+ (id)fromBundlePath:(const char *)path error:(id *)error
{
  v4 = sub_245F768B8();
  v6 = sub_245F75200(v4, v5);

  return v6;
}

- (id)predictFor:(id)for error:(id *)error
{
  forCopy = for;
  selfCopy = self;
  v7 = sub_245F72DA0(forCopy);

  return v7;
}

- (void)predictAsyncFor:(_TtC15CoreMotionFDNML15CMWrappedArrays *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245F76928();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245F79A08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245F798C8;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_245F73DE0(0, 0, v9, &unk_245F798D0, v14);
}

- (_TtC15CoreMotionFDNML13CMCoreMLModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end