@interface PKAppIntentUIUtilities
+ (void)annotateView:(id)view withEntityForPass:(id)pass;
+ (void)annotateView:(id)view withEntityForTransaction:(id)transaction;
- (PKAppIntentUIUtilities)init;
@end

@implementation PKAppIntentUIUtilities

+ (void)annotateView:(id)view withEntityForPass:(id)pass
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37128, &unk_1BE0B1160);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  if (pass)
  {
    passCopy = pass;
    viewCopy = view;
    sub_1BD02F840(passCopy, 0, 0xF000000000000000, v17);
    v13 = v17[0];
    v14 = v17[1];
    v15 = v17[2];
    v16 = v17[3];
    sub_1BD0303B8(v17, v12);
    sub_1BD0304AC();
    sub_1BE048904();
    v11 = sub_1BE048914();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    sub_1BE052F74();

    sub_1BD030458(v17);
  }
}

+ (void)annotateView:(id)view withEntityForTransaction:(id)transaction
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37128, &unk_1BE0B1160);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-v7 - 8];
  transactionCopy = transaction;
  viewCopy = view;
  sub_1BD51B424(transactionCopy, v19);
  v16 = v19[2];
  v17 = v19[3];
  v18 = v20;
  v14 = v19[0];
  v15 = v19[1];
  sub_1BD0D7104(v19, v13);
  sub_1BD0D7160();
  sub_1BE048904();
  v11 = sub_1BE048914();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  sub_1BE052F74();

  sub_1BD0D71B4(v19);
}

- (PKAppIntentUIUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppIntentUIUtilities();
  return [(PKAppIntentUIUtilities *)&v3 init];
}

@end