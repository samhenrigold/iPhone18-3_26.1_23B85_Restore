@interface CMFoundationModelResponse
- (_TtC15CoreMotionFDNML25CMFoundationModelResponse)init;
- (id)errorMessage;
- (id)resultKeys;
- (void)getMachContinuousTimestamp:(unint64_t *)timestamp;
- (void)getType:(char *)type;
- (void)shapeOfArrayWithKey:(id)key shape:(unsigned int *)shape expectedShapeSize:(unsigned __int8)size;
- (void)writeBytesWithKey:(id)key ptr:(char *)ptr expectedByteLength:(unint64_t)length;
@end

@implementation CMFoundationModelResponse

- (_TtC15CoreMotionFDNML25CMFoundationModelResponse)init
{
  v3 = self + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *(v3 + 3) = sub_245F6D310(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  sub_245F765C8();
  v5 = &v3[*(v4 + 32)];
  v6 = type metadata accessor for CMFoundationModelResponse(0);
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(CMFoundationModelResponse *)&v8 init];
}

- (void)getType:(char *)type
{
  v4 = self + OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  v5 = *(v4 + 1);
  if (v4[16])
  {
    v5 = v5 != 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 <= 0xFF)
  {
    *type = v5;
    return;
  }

  __break(1u);
}

- (void)getMachContinuousTimestamp:(unint64_t *)timestamp
{
  v5 = OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  *timestamp = *(&self->super.isa + v5);
}

- (id)resultKeys
{
  swift_beginAccess();

  sub_245F706A0(v2);
  v3 = sub_245F768D8();

  return v3;
}

- (void)shapeOfArrayWithKey:(id)key shape:(unsigned int *)shape expectedShapeSize:(unsigned __int8)size
{
  v8 = sub_245F76878();
  v10 = v9;
  selfCopy = self;
  sub_245F6A540(v8, v10, shape, size);
}

- (void)writeBytesWithKey:(id)key ptr:(char *)ptr expectedByteLength:(unint64_t)length
{
  v8 = sub_245F76878();
  v10 = v9;
  selfCopy = self;
  sub_245F6A7F8(v8, v10, ptr, length);
}

- (id)errorMessage
{
  v3 = type metadata accessor for CoreMotionFoundationModel_Response(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15CoreMotionFDNML25CMFoundationModelResponse_response;
  swift_beginAccess();
  sub_245F6D7C8(self + v6, v5, type metadata accessor for CoreMotionFoundationModel_Response);

  selfCopy = self;
  sub_245F6D878(v5, type metadata accessor for CoreMotionFoundationModel_Response);

  v8 = sub_245F76868();

  return v8;
}

@end