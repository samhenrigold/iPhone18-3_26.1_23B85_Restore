@interface AutofillManualEntryViewController
- (_TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (void)handleNextButtonTapped:(id)tapped;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AutofillManualEntryViewController

- (_TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_primaryAccountIdentifier);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_passUniqueIdentifier);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_displayablePaymentCredentialType);
  *v6 = 0;
  v6[1] = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AutofillManualEntryViewController();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewWillAppear:appearCopy];
  sub_1BD889BEC();
}

- (id)defaultHeaderViewTitle
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
  sub_1BE04B714();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = sub_1BE052404();
  v8, v10, v11, v12, v13, v14, v15, v16;

  return v9;
}

- (id)defaultHeaderViewSubTitle
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
  sub_1BE04B714();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = sub_1BE052404();
  v8, v10, v11, v12, v13, v14, v15, v16;

  return v9;
}

- (void)handleNextButtonTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1BD88A130();

  sub_1BD14EC0C(v6);
}

- (_TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end