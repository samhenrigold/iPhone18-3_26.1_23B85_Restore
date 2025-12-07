@interface FMPhoneNumberUtil
+ (BOOL)isEmailValidWithEmail:(id)email;
+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)number;
+ (id)unformatWithPhoneNumber:(id)number;
- (_TtC7FMFCore17FMPhoneNumberUtil)init;
@end

@implementation FMPhoneNumberUtil

+ (id)unformatWithPhoneNumber:(id)number
{
  v3 = sub_24A4AA7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AB850();
  v9 = v8;
  sub_24A4AA7B0();
  sub_24A4AA7D0();
  sub_24A45D260(v7, v9, v6);

  (*(v4 + 8))(v6, v3);
  v10 = sub_24A4AB820();

  return v10;
}

+ (BOOL)isEmailValidWithEmail:(id)email
{
  v3 = qword_27EF3EBC0;
  emailCopy = email;
  if (v3 != -1)
  {
    swift_once();
  }

  evaluateWithObject_ = [qword_27EF4E198 evaluateWithObject_];

  return evaluateWithObject_;
}

+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)number
{
  v3 = sub_24A4AB850();
  v5 = sub_24A45CB10(v3, v4);

  return v5;
}

- (_TtC7FMFCore17FMPhoneNumberUtil)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPhoneNumberUtil();
  return [(FMPhoneNumberUtil *)&v3 init];
}

@end