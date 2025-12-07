@interface WebKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
@end

@implementation WebKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1CDD60;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9290 != -1)
  {
    dispatch_once(&qword_2806D9290, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F55E38 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"WKSelectionGranularityDynamic" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E50 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKSelectionGranularityCharacter" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E38 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationActionPolicyCancel" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E50 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationActionPolicyAllow" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E38 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationResponsePolicyCancel" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E50 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationResponsePolicyAllow" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E50 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKErrorUnknown" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E68 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKErrorWebContentProcessTerminated" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E80 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKErrorWebViewInvalidated" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E98 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKErrorJavaScriptExceptionOccurred" descriptor:dictionary];
  [dictionary setObject:&unk_287F55EB0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKErrorJavaScriptResultTypeIsUnsupported" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E38 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKUserScriptInjectionTimeAtDocumentStart" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E50 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKUserScriptInjectionTimeAtDocumentEnd" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E38 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationTypeLinkActivated" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E50 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationTypeFormSubmitted" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E68 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationTypeBackForward" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E80 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationTypeReload" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E98 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationTypeFormResubmitted" descriptor:dictionary];
  [dictionary setObject:&unk_287F55EC8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKNavigationTypeOther" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE38E0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKWebsiteDataTypeDiskCache" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE38F8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKWebsiteDataTypeMemoryCache" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE3900] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKWebsiteDataTypeOfflineWebApplicationCache" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE38D8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKWebsiteDataTypeCookies" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE3908] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKWebsiteDataTypeSessionStorage" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE38F0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKWebsiteDataTypeLocalStorage" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE3910] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKWebsiteDataTypeWebSQLDatabases" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CE38E8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKWebsiteDataTypeIndexedDBDatabases" descriptor:dictionary];
  [dictionary setObject:&unk_287F55EE0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypeNone" descriptor:dictionary];
  [dictionary setObject:&unk_287F55EF8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypePhoneNumber" descriptor:dictionary];
  [dictionary setObject:&unk_287F55F10 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypeLink" descriptor:dictionary];
  [dictionary setObject:&unk_287F55F28 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypeAddress" descriptor:dictionary];
  [dictionary setObject:&unk_287F55F40 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypeCalendarEvent" descriptor:dictionary];
  [dictionary setObject:&unk_287F55F58 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypeTrackingNumber" descriptor:dictionary];
  [dictionary setObject:&unk_287F55F70 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypeFlightNumber" descriptor:dictionary];
  [dictionary setObject:&unk_287F55F88 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypeLookupSuggestion" descriptor:dictionary];
  [dictionary setObject:&unk_287F55FA0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"WKDataDetectorTypeAll" descriptor:dictionary];
}

@end