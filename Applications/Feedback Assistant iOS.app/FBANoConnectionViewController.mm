@interface FBANoConnectionViewController
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FBANoConnectionViewController

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = FBANoConnectionViewController;
  [(FBANoConnectionViewController *)&v8 viewWillAppear:appear];
  v4 = +[NSBundle mainBundle];
  v5 = LocalizableGTStringKeyForKey();
  v6 = [v4 localizedStringForKey:v5 value:&stru_1000E2210 table:0];
  subtitleLabel = [(FBASimpleTextNoticeController *)self subtitleLabel];
  [subtitleLabel setText:v6];
}

@end