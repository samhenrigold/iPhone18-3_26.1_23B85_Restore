@interface CRXCEnrollmentRecord
+ (NSString)noLensesUUID;
- (BOOL)isEqual:(id)equal;
- (NSDate)modifiedDate;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCEnrollmentRecord

+ (NSString)noLensesUUID
{
  v2 = sub_100081288();

  return v2;
}

- (NSDate)modifiedDate
{
  v3 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  __chkstk_darwin(v3 - 8, v4, v5);
  v7 = &v14 - v6;
  sub_10001A8DC(self + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &v14 - v6, &unk_1000B88B0, &qword_100086A40);
  v8 = sub_100080D98();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = sub_100080D48().super.isa;
    (*(v9 + 8))(v7, v8);
    v11 = isa;
  }

  return v11;
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

  v6 = CRXCEnrollmentRecord.isEqual(_:)(v8);

  sub_10001A80C(v8, &qword_1000B75E0, &qword_1000856D0);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  CRXCEnrollmentRecord.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCEnrollmentRecord.encode(with:)(coderCopy);
}

@end