@interface WFLimitedNetworkIssue
+ (id)limitedNetwork;
+ (id)limitedNetwork_CH;
- (WFLimitedNetworkIssue)initWithChinaDevice:(BOOL)device;
- (id)_RecommendationForChinaDevice:(BOOL)device;
@end

@implementation WFLimitedNetworkIssue

+ (id)limitedNetwork
{
  v2 = [[WFLimitedNetworkIssue alloc] initWithChinaDevice:0];

  return v2;
}

+ (id)limitedNetwork_CH
{
  v2 = [[WFLimitedNetworkIssue alloc] initWithChinaDevice:1];

  return v2;
}

- (WFLimitedNetworkIssue)initWithChinaDevice:(BOOL)device
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = WFLimitedNetworkIssue;
  v4 = [(WFHealthIssue *)&v18 initWithType:0x20000];
  v5 = v4;
  if (v4)
  {
    v4->_subtitleOnlyIssue = 0;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"kWFLocLimitNetworkTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];
    issueTitle = v5->_issueTitle;
    v5->_issueTitle = v7;

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocLimitNetworkTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];
    issueShortTitle = v5->_issueShortTitle;
    v5->_issueShortTitle = v10;

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"kWFLocLimitNetworkDescription" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];
    issueDescription = v5->_issueDescription;
    v5->_issueDescription = v13;

    v15 = [(WFLimitedNetworkIssue *)v5 _RecommendationForChinaDevice:deviceCopy];
    issueRecommendation = v5->_issueRecommendation;
    v5->_issueRecommendation = v15;
  }

  return v5;
}

- (id)_RecommendationForChinaDevice:(BOOL)device
{
  v3 = @"kWFLocLimitNetworkRecommendation";
  if (device)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_CH", @"kWFLocLimitNetworkRecommendation"];
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];

  return v5;
}

@end