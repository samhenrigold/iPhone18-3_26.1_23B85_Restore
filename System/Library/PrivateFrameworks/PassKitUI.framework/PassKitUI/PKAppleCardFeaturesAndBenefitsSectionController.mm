@interface PKAppleCardFeaturesAndBenefitsSectionController
- (NSArray)allSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (PKAppleCardFeaturesAndBenefitsSectionController)init;
- (id)selectionHandler;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)setSelectionHandler:(id)handler;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKAppleCardFeaturesAndBenefitsSectionController

- (id)selectionHandler
{
  v2 = (self + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    v15 = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD645B20;
    aBlock[3] = &block_descriptor_145;
    v4 = _Block_copy(aBlock);
    v5 = v15;
    sub_1BE048964();
    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BD64671C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1BD0D4744(v7, v8, v10, v11, v12, v13, v14, v15);
}

- (NSArray)sectionIdentifiers
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B69E0;
  v4 = *(self + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_exploreFeaturesAndBenefitsSectionID + 8);
  *(v3 + 32) = *(self + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_exploreFeaturesAndBenefitsSectionID);
  *(v3 + 40) = v4;
  sub_1BE048C84();
  v5 = sub_1BE052724();
  v3, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (NSArray)allSectionIdentifiers
{
  sectionIdentifiers = [(PKAppleCardFeaturesAndBenefitsSectionController *)self sectionIdentifiers];

  return sectionIdentifiers;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1BD6464A8(viewCopy);

  (*(v8 + 8))(v10, v7);

  return v13;
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
  sub_1BD6460E8(viewCopy, v10, v11, v13);

  v13, v16, v17, v18, v19, v20, v21, v22;
  (*(v8 + 8))(v10, v7);
}

- (PKAppleCardFeaturesAndBenefitsSectionController)init
{
  v3 = (self + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_exploreFeaturesAndBenefitsSectionID);
  *v3 = 0xD000000000000023;
  v3[1] = 0x80000001BE1324E0;
  v4 = (self + OBJC_IVAR___PKAppleCardFeaturesAndBenefitsSectionController_selectionHandler);
  v5 = type metadata accessor for AppleCardFeaturesAndBenefitsSectionController();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(PKPaymentPassDetailSectionController *)&v7 init];
}

@end