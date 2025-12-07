@interface HMDMultiUserNewLanguageNotificationLogEvent
- (HMDMultiUserNewLanguageNotificationLogEvent)initWithLanguage:(id)language;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDMultiUserNewLanguageNotificationLogEvent

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  language = [(HMDMultiUserNewLanguageNotificationLogEvent *)self language];
  v5 = [v3 initWithName:@"language" value:language];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"language";
  language = [(HMDMultiUserNewLanguageNotificationLogEvent *)self language];
  v6[0] = language;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (HMDMultiUserNewLanguageNotificationLogEvent)initWithLanguage:(id)language
{
  languageCopy = language;
  v9.receiver = self;
  v9.super_class = HMDMultiUserNewLanguageNotificationLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_language, language);
  }

  return v7;
}

@end