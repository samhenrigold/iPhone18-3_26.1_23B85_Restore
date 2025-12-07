@interface PKExpressTogglesPaymentPassDetailSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (NSArray)allSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (PKExpressTogglesPaymentPassDetailSectionController)initWithPass:(id)pass viewStyle:(int64_t)style expressPassController:(id)controller delegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)dealloc;
- (void)expressPassDidChange;
- (void)nfcExpressAccessSwitchChanged:(id)changed;
- (void)preflight:(id)preflight;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)uwbExpressAccessSwitchChanged:(id)changed;
@end

@implementation PKExpressTogglesPaymentPassDetailSectionController

- (PKExpressTogglesPaymentPassDetailSectionController)initWithPass:(id)pass viewStyle:(int64_t)style expressPassController:(id)controller delegate:(id)delegate
{
  passCopy = pass;
  controllerCopy = controller;
  delegateCopy = delegate;
  v12 = sub_1BD84BDF0(passCopy, style, controllerCopy, delegate);

  return v12;
}

- (void)dealloc
{
  v3 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  selfCopy = self;
  if (v4 != -1)
  {
    notify_cancel(v4);
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ExpressTogglesPaymentPassDetailSectionController();
  [(PKExpressTogglesPaymentPassDetailSectionController *)&v6 dealloc];
}

- (void)expressPassDidChange
{
  selfCopy = self;
  sub_1BD845DA8();
}

- (NSArray)allSectionIdentifiers
{
  v2 = sub_1BE052724();

  return v2;
}

- (NSArray)sectionIdentifiers
{
  selfCopy = self;
  v3 = sub_1BD846650();

  v4 = sub_1BE052724();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  passCopy = pass;
  v4 = sub_1BD84BFB0(passCopy);

  return v4 & 1;
}

- (void)preflight:(id)preflight
{
  v4 = _Block_copy(preflight);
  v5 = swift_allocObject();
  v5[2] = v4;
  selfCopy = self;
  sub_1BD846708(sub_1BD166E88, v5);

  v5, v7, v8, v9, v10, v11, v12, v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  viewCopy = view;
  selfCopy = self;
  result = sub_1BE04B3F4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(&selfCopy->super.super.isa + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes);
  if (result >= *(v14 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v15 = *(result + v14 + 32);
  if (v15)
  {
    if (v15 == 1)
    {
      sub_1BD847720(viewCopy);
    }

    else
    {
      v16 = sub_1BD847C70(viewCopy);
    }
  }

  else
  {
    sub_1BD846FA4(viewCopy);
  }

  v17 = v16;

  (*(v8 + 8))(v10, v7);

  return v17;
}

- (void)nfcExpressAccessSwitchChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BD847618(changedCopy);
}

- (void)uwbExpressAccessSwitchChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BD8485B4(1, changedCopy);
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
  sub_1BD84C678(viewCopy);

  (*(v8 + 8))(v10, v7);
}

@end