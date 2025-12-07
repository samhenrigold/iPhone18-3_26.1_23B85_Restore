@interface CDMVocUsoGraphMapper
+ (id)buildAppNameUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildContactTypeUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildDeviceCategoryUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildEmailContactUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildEmergencyPhoneNumberUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildEmergencyPhonePersonUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildPersonRelationshipUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildPhoneContactUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildSettingUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)buildVocUSOGraphWithVocLabel:(id)label withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex;
+ (id)buildVocUSOGraphWithVocLabel:(id)label withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count;
+ (id)emergencyPhoneNumberSemantic;
+ (id)emergencyPhonePersonSemantic;
+ (id)listPositionSemantic;
+ (id)ordinalsSemantic;
+ (id)settingVocLabel;
+ (unique_ptr<siri::ontology::UsoEntitySpan,)buildEntitySpanWithSemantic:(id)semantic withVocLabel:(id)label withStartIndex:(unsigned int)index withEndIndex:(unsigned int)endIndex withTokenCount:(unsigned int)count;
+ (unique_ptr<siri::ontology::UsoIdentifier,)buildIdentifierWithSemantic:(id)semantic withVocLabel:(id)label;
@end

@implementation CDMVocUsoGraphMapper

+ (id)buildVocUSOGraphWithVocLabel:(id)label withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  v8 = *&count;
  v9 = *&charIndex;
  v10 = *&index;
  v39 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  semanticCopy = semantic;
  inputCopy = input;
  settingVocLabel = [self settingVocLabel];
  v18 = [settingVocLabel containsObject:labelCopy];

  if (v18)
  {
    v19 = [self buildSettingUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
LABEL_38:
    v25 = v19;
    goto LABEL_39;
  }

  if ([labelCopy isEqualToString:@"contactType"])
  {
    v19 = [self buildContactTypeUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
    goto LABEL_38;
  }

  if ([labelCopy isEqualToString:@"emailType"])
  {
    v19 = [self buildEmailContactUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
    goto LABEL_38;
  }

  if ([labelCopy isEqualToString:@"phoneType"])
  {
    v19 = [self buildPhoneContactUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
    goto LABEL_38;
  }

  if ([labelCopy isEqualToString:@"answerProduct"])
  {
    v19 = [self buildDeviceCategoryUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
    goto LABEL_38;
  }

  emergencyPhoneNumberSemantic = [self emergencyPhoneNumberSemantic];
  v21 = [emergencyPhoneNumberSemantic containsObject:semanticCopy];

  if (v21)
  {
    v19 = [self buildEmergencyPhoneNumberUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
    goto LABEL_38;
  }

  emergencyPhonePersonSemantic = [self emergencyPhonePersonSemantic];
  v23 = [emergencyPhonePersonSemantic containsObject:semanticCopy];

  if (v23)
  {
    v19 = [self buildEmergencyPhonePersonUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
    goto LABEL_38;
  }

  if ([labelCopy isEqualToString:@"phoneNumber"])
  {
    v19 = [self buildPhoneNumberRegexUSOGraphWithIdentifier:labelCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9];
    goto LABEL_38;
  }

  if ([labelCopy isEqualToString:@"emailAddress"])
  {
    v19 = [self buildEmailAddressRegexUSOGraphWithIdentifier:labelCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9];
    goto LABEL_38;
  }

  if ([labelCopy isEqualToString:@"appName"])
  {
    v19 = [self buildAppNameUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
    goto LABEL_38;
  }

  if ([labelCopy isEqualToString:@"integer"])
  {
    v24 = [MEMORY[0x1E696AE88] scannerWithString:semanticCopy];
    v33 = 0;
    if ([v24 scanInt:&v33])
    {
      if ([v24 isAtEnd])
      {
        v25 = [self buildIntegerRegexUSOGraphWithIdentifier:labelCopy withInput:semanticCopy withStartCharIndex:v10 withEndCharIndex:v9];
        if (v25)
        {

          goto LABEL_39;
        }
      }
    }

    goto LABEL_29;
  }

  if ([labelCopy isEqualToString:@"decimal"])
  {
    v19 = [self buildDecimalRegexUSOGraphWithIdentifier:labelCopy withInput:semanticCopy withStartCharIndex:v10 withEndCharIndex:v9];
    goto LABEL_38;
  }

  ordinalsSemantic = [self ordinalsSemantic];
  v28 = [ordinalsSemantic containsObject:semanticCopy];

  if (v28)
  {
    v19 = [self buildVocUSOGraphForRegexOrdinal:objc_msgSend(semanticCopy withVocLabel:"intValue") withInput:labelCopy withStartCharIndex:inputCopy withEndCharIndex:{v10, v9}];
    goto LABEL_38;
  }

  if ([labelCopy isEqualToString:@"personRelationship"])
  {
    v19 = [self buildPersonRelationshipUSOGraphWithIdentifier:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9 withTokenCount:v8];
    goto LABEL_38;
  }

  listPositionSemantic = [self listPositionSemantic];
  v30 = [listPositionSemantic containsObject:semanticCopy];

  if (v30)
  {
    v19 = [self buildVocUSOGraphForHandsFreeListPosition:labelCopy withSemantic:semanticCopy withInput:inputCopy withStartCharIndex:v10 withEndCharIndex:v9];
    goto LABEL_38;
  }

  if ([@"fractional" isEqualToString:labelCopy])
  {
    v32 = [self buildFractionNumberUSOGraphWithIdentifier:labelCopy withFractionSemantic:semanticCopy withStartCharIndex:v10 withEndCharIndex:v9];
  }

  else if ([@"smsAttributes" isEqualToString:labelCopy])
  {
    v32 = [self buildSmsAttributesUSOGraph:labelCopy withFractionSemantic:semanticCopy withStartCharIndex:v10 withEndCharIndex:v9];
  }

  else
  {
    if (![@"smsSharedEntity" isEqualToString:labelCopy])
    {
LABEL_29:
      v26 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v33 = 136315650;
        v34 = "+[CDMVocUsoGraphMapper buildVocUSOGraphWithVocLabel:withSemantic:withInput:withStartCharIndex:withEndCharIndex:withTokenCount:]";
        v35 = 2112;
        v36 = labelCopy;
        v37 = 2112;
        v38 = semanticCopy;
        _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s USO not supported for voc label : %@, vocSemantic : %@", &v33, 0x20u);
      }

      v19 = [self buildRootUSOGraphWithStartCharIndex:v10 withEndCharIndex:v9];
      goto LABEL_38;
    }

    v32 = [self buildAttachmentTypeUSOGraph:labelCopy withSemantic:semanticCopy withStartCharIndex:v10 withEndCharIndex:v9];
  }

  v25 = v32;
  if (!v32)
  {
    goto LABEL_29;
  }

LABEL_39:

  return v25;
}

+ (id)buildVocUSOGraphWithVocLabel:(id)label withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex
{
  v7 = [self buildVocUSOGraphWithVocLabel:label withSemantic:semantic withInput:input withStartCharIndex:*&index withEndCharIndex:*&charIndex withTokenCount:0];

  return v7;
}

+ (unique_ptr<siri::ontology::UsoEntitySpan,)buildEntitySpanWithSemantic:(id)semantic withVocLabel:(id)label withStartIndex:(unsigned int)index withEndIndex:(unsigned int)endIndex withTokenCount:(unsigned int)count
{
  v9 = v7;
  semanticCopy = semantic;
  labelCopy = label;
  _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_(v9);
}

+ (unique_ptr<siri::ontology::UsoIdentifier,)buildIdentifierWithSemantic:(id)semantic withVocLabel:(id)label
{
  semanticCopy = semantic;
  labelCopy = label;
  [semanticCopy UTF8String];
  appName();
  operator new();
}

+ (id)buildEmergencyPhonePersonUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)buildEmergencyPhoneNumberUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)buildDeviceCategoryUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)buildPersonRelationshipUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)buildSettingUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)buildAppNameUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)buildPhoneContactUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)buildEmailContactUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)buildContactTypeUSOGraphWithIdentifier:(id)identifier withSemantic:(id)semantic withInput:(id)input withStartCharIndex:(unsigned int)index withEndCharIndex:(unsigned int)charIndex withTokenCount:(unsigned int)count
{
  identifierCopy = identifier;
  semanticCopy = semantic;
  inputCopy = input;
  operator new();
}

+ (id)emergencyPhoneNumberSemantic
{
  if (+[CDMVocUsoGraphMapper emergencyPhoneNumberSemantic]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper emergencyPhoneNumberSemantic]::onceToken, &__block_literal_global_189);
  }

  v3 = +[CDMVocUsoGraphMapper emergencyPhoneNumberSemantic]::value;

  return v3;
}

uint64_t __52__CDMVocUsoGraphMapper_emergencyPhoneNumberSemantic__block_invoke()
{
  +[CDMVocUsoGraphMapper emergencyPhoneNumberSemantic]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"emergencyNumber", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)ordinalsSemantic
{
  if (+[CDMVocUsoGraphMapper ordinalsSemantic]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper ordinalsSemantic]::onceToken, &__block_literal_global_112);
  }

  v3 = +[CDMVocUsoGraphMapper ordinalsSemantic]::value;

  return v3;
}

uint64_t __40__CDMVocUsoGraphMapper_ordinalsSemantic__block_invoke()
{
  +[CDMVocUsoGraphMapper ordinalsSemantic]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"16", @"17", @"18", @"19", @"20", @"21", @"22", @"23", @"24", @"25", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)listPositionSemantic
{
  if (+[CDMVocUsoGraphMapper listPositionSemantic]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper listPositionSemantic]::onceToken, &__block_literal_global_89);
  }

  v3 = +[CDMVocUsoGraphMapper listPositionSemantic]::value;

  return v3;
}

uint64_t __44__CDMVocUsoGraphMapper_listPositionSemantic__block_invoke()
{
  +[CDMVocUsoGraphMapper listPositionSemantic]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"current", @"last", @"next", @"previous", @"middle", @"secondToLast", @"thirdToLast", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)emergencyPhonePersonSemantic
{
  if (+[CDMVocUsoGraphMapper emergencyPhonePersonSemantic]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper emergencyPhonePersonSemantic]::onceToken, &__block_literal_global_69);
  }

  v3 = +[CDMVocUsoGraphMapper emergencyPhonePersonSemantic]::value;

  return v3;
}

uint64_t __52__CDMVocUsoGraphMapper_emergencyPhonePersonSemantic__block_invoke()
{
  +[CDMVocUsoGraphMapper emergencyPhonePersonSemantic]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"emergency contact", @"emergency services", @"suicide prevention center", @"sexual assault crisis center", @"poison control center", @"domestic violence hotline", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)settingVocLabel
{
  if (+[CDMVocUsoGraphMapper settingVocLabel]::onceToken != -1)
  {
    dispatch_once(&+[CDMVocUsoGraphMapper settingVocLabel]::onceToken, &__block_literal_global_9676);
  }

  v3 = +[CDMVocUsoGraphMapper settingVocLabel]::value;

  return v3;
}

uint64_t __39__CDMVocUsoGraphMapper_settingVocLabel__block_invoke()
{
  +[CDMVocUsoGraphMapper settingVocLabel]::value = [MEMORY[0x1E695DFD8] setWithObjects:{@"BOOLSettingName", @"BOOLSettingReference", @"BOOLSettingState", @"BOOLSettingVerb", @"floatSettingState", @"floatSettingName", @"multiSettingName", @"settingGroupName", @"settingIdentifier", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end