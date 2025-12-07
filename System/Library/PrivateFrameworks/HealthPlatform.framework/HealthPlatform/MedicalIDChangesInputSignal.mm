@interface MedicalIDChangesInputSignal
- (NSString)description;
- (_TtC14HealthPlatform27MedicalIDChangesInputSignal)init;
@end

@implementation MedicalIDChangesInputSignal

- (NSString)description
{
  v2 = sub_22855C85C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C84C();
  sub_2284F0FB4(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
  sub_22855E11C();
  (*(v3 + 8))(v5, v2);
  v6 = sub_22855D17C();

  return v6;
}

- (_TtC14HealthPlatform27MedicalIDChangesInputSignal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end