@interface PaymentCardReaderDelegate
- (void)closed:(BOOL)closed;
@end

@implementation PaymentCardReaderDelegate

- (void)closed:(BOOL)closed
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_23A6DF7B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = closed;
  sub_23A64A15C(0, 0, v6, &unk_23A6E2028, v8);
}

@end