@interface PMCredentialPickerViewControllerBase
- (id)initRequiringTableView:(BOOL)view;
@end

@implementation PMCredentialPickerViewControllerBase

- (id)initRequiringTableView:(BOOL)view
{
  viewCopy = view;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PMCredentialPickerViewControllerBase();
  return [(ASCredentialRequestPaneViewController *)&v5 initRequiringTableView:viewCopy];
}

@end