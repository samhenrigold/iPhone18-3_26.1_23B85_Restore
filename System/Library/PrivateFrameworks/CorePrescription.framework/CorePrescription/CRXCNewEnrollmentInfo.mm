@interface CRXCNewEnrollmentInfo
- (BOOL)isEqual:(id)equal;
- (CRXCNewEnrollmentInfo)init;
- (CRXCNewEnrollmentInfo)initWithUuid:(id)uuid lensCalibrationStatus:(int64_t)status;
- (NSString)description;
- (NSString)uuid;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCNewEnrollmentInfo

- (NSString)uuid
{

  v2 = sub_247365C44();

  return v2;
}

- (CRXCNewEnrollmentInfo)initWithUuid:(id)uuid lensCalibrationStatus:(int64_t)status
{
  v6 = sub_247365C64();
  v7 = (self + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid);
  *v7 = v6;
  v7[1] = v8;
  *(self + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus) = status;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRXCNewEnrollmentInfo();
  return [(CRXCNewEnrollmentInfo *)&v10 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_24735690C(v8);

  sub_247347038(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_247356AB8();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_247365C44();
  v7 = sub_247365C44();
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = *(selfCopy + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
  v9 = sub_247365C44();
  [coderCopy encodeInteger:v8 forKey:v9];
}

- (CRXCNewEnrollmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end