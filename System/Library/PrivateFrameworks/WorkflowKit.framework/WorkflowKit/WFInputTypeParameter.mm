@interface WFInputTypeParameter
- (BOOL)parameterStateIsValid:(id)valid;
- (WFInputTypeParameter)initWithDefinition:(id)definition;
- (id)accessoryIconForPossibleState:(id)state;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)possibleStatesForEnumeration:(id)enumeration;
- (id)selectionType;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFInputTypeParameter

- (id)possibleStatesForEnumeration:(id)enumeration
{
  v3 = WFCategorizedInputTypes();
  allItems = [v3 allItems];

  return allItems;
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = WFCategorizedInputTypes();
  (*(handler + 2))(handlerCopy, v7, 0);
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  if (stateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = stateCopy;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  value = [v8 value];

  if (value && (v10 = NSClassFromString(value), [(objc_class *)v10 conformsToProtocol:&unk_1F4AA61F0]))
  {
    localizedPluralTypeDescription = [(objc_class *)v10 localizedPluralTypeDescription];
  }

  else
  {
    localizedPluralTypeDescription = 0;
  }

  return localizedPluralTypeDescription;
}

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  if (validCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [validCopy value];
    v5 = [value count] != 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)selectionType
{
  v4.receiver = self;
  v4.super_class = WFInputTypeParameter;
  selectionType = [(WFEnumerationParameter *)&v4 selectionType];

  return selectionType;
}

- (id)accessoryIconForPossibleState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = stateCopy;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  value = [v5 value];

  if (!value)
  {
    v9 = 0;
    goto LABEL_46;
  }

  clearBackground = [MEMORY[0x1E69E0B48] clearBackground];
  if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"photo";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"music.on.film";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"star.square";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"doc";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"folder";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"doc.text";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"text.alignleft";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"doc.richtext";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"safari";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"link";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"doc.plaintext";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"map";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"mappin.and.ellipse";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"person.crop.circle";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"envelope";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"phone.fill";
  }

  else if (objc_msgSend_isEqualToString_(value))
  {
    v8 = @"calendar";
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(value))
    {
      v9 = 0;
      goto LABEL_45;
    }

    v8 = @"appstore";
  }

  v9 = [objc_alloc(MEMORY[0x1E69E0D70]) initWithSymbolName:v8 background:clearBackground];
LABEL_45:

LABEL_46:

  return v9;
}

- (WFInputTypeParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFInputTypeParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end