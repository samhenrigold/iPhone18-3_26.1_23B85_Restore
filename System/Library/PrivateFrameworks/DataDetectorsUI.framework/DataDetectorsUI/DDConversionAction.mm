@interface DDConversionAction
+ (BOOL)actionAvailableForResult:(__DDResult *)result;
+ (id)allActionsForResult:(__DDResult *)result context:(id)context;
+ (id)allActionsForResult:(__DDResult *)result context:(id)context onlyTest:(BOOL)test forceSubMenu:(BOOL)menu;
- (BOOL)conversionFailed;
- (DDConversionAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (DDConversionAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context targetUnit:(id)unit;
- (DDConversionAction)initWithValue:(double)value unit:(id)unit targetUnit:(id)targetUnit context:(id)context ambiguousDetection:(BOOL)detection result:(__DDResult *)result;
- (id)_titleWithValue;
- (id)calculateResult;
- (id)commonInitWithURL:(id)l result:(__DDResult *)result context:(id)context targetUnit:(id)unit;
- (id)iconName;
- (id)localizedName;
- (id)menuIcon;
- (id)menuName;
- (id)quickActionTitle;
- (id)specialCaseActions;
- (id)subtitle;
- (unint64_t)menuItemattributes;
- (void)performFromView:(id)view;
@end

@implementation DDConversionAction

+ (BOOL)actionAvailableForResult:(__DDResult *)result
{
  if (result)
  {
    isAvailable = [self isAvailable];
    if (isAvailable)
    {
      if (DDResultHasType())
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v8 = [bundleIdentifier isEqualToString:@"com.apple.quicklook.extension.previewUI"];

        if (v8)
        {
          LOBYTE(isAvailable) = 0;
        }

        else
        {
          DDResultCurrencyExtraction();
          LOBYTE(isAvailable) = 0;
        }
      }

      else
      {
        v9 = [self allActionsForResult:result context:0 onlyTest:1 forceSubMenu:0];
        v10 = [(DDActionGroup *)v9 count]!= 0;

        LOBYTE(isAvailable) = v10;
      }
    }
  }

  else
  {
    LOBYTE(isAvailable) = 0;
  }

  return isAvailable;
}

+ (id)allActionsForResult:(__DDResult *)result context:(id)context
{
  v4 = [self allActionsForResult:result context:context onlyTest:0 forceSubMenu:0];
  v5 = [(DDActionGroup *)v4 flattenedActions:?];

  return v5;
}

+ (id)allActionsForResult:(__DDResult *)result context:(id)context onlyTest:(BOOL)test forceSubMenu:(BOOL)menu
{
  testCopy = test;
  contextCopy = context;
  if (result && ((DDResultHasType() & 1) != 0 || DDResultHasType()))
  {
    v12 = +[DDActionGroup emptyGroup];
    v8 = [contextCopy objectForKeyedSubscript:@"kDDContextNoRoomForSubtitlesKey"];
    [v8 BOOLValue];

    v9 = specialCaseResultForResult(result);
    if (v9)
    {
      v10 = [DDConversionAction allActionsForResult:v9 context:contextCopy onlyTest:testCopy forceSubMenu:1];
      [(DDActionGroup *)v10 setInlinedGroup:?];
    }

    else
    {
      v10 = 0;
    }

    DDResultPhysicalUnitsExtraction();
  }

  return 0;
}

- (DDConversionAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  contextCopy = context;
  if (result)
  {
    v12.receiver = self;
    v12.super_class = DDConversionAction;
    v10 = [(DDAction *)&v12 initWithURL:lCopy result:result context:contextCopy];
    self = v10;
    if (v10)
    {
      result = [(DDConversionAction *)v10 commonInitWithURL:lCopy result:result context:contextCopy targetUnit:0];
    }

    else
    {
      result = 0;
    }
  }

  return result;
}

- (DDConversionAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context targetUnit:(id)unit
{
  lCopy = l;
  contextCopy = context;
  unitCopy = unit;
  if (result)
  {
    v15.receiver = self;
    v15.super_class = DDConversionAction;
    v13 = [(DDAction *)&v15 initWithURL:lCopy result:result context:contextCopy];
    self = v13;
    if (v13)
    {
      result = [(DDConversionAction *)v13 commonInitWithURL:lCopy result:result context:contextCopy targetUnit:unitCopy];
    }

    else
    {
      result = 0;
    }
  }

  return result;
}

- (id)commonInitWithURL:(id)l result:(__DDResult *)result context:(id)context targetUnit:(id)unit
{
  unitCopy = unit;
  if (DDResultHasType())
  {
    DDResultPhysicalUnitsExtraction();
  }

  else if (DDResultHasType())
  {
    DDResultCurrencyExtraction();
  }

  return self;
}

- (DDConversionAction)initWithValue:(double)value unit:(id)unit targetUnit:(id)targetUnit context:(id)context ambiguousDetection:(BOOL)detection result:(__DDResult *)result
{
  unitCopy = unit;
  targetUnitCopy = targetUnit;
  v20.receiver = self;
  v20.super_class = DDConversionAction;
  v17 = [(DDAction *)&v20 initWithURL:0 result:0 context:context];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_targetUnit, targetUnit);
    objc_storeStrong(&v18->_extractedUnit, unit);
    v18->_extractedValue = value;
    v18->_ambiguousDetection = detection;
    if (result)
    {
      v18->super._result = CFRetain(result);
    }
  }

  return v18;
}

- (unint64_t)menuItemattributes
{
  if (([(DDAction *)&self->super.super.isa calloutFlavor]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return [(DDConversionAction *)self conversionFailed];
  }
}

- (id)localizedName
{
  if ([(DDAction *)&self->super.super.isa calloutFlavor]|| self->_extractedCurrency)
  {
    _titleWithValue = [(DDConversionAction *)self _titleWithValue];
  }

  else if (self->_calculateString)
  {
    calculateResult = [(DDConversionAction *)self calculateResult];
    terms = [calculateResult terms];
    firstObject = [terms firstObject];
    formattedUnit = [firstObject formattedUnit];
    v9 = formattedUnit;
    if (formattedUnit)
    {
      v10 = formattedUnit;
    }

    else
    {
      v10 = DDLocalizedStringFromTable(@"Cannot Convert Value", @"Generic value conversion action menu title", @"Cannot Convert Value", @"Conversion");
    }

    v11 = v10;

    _titleWithValue = v11;
  }

  else
  {
    _titleWithValue = [(DDUIPhysicalUnit *)self->_targetUnit localizedUnitNameWithValue:self->_extractedUnit unit:self->_extractedValue];
  }

  return _titleWithValue;
}

- (id)_titleWithValue
{
  if (self->_calculateString)
  {
    calculateResult = [(DDConversionAction *)self calculateResult];
    formattedResult = [calculateResult formattedResult];
    v4 = formattedResult;
    if (formattedResult)
    {
      v5 = formattedResult;
    }

    else
    {
      v5 = DDLocalizedStringFromTable(@"Cannot Convert Value", @"Generic value conversion action menu title", @"Cannot Convert Value", @"Conversion");
    }

    v8 = v5;

    v6 = v8;
  }

  else
  {
    v6 = [(DDUIPhysicalUnit *)self->_targetUnit localizedConvertedValueFrom:self->_extractedUnit unit:self->_extractedValue];
  }

  return v6;
}

- (id)subtitle
{
  if (([(DDAction *)&self->super.super.isa calloutFlavor]& 1) != 0)
  {
    _titleWithValue = 0;
  }

  else if ([(DDConversionAction *)self conversionFailed])
  {
    _titleWithValue = 0;
  }

  else if (self->_extractedCurrency)
  {
    _titleWithValue = @"yahoo! finance";
  }

  else
  {
    _titleWithValue = [(DDConversionAction *)self _titleWithValue];
  }

  return _titleWithValue;
}

- (id)quickActionTitle
{
  if (self->_calculateString || self->_ambiguousDetection)
  {
    v2 = DDResultGetMatchedString();
  }

  else
  {
    v2 = [(DDUIPhysicalUnit *)self->_extractedUnit localizedConvertedValueFrom:self->_extractedValue unit:?];
  }

  return v2;
}

- (id)calculateResult
{
  v17[1] = *MEMORY[0x277D85DE8];
  calculateString = self->_calculateString;
  if (!calculateString || self->_calculateDidRun)
  {
    goto LABEL_9;
  }

  v4 = MEMORY[0x277CF70F0];
  v16 = *MEMORY[0x277CF70E0];
  v17[0] = &unk_282C2BCC8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v6 = [v4 evaluate:calculateString options:v5];

  bestConversion = [v6 bestConversion];
  if (!bestConversion)
  {
    if (self->_calculateResult)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [v6 convertedTo:bestConversion];
  calculateResult = self->_calculateResult;
  self->_calculateResult = v8;

  if (!self->_calculateResult)
  {
LABEL_5:
    conversions = [v6 conversions];
    firstObject = [conversions firstObject];
    v12 = self->_calculateResult;
    self->_calculateResult = firstObject;
  }

LABEL_6:
  if (!self->_extractedCurrency)
  {
    v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v13 setMaximumFractionDigits:3];
    [v13 setUsesGroupingSeparator:1];
    [(CalculateResult *)self->_calculateResult setNumberFormatter:v13];
  }

  self->_calculateDidRun = 1;

LABEL_9:
  v14 = self->_calculateResult;

  return v14;
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  if (![(DDConversionAction *)self conversionFailed])
  {
    if (self->_extractedCurrency)
    {
      [(DDConversionAction *)self _titleWithValue];
    }

    else
    {
      [(DDConversionAction *)self subtitle];
    }
    v5 = ;
    v6 = MEMORY[0x277D75810];
    _dataOwnerForCopy = [viewCopy _dataOwnerForCopy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__DDConversionAction_performFromView___block_invoke;
    v9[3] = &unk_278290B50;
    v10 = v5;
    v8 = v5;
    [v6 _performAsDataOwner:_dataOwnerForCopy block:v9];
  }
}

void __38__DDConversionAction_performFromView___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) length])
  {
    v2 = [*MEMORY[0x277CE1EB0] identifier];
    v3 = *(a1 + 32);
    v7 = v2;
    v8 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [MEMORY[0x277D75810] generalPasteboard];
  [v6 setItems:v5];
}

- (BOOL)conversionFailed
{
  if (!self->_calculateString)
  {
    return 0;
  }

  calculateResult = [(DDConversionAction *)self calculateResult];
  v3 = calculateResult == 0;

  return v3;
}

- (id)iconName
{
  if ([(DDConversionAction *)self conversionFailed])
  {
    return 0;
  }

  else
  {
    return @"doc.on.doc";
  }
}

- (id)menuIcon
{
  v3 = MEMORY[0x277D755B8];
  group = [(DDUIPhysicalUnit *)self->_extractedUnit group];
  v5 = [group symbolNameForValue:self->_extractedUnit unit:self->_extractedValue];
  v6 = [v3 _systemImageNamed:v5];

  return v6;
}

- (id)menuName
{
  v3 = [(DDUIPhysicalUnit *)self->_extractedUnit localizedMenuTitleFormat:@"x"];
  v4 = [(DDUIPhysicalUnit *)self->_extractedUnit localizedMenuTitleFormat:@"x"];
  v5 = DDLocalizedStringFromTable(v3, &stru_282C1E0A8, v4, @"Conversion");

  return v5;
}

- (id)specialCaseActions
{
  v3 = specialCaseResultForResult(self->super._result);
  if (v3)
  {
    v3 = [DDConversionAction allActionsForResult:v3 context:self->super._context onlyTest:0 forceSubMenu:0];
  }

  return v3;
}

@end