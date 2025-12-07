@interface IPPronounPickerPronounInfo
- (BOOL)hasErrorMessage;
- (BOOL)hasValidValue;
- (BOOL)hasValue;
- (IPPronounPickerPronounInfo)initWithExampleText:(id)text examplePlaceholder:(id)placeholder morphology:(id)morphology language:(id)language;
- (UILabel)exampleLabel;
- (UITextField)entryField;
- (id)generateExampleLabelText;
- (void)autofillValue:(id)value;
- (void)entryFieldContentDidChange:(id)change validator:(id)validator userEntered:(BOOL)entered;
@end

@implementation IPPronounPickerPronounInfo

- (IPPronounPickerPronounInfo)initWithExampleText:(id)text examplePlaceholder:(id)placeholder morphology:(id)morphology language:(id)language
{
  textCopy = text;
  placeholderCopy = placeholder;
  morphologyCopy = morphology;
  languageCopy = language;
  v17.receiver = self;
  v17.super_class = IPPronounPickerPronounInfo;
  v14 = [(IPPronounPickerPronounInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(IPPronounPickerPronounInfo *)v14 setExampleText:textCopy];
    [(IPPronounPickerPronounInfo *)v15 setExamplePlaceholder:placeholderCopy];
    [(IPPronounPickerPronounInfo *)v15 setMorphology:morphologyCopy];
    [(IPPronounPickerPronounInfo *)v15 setLanguage:languageCopy];
  }

  return v15;
}

- (UITextField)entryField
{
  v21[1] = *MEMORY[0x277D85DE8];
  entryField = self->_entryField;
  if (!entryField)
  {
    v4 = [IPLanguageSelectingEntryField alloc];
    v5 = [(IPLanguageSelectingEntryField *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_entryField;
    self->_entryField = v5;

    language = [(IPPronounPickerPronounInfo *)self language];
    [(UITextField *)self->_entryField setLanguage:language];

    v8 = MEMORY[0x277CCA8D8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    localizations = [v9 localizations];
    language2 = [(IPPronounPickerPronounInfo *)self language];
    v21[0] = language2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v13 = [v8 preferredLocalizationsFromArray:localizations forPreferences:v12];
    firstObject = [v13 firstObject];

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"Pronoun" value:0 table:@"PronounPicker" localization:firstObject];
    [(UITextField *)self->_entryField setPlaceholder:v16];

    v17 = MEMORY[0x277CBEAF8];
    language3 = [(IPPronounPickerPronounInfo *)self language];
    -[UITextField setTextAlignment:](self->_entryField, "setTextAlignment:", 2 * ([v17 characterDirectionForLanguage:language3] == 2));

    [(UITextField *)self->_entryField setClearButtonMode:0];
    [(UITextField *)self->_entryField setAutocapitalizationType:0];
    [(UITextField *)self->_entryField setAutocorrectionType:1];
    [(UITextField *)self->_entryField setSpellCheckingType:1];
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)self->_entryField setFont:v19];

    [(UITextField *)self->_entryField setAdjustsFontForContentSizeCategory:1];
    entryField = self->_entryField;
  }

  return entryField;
}

- (UILabel)exampleLabel
{
  exampleLabel = self->_exampleLabel;
  if (!exampleLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_exampleLabel;
    self->_exampleLabel = v4;

    [(UILabel *)self->_exampleLabel setNumberOfLines:0];
    v6 = MEMORY[0x277CBEAF8];
    language = [(IPPronounPickerPronounInfo *)self language];
    -[UILabel setTextAlignment:](self->_exampleLabel, "setTextAlignment:", 2 * ([v6 characterDirectionForLanguage:language] == 2));

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)self->_exampleLabel setFont:v8];

    [(UILabel *)self->_exampleLabel setAdjustsFontForContentSizeCategory:1];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_exampleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)self->_exampleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    exampleLabel = self->_exampleLabel;
  }

  return exampleLabel;
}

- (BOOL)hasValue
{
  value = [(IPPronounPickerPronounInfo *)self value];
  if (value)
  {
    value2 = [(IPPronounPickerPronounInfo *)self value];
    v5 = [value2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasErrorMessage
{
  validationErrorMessage = [(IPPronounPickerPronounInfo *)self validationErrorMessage];
  if (validationErrorMessage)
  {
    validationErrorMessage2 = [(IPPronounPickerPronounInfo *)self validationErrorMessage];
    v5 = [validationErrorMessage2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasValidValue
{
  hasValue = [(IPPronounPickerPronounInfo *)self hasValue];
  if (hasValue)
  {
    LOBYTE(hasValue) = ![(IPPronounPickerPronounInfo *)self hasErrorMessage];
  }

  return hasValue;
}

- (void)entryFieldContentDidChange:(id)change validator:(id)validator userEntered:(BOOL)entered
{
  enteredCopy = entered;
  changeCopy = change;
  validatorCopy = validator;
  [(IPPronounPickerPronounInfo *)self setValue:0];
  [(IPPronounPickerPronounInfo *)self setValidationErrorMessage:0];
  [(IPPronounPickerPronounInfo *)self setTextWasEnteredByUser:enteredCopy];
  if (changeCopy && [changeCopy length])
  {
    if ([validatorCopy pronounIsValidLength:changeCopy])
    {
      if ([validatorCopy pronounHasValidChars:changeCopy])
      {
        [(IPPronounPickerPronounInfo *)self setValue:changeCopy];
      }

      else
      {
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"Pronouns cannot include special characters." value:&stru_286773B58 table:@"PronounPicker"];
        [(IPPronounPickerPronounInfo *)self setValidationErrorMessage:v14];
      }
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"Pronouns cannot exceed %ld characters." value:&stru_286773B58 table:@"PronounPicker"];
      v12 = [v9 localizedStringWithFormat:v11, objc_msgSend(validatorCopy, "maxPronounLength")];
      [(IPPronounPickerPronounInfo *)self setValidationErrorMessage:v12];
    }
  }

  generateExampleLabelText = [(IPPronounPickerPronounInfo *)self generateExampleLabelText];
  exampleLabel = [(IPPronounPickerPronounInfo *)self exampleLabel];
  [exampleLabel setAttributedText:generateExampleLabelText];
}

- (void)autofillValue:(id)value
{
  valueCopy = value;
  [(IPPronounPickerPronounInfo *)self setTextWasEnteredByUser:0];
  [(IPPronounPickerPronounInfo *)self setValue:valueCopy];
  [(IPPronounPickerPronounInfo *)self setValidationErrorMessage:0];
  entryField = [(IPPronounPickerPronounInfo *)self entryField];
  [entryField setText:valueCopy];

  generateExampleLabelText = [(IPPronounPickerPronounInfo *)self generateExampleLabelText];
  exampleLabel = [(IPPronounPickerPronounInfo *)self exampleLabel];
  [exampleLabel setAttributedText:generateExampleLabelText];
}

- (id)generateExampleLabelText
{
  v24[1] = *MEMORY[0x277D85DE8];
  validationErrorMessage = [(IPPronounPickerPronounInfo *)self validationErrorMessage];

  if (validationErrorMessage)
  {
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    validationErrorMessage2 = [(IPPronounPickerPronounInfo *)self validationErrorMessage];
    v23 = *MEMORY[0x277D740C0];
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v24[0] = systemRedColor;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v8 = [v4 initWithString:validationErrorMessage2 attributes:v7];
  }

  else
  {
    validationErrorMessage2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    exampleText = [(IPPronounPickerPronounInfo *)self exampleText];
    systemRedColor = [v9 initWithString:exampleText];

    v11 = *MEMORY[0x277D741F0];
    v22[0] = &unk_286774E30;
    v12 = *MEMORY[0x277D740A8];
    v21[0] = v11;
    v21[1] = v12;
    v13 = MEMORY[0x277D74300];
    [validationErrorMessage2 pointSize];
    v14 = [v13 systemFontOfSize:? weight:?];
    v22[1] = v14;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    if ([(IPPronounPickerPronounInfo *)self hasValue])
    {
      [(IPPronounPickerPronounInfo *)self value];
    }

    else
    {
      [(IPPronounPickerPronounInfo *)self examplePlaceholder];
    }
    v15 = ;
    exampleText2 = [(IPPronounPickerPronounInfo *)self exampleText];
    v17 = [exampleText2 hasPrefix:@"%@"];

    if (v17)
    {
      localizedCapitalizedString = [v15 localizedCapitalizedString];

      v15 = localizedCapitalizedString;
    }

    v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v15 attributes:v7];
    v8 = [MEMORY[0x277CCA898] localizedAttributedStringWithFormat:systemRedColor, v19];
  }

  return v8;
}

@end