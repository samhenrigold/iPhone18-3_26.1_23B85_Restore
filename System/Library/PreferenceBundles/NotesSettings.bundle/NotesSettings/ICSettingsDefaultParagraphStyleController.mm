@interface ICSettingsDefaultParagraphStyleController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ICSettingsDefaultParagraphStyleController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICSettingsDefaultParagraphStyleController;
  [(ICSettingsDefaultParagraphStyleController *)&v4 viewDidAppear:appear];
  [(ICSettingsDefaultParagraphStyleController *)self ic_submitNavigationEventForIdentifier:ICDefaultStylePrefIdentifier titleStringKey:@"NOTE_DEFAULT_STYLE" navigationComponents:&off_1EE90];
}

@end