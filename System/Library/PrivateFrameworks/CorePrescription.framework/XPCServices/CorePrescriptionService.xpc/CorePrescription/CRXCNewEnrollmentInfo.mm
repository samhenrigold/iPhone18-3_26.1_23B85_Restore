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

  v2 = sub_100081288();

  return v2;
}

- (CRXCNewEnrollmentInfo)initWithUuid:(id)uuid lensCalibrationStatus:(int64_t)status
{
  v6 = sub_1000812B8();
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
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRXCNewEnrollmentInfo.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  CRXCNewEnrollmentInfo.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_100081288();
  v7 = sub_100081288();
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = *(selfCopy + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
  v9 = sub_100081288();
  [coderCopy encodeInteger:v8 forKey:v9];
}

- (CRXCNewEnrollmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end