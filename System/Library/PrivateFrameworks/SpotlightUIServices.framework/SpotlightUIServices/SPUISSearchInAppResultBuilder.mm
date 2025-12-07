@interface SPUISSearchInAppResultBuilder
+ (id)buildResultWithAppName:(id)name appBundleId:(id)id searchString:(id)string searchInAppType:(int)type;
- (SPUISSearchInAppResultBuilder)initWithAppName:(id)name appBundleId:(id)id searchString:(id)string searchInAppType:(int)type;
- (id)buildCommand;
- (id)buildInlineCardSections;
- (id)buildResult;
@end

@implementation SPUISSearchInAppResultBuilder

+ (id)buildResultWithAppName:(id)name appBundleId:(id)id searchString:(id)string searchInAppType:(int)type
{
  v6 = *&type;
  stringCopy = string;
  idCopy = id;
  nameCopy = name;
  v12 = [[SPUISSearchInAppResultBuilder alloc] initWithAppName:nameCopy appBundleId:idCopy searchString:stringCopy searchInAppType:v6];

  buildResult = [(SPUISSearchInAppResultBuilder *)v12 buildResult];

  return buildResult;
}

- (SPUISSearchInAppResultBuilder)initWithAppName:(id)name appBundleId:(id)id searchString:(id)string searchInAppType:(int)type
{
  v6 = *&type;
  nameCopy = name;
  idCopy = id;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = SPUISSearchInAppResultBuilder;
  v13 = [(SPUISSearchInAppResultBuilder *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(SPUISSearchInAppResultBuilder *)v13 setAppName:nameCopy];
    [(SPUISSearchInAppResultBuilder *)v14 setAppBundleId:idCopy];
    [(SPUISSearchInAppResultBuilder *)v14 setSearchString:stringCopy];
    v15 = objc_opt_new();
    [(SPUISResultBuilder *)v14 setResult:v15];

    [(SPUISSearchInAppResultBuilder *)v14 setSearchInAppType:v6];
  }

  return v14;
}

- (id)buildResult
{
  appBundleId = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  v4 = [appBundleId componentsSeparatedByString:@"."];
  lastObject = [v4 lastObject];

  v6 = [@"com.apple.other:search_" stringByAppendingString:lastObject];
  v7 = objc_alloc(MEMORY[0x277D4C5D8]);
  searchString = [(SPUISSearchInAppResultBuilder *)self searchString];
  searchString2 = [(SPUISSearchInAppResultBuilder *)self searchString];
  v10 = [v7 initWithSuggestion:searchString query:searchString2 score:13 type:0.0];

  appBundleId2 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  [v10 setBundleIdentifier:appBundleId2];

  v15.receiver = self;
  v15.super_class = SPUISSearchInAppResultBuilder;
  buildResult = [(SPUISResultBuilder *)&v15 buildResult];
  [buildResult setResultBundleId:v6];
  [buildResult setIdentifier:v6];
  [buildResult setType:16];
  [buildResult setSuggestion:v10];
  appBundleId3 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  [buildResult setApplicationBundleIdentifier:appBundleId3];

  return buildResult;
}

- (id)buildInlineCardSections
{
  v19[1] = *MEMORY[0x277D85DE8];
  appBundleId = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  v4 = [appBundleId isEqual:@"com.apple.AppStore"];

  if (v4)
  {
    v5 = [SPUISUtilities localizedStringForKey:@"SEARCH_APP_STORE"];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [SPUISUtilities localizedStringForKey:@"SEARCH_IN_APP"];
    appName = [(SPUISSearchInAppResultBuilder *)self appName];
    v5 = [v6 stringWithFormat:v7, appName];
  }

  v9 = [MEMORY[0x277D4C3A0] textWithString:v5];
  [v9 setIsEmphasized:1];
  v10 = objc_opt_new();
  v19[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v10 setFormattedTextPieces:v11];

  v12 = objc_opt_new();
  appBundleId2 = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  [v12 setBundleIdentifier:appBundleId2];

  v14 = objc_opt_new();
  [v14 setSuggestionText:v10];
  [v14 setSuggestionType:2];
  [v14 setThumbnail:v12];
  buildCommand = [(SPUISSearchInAppResultBuilder *)self buildCommand];
  [v14 setCommand:buildCommand];

  v18 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];

  return v16;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  searchString = [(SPUISSearchInAppResultBuilder *)self searchString];
  [v3 setSearchString:searchString];

  appBundleId = [(SPUISSearchInAppResultBuilder *)self appBundleId];
  [v3 setApplicationBundleIdentifier:appBundleId];

  [v3 setSearchInAppType:{-[SPUISSearchInAppResultBuilder searchInAppType](self, "searchInAppType")}];

  return v3;
}

@end