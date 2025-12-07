@interface FMPhoneNumberUtil
+ (BOOL)isEmailValidWithEmail:(id)email;
+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)number;
+ (id)unformatWithPhoneNumber:(id)number;
- (_TtC8FMIPCore17FMPhoneNumberUtil)init;
@end

@implementation FMPhoneNumberUtil

+ (id)unformatWithPhoneNumber:(id)number
{
  v3 = sub_24A82C604();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CFC4();
  v9 = v8;
  sub_24A82C594();
  sub_24A82C5D4();
  sub_24A78FD0C(v7, v9, v6);

  (*(v4 + 8))(v6, v3);
  v10 = sub_24A82CF94();

  return v10;
}

+ (BOOL)isEmailValidWithEmail:(id)email
{
  v3 = qword_27EF5CC30;
  emailCopy = email;
  if (v3 != -1)
  {
    swift_once();
  }

  evaluateWithObject_ = [qword_27EF5F5D0 evaluateWithObject_];

  return evaluateWithObject_;
}

+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)number
{
  v3 = sub_24A82CFC4();
  v5 = sub_24A78F7E8(v3, v4);

  return v5;
}

- (_TtC8FMIPCore17FMPhoneNumberUtil)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPhoneNumberUtil();
  return [(FMPhoneNumberUtil *)&v3 init];
}

@end