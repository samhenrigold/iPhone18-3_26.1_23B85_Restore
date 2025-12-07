@interface NSBundle(PDUExtras)
- (id)pdu_aboutPrivacyBundleID;
- (void)pdu_aboutPrivacyBundleID;
@end

@implementation NSBundle(PDUExtras)

- (id)pdu_aboutPrivacyBundleID
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKeyedSubscript:@"NSRegulatoryPrivacyDisclosure"];
  v3 = [v2 objectForKeyedSubscript:@"NSRegulatoryPrivacyDisclosureOBKPrivacyBundle"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  lowercaseString = [v3 lowercaseString];
  v5 = lowercaseString;
  if (lowercaseString)
  {
    v6 = [lowercaseString isEqualToString:v3];
    if ((v6 & 1) == 0)
    {
      v8 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureUI(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(NSBundle(PDUExtras) *)v3 pdu_aboutPrivacyBundleID];
      }
    }
  }

  return v5;
}

- (void)pdu_aboutPrivacyBundleID
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25F70A000, a2, OS_LOG_TYPE_ERROR, "OnBoardingKit bundle '%@' should be lower case only, please file a radar.", &v2, 0xCu);
}

@end