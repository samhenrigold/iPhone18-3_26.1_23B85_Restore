@interface AddBeneficiaryModel
- (_TtC9PassKitUI19AddBeneficiaryModel)init;
- (void)nextViewControllerWithCompletion:(id)completion;
@end

@implementation AddBeneficiaryModel

- (void)nextViewControllerWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    v6[2] = v5;
    v7 = sub_1BD1CE7C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1BDA6F1BC(v7);
  sub_1BD0D4744(v7, v6, v8, v9, v10, v11, v12, v13);
}

- (_TtC9PassKitUI19AddBeneficiaryModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end