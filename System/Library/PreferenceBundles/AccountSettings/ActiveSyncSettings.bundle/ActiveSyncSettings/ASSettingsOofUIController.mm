@interface ASSettingsOofUIController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (NSArray)externalMessageGroupSpecifiers;
- (id)_composeNewAutoReplyStringWithDate:(id)date;
- (id)_stringFormatOfDate:(id)date;
- (id)_updateAutoReplyMessage:(id)message withDate:(id)date;
- (id)autoReplyTextCellSpecifiers;
- (id)currentDateString:(id)string;
- (id)externalAudiencePropertyWithSpecifier:(id)specifier;
- (id)externalAutoReplyTextboxSpecifiers;
- (id)externalMessageRadioSpecifiers;
- (id)externalSpecifersToRemoveAll:(BOOL)all;
- (id)oofExternalMessageStateWithSpecifier:(id)specifier;
- (id)oofStateWithSpecifier:(id)specifier;
- (id)outOfOfficeEndDateDisplaySpecifier;
- (id)specifiers;
- (id)timePickerSpecifier;
- (id)trimWhitespaceAndNewlinesFromString:(id)string;
- (void)_insertAdditionalExternalSpecifiersAnimated:(BOOL)animated;
- (void)_insertAdditionalOOOSpecifiersAnimated:(BOOL)animated;
- (void)_removeAdditionalExternalSpecifiersAnimated:(BOOL)animated;
- (void)_removeAdditionalOOOSpecifiersAnimated:(BOOL)animated;
- (void)_resetAllOutOfOfficeLocalValueToServerValue:(BOOL)value;
- (void)_updateAllAutoReplyMessages:(id)messages;
- (void)datePickerCell:(id)cell changedDate:(id)date;
- (void)dismissKeyboard;
- (void)enableSaveButton;
- (void)saveButtonTapped:(id)tapped;
- (void)setAutoReplyText:(id)text withSpecifier:(id)specifier;
- (void)setExternalAudienceProperty:(id)property withSpecifier:(id)specifier;
- (void)setExternalAutoReplyText:(id)text withSpecifier:(id)specifier;
- (void)setOofExternalMessageState:(id)state withSpecifier:(id)specifier;
- (void)setOofState:(id)state withSpecifier:(id)specifier;
- (void)showKeyboard;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textContentViewDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSelectedDate:(id)date;
- (void)viewDidLoad;
@end

@implementation ASSettingsOofUIController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      table = [(ASSettingsOofUIController *)self table];
      [table setKeyboardDismissMode:1];
    }

    specifier = [(ASSettingsOofUIController *)self specifier];
    userInfo = [specifier userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"kPSOofServerData"];
    [(ASSettingsOofUIController *)self setServerData:v10];

    [(ASSettingsOofUIController *)self _resetAllOutOfOfficeLocalValueToServerValue:1];
    v11 = +[NSMutableArray array];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"OOF_STATE" value:&stru_30C98 table:@"ASAccountSetup"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setOofState:withSpecifier:" get:"oofStateWithSpecifier:" detail:objc_opt_class() cell:6 edit:0];

    [v14 setIdentifier:@"kPSOofStateIdentifier"];
    [(ASSettingsOofUIController *)self setMailSwitchSpecifier:v14];
    [v11 addObject:v14];
    if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState])
    {
      outOfOfficeEndDateDisplaySpecifier = [(ASSettingsOofUIController *)self outOfOfficeEndDateDisplaySpecifier];
      [v11 addObject:outOfOfficeEndDateDisplaySpecifier];

      autoReplyTextCellSpecifiers = [(ASSettingsOofUIController *)self autoReplyTextCellSpecifiers];
      [v11 addObjectsFromArray:autoReplyTextCellSpecifiers];

      externalMessageGroupSpecifiers = [(ASSettingsOofUIController *)self externalMessageGroupSpecifiers];
      [v11 addObjectsFromArray:externalMessageGroupSpecifiers];
    }

    v18 = *&self->ACUIViewController_opaque[v3];
    *&self->ACUIViewController_opaque[v3] = v11;

    v4 = *&self->ACUIViewController_opaque[v3];
  }

  return v4;
}

- (void)_insertAdditionalOOOSpecifiersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofScheduleEndDate"];

  if (!v5)
  {
    v10 = +[NSMutableArray array];
    outOfOfficeEndDateDisplaySpecifier = [(ASSettingsOofUIController *)self outOfOfficeEndDateDisplaySpecifier];
    [v10 addObject:outOfOfficeEndDateDisplaySpecifier];

    if ([(ASSettingsOofUIController *)self datePickerShowing])
    {
      timePickerSpecifier = [(ASSettingsOofUIController *)self timePickerSpecifier];
      [v10 addObject:timePickerSpecifier];
    }

    autoReplyTextCellSpecifiers = [(ASSettingsOofUIController *)self autoReplyTextCellSpecifiers];
    [v10 addObjectsFromArray:autoReplyTextCellSpecifiers];

    externalMessageGroupSpecifiers = [(ASSettingsOofUIController *)self externalMessageGroupSpecifiers];
    [v10 addObjectsFromArray:externalMessageGroupSpecifiers];

    [(ASSettingsOofUIController *)self insertContiguousSpecifiers:v10 afterSpecifierID:@"OUT_OF_OFFICE_ENABLED" animated:animatedCopy];
    [(ASSettingsOofUIController *)self performSelector:"showKeyboard" withObject:0 afterDelay:0.0];
  }
}

- (void)_removeAdditionalOOOSpecifiersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [NSMutableArray alloc];
  v21[0] = @"kPSOofScheduleEndDate";
  v21[1] = @"kPSOofMessageGroupSpecifierID";
  v21[2] = @"kPSOofMessage";
  v6 = [NSArray arrayWithObjects:v21 count:3];
  v7 = [v5 initWithArray:v6];

  if ([(ASSettingsOofUIController *)self datePickerShowing])
  {
    [v7 insertObject:@"kPSOofDatePickerSpecifierID" atIndex:1];
    [(ASSettingsOofUIController *)self setDatePickerShowing:0];
  }

  v8 = [(ASSettingsOofUIController *)self externalSpecifersToRemoveAll:1];
  [v7 addObjectsFromArray:v8];

  v9 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(ASSettingsOofUIController *)self specifierForID:*(*(&v16 + 1) + 8 * v14), v16];
        if (v15)
        {
          [v9 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(ASSettingsOofUIController *)self dismissKeyboard];
  [(ASSettingsOofUIController *)self beginUpdates];
  [(ASSettingsOofUIController *)self removeContiguousSpecifiers:v9 animated:animatedCopy];
  [(ASSettingsOofUIController *)self endUpdates];
}

- (void)_insertAdditionalExternalSpecifiersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofExternalMessageTextBoxSpecifierID"];

  if (!v5)
  {
    v9 = +[NSMutableArray array];
    externalMessageRadioSpecifiers = [(ASSettingsOofUIController *)self externalMessageRadioSpecifiers];
    [v9 addObjectsFromArray:externalMessageRadioSpecifiers];

    externalAutoReplyTextboxSpecifiers = [(ASSettingsOofUIController *)self externalAutoReplyTextboxSpecifiers];
    [v9 addObjectsFromArray:externalAutoReplyTextboxSpecifiers];

    v8 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofExternalMessageSpacerSpecifierID"];
    [v8 removePropertyForKey:PSFooterTextGroupKey];
    [(ASSettingsOofUIController *)self beginUpdates];
    [(ASSettingsOofUIController *)self reloadSpecifier:v8 animated:animatedCopy];
    [(ASSettingsOofUIController *)self insertContiguousSpecifiers:v9 afterSpecifierID:@"kPSOofExternalMessageStateGroupSpecifierID" animated:animatedCopy];
    [(ASSettingsOofUIController *)self endUpdates];
  }
}

- (id)externalSpecifersToRemoveAll:(BOOL)all
{
  allCopy = all;
  v5 = +[NSMutableArray array];
  v6 = v5;
  if (allCopy)
  {
    [v5 addObject:@"kPSOofExternalMessageSpacerSpecifierID"];
    [v6 addObject:@"kPSOofExternalMessageStateGroupSpecifierID"];
  }

  [v6 addObject:@"kPSOofExternalMessageAudienceRadioGroupSpecifierID"];
  [v6 addObject:@"kPSOofExternalMessageGroupSpecifierID"];
  [v6 addObject:@"kPSOofExternalMessageTextBoxSpecifierID"];
  v7 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofExternalMessageSpacerSpecifierID"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE_DESCRIPTION" value:&stru_30C98 table:@"ASAccountSetup"];
  [v7 setProperty:v9 forKey:PSFooterTextGroupKey];

  [(ASSettingsOofUIController *)self reloadSpecifier:v7 animated:1];

  return v6;
}

- (void)_removeAdditionalExternalSpecifiersAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[NSMutableArray array];
  v6 = [(ASSettingsOofUIController *)self externalSpecifersToRemoveAll:0];
  [v5 addObjectsFromArray:v6];

  v7 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(ASSettingsOofUIController *)self specifierForID:*(*(&v14 + 1) + 8 * v12), v14];
        if (v13)
        {
          [v7 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(ASSettingsOofUIController *)self dismissKeyboard];
  [(ASSettingsOofUIController *)self beginUpdates];
  [(ASSettingsOofUIController *)self removeContiguousSpecifiers:v7 animated:animatedCopy];
  [(ASSettingsOofUIController *)self endUpdates];
}

- (id)externalMessageRadioSpecifiers
{
  externalMessageGroupSpecifiers = self->_externalMessageGroupSpecifiers;
  if (!externalMessageGroupSpecifiers)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE_AUDIENCE" value:&stru_30C98 table:@"ASAccountSetup"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setExternalAudienceProperty:withSpecifier:" get:"externalAudiencePropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"OOF_EXTERNAL_CONTACTS_ONLY" value:&stru_30C98 table:@"ASAccountSetup"];
    v15[0] = v8;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OOF_EXTERNAL_EVERYONE" value:&stru_30C98 table:@"ASAccountSetup"];
    v15[1] = v10;
    v11 = [NSArray arrayWithObjects:v15 count:2];

    [v6 setValues:&off_32790 titles:v11];
    [v6 setProperty:&off_325D0 forKey:PSDefaultValueKey];
    [v6 setIdentifier:@"kPSOofExternalMessageAudienceRadioGroupSpecifierID"];
    v12 = +[NSMutableArray array];
    [(NSArray *)v12 addObject:v6];
    v13 = self->_externalMessageGroupSpecifiers;
    self->_externalMessageGroupSpecifiers = v12;

    externalMessageGroupSpecifiers = self->_externalMessageGroupSpecifiers;
  }

  return externalMessageGroupSpecifiers;
}

- (id)externalAutoReplyTextboxSpecifiers
{
  externalMessageSpecifiers = [(ASSettingsOofUIController *)self externalMessageSpecifiers];

  if (!externalMessageSpecifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v7 setIdentifier:@"kPSOofExternalMessageGroupSpecifierID"];
    [v4 addObject:v7];
    v8 = [PSSpecifier preferenceSpecifierNamed:@"EXTERNAL_AUTO_REPLY_TEXT_BOX" target:self set:"setExternalAutoReplyText:withSpecifier:" get:"externalAutoReplyTextWithSpecifier:" detail:0 cell:14 edit:0];
    [v8 setIdentifier:@"kPSOofExternalMessageTextBoxSpecifierID"];
    LODWORD(v9) = 11.0;
    v10 = [NSNumber numberWithFloat:v9];
    [v8 setProperty:v10 forKey:PSTextViewBottomMarginKey];

    [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v8 setProperty:self forKey:@"kPSOofTextViewdelegate"];
    [v4 addObject:v8];
    [(ASSettingsOofUIController *)self setExternalMessageSpecifiers:v4];
  }

  return [(ASSettingsOofUIController *)self externalMessageSpecifiers];
}

- (NSArray)externalMessageGroupSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setOofExternalMessageState:withSpecifier:" get:"oofExternalMessageStateWithSpecifier:" detail:objc_opt_class() cell:6 edit:0];

  [v6 setIdentifier:@"kPSOofExternalMessageStateGroupSpecifierID"];
  v7 = +[PSSpecifier emptyGroupSpecifier];
  [v7 setIdentifier:@"kPSOofExternalMessageSpacerSpecifierID"];
  if (![(ASSettingsOofUIController *)self oooExternalMessageAudience])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"OOF_EXTERNAL_MESSAGE_DESCRIPTION" value:&stru_30C98 table:@"ASAccountSetup"];
    [v7 setProperty:v9 forKey:PSFooterTextGroupKey];
  }

  [v3 addObject:v7];
  [v3 addObject:v6];
  if ([(ASSettingsOofUIController *)self oooExternalMessageAudience])
  {
    externalMessageRadioSpecifiers = [(ASSettingsOofUIController *)self externalMessageRadioSpecifiers];
    [v3 addObjectsFromArray:externalMessageRadioSpecifiers];

    externalAutoReplyTextboxSpecifiers = [(ASSettingsOofUIController *)self externalAutoReplyTextboxSpecifiers];
    [v3 addObjectsFromArray:externalAutoReplyTextboxSpecifiers];
  }

  return v3;
}

- (id)outOfOfficeEndDateDisplaySpecifier
{
  currentEndTimeSpecifier = [(ASSettingsOofUIController *)self currentEndTimeSpecifier];

  if (!currentEndTimeSpecifier)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"OOF_END_DATE" value:&stru_30C98 table:@"ASAccountSetup"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"currentDateString:" detail:0 cell:4 edit:0];

    [v6 setIdentifier:@"kPSOofScheduleEndDate"];
    v7 = [NSNumber numberWithBool:1];
    [v6 setProperty:v7 forKey:PSHidesDisclosureIndicatorKey];

    [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [(ASSettingsOofUIController *)self setCurrentEndTimeSpecifier:v6];
  }

  currentEndTimeSpecifier2 = [(ASSettingsOofUIController *)self currentEndTimeSpecifier];
  v9 = [NSNumber numberWithBool:[(ASSettingsOofUIController *)self datePickerShowing]];
  [currentEndTimeSpecifier2 setProperty:v9 forKey:@"kPSOofScheduleEndDateTextColor"];

  return [(ASSettingsOofUIController *)self currentEndTimeSpecifier];
}

- (id)timePickerSpecifier
{
  v3 = [PSSpecifier preferenceSpecifierNamed:&stru_30C98 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v3 setIdentifier:@"kPSOofDatePickerSpecifierID"];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  userSelectedAutoReplyEndDate = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
  [v3 setProperty:userSelectedAutoReplyEndDate forKey:@"kPSOofPickerSelectedDate"];

  [v3 setProperty:self forKey:@"kPSOofDateTimePickerDelegate"];
  layoutDatePicker = [(ASSettingsOofUIController *)self layoutDatePicker];
  [layoutDatePicker as_preferredHeight];
  *&v6 = v6;
  v7 = [NSNumber numberWithFloat:v6];
  [v3 setProperty:v7 forKey:PSTableCellHeightKey];

  return v3;
}

- (id)autoReplyTextCellSpecifiers
{
  messageSpecifiers = [(ASSettingsOofUIController *)self messageSpecifiers];

  if (!messageSpecifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"OOF_INTERNAL_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v7 setIdentifier:@"kPSOofMessageGroupSpecifierID"];
    [v4 addObject:v7];
    v8 = [PSSpecifier preferenceSpecifierNamed:@"AUTO_REPLY_TEXT_BOX" target:self set:"setAutoReplyText:withSpecifier:" get:"autoReplyTextWithSpecifier:" detail:0 cell:14 edit:0];
    [v8 setIdentifier:@"kPSOofMessage"];
    LODWORD(v9) = 11.0;
    v10 = [NSNumber numberWithFloat:v9];
    [v8 setProperty:v10 forKey:PSTextViewBottomMarginKey];

    [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v8 setProperty:self forKey:@"kPSOofTextViewdelegate"];
    [v4 addObject:v8];
    [(ASSettingsOofUIController *)self setMessageSpecifiers:v4];
  }

  return [(ASSettingsOofUIController *)self messageSpecifiers];
}

- (id)oofStateWithSpecifier:(id)specifier
{
  aSOutOfOfficeEnabledState = [(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState];

  return [NSNumber numberWithInt:aSOutOfOfficeEnabledState];
}

- (void)setOofState:(id)state withSpecifier:(id)specifier
{
  if (![state BOOLValue])
  {
    [(ASSettingsOofUIController *)self _removeAdditionalOOOSpecifiersAnimated:1];
    [(ASSettingsOofUIController *)self setASOutOfOfficeEnabledState:0];
    aSOutOfOfficeEnabledState = [(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState];
    v7 = objc_msgSend_serverData(self);
    oofState = [v7 oofState];

    aSOutOfOfficeDirtyStates = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
    if (aSOutOfOfficeEnabledState == oofState)
    {
      v10 = aSOutOfOfficeDirtyStates & 0xFFFFFFFFFFFFFFFELL;
LABEL_9:
      [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v10];
      goto LABEL_10;
    }

LABEL_8:
    v10 = aSOutOfOfficeDirtyStates | 1;
    goto LABEL_9;
  }

  [(ASSettingsOofUIController *)self _resetAllOutOfOfficeLocalValueToServerValue:0];
  [(ASSettingsOofUIController *)self _insertAdditionalOOOSpecifiersAnimated:1];
  [(ASSettingsOofUIController *)self setASOutOfOfficeEnabledState:1];
  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFFELL];
  v5 = objc_msgSend_serverData(self);
  if ([v5 oofState] == 1)
  {

    goto LABEL_10;
  }

  v11 = objc_msgSend_serverData(self);
  oofState2 = [v11 oofState];

  if (oofState2 != 2)
  {
    aSOutOfOfficeDirtyStates = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
    goto LABEL_8;
  }

LABEL_10:

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (id)oofExternalMessageStateWithSpecifier:(id)specifier
{
  oooExternalMessageAudience = [(ASSettingsOofUIController *)self oooExternalMessageAudience];

  return [NSNumber numberWithInt:oooExternalMessageAudience];
}

- (void)setOofExternalMessageState:(id)state withSpecifier:(id)specifier
{
  if ([state BOOLValue])
  {
    v5 = objc_msgSend_serverData(self);
    if ([v5 externalState])
    {
      v6 = objc_msgSend_serverData(self);
      -[ASSettingsOofUIController setOooExternalMessageAudience:](self, "setOooExternalMessageAudience:", [v6 externalState]);
    }

    else
    {
      [(ASSettingsOofUIController *)self setOooExternalMessageAudience:1];
    }

    v7 = objc_msgSend_serverData(self);
    externalMessage = [v7 externalMessage];
    [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:externalMessage];

    [(ASSettingsOofUIController *)self _insertAdditionalExternalSpecifiersAnimated:1];
  }

  else
  {
    [(ASSettingsOofUIController *)self setOooExternalMessageAudience:0];
    [(ASSettingsOofUIController *)self _removeAdditionalExternalSpecifiersAnimated:1];
  }

  oooExternalMessageAudience = [(ASSettingsOofUIController *)self oooExternalMessageAudience];
  v10 = objc_msgSend_serverData(self);
  LOBYTE(oooExternalMessageAudience) = oooExternalMessageAudience != [v10 externalState];

  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFEFLL | (16 * (oooExternalMessageAudience & 1))];

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)setAutoReplyText:(id)text withSpecifier:(id)specifier
{
  v13 = [specifier propertyForKey:PSTableCellKey];
  textView = [v13 textView];
  text = [textView text];
  [(ASSettingsOofUIController *)self setAutoReplyMessage:text];

  autoReplyMessage = [(ASSettingsOofUIController *)self autoReplyMessage];
  v8 = objc_msgSend_serverData(self);
  message = [v8 message];
  v10 = [autoReplyMessage isEqualToString:message];

  v11 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFFBLL;
  v12 = 4;
  if (v10)
  {
    v12 = 0;
  }

  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v11 | v12];
  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)setExternalAutoReplyText:(id)text withSpecifier:(id)specifier
{
  v13 = [specifier propertyForKey:PSTableCellKey];
  textView = [v13 textView];
  text = [textView text];
  [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:text];

  autoExternalReplyMessage = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
  v8 = objc_msgSend_serverData(self);
  externalMessage = [v8 externalMessage];
  v10 = [autoExternalReplyMessage isEqualToString:externalMessage];

  v11 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFF7;
  v12 = 8;
  if (v10)
  {
    v12 = 0;
  }

  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v11 | v12];
  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)setExternalAudienceProperty:(id)property withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  intValue = [property intValue];
  identifier = [specifierCopy identifier];

  if ([identifier isEqualToString:@"kPSOofExternalMessageAudienceRadioGroupSpecifierID"] && intValue != -[ASSettingsOofUIController oooExternalMessageAudience](self, "oooExternalMessageAudience"))
  {
    [(ASSettingsOofUIController *)self setOooExternalMessageAudience:intValue];
    v8 = objc_msgSend_serverData(self);
    v9 = intValue != [v8 externalState];

    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0xFFFFFFFFFFFFFFEFLL | (16 * v9)];
  }

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (id)externalAudiencePropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"kPSOofExternalMessageAudienceRadioGroupSpecifierID"])
  {
    oooExternalMessageAudience = [(ASSettingsOofUIController *)self oooExternalMessageAudience];
  }

  else
  {
    oooExternalMessageAudience = 0;
  }

  v6 = [NSNumber numberWithInt:oooExternalMessageAudience];

  return v6;
}

- (id)_stringFormatOfDate:(id)date
{
  dateCopy = date;
  v4 = qword_3A2D8;
  if (!qword_3A2D8)
  {
    v5 = +[NSLocale currentLocale];
    v6 = [NSDateFormatter dateFormatFromTemplate:@"EEEE options:MMMM d" locale:0, v5];

    v7 = objc_alloc_init(NSDateFormatter);
    v8 = qword_3A2D8;
    qword_3A2D8 = v7;

    [qword_3A2D8 setDateFormat:v6];
    v4 = qword_3A2D8;
  }

  v9 = [v4 stringFromDate:dateCopy];

  return v9;
}

- (id)_composeNewAutoReplyStringWithDate:(id)date
{
  if (date)
  {
    v3 = [(ASSettingsOofUIController *)self _stringFormatOfDate:?];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"OOF_DEFAULT_AUTO_REPLY_MESSAGE" value:&stru_30C98 table:@"ASAccountSetup"];

    v6 = [NSString stringWithFormat:v5, v3];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v3 localizedStringForKey:@"OOF_DEFAULT_AUTO_REPLY_MESSAGE_WITHOUT_DATE" value:&stru_30C98 table:@"ASAccountSetup"];
  }

  return v6;
}

- (id)_updateAutoReplyMessage:(id)message withDate:(id)date
{
  messageCopy = message;
  dateCopy = date;
  v8 = messageCopy;
  previousUserSelectedAutoReplyEndDate = [(ASSettingsOofUIController *)self previousUserSelectedAutoReplyEndDate];

  if (previousUserSelectedAutoReplyEndDate)
  {
    previousUserSelectedAutoReplyEndDate2 = [(ASSettingsOofUIController *)self previousUserSelectedAutoReplyEndDate];
    v11 = [(ASSettingsOofUIController *)self _stringFormatOfDate:previousUserSelectedAutoReplyEndDate2];

    v12 = [v8 rangeOfString:v11];
    v14 = v13;

    v15 = v11 == 0;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v15 = 1;
  }

  v16 = [(ASSettingsOofUIController *)self _stringFormatOfDate:dateCopy];
  if (!v15 && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [v8 stringByReplacingCharactersInRange:v12 withString:{v14, v16}];
LABEL_10:
    v21 = v17;

    goto LABEL_11;
  }

  if (![v8 length] || (+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "localizedStringForKey:value:table:", @"OOF_DEFAULT_AUTO_REPLY_MESSAGE_WITHOUT_DATE", &stru_30C98, @"ASAccountSetup"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v8, "isEqualToString:", v19), v19, v18, v21 = v8, v20))
  {
    v17 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:dateCopy];
    goto LABEL_10;
  }

LABEL_11:
  v22 = v21;

  return v21;
}

- (void)_updateAllAutoReplyMessages:(id)messages
{
  messagesCopy = messages;
  autoReplyMessage = [(ASSettingsOofUIController *)self autoReplyMessage];
  autoExternalReplyMessage = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
  v6 = [autoReplyMessage isEqualToString:autoExternalReplyMessage];

  autoReplyMessage2 = [(ASSettingsOofUIController *)self autoReplyMessage];
  v8 = [(ASSettingsOofUIController *)self _updateAutoReplyMessage:autoReplyMessage2 withDate:messagesCopy];

  autoReplyMessage3 = [(ASSettingsOofUIController *)self autoReplyMessage];
  v10 = [autoReplyMessage3 isEqualToString:v8];

  if ((v10 & 1) == 0)
  {
    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 4];
  }

  if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 4) != 0)
  {
    [(ASSettingsOofUIController *)self setAutoReplyMessage:v8];
    [(ASSettingsOofUIController *)self reloadSpecifierID:@"kPSOofMessage" animated:0];
  }

  if (v6 && ([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 4) != 0)
  {
    [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v8];
    if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 4) != 0)
    {
      [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 8];
    }
  }

  else
  {
    autoExternalReplyMessage2 = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
    v12 = [(ASSettingsOofUIController *)self _updateAutoReplyMessage:autoExternalReplyMessage2 withDate:messagesCopy];

    autoExternalReplyMessage3 = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
    LOBYTE(autoExternalReplyMessage2) = [autoExternalReplyMessage3 isEqualToString:v12];

    if (autoExternalReplyMessage2)
    {
      goto LABEL_12;
    }

    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 8];
    [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v12];
    v8 = v12;
  }

  [(ASSettingsOofUIController *)self reloadSpecifierID:@"kPSOofExternalMessageTextBoxSpecifierID" animated:0];
  v12 = v8;
LABEL_12:
  [(ASSettingsOofUIController *)self setPreviousUserSelectedAutoReplyEndDate:messagesCopy];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = ASSettingsOofUIController;
  [(ASSettingsOofUIController *)&v22 viewDidLoad];
  saveButton = [(ASSettingsOofUIController *)self saveButton];

  if (!saveButton)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SAVE" value:&stru_30C98 table:@"Localizable"];
    v7 = [v4 initWithTitle:v6 style:2 target:self action:"saveButtonTapped:"];
    [(ASSettingsOofUIController *)self setSaveButton:v7];
  }

  cancelButton = [(ASSettingsOofUIController *)self cancelButton];

  if (!cancelButton)
  {
    v9 = [UIBarButtonItem alloc];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_30C98 table:@"Localizable"];
    v12 = [v9 initWithTitle:v11 style:2 target:self action:"cancelButtonTapped:"];
    [(ASSettingsOofUIController *)self setCancelButton:v12];
  }

  cancelButton2 = [(ASSettingsOofUIController *)self cancelButton];
  navigationItem = [(ASSettingsOofUIController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:cancelButton2];

  saveButton2 = [(ASSettingsOofUIController *)self saveButton];
  navigationItem2 = [(ASSettingsOofUIController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:saveButton2];

  v17 = +[UIDatePicker as_newConfiguredPicker];
  [(ASSettingsOofUIController *)self setLayoutDatePicker:v17];

  layoutDatePicker = [(ASSettingsOofUIController *)self layoutDatePicker];
  [layoutDatePicker setHidden:1];

  table = [(ASSettingsOofUIController *)self table];
  layoutDatePicker2 = [(ASSettingsOofUIController *)self layoutDatePicker];
  [table insertSubview:layoutDatePicker2 atIndex:0];

  layoutDatePicker3 = [(ASSettingsOofUIController *)self layoutDatePicker];
  [layoutDatePicker3 as_installConstraints];

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)traitCollectionDidChange:(id)change
{
  v14.receiver = self;
  v14.super_class = ASSettingsOofUIController;
  changeCopy = change;
  [(ASSettingsOofUIController *)&v14 traitCollectionDidChange:changeCopy];
  v5 = [(ASSettingsOofUIController *)self traitCollection:v14.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if ([(ASSettingsOofUIController *)self datePickerShowing]&& preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    v8 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofDatePickerSpecifierID"];
    v9 = [(ASSettingsOofUIController *)self indexPathForSpecifier:v8];
    table = [(ASSettingsOofUIController *)self table];
    v11 = [table cellForRowAtIndexPath:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      datePicker = [v11 datePicker];
      [datePicker as_preferredHeight];
      v13 = [NSNumber numberWithDouble:?];
      [v8 setProperty:v13 forKey:PSTableCellHeightKey];

      [(ASSettingsOofUIController *)self reloadSpecifier:v8];
    }
  }
}

- (void)saveButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v23 = objc_alloc_init(DAOofSettingsInfo);
  if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState])
  {
    aSOutOfOfficeEnabledState = [(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState];
  }

  else
  {
    v6 = objc_msgSend_serverData(self);
    [v6 setExternalState:0];
    [v23 setExternalState:0];

    aSOutOfOfficeEnabledState = 0;
  }

  [v23 setOofState:aSOutOfOfficeEnabledState];
  if ((-[ASSettingsOofUIController ASOutOfOfficeDirtyStates](self, "ASOutOfOfficeDirtyStates") & 2) != 0 && [v23 oofState] == 2)
  {
    autoReplyStartDate = [(ASSettingsOofUIController *)self autoReplyStartDate];
    [v23 setStartTime:autoReplyStartDate];

    userSelectedAutoReplyEndDate = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
    [v23 setEndTime:userSelectedAutoReplyEndDate];
  }

  else
  {
    v9 = objc_msgSend_serverData(self);
    startTime = [v9 startTime];
    [v23 setStartTime:startTime];

    userSelectedAutoReplyEndDate = objc_msgSend_serverData(self);
    endTime = [userSelectedAutoReplyEndDate endTime];
    [v23 setEndTime:endTime];
  }

  if ((-[ASSettingsOofUIController ASOutOfOfficeDirtyStates](self, "ASOutOfOfficeDirtyStates") & 4) != 0 || (objc_msgSend_serverData(self), v12 = objc_claimAutoreleasedReturnValue(), [v12 message], v13 = objc_claimAutoreleasedReturnValue(), -[ASSettingsOofUIController trimWhitespaceAndNewlinesFromString:](self, "trimWhitespaceAndNewlinesFromString:", v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v12, !v15))
  {
    autoReplyMessage = [(ASSettingsOofUIController *)self autoReplyMessage];
    [v23 setMessage:autoReplyMessage];
  }

  else
  {
    autoReplyMessage = objc_msgSend_serverData(self);
    message = [autoReplyMessage message];
    [v23 setMessage:message];
  }

  if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 0x10) != 0)
  {
    [v23 setExternalState:{-[ASSettingsOofUIController oooExternalMessageAudience](self, "oooExternalMessageAudience")}];
  }

  else
  {
    v18 = objc_msgSend_serverData(self);
    [v23 setExternalState:{objc_msgSend(v18, "externalState")}];
  }

  if (([(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]& 8) != 0)
  {
    autoExternalReplyMessage = [(ASSettingsOofUIController *)self autoExternalReplyMessage];
    [v23 setExternalMessage:autoExternalReplyMessage];
  }

  else
  {
    autoExternalReplyMessage = objc_msgSend_serverData(self);
    externalMessage = [autoExternalReplyMessage externalMessage];
    [v23 setExternalMessage:externalMessage];
  }

  v21 = OBJC_IVAR___PSViewController__specifier;
  target = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier] target];
  [target da_performSelectorThatDoesntAffectRetainCount:*(*&self->ACUIViewController_opaque[v21] + OBJC_IVAR___PSSpecifier_setter) withObject:v23];

  [(ASSettingsOofUIController *)self dismissAnimated:1];
}

- (void)enableSaveButton
{
  v3 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]!= 0;
  navigationItem = [(ASSettingsOofUIController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v3];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = 1;
  if ([(ASSettingsOofUIController *)self datePickerShowing])
  {
    v6 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofDatePickerSpecifierID"];
    v7 = [(ASSettingsOofUIController *)self indexPathForSpecifier:v6];

    if (v7 == pathCopy)
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = ASSettingsOofUIController;
  pathCopy = path;
  [(ASSettingsOofUIController *)&v16 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(ASSettingsOofUIController *)self currentEndTimeSpecifier:v16.receiver];
  v9 = [(ASSettingsOofUIController *)self indexPathForSpecifier:v8];

  LODWORD(v8) = [pathCopy isEqual:v9];
  datePickerShowing = [(ASSettingsOofUIController *)self datePickerShowing];
  if (v8)
  {
    if ((datePickerShowing & 1) == 0)
    {
      [(ASSettingsOofUIController *)self setDatePickerShowing:1];
      userSelectedAutoReplyEndDate = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      [(ASSettingsOofUIController *)self updateSelectedDate:userSelectedAutoReplyEndDate];

      timePickerSpecifier = [(ASSettingsOofUIController *)self timePickerSpecifier];
      [(ASSettingsOofUIController *)self insertSpecifier:timePickerSpecifier afterSpecifierID:@"kPSOofScheduleEndDate" animated:1];

      [viewCopy scrollToRowAtIndexPath:v9 atScrollPosition:1 animated:1];
      goto LABEL_8;
    }

    v11 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofDatePickerSpecifierID"];
    [(ASSettingsOofUIController *)self setDatePickerShowing:0];
    [(ASSettingsOofUIController *)self removeSpecifier:v11 animated:1];
    goto LABEL_6;
  }

  if (datePickerShowing)
  {
    v11 = [(ASSettingsOofUIController *)self specifierForID:@"kPSOofDatePickerSpecifierID"];
    [(ASSettingsOofUIController *)self removeSpecifier:v11 animated:1];
    [(ASSettingsOofUIController *)self setDatePickerShowing:0];
LABEL_6:
  }

LABEL_8:
  currentEndTimeSpecifier = [(ASSettingsOofUIController *)self currentEndTimeSpecifier];
  v15 = [NSNumber numberWithBool:[(ASSettingsOofUIController *)self datePickerShowing]];
  [currentEndTimeSpecifier setProperty:v15 forKey:@"kPSOofScheduleEndDateTextColor"];

  [(ASSettingsOofUIController *)self reloadSpecifierID:@"kPSOofScheduleEndDate" animated:0];
  [(ASSettingsOofUIController *)self dismissKeyboard];
}

- (id)currentDateString:(id)string
{
  aSOutOfOfficeDirtyStates = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
  if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState]== 2 || (aSOutOfOfficeDirtyStates & 2) != 0)
  {
    userSelectedAutoReplyEndDate = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];

    if (userSelectedAutoReplyEndDate)
    {
      userSelectedAutoReplyEndDate2 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      v9 = [NSDateFormatter localizedStringFromDate:userSelectedAutoReplyEndDate2 dateStyle:2 timeStyle:1];

      [(ASSettingsOofUIController *)self setASOutOfOfficeEnabledState:2];
      goto LABEL_8;
    }

    v5 = +[NSDate date];
    v6 = [NSDateFormatter localizedStringFromDate:v5 dateStyle:2 timeStyle:1];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"OOF_NO_END_DATE" value:&stru_30C98 table:@"ASAccountSetup"];
  }

  v9 = v6;

LABEL_8:

  return v9;
}

- (void)_resetAllOutOfOfficeLocalValueToServerValue:(BOOL)value
{
  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:0];
  v50 = +[NSDate date];
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  v5 = [v4 components:28 fromDate:v50];
  v6 = [v5 day];
  month = [v5 month];
  year = [v5 year];
  v9 = objc_alloc_init(NSDateComponents);
  [v9 setMinute:30];
  [v9 setHour:23];
  [v9 setDay:v6];
  [v9 setMonth:month];
  [v9 setYear:year];
  v10 = [v4 dateFromComponents:v9];
  v11 = objc_msgSend_serverData(self);
  -[ASSettingsOofUIController setASOutOfOfficeEnabledState:](self, "setASOutOfOfficeEnabledState:", [v11 oofState]);

  if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState]== 2)
  {
    v12 = objc_msgSend_serverData(self);
    startTime = [v12 startTime];
    [(ASSettingsOofUIController *)self setAutoReplyStartDate:startTime];

    autoReplyStartDate = [(ASSettingsOofUIController *)self autoReplyStartDate];
    v15 = [v4 compareDate:v50 toDate:autoReplyStartDate toUnitGranularity:64];

    if (v15 == &dword_0 + 1)
    {
      [(ASSettingsOofUIController *)self setAutoReplyStartDate:v50];
    }

    else if (v15 == -1)
    {
      [(ASSettingsOofUIController *)self setASOutOfOfficeEnabledState:0];
    }

    v16 = objc_msgSend_serverData(self);
    endTime = [v16 endTime];
    [(ASSettingsOofUIController *)self setUserSelectedAutoReplyEndDate:endTime];
  }

  else
  {
    [(ASSettingsOofUIController *)self setAutoReplyStartDate:v50];
    [(ASSettingsOofUIController *)self setUserSelectedAutoReplyEndDate:v10];
  }

  v18 = [NSRegularExpression regularExpressionWithPattern:@"\r\n" options:0 error:0];
  v19 = objc_msgSend_serverData(self);
  message = [v19 message];

  if (message)
  {
    v21 = [NSMutableString alloc];
    v22 = objc_msgSend_serverData(self);
    message2 = [v22 message];
    v24 = [v21 initWithString:message2];

    [v18 replaceMatchesInString:v24 options:0 range:0 withTemplate:{objc_msgSend(v24, "length"), @"<br>"}];
  }

  else
  {
    v25 = objc_msgSend_serverData(self);
    [v25 setMessage:&stru_30C98];

    v24 = 0;
  }

  v26 = objc_msgSend_serverData(self, v10);
  message3 = [v26 message];
  v28 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:message3];
  v29 = [v28 length];

  if (v29)
  {
    [(ASSettingsOofUIController *)self setAutoReplyMessage:v24];
  }

  else
  {
    if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState]== 2)
    {
      userSelectedAutoReplyEndDate = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      v31 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:userSelectedAutoReplyEndDate];
      [(ASSettingsOofUIController *)self setAutoReplyMessage:v31];

      userSelectedAutoReplyEndDate2 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      [(ASSettingsOofUIController *)self setPreviousUserSelectedAutoReplyEndDate:userSelectedAutoReplyEndDate2];
    }

    else
    {
      userSelectedAutoReplyEndDate2 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:0];
      [(ASSettingsOofUIController *)self setAutoReplyMessage:userSelectedAutoReplyEndDate2];
    }

    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 4];
    [(ASSettingsOofUIController *)self enableSaveButton];
  }

  v33 = objc_msgSend_serverData(self);
  -[ASSettingsOofUIController setOooExternalMessageAudience:](self, "setOooExternalMessageAudience:", [v33 externalState]);

  v34 = objc_msgSend_serverData(self);
  externalMessage = [v34 externalMessage];

  if (externalMessage)
  {
    v36 = [NSMutableString alloc];
    v37 = objc_msgSend_serverData(self);
    externalMessage2 = [v37 externalMessage];
    v39 = [v36 initWithString:externalMessage2];

    [v18 replaceMatchesInString:v39 options:0 range:0 withTemplate:{objc_msgSend(v39, "length"), @"<br>"}];
    v24 = v39;
  }

  else
  {
    v40 = objc_msgSend_serverData(self);
    [v40 setExternalMessage:&stru_30C98];
  }

  v41 = objc_msgSend_serverData(self);
  externalMessage3 = [v41 externalMessage];
  v43 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:externalMessage3];
  v44 = [v43 length];

  if (v44)
  {
    [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v24];
    v45 = v49;
  }

  else
  {
    if ([(ASSettingsOofUIController *)self ASOutOfOfficeEnabledState]== 2)
    {
      userSelectedAutoReplyEndDate3 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      v47 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:userSelectedAutoReplyEndDate3];
      [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:v47];

      userSelectedAutoReplyEndDate4 = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
      [(ASSettingsOofUIController *)self setPreviousUserSelectedAutoReplyEndDate:userSelectedAutoReplyEndDate4];
    }

    else
    {
      userSelectedAutoReplyEndDate4 = [(ASSettingsOofUIController *)self _composeNewAutoReplyStringWithDate:0];
      [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:userSelectedAutoReplyEndDate4];
    }

    v45 = v49;

    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:[(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates]| 8];
    [(ASSettingsOofUIController *)self enableSaveButton];
  }
}

- (void)datePickerCell:(id)cell changedDate:(id)date
{
  dateCopy = date;
  [cell setProperty:dateCopy forKey:@"kPSOofPickerSelectedDate"];
  [(ASSettingsOofUIController *)self updateSelectedDate:dateCopy];
}

- (void)updateSelectedDate:(id)date
{
  dateCopy = date;
  v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  [(ASSettingsOofUIController *)self setUserSelectedAutoReplyEndDate:dateCopy];
  userSelectedAutoReplyEndDate = [(ASSettingsOofUIController *)self userSelectedAutoReplyEndDate];
  v6 = objc_msgSend_serverData(self);
  endTime = [v6 endTime];
  v8 = [v4 compareDate:userSelectedAutoReplyEndDate toDate:endTime toUnitGranularity:64];

  aSOutOfOfficeDirtyStates = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
  if (v8)
  {
    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:aSOutOfOfficeDirtyStates | 2];
    [(ASSettingsOofUIController *)self _updateAllAutoReplyMessages:dateCopy];
    [(ASSettingsOofUIController *)self reloadSpecifierID:@"kPSOofScheduleEndDate" animated:0];
  }

  else
  {
    [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:aSOutOfOfficeDirtyStates & 0xFFFFFFFFFFFFFFFDLL];
  }

  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)textContentViewDidChange:(id)change
{
  changeCopy = change;
  messageSpecifiers = [(ASSettingsOofUIController *)self messageSpecifiers];
  v5 = [messageSpecifiers objectAtIndexedSubscript:1];

  v6 = PSTableCellKey;
  v52 = [v5 propertyForKey:PSTableCellKey];
  textView = [v52 textView];
  externalMessageSpecifiers = [(ASSettingsOofUIController *)self externalMessageSpecifiers];
  v9 = [externalMessageSpecifiers objectAtIndexedSubscript:1];

  externalMessageSpecifiers2 = [(ASSettingsOofUIController *)self externalMessageSpecifiers];
  v11 = [externalMessageSpecifiers2 objectAtIndexedSubscript:1];
  v12 = [v11 propertyForKey:v6];

  v50 = v12;
  textView2 = [v12 textView];
  v53 = v5;
  v51 = v9;
  if (textView == changeCopy)
  {
    v14 = v5;
  }

  else
  {
    v14 = v9;
  }

  v48 = textView2;
  if (textView == changeCopy)
  {
    v15 = textView;
  }

  else
  {
    v15 = textView2;
  }

  v16 = v14;
  v17 = v15;
  v18 = [v16 propertyForKey:PSTextViewBottomMarginKey];
  if (v18)
  {
    PSTextViewInsets();
    v20 = v19;
    v22 = v21;
    webView = [v17 webView];
    [webView frame];
    v24 = v22 + v20 + CGRectGetHeight(v56);
    [v18 floatValue];
    v26 = v24 + v25;

    *&v27 = v26;
    v28 = [NSNumber numberWithFloat:v27];
    v29 = PSTableCellHeightKey;
    v30 = [v16 propertyForKey:PSTableCellHeightKey];
    v31 = [v30 isEqual:v28];

    if ((v31 & 1) == 0)
    {
      target = [v16 target];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        target2 = [v16 target];
        table = [target2 table];
      }

      else
      {
        table = 0;
      }

      v35 = +[UIView areAnimationsEnabled];
      [UIView setAnimationsEnabled:0];
      [table beginUpdates];
      [v16 setProperty:v28 forKey:v29];
      [table endUpdates];
      [UIView setAnimationsEnabled:v35];
    }
  }

  text = [v17 text];
  v37 = objc_msgSend_serverData(self);
  if (textView == changeCopy)
  {
    message = [v37 message];
    v44 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:message];
    v45 = [text compare:v44];

    aSOutOfOfficeDirtyStates = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
    if (v45)
    {
      [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:aSOutOfOfficeDirtyStates | 4];
      text2 = [changeCopy text];
      [(ASSettingsOofUIController *)self setAutoReplyMessage:text2];
      goto LABEL_19;
    }

    v47 = aSOutOfOfficeDirtyStates & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    externalMessage = [v37 externalMessage];
    v39 = [(ASSettingsOofUIController *)self trimWhitespaceAndNewlinesFromString:externalMessage];
    v40 = [text compare:v39];

    aSOutOfOfficeDirtyStates2 = [(ASSettingsOofUIController *)self ASOutOfOfficeDirtyStates];
    if (v40)
    {
      [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:aSOutOfOfficeDirtyStates2 | 8];
      text2 = [changeCopy text];
      [(ASSettingsOofUIController *)self setAutoExternalReplyMessage:text2];
LABEL_19:

      goto LABEL_23;
    }

    v47 = aSOutOfOfficeDirtyStates2 & 0xFFFFFFFFFFFFFFF7;
  }

  [(ASSettingsOofUIController *)self setASOutOfOfficeDirtyStates:v47];
LABEL_23:
  [(ASSettingsOofUIController *)self enableSaveButton];
}

- (void)dismissKeyboard
{
  table = [(ASSettingsOofUIController *)self table];
  window = [table window];
  firstResponder = [window firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [firstResponder resignFirstResponder];
  }
}

- (void)showKeyboard
{
  messageSpecifiers = [(ASSettingsOofUIController *)self messageSpecifiers];
  v3 = [messageSpecifiers objectAtIndexedSubscript:1];
  v6 = [v3 propertyForKey:PSTableCellKey];

  textView = [v6 textView];
  v5 = textView;
  if (textView)
  {
    [textView becomeFirstResponder];
  }
}

- (id)trimWhitespaceAndNewlinesFromString:(id)string
{
  v3 = objc_msgSend_serverData(self, a2, string);
  message = [v3 message];
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [message stringByTrimmingCharactersInSet:v5];

  return v6;
}

@end