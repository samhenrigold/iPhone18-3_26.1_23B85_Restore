@interface WFReferenceLibraryViewController
- (WFReferenceLibraryViewControllerDelegate)delegate;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WFReferenceLibraryViewController

- (WFReferenceLibraryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = WFReferenceLibraryViewController;
  [(WFReferenceLibraryViewController *)&v5 viewWillDisappear:disappear];
  delegate = [(WFReferenceLibraryViewController *)self delegate];
  [delegate libraryControllerDidDismiss:self];
}

@end