@interface PKPassDetailAccountCredentialsSectionController
- (NSArray)allSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController)init;
- (_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController)initWithPass:(id)pass delegate:(id)delegate throwsError:(id *)error;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (void)bankConnectAccountDidChange:(id)change;
- (void)bankConnectConsentStatusDidChange:(unint64_t)change;
- (void)fetchPaymentInformationWithCompletion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)updatePass:(id)pass;
@end

@implementation PKPassDetailAccountCredentialsSectionController

- (NSArray)allSectionIdentifiers
{
  v2 = sub_1BE052724();

  return v2;
}

- (NSArray)sectionIdentifiers
{
  selfCopy = self;
  v3 = PKPassDetailAccountCredentialsSectionController.sectionIdentifiers.getter();

  v4 = sub_1BE052724();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

- (_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController)initWithPass:(id)pass delegate:(id)delegate throwsError:(id *)error
{
  passCopy = pass;
  swift_unknownObjectRetain();
  return PKPassDetailAccountCredentialsSectionController.init(pass:delegate:)(passCopy, delegate);
}

- (void)fetchPaymentInformationWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BE0528D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BE0C7F20;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BE107FA0;
  v12[5] = v11;
  selfCopy = self;
  v14 = sub_1BD992D04(0, 0, v7, &unk_1BE0C7F30, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

- (void)updatePass:(id)pass
{
  passCopy = pass;
  selfCopy = self;
  PKPassDetailAccountCredentialsSectionController.update(pass:)(passCopy);
}

- (_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v11 = sub_1BE052434();
  v13 = v12;
  viewCopy = view;
  selfCopy = self;
  v17 = PKPassDetailAccountCredentialsSectionController.tableView(_:cellForRowAt:sectionIdentifier:)(viewCopy, v16, v11, v13);

  v13, v18, v19, v20, v21, v22, v23, v24;
  (*(v8 + 8))(v10, v7);

  return v17;
}

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
{
  if (sub_1BE052434() == 0xD000000000000019 && 0x80000001BE117570 == v4)
  {
    v4, v4, v5, 0x80000001BE117570, v6, v7, v8, v9;
    return 1;
  }

  else
  {
    v11 = v4;
    v12 = sub_1BE053B84();
    v11, v13, v14, v15, v16, v17, v18, v19;
    return v12 & 1;
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  viewCopy = view;
  selfCopy = self;
  _s9PassKitUI47PKPassDetailAccountCredentialsSectionControllerC9tableView_14didSelectRowAt17sectionIdentifierySo07UITableK0C_10Foundation9IndexPathVSStF_0(viewCopy, v10);

  (*(v8 + 8))(v10, v7);
}

- (void)bankConnectAccountDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PKPassDetailAccountCredentialsSectionController.accountDidChange(to:)(change);
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)change
{
  selfCopy = self;
  PKPassDetailAccountCredentialsSectionController.consentStatusDidChange(to:)(change);
}

@end