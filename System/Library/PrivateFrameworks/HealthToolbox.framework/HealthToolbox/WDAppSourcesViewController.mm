@interface WDAppSourcesViewController
+ (id)tableViewSectionClasses;
- (WDAppSourcesViewController)initWithProfile:(id)profile usingInsetStyling:(BOOL)styling;
@end

@implementation WDAppSourcesViewController

+ (id)tableViewSectionClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (WDAppSourcesViewController)initWithProfile:(id)profile usingInsetStyling:(BOOL)styling
{
  v8.receiver = self;
  v8.super_class = WDAppSourcesViewController;
  v4 = [(WDSourcesViewController *)&v8 initWithProfile:profile usingInsetStyling:styling];
  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"APPS_LIST_HEADER" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  [(WDAppSourcesViewController *)v4 setTitle:v6];

  return v4;
}

@end