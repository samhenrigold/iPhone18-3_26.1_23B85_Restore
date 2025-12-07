@interface PKTransactionsPageBoundary
- (_TtC9PassKitUI26PKTransactionsPageBoundary)init;
- (_TtC9PassKitUI26PKTransactionsPageBoundary)initWithDate:(id)date identifier:(id)identifier;
@end

@implementation PKTransactionsPageBoundary

- (_TtC9PassKitUI26PKTransactionsPageBoundary)initWithDate:(id)date identifier:(id)identifier
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  if (date)
  {
    sub_1BE04AEE4();
    v9 = sub_1BE04AF64();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1BE04AF64();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  if (identifier)
  {
    v11 = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return PKTransactionsPageBoundary.init(date:identifier:)(v8, v11, v13);
}

- (_TtC9PassKitUI26PKTransactionsPageBoundary)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end