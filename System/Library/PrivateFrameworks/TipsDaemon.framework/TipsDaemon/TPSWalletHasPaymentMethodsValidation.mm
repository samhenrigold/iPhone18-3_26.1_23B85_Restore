@interface TPSWalletHasPaymentMethodsValidation
- (TPSWalletHasPaymentMethodsValidation)init;
- (TPSWalletHasPaymentMethodsValidation)initWithTargetContext:(id)context;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSWalletHasPaymentMethodsValidation

- (void)validateWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_232E016B0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_232DDF68C;
  v11[6] = v9;
  selfCopy = self;
  sub_232DF55C8(0, 0, v7, &unk_232E082F8, v11);
}

- (TPSWalletHasPaymentMethodsValidation)initWithTargetContext:(id)context
{
  sub_232E01470();
  v4 = sub_232E01450();

  v7.receiver = self;
  v7.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  v5 = [(TPSTargetingValidation *)&v7 initWithTargetContext:v4];

  return v5;
}

- (TPSWalletHasPaymentMethodsValidation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  return [(TPSWalletHasPaymentMethodsValidation *)&v3 init];
}

@end