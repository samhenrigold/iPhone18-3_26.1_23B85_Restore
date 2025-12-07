@interface PKPaymentTransactionFoundInMailViewCell
- (_TtC9PassKitUI39PKPaymentTransactionFoundInMailViewCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI39PKPaymentTransactionFoundInMailViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithMessageID:(id)d senderEmailAddress:(id)address dateSent:(id)sent title:(id)title subject:(id)subject subtitle:(id)subtitle deeplinkURL:(id)l;
@end

@implementation PKPaymentTransactionFoundInMailViewCell

- (void)configureWithMessageID:(id)d senderEmailAddress:(id)address dateSent:(id)sent title:(id)title subject:(id)subject subtitle:(id)subtitle deeplinkURL:(id)l
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v74 - v13;
  v15 = sub_1BE04AF64();
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE052434();
  v81 = v19;
  v77 = sub_1BE052434();
  v80 = v20;
  sub_1BE04AEE4();
  v76 = sub_1BE052434();
  v79 = v21;
  if (subject)
  {
    subject = sub_1BE052434();
    v78 = v22;
    lCopy2 = l;
    if (subtitle)
    {
      goto LABEL_3;
    }

LABEL_6:
    v75 = 0;
    v25 = 0;
    if (lCopy2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v31 = sub_1BE04AA64();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    selfCopy = self;
    goto LABEL_8;
  }

  v78 = 0;
  lCopy2 = l;
  if (!subtitle)
  {
    goto LABEL_6;
  }

LABEL_3:
  v75 = sub_1BE052434();
  v25 = v24;
  if (!lCopy2)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1BE04A9F4();
  v26 = sub_1BE04AA64();
  v27 = v18;
  v28 = *(*(v26 - 8) + 56);
  selfCopy2 = self;
  selfCopy = v28(v14, 0, 1, v26);
  v18 = v27;
LABEL_8:
  selfCopy3 = self;
  v74[1] = v74;
  MEMORY[0x1EEE9AC00](selfCopy);
  v34 = v80;
  v33 = v81;
  v74[-12] = v18;
  v74[-11] = v33;
  v35 = v76;
  v74[-10] = v77;
  v74[-9] = v34;
  v74[-8] = v17;
  v74[-7] = v35;
  v37 = v78;
  v36 = v79;
  v74[-6] = v79;
  v74[-5] = subject;
  v38 = v75;
  v74[-4] = v37;
  v74[-3] = v38;
  v77 = v17;
  v74[-2] = v25;
  v74[-1] = v14;
  v84[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2B8, &unk_1BE10BC80);
  v84[4] = sub_1BD9DD8F4();
  __swift_allocate_boxed_opaque_existential_1(v84);
  type metadata accessor for FinanceKitFoundInMailRowView(0);
  sub_1BD9DD958();
  sub_1BE04FCE4();
  v33, v39, v40, v41, v42, v43, v44, v45;
  v34, v46, v47, v48, v49, v50, v51, v52;
  v36, v53, v54, v55, v56, v57, v58, v59;
  v25, v60, v61, v62, v63, v64, v65, v66;
  v37, v67, v68, v69, v70, v71, v72, v73;
  MEMORY[0x1BFB3FD10](v84);
  [(PKPaymentTransactionFoundInMailViewCell *)selfCopy3 setNeedsUpdateConfiguration];

  sub_1BD226BBC(v14);
  (*(v82 + 8))(v77, v83);
}

- (_TtC9PassKitUI39PKPaymentTransactionFoundInMailViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_1BE052434();
    v9 = v8;
    identifier = sub_1BE052404();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  v19.receiver = self;
  v19.super_class = ObjectType;
  v17 = [(PKPaymentTransactionFoundInMailViewCell *)&v19 initWithStyle:style reuseIdentifier:identifier];

  return v17;
}

- (_TtC9PassKitUI39PKPaymentTransactionFoundInMailViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(PKPaymentTransactionFoundInMailViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end