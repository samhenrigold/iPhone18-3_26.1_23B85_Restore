@interface CMFoundationModelClient
- (BOOL)requestPrewarmAndReturnError:(id *)error;
- (_TtC15CoreMotionFDNML23CMFoundationModelClient)initWithSupportedAssetBundleIdentifiers:(id)identifiers useCaseID:(id)d onBehalfOfPID:(int64_t)iD loggingIdentifier:(id)identifier;
- (void)sendAsyncWithRequest:(_TtC15CoreMotionFDNML24CMFoundationModelRequest *)request loggingID:(NSString *)d completionHandler:(id)handler;
@end

@implementation CMFoundationModelClient

- (_TtC15CoreMotionFDNML23CMFoundationModelClient)initWithSupportedAssetBundleIdentifiers:(id)identifiers useCaseID:(id)d onBehalfOfPID:(int64_t)iD loggingIdentifier:(id)identifier
{
  sub_245F768E8();
  sub_245F76878();
  sub_245F76878();
  v7 = OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession;
  *(&self->super.isa + OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession) = 0;
  sub_245F76598();
  *(&self->super.isa + v7) = sub_245F76588();

  v9.receiver = self;
  v9.super_class = type metadata accessor for CMFoundationModelClient();
  return [(CMFoundationModelClient *)&v9 init];
}

- (BOOL)requestPrewarmAndReturnError:(id *)error
{
  if (*(&self->super.isa + OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession))
  {
    selfCopy = self;

    sub_245F76578();
  }

  return 1;
}

- (void)sendAsyncWithRequest:(_TtC15CoreMotionFDNML24CMFoundationModelRequest *)request loggingID:(NSString *)d completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_245F76928();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245F798C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245F798C8;
  v16[5] = v15;
  requestCopy = request;
  dCopy = d;
  selfCopy = self;
  sub_245F73DE0(0, 0, v11, &unk_245F798D0, v16);
}

@end