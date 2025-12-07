@interface ASTopLevelErrorChecker
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
- (ASTopLevelErrorChecker)initWithCodePage:(int)page statusToken:(int)token;
- (void)unknownToken:(int)token receivedForCodePage:(int)page;
@end

@implementation ASTopLevelErrorChecker

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_38 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_38 = v2;
    acceptsTopLevelLeaves___haveChecked_38 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_38 == 1)
  {
    v2 = parsingLeafNode___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_38 = v2;
    parsingLeafNode___haveChecked_38 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_38 == 1)
  {
    v2 = parsingWithSubItems___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_38 = v2;
    parsingWithSubItems___haveChecked_38 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_38 == 1)
  {
    v2 = frontingBasicTypes___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_38 = v2;
    frontingBasicTypes___haveChecked_38 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_38 == 1)
  {
    v2 = notifyOfUnknownTokens___result_38;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_38 = v2;
    notifyOfUnknownTokens___haveChecked_38 = 1;
  }

  return v2 & 1;
}

- (ASTopLevelErrorChecker)initWithCodePage:(int)page statusToken:(int)token
{
  v4 = *&token;
  v5 = *&page;
  v12.receiver = self;
  v12.super_class = ASTopLevelErrorChecker;
  v6 = [(ASItem *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:v5 token:v4 objectClass:objc_opt_class() setterMethod:sel_setFoundStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v4 | (v5 << 8)];
    v10 = [v7 initWithObjectsAndKeys:{v8, v9, 0}];
    [(ASTopLevelErrorChecker *)v6 setParseRules:v10];
  }

  return v6;
}

- (void)unknownToken:(int)token receivedForCodePage:(int)page
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v6, v7))
    {
      v8[0] = 67109376;
      v8[1] = page;
      v9 = 1024;
      tokenCopy = token;
      _os_log_impl(&dword_24A0AC000, v6, v7, "No top level errors in the server response. The code page / token are %d / %d ", v8, 0xEu);
    }
  }
}

@end