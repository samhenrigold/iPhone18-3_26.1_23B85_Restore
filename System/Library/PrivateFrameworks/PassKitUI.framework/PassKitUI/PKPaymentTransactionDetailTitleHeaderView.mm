@interface PKPaymentTransactionDetailTitleHeaderView
+ (NSString)reuseIdentifier;
- (_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView)initWithCoder:(id)coder;
- (_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)configureWithTitle:(id)title;
@end

@implementation PKPaymentTransactionDetailTitleHeaderView

+ (NSString)reuseIdentifier
{
  v2 = sub_1BE052404();

  return v2;
}

- (void)configureWithTitle:(id)title
{
  sub_1BE052434();
  v5 = v4;
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B950, &qword_1BE10D1D0);
  v14[4] = sub_1BD0DE4F4(&qword_1EBD5B958, &qword_1EBD5B950, &qword_1BE10D1D0, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_1(v14);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  sub_1BD0DE43C();
  sub_1BE04FCE4();
  v5, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1BFB3FC20](v14);
  [(PKPaymentTransactionDetailTitleHeaderView *)selfCopy setNeedsUpdateConfiguration];
}

- (_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView)initWithReuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_1BE052434();
    v7 = v6;
    identifier = sub_1BE052404();
    v7, v8, v9, v10, v11, v12, v13, v14;
  }

  v17.receiver = self;
  v17.super_class = ObjectType;
  v15 = [(PKPaymentTransactionDetailTitleHeaderView *)&v17 initWithReuseIdentifier:identifier];

  return v15;
}

- (_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(PKPaymentTransactionDetailTitleHeaderView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end