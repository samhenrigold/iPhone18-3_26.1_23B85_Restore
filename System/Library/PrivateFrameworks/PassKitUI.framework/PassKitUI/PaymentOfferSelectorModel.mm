@interface PaymentOfferSelectorModel
- (_TtC9PassKitUI25PaymentOfferSelectorModel)init;
- (void)paymentOfferCatalogChanged:(id)changed;
@end

@implementation PaymentOfferSelectorModel

- (_TtC9PassKitUI25PaymentOfferSelectorModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentOfferCatalogChanged:(id)changed
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1BE0528D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  v10 = sub_1BD122C00(0, 0, v6, &unk_1BE0C3438, v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
}

@end