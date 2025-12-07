@interface PKPassDetailBankConnectSectionController
- (FKInstitution)connectedInstitution;
- (NSArray)allSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (_TtC9PassKitUI40PKPassDetailBankConnectSectionController)init;
- (_TtC9PassKitUI40PKPassDetailBankConnectSectionController)initWithPass:(id)pass delegate:(id)delegate throwsError:(id *)error;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (id)titleForHeaderInSectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (void)bankConnectAccountDidChange:(id)change;
- (void)bankConnectConsentStatusDidChange:(unint64_t)change;
- (void)preflight:(id)preflight;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)updatePass:(id)pass;
@end

@implementation PKPassDetailBankConnectSectionController

- (NSArray)allSectionIdentifiers
{
  v2 = sub_1BE052724();

  return v2;
}

- (NSArray)sectionIdentifiers
{
  selfCopy = self;
  v3 = PKPassDetailBankConnectSectionController.sectionIdentifiers.getter();

  v4 = sub_1BE052724();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

- (_TtC9PassKitUI40PKPassDetailBankConnectSectionController)initWithPass:(id)pass delegate:(id)delegate throwsError:(id *)error
{
  passCopy = pass;
  swift_unknownObjectRetain();
  return PKPassDetailBankConnectSectionController.init(pass:delegate:)(passCopy, delegate);
}

- (void)preflight:(id)preflight
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = _Block_copy(preflight);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BE0528D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BE107F98;
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
  PKPassDetailBankConnectSectionController.update(pass:)(passCopy);
}

- (FKInstitution)connectedInstitution
{
  selfCopy = self;
  v3 = PKPassDetailBankConnectSectionController.connectedInstitution.getter();

  return v3;
}

- (_TtC9PassKitUI40PKPassDetailBankConnectSectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bankConnectAccountDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PKPassDetailBankConnectSectionController.accountDidChange(to:)(change);
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)change
{
  selfCopy = self;
  PKPassDetailBankConnectSectionController.consentStatusDidChange(to:)(change);
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
  PKPassDetailBankConnectSectionController.tableView(_:cellForRowAt:sectionIdentifier:)(viewCopy, v10, v11, v13);
  v17 = v16;

  v13, v18, v19, v20, v21, v22, v23, v24;
  (*(v8 + 8))(v10, v7);

  return v17;
}

- (id)titleForHeaderInSectionIdentifier:(id)identifier
{
  v4 = sub_1BE052434();
  v6 = v5;
  selfCopy = self;
  _s9PassKitUI40PKPassDetailBankConnectSectionControllerC14titleForHeader02inH10IdentifierSSSgSS_tF_0(v4, v6);
  v9 = v8;

  v6, v10, v11, v12, v13, v14, v15, v16;
  if (v9)
  {
    v17 = sub_1BE052404();
    v9, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)titleForFooterInSectionIdentifier:(id)identifier
{
  v4 = sub_1BE052434();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = PKPassDetailBankConnectSectionController.titleForFooter(inSectionIdentifier:)(v8).value._object;

  v6, v10, v11, v12, v13, v14, v15, v16;
  if (object)
  {
    v17 = sub_1BE052404();
    object, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v11 = sub_1BE052434();
  v13 = v12;
  viewCopy = view;
  selfCopy = self;
  PKPassDetailBankConnectSectionController.tableView(_:didSelectRowAt:sectionIdentifier:)(viewCopy, v10, v11, v13);

  v13, v16, v17, v18, v19, v20, v21, v22;
  (*(v8 + 8))(v10, v7);
}

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
{
  v6 = sub_1BE052434();
  v8 = v7;
  viewCopy = view;
  selfCopy = self;
  v11 = sub_1BD975D58(v6, v8);

  v8, v12, v13, v14, v15, v16, v17, v18;
  return v11;
}

@end