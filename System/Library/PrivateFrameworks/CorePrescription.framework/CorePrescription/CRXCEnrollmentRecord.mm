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
  v2 = sub_247365C44();

  return v2;
}

- (NSDate)modifiedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D8B0, &qword_247369DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_24735116C(self + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &v12 - v4, &unk_27EE4D8B0, &qword_247369DB0);
  v6 = sub_247365B94();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_247365B54();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
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

  v6 = sub_24735080C(v8);

  sub_247351220(v8, &qword_27EE4D600, &qword_2473695A0);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_247351370();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_247351D5C(coderCopy);
}

@end